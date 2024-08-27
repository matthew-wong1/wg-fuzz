struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true, Struct_1(-global1.a, global1.a.x | ((global1.a.x | global1.a.x) ^ max(-1566i, 0i))), Struct_1(global1.a, 29219i));
    global0 = array<vec3<u32>, 14>();
    var var_1 = var_0;
    let var_2 = vec4<f32>(-105f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1435f)))))), 948f, 1f);
    var var_3 = vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x);
    return var_1.c;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_2(true, var_0, Struct_1(var_0.a ^ abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, global1.a.x), global1.a)), var_0.b));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-420f)))))));
    global1 = Struct_1(global1.a, min(-(var_0.a.x >> (29300u % 32u)), -2147483647i));
    let var_3 = reverseBits(~u_input.a);
    return var_1.c;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = ~firstLeadingBit(i32(-1i) * -_wgslsmith_sub_i32(arg_2.b, arg_1.b));
    global0 = array<vec3<u32>, 14>();
    let var_1 = u_input.a.x;
    let var_2 = func_2();
    global2 = array<vec4<f32>, 6>();
    return ~_wgslsmith_mult_u32(var_1, ~(~22106u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(any(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), all(vec3<bool>(false, false, false))))), Struct_1(global1.a, _wgslsmith_dot_vec2_i32(-(~global1.a.zz), firstTrailingBit(~global1.a.zx))), Struct_1(vec3<i32>(-global1.a.x, _wgslsmith_mult_i32(global1.a.x | -21502i, _wgslsmith_clamp_i32(2147483647i, global1.a.x, -36566i)), global1.a.x), -global1.b));
    var var_1 = var_0;
    var var_2 = var_0.c;
    global2 = array<vec4<f32>, 6>();
    var_2 = Struct_1(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(36198i, var_0.b.b, var_1.c.b), vec3<i32>(global1.b, 15298i, var_0.b.b))) & vec3<i32>(-1i, var_2.a.x, var_2.a.x << (35793u % 32u)), -12170i);
    var var_3 = Struct_1(abs(~var_0.b.a), var_2.b);
    var var_4 = !select(!vec3<bool>(all(vec2<bool>(var_0.a, true)), true, true), vec3<bool>(true, all(select(vec4<bool>(var_1.a, var_1.a, var_0.a, var_1.a), vec4<bool>(true, false, false, false), vec4<bool>(var_1.a, true, false, true))), false), vec3<bool>(true, var_0.a, true));
    var var_5 = Struct_2(true, var_0.b, func_1());
    let var_6 = Struct_1(var_1.c.a, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.b.x), u_input.b.x), 4294967295u >> (u_input.b.x % 32u), func_3(select(select(vec3<bool>(var_5.a, var_5.a, var_5.a), vec3<bool>(var_5.a, var_1.a, var_1.a), vec3<bool>(true, true, true)), select(vec3<bool>(var_1.a, false, var_5.a), vec3<bool>(false, var_4.x, false), var_5.a), vec3<bool>(false, true, var_0.a)), func_2(), func_1(), _wgslsmith_mod_i32(var_0.b.b ^ global1.a.x, ~(-4214i)))));
}

