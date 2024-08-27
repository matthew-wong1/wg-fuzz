struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(true, vec4<bool>(false, true, true, false));

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(true, vec4<bool>(true, false, false, false)), Struct_2(false, vec4<bool>(true, false, true, false)), Struct_2(true, vec4<bool>(true, false, false, false)), Struct_2(false, vec4<bool>(false, true, false, false)), Struct_2(true, vec4<bool>(true, false, true, false)), Struct_2(true, vec4<bool>(false, false, true, true)), Struct_2(true, vec4<bool>(false, true, true, false)), Struct_2(true, vec4<bool>(true, true, false, false)), Struct_2(false, vec4<bool>(true, true, true, true)), Struct_2(true, vec4<bool>(true, false, false, false)), Struct_2(true, vec4<bool>(true, true, false, true)), Struct_2(true, vec4<bool>(false, true, true, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = 15673u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1039f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1250f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1157f, -1476f, arg_0.b.x)) - _wgslsmith_f_op_f32(select(1676f, 2737f, arg_1.a.x))), 1771f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(1541f)), _wgslsmith_f_op_f32(ceil(553f)), 1651f, _wgslsmith_f_op_f32(abs(-154f)))))));
    var_0 = 85252u;
    var var_2 = global3[_wgslsmith_index_u32(~(~arg_1.c.x), 12u)];
    let var_3 = global2.b;
    return min(vec2<u32>(95878u, 4294967295u), arg_1.c);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    var var_0 = u_input.d.x & 2147483647i;
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.b, arg_1)) >> (func_3(Struct_2(global2.b.x, global1.b), Struct_1(vec3<bool>(false, arg_0.x, true), -34318i, vec2<u32>(u_input.b, 1u), false)) % vec2<u32>(32u)), ~vec2<u32>(21798u, arg_1)), ~(~abs(vec2<u32>(26060u, 0u)))), 12u)];
    var var_2 = vec2<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, ~arg_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(81152u, arg_1, arg_1, 0u), vec4<u32>(arg_1, u_input.b, 4294967295u, u_input.b))), u_input.b));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1826f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1739f)) - 353f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2144f * 747f))))))));
    var var_4 = (_wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(0i, -1i)), ~firstLeadingBit(u_input.a.xx)) | firstLeadingBit(firstLeadingBit(u_input.a.yw))) ^ -u_input.d.ww;
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    global0 = ~countOneBits(1u | (_wgslsmith_clamp_u32(arg_1.x, 1388u, 0u) & 12796u));
    let var_0 = ~(~4294967295u ^ _wgslsmith_sub_u32(u_input.b, 0u >> (func_2(vec4<bool>(arg_2.a, true, true, false), 0u) % 32u)));
    let var_1 = Struct_1(!global1.b.yzw, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a.xxy, vec3<i32>(u_input.c, u_input.e ^ -2147483647i, -u_input.c)), -2199i), ~(~(~arg_1.zy)), true);
    let var_2 = 87344u;
    var var_3 = _wgslsmith_f_op_f32(min(-1104f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(floor(-243f)))))));
    return _wgslsmith_add_i32(~abs(i32(-1i) * -2147483647i), ~(~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, u_input.c), vec4<i32>(var_1.b, 0i, u_input.e, 1i)))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(~firstLeadingBit(vec3<u32>(19252u, 1u, 107547u)), ~vec3<u32>(u_input.b, 14016u, arg_0), true), abs(abs(vec3<u32>(u_input.b, arg_0, 0u) >> (vec3<u32>(1u, u_input.b, 55515u) % vec3<u32>(32u))))) << (_wgslsmith_div_u32(9559u, ~1u) % 32u), 12u)];
    global3 = array<Struct_2, 12>();
    var var_1 = ~func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1605f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2140f))), vec3<u32>(_wgslsmith_sub_u32(func_2(vec4<bool>(false, global1.b.x, false, true), arg_0), 1u), ~arg_0, 115279u), Struct_2(arg_1, vec4<bool>(false, !arg_2.x, u_input.a.x <= -2147483647i, all(global2.b))));
    var_1 = -2147483647i;
    var var_2 = global3[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, _wgslsmith_div_u32(u_input.b, 20789u)), firstTrailingBit(vec3<u32>(67743u, 79966u, 4294967295u)) >> (countOneBits(vec3<u32>(0u, 1u, 38398u)) % vec3<u32>(32u))) >> (arg_0 % 32u)) << (13632u % 32u), 12u)];
    return min(~vec4<u32>(max(4294967295u << (u_input.b % 32u), ~u_input.b), abs(35229u), 41929u, select(12164u, arg_0, false) | arg_0), ~(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 61312u, u_input.b), vec4<u32>(4961u, u_input.b, 1u, arg_0)) >> (min(vec4<u32>(u_input.b, 45742u, arg_0, u_input.b), vec4<u32>(67780u, 1u, arg_0, arg_0)) % vec4<u32>(32u))) >> (vec4<u32>(71797u, 126944u, ~53889u, u_input.b) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), func_1(0u, true, global2.b.zyz)) | min(vec4<u32>(42825u, u_input.b, 4294967295u, 12767u), abs(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b))), func_1(1u, global2.b.x, vec3<bool>(global2.a, true, any(global2.b.yyw)))));
    let var_1 = Struct_1(vec3<bool>(false, !(!global1.b.x), false), -1i, firstLeadingBit(~var_0.ww), true);
    let var_2 = 4294967295u << (var_0.x % 32u);
    let var_3 = ~_wgslsmith_dot_vec2_u32(var_0.xx, var_0.ww);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-286f, 1042f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1454f))))), -261f));
    global1 = global3[_wgslsmith_index_u32(1u, 12u)];
    var var_5 = select(!select(!vec4<bool>(var_1.d, var_1.a.x, global1.a, false), vec4<bool>(false, global2.b.x, false, true), !all(vec3<bool>(false, var_1.d, false))), vec4<bool>(!all(vec3<bool>(var_1.d, global1.a, false)), global1.b.x, true, true), select(!select(vec4<bool>(global2.a, true, global2.b.x, var_1.d), !vec4<bool>(global2.a, var_1.a.x, true, false), true), global1.b, var_1.d));
    var var_6 = vec4<bool>(!any(select(global1.b.yyx, global1.b.www, true)), any(vec2<bool>(!all(vec2<bool>(true, var_5.x)), func_1(16411u, true, global1.b.zwx).x <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8529u, var_2, 0u), var_0))), var_5.x, !var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

