struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_3, 32>;

var<private> global4: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(1204u, 4294967295u, 19051u, 0u), vec4<u32>(18317u, 7852u, 57721u, 0u), vec4<u32>(9239u, 1u, 1u, 4294967295u), vec4<u32>(46814u, 0u, 1u, 4294967295u), vec4<u32>(58181u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 0u, 18557u), vec4<u32>(79183u, 1439u, 93246u, 6061u), vec4<u32>(1u, 13449u, 3157u, 4294967295u), vec4<u32>(10319u, 2199u, 0u, 52257u), vec4<u32>(44383u, 17539u, 4294967295u, 6205u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(~(~1i), -u_input.c) | -_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(58545i, u_input.c), u_input.b.x), u_input.c | -2147483647i);
    return -1121f;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = u_input.a.xy;
    let var_1 = global2.x;
    global0 = _wgslsmith_add_u32(~(~(48218u >> (var_0.x % 32u))), reverseBits(abs(var_0.x)) << (1u % 32u)) | ~4242u;
    let var_2 = !(!select(!vec4<bool>(global2.x, global2.x, true, true), select(vec4<bool>(false, global2.x, false, true), vec4<bool>(false, global2.x, false, false), !vec4<bool>(false, global2.x, global2.x, global2.x)), !vec4<bool>(true, global2.x, true, true)));
    let var_3 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.x, 99549u), firstTrailingBit(var_0.x), abs(var_0.x)), ~(u_input.a & vec3<u32>(var_0.x, var_0.x, 4294967295u))), 10u)] >> (global4[_wgslsmith_index_u32(7306u, 10u)] % vec4<u32>(32u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f * -1207f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = vec2<bool>(any(vec3<bool>(true, true, false)), select(true, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1000f + 461f), global4[_wgslsmith_index_u32(reverseBits(49963u), 10u)], _wgslsmith_div_f32(2316f, -1000f), !arg_2.xz)) == -244f, !any(!vec2<bool>(false, global2.x))));
    global4 = array<vec4<u32>, 10>();
    var var_1 = arg_2.yy;
    global3 = array<Struct_3, 32>();
    var var_2 = true;
    return vec3<i32>(select(select(u_input.c, -41567i, arg_0.c.b.e && true), u_input.b.x, all(vec3<bool>(false, var_0.x, false))) | (_wgslsmith_mod_i32(0i, -arg_3.b.x) >> (~(~36873u) % 32u)), _wgslsmith_sub_i32(arg_3.b.x, ~select(-13287i, u_input.b.x, true)), arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~vec4<u32>(u_input.e.x, u_input.d.x, 3556u, u_input.a.x), 241f, select(vec2<bool>(true, false), vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x)))))) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -237f) + vec2<f32>(-837f, 1350f)) * vec2<f32>(1613f, 582f))))), min(-(func_3(global3[_wgslsmith_index_u32(u_input.d.x, 32u)], -1035f, vec3<bool>(global2.x, global2.x, false), Struct_4(1926f, vec3<i32>(u_input.c, 0i, -16132i))) | ~vec3<i32>(u_input.b.x, 2147483647i, 4521i)), abs(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c, u_input.b.x, u_input.c)), ~vec3<i32>(1i, 20595i, 14618i)))));
    let var_1 = select(~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.d.x), ~u_input.a.x), u_input.e.x, _wgslsmith_sub_u32(~1u, 1u), 7861u), global4[_wgslsmith_index_u32(~(~(4294967295u >> (u_input.e.x % 32u))), 10u)], vec4<bool>(true, false, true, any(!vec2<bool>(global2.x, false)) || (30204u == u_input.a.x)));
    var var_2 = select(var_1.x, u_input.e.x, true);
    var var_3 = ~_wgslsmith_div_u32(u_input.d.x, 4294967295u);
    global1 = select(var_1.x, 0u, false);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a)), -852f, 425f, _wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(860f, -584f, -1840f, 1000f)), global2.x))));
    var_0 = Struct_4(1920f, vec3<i32>(1i, -11553i, 2147483647i));
    var_2 = ~_wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(9760u, _wgslsmith_mult_u32(~22186u, ~u_input.e.x)));
    let var_5 = Struct_2(~select(~var_1.x, countOneBits(1u), !any(vec3<bool>(global2.x, false, global2.x))), Struct_1(_wgslsmith_mult_vec2_u32(select(var_1.xw | vec2<u32>(26860u, 47362u), u_input.d, global2.x), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(var_1.zx, vec2<u32>(u_input.d.x, 4294967295u)), vec2<u32>(var_1.x, 1u) << (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)))), !(!any(vec4<bool>(true, global2.x, true, global2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_4.x)), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(ceil(299f))))), vec4<bool>(any(vec3<bool>(global2.x, false, global2.x)) || all(vec2<bool>(false, false)), true, all(!vec3<bool>(true, global2.x, true)), reverseBits(0u) != ~var_1.x), any(!vec3<bool>(global2.x, global2.x, true))), var_1.xz, Struct_1(abs(countOneBits(abs(var_1.yz))), true, -279f, select(select(vec4<bool>(false, true, true, global2.x), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(true, false, global2.x, global2.x), false), !vec4<bool>(global2.x, global2.x, global2.x, true)), vec4<bool>(false, u_input.e.x >= u_input.a.x, global2.x, !global2.x), true), true), Struct_1(~var_1.zx, true, _wgslsmith_f_op_f32(f32(-1f) * -342f), vec4<bool>(any(!vec4<bool>(false, true, global2.x, true)), 18207u < u_input.e.x, true, false), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.ywy, firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 10u)]));
}

