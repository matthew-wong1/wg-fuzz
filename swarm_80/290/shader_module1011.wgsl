struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1449f), Struct_1(153f), Struct_1(-1201f), Struct_1(645f), Struct_1(1726f));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(-164f), vec4<i32>(-42455i, -1i, 16535i, i32(-2147483648)), -3059i, vec4<bool>(false, true, true, false), true), Struct_2(Struct_1(-1000f), vec4<i32>(4921i, 57779i, -23021i, 2147483647i), -26699i, vec4<bool>(true, true, false, false), false), Struct_2(Struct_1(190f), vec4<i32>(2147483647i, -14270i, 15205i, 3978i), 36897i, vec4<bool>(true, true, false, true), true), Struct_2(Struct_1(-743f), vec4<i32>(5491i, 2147483647i, -1i, -1i), -9806i, vec4<bool>(false, false, true, false), false), Struct_2(Struct_1(1000f), vec4<i32>(42876i, -13959i, 0i, 57115i), 47029i, vec4<bool>(false, true, true, false), true), Struct_2(Struct_1(1028f), vec4<i32>(1i, 29497i, 0i, 12252i), 2152i, vec4<bool>(true, true, true, false), true), Struct_2(Struct_1(707f), vec4<i32>(1i, -28294i, -4284i, 1i), -4862i, vec4<bool>(true, false, true, true), true), Struct_2(Struct_1(-444f), vec4<i32>(0i, 0i, 2147483647i, 2147483647i), i32(-2147483648), vec4<bool>(true, false, true, false), true), Struct_2(Struct_1(-1030f), vec4<i32>(-21291i, 1i, 12898i, 1i), 0i, vec4<bool>(false, false, false, false), true), Struct_2(Struct_1(687f), vec4<i32>(6007i, 16135i, 1i, 2147483647i), -1i, vec4<bool>(true, false, false, false), false), Struct_2(Struct_1(1854f), vec4<i32>(2147483647i, 2147483647i, -2440i, 0i), -20027i, vec4<bool>(false, true, false, true), false), Struct_2(Struct_1(281f), vec4<i32>(1i, -1i, 0i, 1i), -1i, vec4<bool>(false, false, true, false), false), Struct_2(Struct_1(-2103f), vec4<i32>(-1i, 0i, 17631i, 1i), -33908i, vec4<bool>(true, false, true, true), true), Struct_2(Struct_1(-1144f), vec4<i32>(i32(-2147483648), 7471i, 0i, i32(-2147483648)), 0i, vec4<bool>(false, false, true, true), true), Struct_2(Struct_1(1188f), vec4<i32>(i32(-2147483648), 31124i, 40535i, 2147483647i), 1i, vec4<bool>(true, false, true, false), true), Struct_2(Struct_1(675f), vec4<i32>(-25803i, 2147483647i, -3202i, 0i), -12998i, vec4<bool>(false, true, false, false), false));

var<private> global2: bool;

var<private> global3: array<Struct_1, 2>;

var<private> global4: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -926f))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    var var_0 = arg_0.x;
    global1 = array<Struct_2, 16>();
    global2 = all(arg_0.yx);
    let var_1 = abs(~25357u);
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(trunc(843f));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1833f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -2010f)))), _wgslsmith_f_op_f32(f32(-1f) * -999f)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(-abs(vec3<i32>(1i, -9767i, -2147483647i)), reverseBits((vec3<i32>(18431i, 2147483647i, 2147483647i) >> (vec3<u32>(4294967295u, u_input.a.x, arg_1.x) % vec3<u32>(32u))) << (vec3<u32>(1u, arg_1.x, u_input.a.x) % vec3<u32>(32u)))), 1i);
    var var_2 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x ^ (1u | firstTrailingBit(arg_1.x)), 5u)];
    global4 = array<vec4<bool>, 13>();
    return !select(select(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(0u), max(u_input.a.x, u_input.a.x)), 13u)], vec4<bool>(var_2.x, select(true, var_2.x, true), !var_2.x, false), !(true && var_2.x)), vec4<bool>(var_2.x && var_2.x, !(!var_2.x), true, _wgslsmith_f_op_f32(trunc(var_3.a)) <= 275f), !vec4<bool>(true, all(global4[_wgslsmith_index_u32(1u, 13u)]), var_2.x, var_2.x));
}

fn func_4(arg_0: vec4<bool>) -> vec4<i32> {
    global0 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-791f, _wgslsmith_div_f32(-658f, 499f), _wgslsmith_f_op_f32(f32(-1f) * -1473f), _wgslsmith_f_op_f32(step(239f, 651f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-851f, -1016f, -1618f, 1411f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(609f, 513f)), -1012f, _wgslsmith_f_op_f32(-728f + -270f), 1269f))));
    global0 = array<Struct_1, 5>();
    global3 = array<Struct_1, 2>();
    global0 = array<Struct_1, 5>();
    return ~vec4<i32>(-10274i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 1i, 0i), min(-2147483647i, -17294i)), _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(43909i, -2147483647i)), 13388i) ^ vec4<i32>(1i, 1i, 1i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1397f - -2497f) + -1666f)), _wgslsmith_f_op_f32(func_1(-1625i, global4[_wgslsmith_index_u32(~u_input.a.x, 13u)])), 1f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1523f, 861f), -254f)) - _wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, true, true, false), global4[_wgslsmith_index_u32(4294967295u, 13u)], true), ~68008u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-656f, -339f) * -507f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 429f), -852f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-128f, _wgslsmith_f_op_f32(681f * -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -577f)));
    global2 = true;
    var var_1 = vec3<bool>(true, true, !(~1i >= ~(1i << (u_input.a.x % 32u))));
    global3 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 620f)))));
    var_2 = -1000f;
    let var_3 = abs(1i);
    var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.a.x, u_input.a.x, var_1.x), ~4294967295u, -(func_4(func_3(var_0.xx, u_input.a.yz, Struct_1(196f))) ^ abs(vec4<i32>(1i, 1i, 1i, 1i))), u_input.a, _wgslsmith_f_op_f32(-164f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2075f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(exp2(var_0.x))))));
}

