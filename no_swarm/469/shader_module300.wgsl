struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = Struct_4(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1779f, -767f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))))), u_input.c.x);
    var var_1 = Struct_3(abs(abs(firstLeadingBit(vec3<i32>(u_input.a.x, 1i, 9337i)))), Struct_1(~var_0.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, -143f)), arg_0, _wgslsmith_f_op_f32(exp2(var_0.b.x)))))), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)) || true, true), 0u, select(select(vec4<bool>(true, any(vec4<bool>(true, false, false, false)), arg_0 == -2853f, all(vec3<bool>(false, true, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true & select(true, false, true), true, true), true));
    var var_2 = global0[_wgslsmith_index_u32(var_0.c, 27u)];
    return 101536i;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_2, 27>();
    let var_0 = u_input.c.x;
    global0 = array<Struct_2, 27>();
    let var_1 = -vec3<i32>(-_wgslsmith_div_i32(max(u_input.b, u_input.a.x), -2147483647i), u_input.a.x, ~(~func_3(arg_0.b.x)));
    global0 = array<Struct_2, 27>();
    return _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1352f, arg_0.b.x))), 1654f));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = Struct_4(vec2<i32>(-(~_wgslsmith_div_i32(u_input.a.x, 23875i)), arg_2.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), arg_2.b.a);
    var_0 = Struct_4(vec2<i32>(49096i, var_0.a.x), vec2<f32>(arg_2.b.b.x, _wgslsmith_f_op_f32(arg_2.b.b.x * -286f)), 1u);
    var_0 = Struct_4(max(vec2<i32>(~var_0.a.x, countOneBits(-26577i)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~var_0.a, vec2<i32>(u_input.a.x, -53045i)), ~var_0.a)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-702f, _wgslsmith_f_op_f32(min(-700f, 1144f))), var_0.b.x), var_0.b.x), 1u);
    return Struct_4(vec2<i32>(-u_input.b & abs(~arg_2.a.x), -max(1i, ~2147483647i)), var_0.b, ~var_0.c);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    let var_0 = Struct_3(min(-countOneBits(vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.b)) << (~(~u_input.c) % vec3<u32>(32u)), min(min(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.a.x, arg_0.a.x, 1i)), ~vec3<i32>(arg_0.a.x, 6354i, -84159i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.b, -11280i, 2147483647i)) & select(vec3<i32>(u_input.a.x, arg_0.a.x, -38684i), vec3<i32>(u_input.b, -51294i, arg_0.a.x), arg_1))), Struct_1(u_input.c.x, vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, -513f))))), vec2<bool>(~_wgslsmith_div_i32(arg_0.a.x, u_input.a.x) >= u_input.b, arg_1), countOneBits(arg_0.c), vec4<bool>(false, !(_wgslsmith_add_u32(0u, 4294967295u) <= ~u_input.c.x), !(_wgslsmith_mult_u32(u_input.c.x, 0u) > 0u), arg_1));
    let var_1 = var_0.b;
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2))))))), countOneBits(var_1.a ^ 1u), var_0);
    var_2 = arg_0;
    return var_1;
}

fn func_1() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(987f, -1000f, 496f, -612f) * vec4<f32>(-985f, 1000f, 838f, 710f)))))), func_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(floor(326f)), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.c.x, vec3<f32>(265f, -1573f, -799f))))), u_input.c.x, Struct_3(vec3<i32>(u_input.b, u_input.a.x, u_input.a.x), Struct_1(1u, vec3<f32>(875f, 1000f, 2066f)), vec2<bool>(true, true), u_input.c.x, select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))), false, vec2<f32>(-1000f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1381f, 402f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(289f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(909f, 323f) * vec2<f32>(-1000f, 1091f))))));
    var var_1 = vec2<bool>(all(vec4<bool>(false, true, true, select(true, any(vec4<bool>(true, true, true, false)), true))), all(vec4<bool>(true, any(vec2<bool>(false, true)), select(true, var_0.a.x < -1000f, any(vec4<bool>(false, true, false, false))), true)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = (u_input.a.x | _wgslsmith_mod_i32(abs(0i), ~(i32(-1i) * -34865i))) & ~(-abs(1i));
    global0 = array<Struct_2, 27>();
    var_0 = -34345i;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(-1i) * -u_input.a), vec2<i32>((u_input.a.x | ~u_input.a.x) & u_input.a.x, -41914i), _wgslsmith_div_i32(max(-min(u_input.a.x, -1i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -17772i, u_input.b), vec4<i32>(2147483647i, 68671i, u_input.b, u_input.a.x), vec4<i32>(u_input.b, u_input.a.x, -2147483647i, -1i)))), ~(u_input.a.x & _wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.a.x))), -2147483647i, (vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(-14815i, u_input.a.x)), u_input.a.x, _wgslsmith_sub_i32(-2147483647i, -13074i), 1i) | vec4<i32>(func_1(), -13324i, -1i, u_input.b)) & reverseBits(-vec4<i32>(6758i, -35098i, -91132i, u_input.a.x)));
}

