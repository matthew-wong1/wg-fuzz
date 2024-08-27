struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(1000f);
    return var_0;
}

fn func_3() -> u32 {
    var var_0 = select(min(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a.x, -38873i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x), vec4<bool>(false, false, false, true)), vec4<i32>(-2147483647i, 11965i, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(~u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 2147483647i, -(~u_input.a.x))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(~26977i, -u_input.a.x, abs(-24372i), _wgslsmith_dot_vec3_i32(u_input.a.xyy, u_input.a.yzw)), ~u_input.a | -vec4<i32>(u_input.a.x, 31097i, -1i, u_input.a.x)), countOneBits(~vec4<i32>(u_input.a.x, u_input.a.x, -1i, -2147483647i))), true);
    let var_1 = true;
    var_0 = _wgslsmith_add_vec4_i32(select(abs(vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-13689i, var_0.x, u_input.a.x, 0i), u_input.a), 1i, u_input.a.x ^ u_input.a.x)), _wgslsmith_mod_vec4_i32(select(u_input.a, -vec4<i32>(var_0.x, 2147483647i, u_input.a.x, u_input.a.x), false), vec4<i32>(-1i, abs(-6267i), firstTrailingBit(0i), -1i << (0u % 32u))), 1u < (u_input.b.x & abs(0u))), countOneBits(vec4<i32>(countOneBits(abs(-6677i)), u_input.a.x, 19165i, i32(-1i) * -var_0.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(808f + _wgslsmith_f_op_f32(sign(593f))));
    var_0 = vec4<i32>(~_wgslsmith_sub_i32(min(_wgslsmith_dot_vec2_i32(u_input.a.yw, var_0.zx), abs(u_input.a.x)), -(~u_input.a.x)), ~countOneBits(var_0.x), 0i << (u_input.b.x % 32u), 1i);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 29092u, 1u) ^ vec4<u32>(1u, u_input.b.x, 5536u, 4294967295u)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(58787u, u_input.b.x, 4294967295u, 85160u), vec4<u32>(28734u, u_input.b.x, 59584u, u_input.b.x)))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x)), vec2<u32>(_wgslsmith_add_u32(u_input.b.x | u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x) & abs(4294967295u)), 37174u));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-326f, 553f), _wgslsmith_f_op_f32(min(267f, -1018f)), true)))) + -275f));
    var var_1 = func_2(~(~0u), _wgslsmith_sub_vec4_u32(~reverseBits(~vec4<u32>(2047u, u_input.b.x, u_input.b.x, 15810u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(18693u, 1u, 16743u, 106504u), vec4<u32>(45437u, u_input.b.x, u_input.b.x, 1u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 78519u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(75030u, u_input.b.x, u_input.b.x, u_input.b.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 20804u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u)))));
    var var_2 = u_input.b.x;
    return func_2(~1u, _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, func_3(), ~0u, 37477u), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    let var_2 = -1000f;
    var_1 = func_1();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_1().a)) - var_2));
    var_3 = Struct_1(var_1.a);
    let var_4 = select(select(vec3<bool>(false, true | any(vec4<bool>(true, false, false, false)), true), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), true), select(vec3<bool>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.b.x) != ~89152u, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), vec3<bool>(select(true, true, any(vec3<bool>(false, false, false))), true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, 47272u)), max(_wgslsmith_div_vec3_u32(vec3<u32>(65212u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 35343u, u_input.b.x)), ~vec3<u32>(38095u, 1u, 2001u))));
}

