struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec2<u32> {
    let var_0 = _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(34198i, -1i, arg_0.d.x, 24766i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_0.d.x, 2147483647i, arg_0.d.x), vec4<i32>(u_input.a, -1i, -36532i, u_input.a)), select(vec4<i32>(arg_0.d.x, 1569i, u_input.a, arg_0.d.x), vec4<i32>(-9697i, arg_0.d.x, arg_0.d.x, u_input.a), vec4<bool>(true, arg_0.b.a.x, arg_0.c, false))), select(select(vec4<i32>(1i, -84066i, u_input.a, 29258i), vec4<i32>(u_input.a, 35872i, arg_0.d.x, arg_0.d.x), false), vec4<i32>(-394i, arg_0.d.x, arg_0.d.x, u_input.a), !vec4<bool>(true, arg_0.c, arg_0.c, arg_0.b.a.x))), vec4<i32>(_wgslsmith_div_i32(~u_input.a, 0i) << (16745u % 32u), 1i, ~arg_0.d.x, abs(arg_0.d.x & u_input.a)));
    let var_1 = arg_0.b;
    return var_1.b.xz;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    var var_0 = vec2<u32>(~(~(~(~1u))), u_input.b.x);
    var_0 = select(reverseBits(~func_3(Struct_5(8450u, Struct_3(vec2<bool>(true, false), u_input.b), true, vec2<i32>(u_input.a, arg_0)))), _wgslsmith_div_vec2_u32(u_input.b.zz & vec2<u32>(~1u, ~48663u), ~(~(~vec2<u32>(4294967295u, var_0.x)))), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), all(vec4<bool>(true, false, false, true))), true));
    var var_1 = select(~_wgslsmith_div_vec2_i32(-abs(vec2<i32>(1i, u_input.a)), abs(-vec2<i32>(-7730i, 1i))), vec2<i32>(max(1i, arg_0), abs(0i)), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(36721u, var_0.x) & u_input.b.zz, u_input.b.yx) <= 0u, true | (all(vec4<bool>(true, true, false, true)) | true)));
    var var_2 = 706u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(3531f, -737f, 1029f), vec3<f32>(-250f, -268f, -1569f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1053f, -517f, 280f), vec3<f32>(-1378f, 1266f, 749f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1103f, 393f, -1782f), vec3<f32>(-791f, -749f, 747f)), true))))));
    return abs(vec3<i32>(_wgslsmith_add_i32(arg_0, var_1.x), abs(arg_0), ~(-27865i)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = -_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.a, -47692i, u_input.a)), _wgslsmith_mod_vec3_i32(func_2(0i), vec3<i32>(-28458i, u_input.a, u_input.a))) & firstLeadingBit(vec3<i32>(min(1i, u_input.a), ~(-45120i) | -u_input.a, _wgslsmith_add_i32(reverseBits(-20575i), u_input.a)));
    let var_1 = arg_0;
    return Struct_3(vec2<bool>(true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))), ~select(firstTrailingBit(~vec3<u32>(59802u, u_input.c, u_input.d)), ~vec3<u32>(5832u, 0u, 47506u), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-552f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, func_2(-u_input.a).x), (i32(-1i) * -19198i) ^ ~u_input.a), ~firstTrailingBit(-vec2<i32>(u_input.a, u_input.a)), 1771f, vec3<i32>(_wgslsmith_sub_i32(~0i, 55272i), 1i, _wgslsmith_div_i32(1i, 1i)), abs(u_input.b));
}

