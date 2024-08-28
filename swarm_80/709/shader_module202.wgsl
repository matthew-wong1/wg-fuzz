struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    let var_1 = ~(~(~(~max(0u, arg_0.x))));
    return 69348i;
}

fn func_4(arg_0: i32) -> vec3<i32> {
    var var_0 = Struct_1(select(_wgslsmith_div_vec4_i32(-(~vec4<i32>(38868i, 0i, -55815i, u_input.c)), -vec4<i32>(26957i, -15004i, u_input.c, arg_0)), select((vec4<i32>(arg_0, u_input.a, 12271i, u_input.c) ^ vec4<i32>(arg_0, arg_0, arg_0, 1i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 0i, 2147483647i, u_input.c), vec4<i32>(u_input.a, -1i, -51349i, 54492i)), vec4<i32>(-41465i, u_input.c, select(arg_0, arg_0, true), abs(-12700i)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true)));
    var_0 = Struct_1(vec4<i32>(reverseBits(arg_0) | u_input.a, -1i, 1i, -1i));
    var var_1 = false;
    let var_2 = Struct_1(vec4<i32>(-5202i, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.a.x, -2147483647i), min(var_0.a.x, 31640i)), i32(-1i) * -1i, -1i) & _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_0.a.x, -2147483647i, -8076i, -5583i)), var_0.a, -abs(vec4<i32>(-3528i, var_0.a.x, -1i, 16205i))));
    var_0 = Struct_1(max(vec4<i32>(firstTrailingBit(36293i & var_2.a.x), ~var_2.a.x >> (_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) % 32u), arg_0, var_0.a.x), -firstLeadingBit(firstTrailingBit(vec4<i32>(-2147483647i, 0i, var_2.a.x, 2562i)))));
    return var_2.a.xyy;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(select(vec4<i32>(_wgslsmith_sub_i32(abs(u_input.a), max(u_input.c, -2147483647i)), 1i >> (u_input.b % 32u), firstLeadingBit(-u_input.a), max(_wgslsmith_mod_i32(u_input.a, u_input.a), 24659i)), vec4<i32>(~min(1i, 1i), 33356i, ~reverseBits(u_input.c), select(_wgslsmith_mult_i32(4851i, -35880i), -1i, true)), !(!select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)))));
    let var_1 = func_4(func_3(~(vec4<u32>(u_input.b, 4294967295u, u_input.b, 30002u) & ~vec4<u32>(0u, u_input.b, 4294967295u, u_input.b)), Struct_1(_wgslsmith_mult_vec4_i32(~var_0.a, var_0.a))));
    let var_2 = true;
    var_0 = Struct_1(vec4<i32>(abs(~var_0.a.x), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-12976i, var_1.x, 2147483647i), var_0.a.zyy)), u_input.a, firstTrailingBit(-3540i) ^ var_0.a.x));
    let var_3 = vec4<u32>(1u, (u_input.b ^ 0u) & 48357u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, ~43197u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(22476u, 20020u), vec2<u32>(u_input.b, 43159u))) >> (~(min(u_input.b, 41566u) << (_wgslsmith_add_u32(350u, u_input.b) % 32u)) % 32u), firstLeadingBit(u_input.b));
    return Struct_1(var_0.a);
}

fn func_1() -> f32 {
    let var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(reverseBits(1u), abs(u_input.b), 0u)) ^ firstLeadingBit(min(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b, 37610u), vec3<u32>(1u, 1u, 17149u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 89526u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 8995u), vec3<u32>(4294967295u, u_input.b, 34262u))));
    var var_1 = _wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, ~u_input.c), ~(~(~(vec2<i32>(u_input.a, 1i) << (var_0.xx % vec2<u32>(32u))))));
    let var_2 = !all(vec2<bool>(true, true));
    let var_3 = func_2(vec3<bool>(var_2, true, var_2));
    var var_4 = func_2(select(select(select(vec3<bool>(false, var_2, false), !vec3<bool>(false, true, var_2), select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, var_2, true), vec3<bool>(true, var_2, var_2))), vec3<bool>(any(vec4<bool>(false, false, true, false)), var_2, var_2), !vec3<bool>(var_2, var_2, false)), select(vec3<bool>(!var_2, var_2, select(var_2, var_2, false)), !vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, false, true)), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-447f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-846f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(980f, -283f))))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1670f)))), _wgslsmith_f_op_f32(1767f * -1175f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-322f * _wgslsmith_f_op_f32(545f + 290f))))));
    let var_1 = func_2(vec3<bool>(true, true, (37570i == u_input.a) || false));
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(floor(var_0.x));
    var var_3 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.a.x, u_input.a, -11286i, -13991i), _wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(u_input.c, -1i, u_input.c, 29393i))), -firstTrailingBit(vec4<i32>(11341i, var_1.a.x, -29721i, -18599i))) << (~1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-var_1.a.x, -max(4218i, var_1.a.x), 36601i), ~_wgslsmith_sub_i32(~1i, -9813i), u_input.a);
}

