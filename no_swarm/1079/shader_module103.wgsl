struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    return (arg_1.a > arg_1.a) || (((select(38417i, 0i, arg_1.c.x) < -2147483647i) || true) != true);
}

fn func_3() -> vec3<i32> {
    var var_0 = -377f;
    var_0 = 1293f;
    let var_1 = true;
    var var_2 = Struct_1(-998f, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-13924i, 31090i, u_input.b.x, -2147483647i), u_input.d, false), vec4<i32>(u_input.d.x, 1957i, u_input.b.x, u_input.b.x)), ~(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d.x))), u_input.c), !vec2<bool>(select(true, var_1, var_1), true));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_div_f32(-1263f, -645f));
    return firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, _wgslsmith_clamp_i32(u_input.d.x, -1i, u_input.b.x), _wgslsmith_sub_i32(-27157i, -7995i)), u_input.d.wwz));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = vec2<f32>(-1017f, _wgslsmith_f_op_f32(ceil(arg_0.a)));
    let var_1 = Struct_1(arg_0.a, -2674i, vec2<bool>(any(vec2<bool>(true, arg_1)), arg_0.c.x));
    let var_2 = Struct_1(var_0.x, reverseBits(reverseBits(var_1.b)), !(!vec2<bool>(all(vec3<bool>(arg_1, var_1.c.x, arg_1)), true)));
    var var_3 = var_2;
    let var_4 = func_3();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(975f, 198f))) * _wgslsmith_f_op_f32(f32(-1f) * -304f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, var_0)))))));
    var var_2 = func_2(Struct_1(-1522f, 4094i, vec2<bool>(func_1(Struct_1(var_1.x, u_input.b.x, vec2<bool>(true, false)), Struct_1(var_1.x, u_input.d.x, vec2<bool>(true, true))), any(vec3<bool>(false, false, false)))), true);
    let var_3 = !var_2.c;
    var var_4 = u_input.a.x;
    var_2 = func_2(func_2(func_2(Struct_1(-775f, ~u_input.b.x, !var_3), true), var_3.x), var_3.x);
    var_4 = _wgslsmith_add_u32(102393u, _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~(~38469u)), abs(67262u)));
    let var_5 = ~vec4<i32>(_wgslsmith_mult_i32(2147483647i, u_input.c.x), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-15187i, 2147483647i), u_input.d.x ^ var_2.b), 0i), var_2.b >> ((u_input.a.x | min(u_input.a.x, 0u)) % 32u), 26883i);
    var var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_div_f32(-1000f, var_1.x)))), _wgslsmith_f_op_f32(select(var_1.x, var_2.a, var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec3<u32>(0u, u_input.a.x, 0u))) >> (~abs(~vec3<u32>(102666u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -2237f), _wgslsmith_sub_i32(0i, 1i), ~(~vec3<u32>(16523u, u_input.a.x, 5146u) | min(vec3<u32>(15475u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 1u, u_input.a.x) | vec3<u32>(1u, u_input.a.x, u_input.a.x))));
}

