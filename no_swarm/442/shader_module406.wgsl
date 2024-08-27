struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<i32, 23>;

var<private> global2: Struct_1 = Struct_1(true, true);

var<private> global3: i32 = 0i;

var<private> global4: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    return (any(!select(vec2<bool>(global2.a, false), vec2<bool>(global2.b, false), false)) != global2.a) & (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f * -146f)))) > -303f);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = u_input.a.x >= 15856u;
    var var_1 = Struct_4(select(~u_input.c, vec3<u32>(36606u, reverseBits(u_input.a.x), 23901u) >> (u_input.c % vec3<u32>(32u)), func_3() || ((global2.b || true) || global2.b)));
    var var_2 = Struct_4(_wgslsmith_add_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 1u, u_input.a.x), u_input.a.wwx)), abs(vec3<u32>(44329u, u_input.a.x, 11945u) << (_wgslsmith_sub_vec3_u32(var_1.a, u_input.a.wwx) % vec3<u32>(32u)))));
    let var_3 = vec4<bool>(all(vec4<bool>(true, global2.a, any(vec2<bool>(global2.b, global2.b)) & global2.b, true)), !global2.a, !any(select(select(vec4<bool>(false, false, global2.b, false), vec4<bool>(true, global2.a, false, true), vec4<bool>(false, false, true, global2.b)), !vec4<bool>(global2.a, global2.a, true, global2.b), vec4<bool>(global2.a, global2.b, true, global2.b))), true || global2.a);
    var var_4 = Struct_4(~var_1.a);
    return Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(ceil(arg_0)))), -759f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1106f, arg_0) * _wgslsmith_f_op_f32(floor(-640f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), 1697f))), Struct_1(var_3.x, global2.b), arg_0, arg_0, min(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_2.a.x, 23u)], -global1[_wgslsmith_index_u32(var_4.a.x, 23u)]), -2147483647i));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<bool> {
    global2 = arg_2.b;
    let var_0 = arg_2.b;
    let var_1 = arg_3.x == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(abs(714f))));
    global4 = array<vec2<bool>, 28>();
    var var_2 = Struct_3(true, arg_2.c);
    return !select(vec4<bool>(any(select(global4[_wgslsmith_index_u32(28404u, 28u)], vec2<bool>(true, arg_2.b.a), true)), true, var_0.b, var_2.a), !(!vec4<bool>(var_2.a, var_0.b, false, var_2.a)), !select(select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(var_1, var_2.a, false, arg_2.b.b), vec4<bool>(false, false, true, var_1)), vec4<bool>(var_0.a, var_1, var_1, false), global2.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = !func_4(~1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 1219u, 0u, 39545u)), u_input.a), func_2(_wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(trunc(-672f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1158f, func_2(-1823f).d)));
    global4 = array<vec2<bool>, 28>();
    global0 = array<Struct_2, 7>();
    let var_1 = reverseBits(~vec4<u32>(~28313u, u_input.c.x, arg_0.x, 911u));
    var var_2 = !func_3();
    return var_0;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_3 {
    var var_0 = arg_0.x;
    global0 = array<Struct_2, 7>();
    var var_1 = vec3<i32>(-14957i, -1711i, 1i);
    var var_2 = func_4(u_input.a.x, countOneBits(u_input.a.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f + 1647f) * _wgslsmith_div_f32(-282f, arg_2)) - arg_2)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1904f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_2, true))))))).yxz;
    global3 = ~min(~_wgslsmith_clamp_i32(func_2(1000f).e, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(2147483647i, 2147483647i, var_1.x, arg_0.x)), func_2(-1000f).e), abs(-74288i));
    return Struct_3(false, 1053f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-650f, -1244f, global2.a)))))) + -146f);
    let var_1 = func_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -1i, -1i, -7138i), vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.b.x, 0i, global1[_wgslsmith_index_u32(1u, 23u)]), ~select(vec4<i32>(29904i, 1i, u_input.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 1i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 59451i), func_1(vec2<u32>(u_input.c.x, u_input.c.x), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], -35161i, -1i, 0i), vec4<bool>(global2.a, global2.a, false, global2.b)))), select(select(select(func_1(u_input.c.xz, vec4<i32>(-1i, u_input.d, -9945i, u_input.d), vec4<bool>(global2.a, global2.b, false, false)), !vec4<bool>(global2.b, global2.a, false, global2.a), true), vec4<bool>(true, !global2.a, true, select(false, true, true)), !vec4<bool>(global2.b, global2.a, global2.a, false)), func_4(~_wgslsmith_clamp_u32(47659u, u_input.c.x, u_input.a.x), u_input.c.x, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, -1000f, -371f, 391f)), func_2(-1513f).b, _wgslsmith_f_op_f32(562f - 428f), -790f, global1[_wgslsmith_index_u32(select(4294967295u, u_input.c.x, global2.a), 23u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(304f, -1028f) + vec2<f32>(1804f, -656f))), any(func_1(abs(u_input.c.zz), ~vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], 0i, u_input.b.x, -1i), vec4<bool>(global2.b, global2.a, true, false)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -193f)));
    let var_2 = select(vec4<bool>(true, true, func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(8547u, 39333u, 0u, u_input.a.x), ~vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.c.x)), ~u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.c.x), _wgslsmith_add_u32(0u, u_input.c.x)), 7u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, 629f), vec2<f32>(-1026f, var_1.b)) * vec2<f32>(var_1.b, -853f))).x, var_1.a), vec4<bool>(func_4(1u ^ _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.zy), u_input.a.x, func_2(_wgslsmith_f_op_f32(floor(-961f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 882f), vec2<f32>(var_1.b, -1323f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, 856f)))).x, true, global1[_wgslsmith_index_u32(10934u, 23u)] != ~(1914i << (u_input.a.x % 32u)), true), !(!(!(!vec4<bool>(false, var_1.a, global2.a, global2.b)))));
    var var_3 = ~9045u ^ u_input.c.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(-982f * var_1.b), _wgslsmith_f_op_f32(ceil(-1346f)))))));
    let var_5 = Struct_1(false, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 23u)] ^ ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(0u, u_input.c.x)), 23u)]));
}

