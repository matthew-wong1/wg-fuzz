struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-852f);

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = firstLeadingBit(90195u | firstLeadingBit(u_input.d));
    var var_1 = Struct_5(_wgslsmith_div_f32(global0.a, -303f));
    var var_2 = !arg_1.zx;
    var var_3 = arg_2;
    let var_4 = _wgslsmith_dot_vec2_i32(-vec2<i32>(select(abs(u_input.a), var_3.e.x, arg_1.x), 19811i ^ arg_2.e.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -arg_2.c.a, arg_2.c.a) >> (~(var_3.d.yy & var_3.d.xz) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -929f)))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d, vec3<bool>(arg_0, arg_0, false), Struct_3(global0.a, Struct_1(vec2<i32>(u_input.a, 30842i)), Struct_2(u_input.b.wy, u_input.d, vec2<f32>(global0.a, global0.a)), vec4<u32>(31727u, u_input.d, 1u, 7149u), vec2<i32>(u_input.c, -1i))))) - _wgslsmith_div_f32(563f, _wgslsmith_div_f32(145f, -115f)))));
    let var_0 = ~vec2<u32>(~77928u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20509u, u_input.d, u_input.d, 1u), vec4<u32>(4294967295u, 21145u, u_input.d, u_input.d)), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 1u, 3842u, u_input.d)) & u_input.d, _wgslsmith_div_u32(9787u, ~u_input.d)));
    global0 = Struct_5(global0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-491f, -2331f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, global0.a))))))));
    global1 = -u_input.b.x;
    return Struct_3(var_1.x, Struct_1(u_input.b.zy), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -22669i, -1i), u_input.b.yx), _wgslsmith_add_u32(u_input.d, u_input.d) >> (max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, 60898u), vec3<u32>(var_0.x, 56125u, 14652u)), var_0.x) % 32u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1133f, var_1.x), vec2<f32>(271f, -1869f))) * vec2<f32>(-730f, -376f))))), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), var_0) ^ (var_0.x & 1u)), 1u, abs(~(~u_input.d)), ~u_input.d), max(u_input.b.wy, _wgslsmith_mod_vec2_i32(u_input.b.yw, u_input.b.zw)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_5, arg_3: u32) -> Struct_4 {
    global1 = 1i;
    global0 = arg_2;
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a)))), 795f, -1143f, arg_1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, arg_2.a, 521f, arg_1.c.c.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, 522f, 1432f, -392f) - vec4<f32>(arg_1.a, arg_2.a, -149f, 727f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.c.x, arg_2.a, 179f, global0.a), vec4<f32>(arg_1.a, arg_1.a, arg_2.a, 1056f)))))));
    let var_1 = abs(arg_0.x);
    global0 = arg_2;
    return Struct_4(~abs(arg_0.x) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(max(arg_0.xxx, vec3<i32>(19138i, arg_0.x, -1i)), u_input.b.wzx), -(vec3<i32>(arg_0.x, arg_1.b.a.x, arg_1.c.a.x) & u_input.b.yyz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), global0.a, _wgslsmith_f_op_f32(2027f - global0.a), 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.c.c.x, 329f, -181f) * vec4<f32>(-2434f, var_0.x, arg_2.a, arg_2.a)) * vec4<f32>(1040f, global0.a, -710f, arg_2.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-554f, global0.a, -859f, arg_2.a), vec4<f32>(var_0.x, 3172f, var_0.x, 1089f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.c.c.x, arg_2.a, -124f))))));
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> i32 {
    let var_0 = func_4(u_input.b, func_2(true), arg_0, ~64905u);
    let var_1 = vec4<u32>(~_wgslsmith_div_u32(u_input.d, abs(_wgslsmith_sub_u32(u_input.d, u_input.d))), 1u, 63775u, _wgslsmith_div_u32(~u_input.d, reverseBits(1u)));
    global1 = reverseBits(1i);
    let var_2 = Struct_1(u_input.b.yz);
    global0 = arg_0;
    return var_2.a.x;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> u32 {
    global0 = Struct_5(_wgslsmith_f_op_f32(-global0.a));
    return ~89209u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-28132i, u_input.b.x);
    var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-global0.a);
    var var_2 = func_5(func_1(Struct_5(_wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(154f, -589f))), _wgslsmith_f_op_f32(f32(-1f) * -742f)), -(~vec2<i32>(~1i, 1i)), 110862u, -1i & u_input.a);
    let var_3 = func_2(any(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(false, false, true)))));
    global1 = -7177i;
    var var_4 = func_4(_wgslsmith_clamp_vec4_i32(-u_input.b, vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.a, 4398i, 25617i), abs(vec4<i32>(88066i, -2147483647i, u_input.b.x >> (var_3.c.b % 32u), i32(-1i) * -23756i))), var_3, Struct_5(_wgslsmith_f_op_f32(select(var_3.a, 1589f, all(vec3<bool>(false, false, false)) != false))), reverseBits(var_3.c.b));
    var var_5 = var_3.b;
    var_0 = _wgslsmith_clamp_i32(-21897i, -2572i, func_1(Struct_5(_wgslsmith_f_op_f32(func_3(func_5(var_5.a.x, u_input.b.zw, 46220u, 2147483647i), vec3<bool>(true, true, true), var_3))), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), global0.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b.x), -1119f)), u_input.c);
}

