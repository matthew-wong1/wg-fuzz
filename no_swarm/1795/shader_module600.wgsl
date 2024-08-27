struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = 121f;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - arg_1.a) * _wgslsmith_f_op_f32(ceil(1469f))), arg_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-3339f)), _wgslsmith_f_op_f32(-arg_1.a)))))) + vec3<f32>(arg_1.a, 482f, _wgslsmith_f_op_f32(-arg_1.a)));
    let var_2 = u_input.c.x;
    var var_3 = Struct_1(658f);
    return _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(-243f), Struct_1(119f), ~(-2147483647i))))) + _wgslsmith_div_f32(2336f, _wgslsmith_f_op_f32(func_3(Struct_1(2342f), Struct_1(1000f), arg_1 & 2147483647i)))));
    var var_1 = ~vec2<i32>(-1i << (countOneBits(_wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(51592u, 1u, arg_0.x))) % 32u), arg_1);
    return Struct_1(_wgslsmith_f_op_f32(var_0.a - var_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = max(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, countOneBits(u_input.c.x)), 4294967295u), 4114u), u_input.c.x);
    let var_1 = Struct_1(arg_0.a);
    let var_2 = vec4<bool>(true, !arg_1.x, all(!(!select(vec4<bool>(false, false, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, arg_1.x)))), true);
    let var_3 = arg_1.yz;
    let var_4 = vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(-21655i, ~(-11490i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, reverseBits(_wgslsmith_clamp_i32(-71334i, -2147483647i, 0i))), 0i));
    return var_4.x > _wgslsmith_add_i32(var_4.x, 1i);
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2475f, -944f)));
    let var_1 = !all(vec2<bool>(u_input.b.x != 1u, !(var_0 <= 121f)));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.x), arg_0.xx))), -6317i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)))))));
    var var_4 = vec4<bool>(var_1, all(vec4<bool>(true, all(!vec2<bool>(false, var_1)), !(true & var_1), var_1)), false, func_4(func_2(u_input.b, -55467i), vec3<bool>(true, any(vec4<bool>(true, var_1, var_1, true)), var_3.a != -403f), Struct_1(1000f)) && all(select(select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, true, var_1, var_1)), vec4<bool>(var_1, true, var_1, true), vec4<bool>(false, true, false, var_1))));
    return _wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(arg_0, min(arg_0, vec3<i32>(49936i, arg_0.x, 1i)) & arg_0, arg_0)), _wgslsmith_add_vec3_i32(arg_0, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-firstLeadingBit(vec3<i32>(62451i, -38304i, firstLeadingBit(-1i))));
    var_0 = firstLeadingBit(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(-1i ^ var_0.x, min(0i, var_0.x)), 1i, func_1(vec3<i32>(888i, -1i, var_0.x)))));
    var_0 = -(vec3<i32>(-1i) * -vec3<i32>(~var_0.x, -10830i >> (u_input.a.x % 32u), 1i));
    var_0 = ~vec3<i32>(20266i, 1i, ~(1i >> (min(u_input.b.x, u_input.a.x) % 32u)));
    var_0 = vec3<i32>(var_0.x << (u_input.c.x % 32u), -22367i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, reverseBits(-1i), 0i), select(~vec3<i32>(var_0.x, var_0.x, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, -20783i, -25116i)), vec3<bool>(true, true, true))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(var_0.x, 0i, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x), true), vec3<i32>(var_0.x, 0i, var_0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -19066i, -2147483647i), -vec3<i32>(var_0.x, 5724i, -39383i)), -abs(vec3<i32>(0i, var_0.x, var_0.x)))));
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.a.x, vec4<i32>(reverseBits(-62298i), 2147483647i, reverseBits(select(52463i, -1i, true)), var_0.x) | select(_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x), vec4<i32>(56940i, -30229i, -2147483647i, var_0.x)), vec4<i32>(var_0.x, var_0.x, -var_0.x, var_0.x & var_0.x), vec4<bool>(true, true, 82247u >= u_input.b.x, true)), 1324f, vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f), 1f))));
}

