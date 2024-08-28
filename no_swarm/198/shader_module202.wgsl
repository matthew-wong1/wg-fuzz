struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: bool = true;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    global1 = true;
    let var_0 = -(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, -16235i, arg_1), vec3<i32>(2147483647i, arg_0.x, arg_0.x)) & abs(vec3<i32>(arg_0.x, arg_0.x, -2147483647i))) ^ firstLeadingBit(~(vec3<i32>(67060i, arg_1, 1i) | vec3<i32>(arg_1, 16543i, arg_1))));
    return -1i;
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_1(vec4<bool>(true, arg_0, arg_0, false));
    let var_1 = true || !(~(~u_input.b) < 1u);
    return 1i >> ((4294967295u >> (~firstLeadingBit(arg_1.x) % 32u)) % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = -vec3<i32>(~(~(-1i)), -func_3(true, vec2<u32>(1u, u_input.b)), -17214i);
    var_0 = vec3<i32>(-(var_0.x << (1u % 32u)), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(8177i, 1i, var_0.x, 33962i), -vec4<i32>(0i, var_0.x, var_0.x, -41326i)) ^ _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, var_0.x), _wgslsmith_sub_i32(0i, 10230i))) ^ (vec3<i32>(-1i) * -(~(vec3<i32>(-65541i, var_0.x, var_0.x) >> (vec3<u32>(u_input.b, 20886u, u_input.b) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(abs(var_0.x) & max(var_0.x, 33201i), var_0.x, (i32(-1i) * -47512i) >> (u_input.b % 32u)), vec3<i32>(1i | var_0.x, 28153i, var_0.x) | _wgslsmith_mod_vec3_i32(abs(-vec3<i32>(-2147483647i, var_0.x, var_0.x)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-28862i, -1i, var_0.x), vec3<i32>(-29156i, 0i, var_0.x), vec3<i32>(var_0.x, -13638i, var_0.x))));
    let var_1 = Struct_1(vec4<bool>((u_input.a >= 21696u) && true, true, false, false));
    let var_2 = abs(vec4<u32>(1u, min(1u, u_input.a), 1u, 49015u)) ^ ~_wgslsmith_sub_vec4_u32(~(vec4<u32>(1u, 1u, 0u, 0u) >> (vec4<u32>(26252u, u_input.b, u_input.a, 56767u) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(u_input.a, 24197u, u_input.b, u_input.a)));
    return Struct_2(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 0u, var_2.x), var_2 ^ firstLeadingBit(var_2)) ^ ~(~abs(vec4<u32>(17107u, u_input.b, var_2.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(1u, u_input.b) & vec2<u32>(0u, u_input.b)) >> (14259u % 32u), u_input.a);
    let var_1 = firstLeadingBit(vec3<i32>(func_1(vec2<i32>(~0i, 1i), -(i32(-1i) * -62092i)), -23193i, 1i >> (0u % 32u)));
    global0 = array<Struct_3, 14>();
    var var_2 = func_2();
    let var_3 = Struct_1(!(!vec4<bool>(true, false, var_1.x != var_1.x, any(vec2<bool>(false, true)))));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1211f, 230f), vec2<f32>(461f, 609f), var_3.a.x)), vec2<f32>(1f, 1f)))))), var_4.a.x);
}

