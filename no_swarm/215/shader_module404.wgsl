struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: vec4<i32> = vec4<i32>(-1i, 13115i, -25131i, 2147483647i);

var<private> global4: f32 = -1000f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<u32>) -> bool {
    global3 = vec4<i32>(u_input.c, u_input.a.x, -78341i, u_input.b);
    global3 = vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), u_input.a.x), _wgslsmith_sub_i32(-29159i, _wgslsmith_add_i32(_wgslsmith_mult_i32(49971i, 9158i), -1i)), min(-2147483647i, global3.x) << ((reverseBits(countOneBits(global2.c.x)) << (global2.b % 32u)) % 32u), max(select(arg_0.x, u_input.c, global2.d), abs(~(-arg_1))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442f * -364f));
    global4 = 440f;
    return false || !global2.d;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(~firstTrailingBit(-24887i), global2.a.x & global2.e.x), u_input.d, -(~1i), 1i), global2.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1703f, -1895f, -1955f, 1996f)) + _wgslsmith_div_vec4_f32(vec4<f32>(140f, 135f, arg_0.x, -1513f), vec4<f32>(arg_0.x, 658f, 202f, 616f))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -408f, -1036f, -457f), vec4<f32>(-189f, -1063f, arg_0.x, -712f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 532f, -557f, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1379f, arg_0.x, arg_0.x, -1000f) + vec4<f32>(arg_0.x, 479f, 457f, arg_0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(606f, arg_0.x, -1300f, arg_0.x), vec4<f32>(arg_0.x, 1233f, 182f, arg_0.x)))))))));
    let var_2 = vec3<bool>(!select(!(!global2.d), !global2.d, all(vec2<bool>(false, global2.d))), func_3(global2.e.ww & -global3.xw, _wgslsmith_mod_i32(var_0, i32(-1i) * -2147483647i), ~vec3<u32>(0u, 1u, 4294967295u) | vec3<u32>(global2.b, global2.b, global0.x)) || (false != all(!vec3<bool>(global2.d, global2.d, global2.d))), true);
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * -294f)));
    var var_3 = ~(vec2<u32>(firstTrailingBit(global2.b) >> (countOneBits(global2.b) % 32u), min(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, global2.b, global2.c.x, 0u), global2.c))) ^ max(vec2<u32>(global0.x, global0.x) >> (vec2<u32>(1u, global2.c.x) % vec2<u32>(32u)), vec2<u32>(global0.x, 1u) << (~global2.c.ww % vec2<u32>(32u))));
    return 1u;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(ceil(1033f));
    let var_0 = u_input.d ^ -44028i;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1085f, 1000f)), -1139f);
    global0 = global2.c.yw & ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.c.wy, global2.c.xw, global2.c.zy), ~global2.c.wx));
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, 2147483647i, -(~43660i), max(u_input.a.x, global3.x) & 2147483647i), ~global2.e), (global0.x ^ func_2(vec3<f32>(arg_0, arg_2, 320f))) ^ global2.c.x, _wgslsmith_div_vec4_u32(~(~vec4<u32>(global0.x, global2.c.x, global0.x, global0.x)), vec4<u32>(reverseBits(global0.x), ~global2.c.x, 4294967295u << (global0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(33406u, global2.b), global2.c.zy)) & vec4<u32>(abs(global2.b), global0.x, 18325u, global0.x >> (2332u % 32u))), global2.d, countOneBits(vec4<i32>(-1i, u_input.b, var_0, -1i >> (global0.x % 32u))));
    return Struct_1(vec4<i32>(global3.x, global3.x, -u_input.b, ~(-5891i)) & vec4<i32>(global2.a.x, 4566i, -2147483647i, -2147483647i), 116234u, countOneBits(var_1.c), true, -global2.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2076f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1754f)) - _wgslsmith_f_op_f32(step(-568f, -738f)))) + 1f);
    global2 = Struct_1(firstTrailingBit(-abs(vec4<i32>(arg_0.a.x, 0i, 45729i, global3.x))), ~(global0.x >> ((global2.b ^ abs(67014u)) % 32u)), vec4<u32>(71388u, (0u ^ global0.x) & 1u, global2.b, arg_0.c.x) >> (global2.c % vec4<u32>(32u)), true, vec4<i32>(~(~arg_0.e.x), 0i, -16163i, reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.e.x, arg_0.a.x, 2147483647i, arg_1), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 26084i, 2745i), global2.a)))));
    global0 = abs(arg_0.c.zz) << (arg_0.c.xz % vec2<u32>(32u));
    var var_1 = global2.e.x;
    global3 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, global2.a.x, 2147483647i, global3.x), vec4<i32>(-1i, 2147483647i, 2147483647i, -2147483647i)), _wgslsmith_sub_i32(arg_1, arg_0.e.x), ~global2.a.x) >> (~(~arg_0.c) % vec4<u32>(32u))), global2.a, global2.e);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0, -1364f)), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(571f, var_0))), false || arg_0.d)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1200f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2364f, var_0), vec2<f32>(1223f, var_0))))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(985f, var_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.e.x;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -572f)), _wgslsmith_div_vec2_f32(vec2<f32>(563f, -211f), vec2<f32>(1601f, 761f)), global2.e.x > global2.e.x))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1253f, 1574f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1741f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(279f, 121f)) - 2442f), 584f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(func_1(_wgslsmith_f_op_f32(var_1.x - 2453f), var_1.x, _wgslsmith_f_op_f32(1348f + var_1.x)), -(i32(-1i) * -35674i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_1.x)))))));
    var_0 = 0i;
    let var_3 = global2.d;
    var var_4 = Struct_1(_wgslsmith_mod_vec4_i32(global2.e, global2.e), 1u, ~max(abs(firstLeadingBit(global2.c)), global2.c), false, abs(vec4<i32>(-1i) * -(~global2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.c.x, abs(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, global3.x), _wgslsmith_mult_i32(-2147483647i, var_4.a.x)), var_4.e.x >> (~var_4.b % 32u), -_wgslsmith_dot_vec4_i32(var_4.a, vec4<i32>(-2189i, global3.x, -5074i, global3.x)), _wgslsmith_dot_vec4_i32(select(var_4.e, vec4<i32>(var_4.a.x, 18888i, global3.x, 1i), global2.d), -vec4<i32>(-7035i, u_input.a.x, var_4.a.x, -11248i)))), ~(-8232i), -global2.a.x, _wgslsmith_div_f32(801f, _wgslsmith_f_op_f32(f32(-1f) * -597f)));
}

