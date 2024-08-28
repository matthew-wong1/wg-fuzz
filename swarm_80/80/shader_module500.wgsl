struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = all(vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), false, all(vec2<bool>(true, true))));
    var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(1391f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1125f + 1586f))))))), _wgslsmith_f_op_f32(1039f - -145f), -1040f);
    var_0 = !(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.d, -34106i), vec3<i32>(-1i, 8980i, u_input.d), vec3<i32>(u_input.d, -2147483647i, 1i))), vec3<i32>(-91219i, 0i, 10596i)) > max(u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.d, u_input.c.x, u_input.a), -vec4<i32>(u_input.d, 15979i, u_input.a, u_input.d))));
    var var_2 = vec3<u32>(firstTrailingBit(4294967295u), reverseBits(0u), 1u);
    return var_1.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)))), 1u);
    let var_1 = ~max(~vec4<i32>(_wgslsmith_sub_i32(u_input.a, -20699i), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, 0i, u_input.c.x), vec4<i32>(u_input.a, 0i, 0i, u_input.d)), _wgslsmith_div_i32(2147483647i, u_input.c.x)), abs(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(28572i, u_input.a, u_input.a, u_input.d)), min(vec4<i32>(u_input.d, 0i, 2147483647i, u_input.a), vec4<i32>(-7016i, 2147483647i, 0i, 78809i)))));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - _wgslsmith_f_op_f32(1762f - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -554f)), ~firstTrailingBit(23922u));
    var var_2 = -1296f;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_3()))), u_input.b.x);
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -855f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), var_0.b), vec2<f32>(471f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, -101f), 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-303f, 456f) * -914f))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(833f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1368f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1749f, -1159f) * vec2<f32>(-1000f, -274f)))))))));
    let var_1 = -(~vec2<i32>(-(u_input.a >> (u_input.b.x % 32u)), -15792i));
    let var_2 = 837f;
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1487f, var_2) + var_0.b))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(408f, var_2), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1389f, var_0.a.a.x), vec2<f32>(1789f, var_2), true)))))), vec2<bool>(all(vec3<bool>(true, true, true)) & true, true)))).a;
    let var_4 = ~_wgslsmith_div_vec4_u32(vec4<u32>(106489u, 1u | var_3.b, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(var_0.a.b, 17227u, 1u)), abs(vec3<u32>(4294967295u, var_0.a.b, 10151u))), ~var_0.a.b), vec4<u32>(var_3.b, _wgslsmith_mod_u32(1u, 16991u), u_input.b.x, abs(var_3.b & 0u)));
    return Struct_1(var_0.a.a, u_input.b.x & (1u & ~var_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(min(-1544f, -752f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2357f, -506f)) * vec2<f32>(_wgslsmith_f_op_f32(1116f - 589f), 2003f))), u_input.b.x & u_input.b.x);
    var_0 = func_1();
    let var_1 = (reverseBits(~vec3<u32>(9528u, u_input.b.x, var_0.b) | min(vec3<u32>(0u, 26759u, u_input.b.x), vec3<u32>(u_input.b.x, 13866u, 1u))) >> (firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, var_0.b, var_0.b), vec3<u32>(u_input.b.x, var_0.b, 38043u))) % vec3<u32>(32u))) | vec3<u32>(4294967295u, 4294967295u, u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(592f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1643f + _wgslsmith_f_op_f32(-var_0.a.x))))))));
    let var_3 = abs(_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, u_input.a, -12621i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)), firstTrailingBit(max(~vec3<i32>(-2147483647i, u_input.c.x, 1i), min(vec3<i32>(u_input.c.x, u_input.d, -1i), vec3<i32>(u_input.a, 0i, u_input.d))))));
    let var_4 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1127f, 327f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-916f, var_0.a.x) * vec2<f32>(-1000f, 461f)))).a.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.b.x), ~4294967295u) ^ var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1089f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.d << (func_1().b % 32u)), 1u);
}

