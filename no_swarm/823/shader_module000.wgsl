struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-466f, -433f, -326f), vec3<f32>(-1094f, -351f, -396f), vec3<f32>(-248f, 868f, -1196f), vec3<f32>(-2781f, -114f, 400f), vec3<f32>(930f, 243f, -389f), vec3<f32>(-280f, 977f, 143f), vec3<f32>(-1383f, -265f, -1000f), vec3<f32>(2045f, 1461f, -2055f), vec3<f32>(213f, -855f, -214f), vec3<f32>(-259f, -480f, -1411f), vec3<f32>(1296f, 364f, 975f), vec3<f32>(-664f, -552f, -494f), vec3<f32>(-617f, -2265f, -981f), vec3<f32>(-678f, -555f, -417f), vec3<f32>(-551f, -722f, 1327f), vec3<f32>(475f, 1026f, -1000f), vec3<f32>(3133f, -2025f, -1368f), vec3<f32>(1267f, 126f, -1000f), vec3<f32>(-377f, -1000f, 1561f), vec3<f32>(-2299f, 2902f, -880f), vec3<f32>(1069f, -967f, -1239f), vec3<f32>(947f, 746f, -1000f), vec3<f32>(1687f, -1348f, 1021f), vec3<f32>(-694f, 219f, 825f), vec3<f32>(-361f, -2429f, 688f), vec3<f32>(804f, 440f, 1132f), vec3<f32>(-250f, 261f, -735f), vec3<f32>(144f, -944f, -1344f), vec3<f32>(607f, -1013f, -1188f), vec3<f32>(-1085f, 1408f, -1233f), vec3<f32>(-272f, -372f, 100f), vec3<f32>(-843f, 1228f, 580f));

var<private> global3: vec4<u32> = vec4<u32>(44900u, 25835u, 39972u, 41342u);

var<private> global4: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(0i, -18457i), vec2<i32>(1i, -51754i), vec2<i32>(-24440i, -59116i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 0i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> i32 {
    global1 = array<Struct_2, 18>();
    global4 = array<vec2<i32>, 5>();
    let var_0 = reverseBits(-u_input.b.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(912f, -1338f, true)) * -237f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-564f, -2291f, 218f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global0.x, 32u)]) + _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global0.x, 32u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(global3.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-455f, 785f, 311f))), false)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global3.x, 32u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2450f, -670f, 737f)))))), global3.ww);
    global4 = array<vec2<i32>, 5>();
    return ~var_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_1(u_input.b.x);
    var var_1 = arg_0;
    global1 = array<Struct_2, 18>();
    let var_2 = (_wgslsmith_dot_vec4_i32(u_input.b, select(countOneBits(u_input.b), -vec4<i32>(63227i, 2147483647i, u_input.b.x, 2147483647i), true)) >> (_wgslsmith_mult_u32(35809u, ~var_1.c.x << (~4294967295u % 32u)) % 32u)) != u_input.b.x;
    let var_3 = Struct_1(~_wgslsmith_dot_vec3_i32(u_input.b.zyx | -vec3<i32>(var_0.a, u_input.a.x, 26231i), abs(vec3<i32>(var_0.a, 8991i, u_input.b.x))));
    return arg_1.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> f32 {
    global0 = vec3<u32>(6339u, _wgslsmith_div_u32(~1u, 52192u) | select(firstTrailingBit(global3.x) ^ ~4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.yy, global0.zy), vec2<u32>(arg_1.c.x, 4294967295u)), all(!vec2<bool>(arg_0.x, arg_0.x))), ~1u);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(927f)));
    var var_1 = Struct_2(-209f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, arg_1.a, 734f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, -268f, arg_1.a)), !vec3<bool>(true, true, arg_0.x))))), _wgslsmith_f_op_vec3_f32(-arg_1.b))), vec2<u32>(global3.x, global3.x));
    let var_2 = 431f;
    global2 = array<vec3<f32>, 32>();
    return _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(var_1.c.x, 32u)] * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.b), _wgslsmith_f_op_vec3_f32(arg_1.b * var_1.b), select(arg_0, arg_0, false)))), select(vec2<u32>(~1u, 4294967295u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global3.x), vec2<u32>(global0.x, var_1.c.x)), 65241u), (i32(-1i) * -2147483647i) != _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -231f), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, global3.x), global3.yy), ~global3.ww), 32u)], max(vec2<u32>(_wgslsmith_mod_u32(20266u, 53526u), _wgslsmith_add_u32(4294967295u, global0.x)), vec2<u32>(~var_1.c.x, ~global0.x)))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    global3 = vec4<u32>(0u ^ ~global3.x, abs(firstTrailingBit(0u)), 1u, 29828u);
    var var_0 = select(select(vec4<bool>(select(false, any(vec2<bool>(false, arg_1)), false), false, false, any(vec3<bool>(true, arg_1, arg_1))), !(!select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, true), true)), arg_1), !(!select(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, true, arg_1, arg_1)), !vec4<bool>(false, arg_1, true, arg_1), false)), arg_1);
    global4 = array<vec2<i32>, 5>();
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-1248f, global2[_wgslsmith_index_u32(arg_3.x, 32u)], global0.yz), Struct_2(280f, vec3<f32>(-973f, arg_0, -403f), vec2<u32>(56416u, global0.x)))) + arg_0) * _wgslsmith_f_op_f32(-511f + _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(arg_3.x, 32u)] * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24783u, 35707u, 33189u, 37708u), vec4<u32>(arg_3.x, 2952u, arg_3.x, 4294967295u)), 32u)]), vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0)), select(u_input.b.x == u_input.a.x, true, true))), vec3<f32>(-653f, -1302f, _wgslsmith_f_op_f32(f32(-1f) * -1129f)), !var_0.zzx)), abs(abs(select(_wgslsmith_div_vec2_u32(global3.zx, arg_3.zx), ~vec2<u32>(1485u, global3.x), var_0.x))));
    var_0 = vec4<bool>(var_0.x, all(!select(vec4<bool>(arg_1, arg_1, arg_1, var_0.x), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, false, false, var_0.x), arg_1))), true, select(_wgslsmith_clamp_u32(select(4294967295u, var_1.c.x, false), ~10717u, 48009u) <= arg_3.x, !arg_1, any(vec4<bool>(all(vec3<bool>(false, true, true)), arg_1 || true, true, var_0.x))));
    return !(!(!arg_1)) & !(_wgslsmith_f_op_f32(trunc(arg_0)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2275f * -1669f) + _wgslsmith_f_op_f32(-977f * arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~firstLeadingBit(49114u)) & min(global0.x, abs(~1u)));
    let var_1 = (false & func_4(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(var_0, 18u)], func_1())), true, Struct_1(u_input.a.x), ~(~vec3<u32>(var_0, 118733u, global3.x)))) & false;
    var var_2 = global0.x;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -902f);
    let var_4 = Struct_2(1074f, vec3<f32>(-429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1818f, 466f) - -1271f)), -1000f), ~(~_wgslsmith_div_vec2_u32(max(global3.xx, global3.wy), vec2<u32>(0u, var_0))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.a - var_4.b.x))) + 170f) * _wgslsmith_f_op_f32(floor(var_4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_4.b.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(719f, -2088f) - vec2<f32>(var_4.b.x, var_4.a)))))));
}

