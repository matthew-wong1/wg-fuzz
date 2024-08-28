struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> bool {
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = select(vec2<bool>(all(vec2<bool>(false, true)) | !any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), vec2<bool>(true, true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_2 = select(vec4<i32>(1i, 1i, 1i, -1i), max(~vec4<i32>(82057i, -55118i, 2147483647i, 1i), vec4<i32>(-1i, 1i, ~2147483647i, 1i)), false) >> ((select(vec4<u32>(1u, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, arg_0.a), 26278u), ~u_input.a & ~u_input.a, _wgslsmith_mult_u32(var_0.a, arg_0.a) == _wgslsmith_add_u32(4294967295u, var_0.a)) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = 0u << (~_wgslsmith_mod_u32(select(1u, firstTrailingBit(var_0.a), func_1()), _wgslsmith_sub_u32(arg_0.a, u_input.a.x) | reverseBits(var_0.a)) % 32u);
    let var_4 = var_0;
    return firstLeadingBit(max(select(~var_3, ~(~1u), true), countOneBits(var_4.a)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = true;
    let var_1 = Struct_1(1u | func_3(Struct_1(1u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e, arg_1.e, arg_1.e))))));
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(~vec3<i32>(1i, -11177i, arg_0)), _wgslsmith_add_vec3_i32(vec3<i32>(-4526i, 2147483647i, arg_0), -vec3<i32>(-47892i, arg_0, 9664i))), vec3<i32>(reverseBits(1i) >> ((var_1.a ^ var_1.a) % 32u), arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -1i), vec4<i32>(arg_0, arg_0, 2147483647i, -1692i)))) ^ _wgslsmith_add_vec3_i32(abs(vec3<i32>(16675i, _wgslsmith_clamp_i32(27946i, arg_0, arg_0), -2147483647i ^ arg_0)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-29265i, 21732i, -2147483647i), -vec3<i32>(arg_0, 0i, arg_0)) << (vec3<u32>(~11707u, ~u_input.a.x, 1u) % vec3<u32>(32u)));
    var_2 = ~firstTrailingBit(-vec3<i32>(-1i, var_2.x, arg_0)) << (u_input.a.ywz % vec3<u32>(32u));
    var_0 = !arg_1.b.x;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(51190u, select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, all(vec3<bool>(false, false, true)))), vec3<bool>(func_1(), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), true), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), 8461u, Struct_1(1u), 1216f);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(countOneBits(~(i32(-1i) * -8008i)), Struct_2(434u, !var_0.b, u_input.a.x, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + -539f))));
}

