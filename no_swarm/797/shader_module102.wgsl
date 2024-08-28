struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(1428f, Struct_1(6967u, 12992u), Struct_1(68949u, 1u)), Struct_2(1101f, Struct_1(4294967295u, 1u), Struct_1(4294967295u, 0u)), Struct_2(-129f, Struct_1(1037u, 95939u), Struct_1(1u, 50617u)), Struct_2(-1483f, Struct_1(13561u, 4294967295u), Struct_1(0u, 0u)), Struct_2(-148f, Struct_1(88907u, 0u), Struct_1(12673u, 1u)), Struct_2(612f, Struct_1(22317u, 1u), Struct_1(4294967295u, 0u)), Struct_2(1308f, Struct_1(6500u, 0u), Struct_1(38348u, 8471u)), Struct_2(-887f, Struct_1(0u, 4294967295u), Struct_1(4294967295u, 46472u)), Struct_2(1000f, Struct_1(60912u, 4294967295u), Struct_1(2875u, 18122u)), Struct_2(972f, Struct_1(4294967295u, 0u), Struct_1(1u, 4294967295u)), Struct_2(-1000f, Struct_1(29806u, 8297u), Struct_1(0u, 28616u)), Struct_2(-2207f, Struct_1(69368u, 0u), Struct_1(0u, 43549u)), Struct_2(-1167f, Struct_1(102237u, 0u), Struct_1(18315u, 21655u)), Struct_2(-1215f, Struct_1(9793u, 0u), Struct_1(1u, 4294967295u)), Struct_2(1451f, Struct_1(39104u, 4294967295u), Struct_1(0u, 38288u)), Struct_2(-548f, Struct_1(65606u, 1u), Struct_1(1u, 17558u)), Struct_2(556f, Struct_1(0u, 84798u), Struct_1(0u, 0u)), Struct_2(-1218f, Struct_1(1u, 1u), Struct_1(0u, 31409u)), Struct_2(350f, Struct_1(4294967295u, 19477u), Struct_1(63696u, 1u)), Struct_2(-527f, Struct_1(1130u, 4294967295u), Struct_1(9436u, 62138u)));

var<private> global1: Struct_2 = Struct_2(-1415f, Struct_1(52418u, 1u), Struct_1(78402u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> vec4<u32> {
    let var_0 = ~reverseBits(vec3<i32>(-28637i, ~u_input.a, -2147483647i));
    var var_1 = countOneBits(abs(countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(21179u, 7911u, arg_0, u_input.d), vec4<u32>(arg_0, 38339u, u_input.d, global1.b.a)))));
    var var_2 = vec4<bool>(true, true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), 1u >= _wgslsmith_dot_vec2_u32(vec2<u32>(29754u, global1.b.a), vec2<u32>(arg_0, var_1.x)))), false);
    return ~(~vec4<u32>(15438u, u_input.d, 16291u, arg_2)) | vec4<u32>(_wgslsmith_add_u32(arg_0, select(7969u, abs(4294967295u), true)), max(25851u, 8323u), arg_2, _wgslsmith_add_u32(countOneBits(arg_0), arg_2));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = !(!vec4<bool>(true, false, select(true, all(vec4<bool>(true, true, false, false)), true), select(true, false, true) | any(vec3<bool>(true, true, false))));
    var var_1 = global1.b;
    let var_2 = select(var_0.xx, !var_0.yy, arg_1.x < _wgslsmith_f_op_f32(-arg_1.x));
    global0 = array<Struct_2, 20>();
    let var_3 = !(!any(vec3<bool>(true, true, any(vec3<bool>(false, var_0.x, false)))));
    return global1.c;
}

fn func_1() -> u32 {
    var var_0 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) * global1.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.a) - vec2<f32>(409f, global1.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, global1.a), vec2<f32>(global1.a, 1254f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)), true)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a, global1.a), vec2<f32>(1180f, -689f)))))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), countOneBits(~firstLeadingBit(func_2(global1.c.a, vec2<i32>(u_input.a, u_input.c), global1.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-564f)), _wgslsmith_f_op_f32(step(1639f, 863f)), true)))));
    var_0 = func_3(400f, vec2<f32>(global1.a, global1.a), _wgslsmith_div_vec4_u32(~vec4<u32>(func_2(global1.b.a, vec2<i32>(u_input.a, u_input.b), 59601u).x, _wgslsmith_sub_u32(var_0.a, 2755u), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.a, u_input.d, global1.c.b, var_0.a), vec4<u32>(2863u, var_0.b, 27728u, global1.b.b))), vec4<u32>(_wgslsmith_clamp_u32(~1u, ~global1.b.b, _wgslsmith_clamp_u32(20059u, 0u, 1u)), 15557u, ~u_input.d, ~0u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(592f - global1.a), _wgslsmith_f_op_f32(-global1.a), true)), global1.a, !(global1.a >= 823f))))));
    var var_1 = vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))) | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false))), all(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))), all(vec2<bool>(all(vec4<bool>(true, true, true, false)), true)));
    let var_2 = vec4<u32>(26452u, u_input.d, 47295u & u_input.d, _wgslsmith_div_u32(0u, var_0.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 1635f));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.a;
    var var_1 = Struct_1(38517u, global1.b.b);
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.d, abs(1u), countOneBits(20211u)), 20u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.a) * _wgslsmith_div_f32(-101f, _wgslsmith_f_op_f32(min(-486f, -1000f)))), -950f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(exp2(global1.a))));
    var var_3 = global1.b;
    var var_4 = abs(func_1());
    let var_5 = firstTrailingBit(~(max(vec2<u32>(4294967295u, 47999u), vec2<u32>(global1.b.b, var_1.a)) ^ ~vec2<u32>(var_3.b, 0u))) | vec2<u32>(var_1.b, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(228f * global1.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1277f, global1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a, global1.a), _wgslsmith_f_op_f32(step(global1.a, global1.a)))))));
}

