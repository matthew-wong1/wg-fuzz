struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> bool {
    let var_0 = -(~u_input.a);
    var var_1 = firstLeadingBit(~var_0.x);
    return false;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, _wgslsmith_clamp_u32(abs(u_input.b), var_0, u_input.b)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.b, 52303u)), ~(~vec2<u32>(var_0, var_0))) ^ _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.b, 0u)), ~(~vec2<u32>(u_input.b, 23383u))));
    let var_2 = ~var_0;
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_2, ~(_wgslsmith_clamp_u32(var_0, var_1.x, var_0) | 10383u), 0u), ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4565u, var_0), vec2<u32>(u_input.b, var_1.x)) << (1u % 32u))));
    var_3 = var_2 >> (0u % 32u);
    return ~23925u;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = vec4<bool>(true, !func_2(0u, vec3<u32>(586u, 1u, u_input.b)), true, true);
    var var_2 = ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(~u_input.b, 0u, ~0u, ~u_input.b)), abs(vec4<u32>(~u_input.b, 1u, u_input.b, ~u_input.b)), firstLeadingBit(vec4<u32>(~u_input.b, ~u_input.b, u_input.b, 92876u)));
    var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(15506u, u_input.b | reverseBits(4294967295u), ~var_2.x, ~u_input.b), vec4<u32>(u_input.b, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_2.x, u_input.b), func_3(var_1.x))), ~(~min(27076u, 1u)), u_input.b));
    var var_3 = firstTrailingBit(u_input.a.yy) | -(vec2<i32>(-1i) * -vec2<i32>(-24726i, -2147483647i));
    return Struct_1(var_2.x, firstTrailingBit(0i), u_input.b, any(var_1.wyz));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = -max(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(10969i, arg_1.b), u_input.a.yy, vec2<bool>(false, true)), vec2<i32>(arg_0, u_input.a.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), vec2<i32>(arg_0, 2147483647i) | u_input.a.yz), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b & arg_1.b, arg_1.b), u_input.a.zy, reverseBits(-vec2<i32>(arg_1.b, u_input.a.x))));
    var var_1 = true;
    let var_2 = arg_1;
    let var_3 = arg_1.b;
    var var_4 = true;
    return ~var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.a.x, max(u_input.a.x | (-u_input.a.x ^ ~u_input.c), _wgslsmith_sub_i32(0i, 1i)));
    var_0 = func_4(i32(-1i) * -u_input.c, func_1());
    var_0 = _wgslsmith_add_i32(u_input.a.x, i32(-1i) * -1i);
    var_0 = ~(_wgslsmith_add_i32(_wgslsmith_div_i32(31707i, -4746i), u_input.a.x) & u_input.c) ^ ~firstLeadingBit(countOneBits(firstLeadingBit(u_input.a.x)));
    var_0 = 42i;
    var_0 = u_input.a.x;
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(27695u, 1u, u_input.b, u_input.b) & vec4<u32>(10948u, 13095u, u_input.b, u_input.b), ~vec4<u32>(13193u, u_input.b, u_input.b, 23237u)), _wgslsmith_add_u32(0u, ~u_input.b) ^ u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, 1000f, 374f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-465f, 2604f, 256f)))))), max(1u, 21163u), u_input.b);
}

