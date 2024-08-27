struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = ~vec2<u32>(55457u, max(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, u_input.d, 1u), vec4<u32>(24303u, u_input.c.x, 1u, 1u)), _wgslsmith_div_u32(0u, 62426u), max(90202u, 59614u))));
    var var_1 = Struct_1(29901u, firstTrailingBit(min(-15200i, 73628i) >> (firstLeadingBit(43223u) % 32u)) << (42530u % 32u));
    var_0 = _wgslsmith_div_vec2_u32(reverseBits(~abs(u_input.c.yx)), select(u_input.c.yx, firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 72016u), u_input.c.yx)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))) & min(u_input.c.yx, vec2<u32>(abs(_wgslsmith_add_u32(111875u, 1u)), u_input.c.x));
    var var_2 = Struct_1(41510u, _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(~arg_0.x, var_1.b), -1i, any(vec2<bool>(false, false)) && all(vec3<bool>(true, true, false))), arg_0.x));
    var_2 = Struct_1(u_input.d, 0i);
    return abs(1i << (0u % 32u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i << ((16084u >> (u_input.c.x % 32u)) % 32u), arg_0.b, reverseBits(1i)) & -vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.b.x, -44483i), arg_0.b >> (u_input.d % 32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-13205i, arg_0.b, 2777i)), -vec3<i32>(2147483647i, 11519i, u_input.b.x)), vec3<i32>(~func_3(vec4<i32>(-10391i, 2147483647i, 2147483647i, u_input.b.x)), u_input.a, arg_0.b)));
    let var_1 = ~u_input.c.yz;
    var var_2 = vec4<f32>(-596f, _wgslsmith_f_op_f32(f32(-1f) * -937f), 1f, _wgslsmith_f_op_f32(abs(-1771f)));
    let var_3 = Struct_1(7776u, 13350i);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(439f, -1641f, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) + -1324f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, 485f, -613f, var_2.x)), vec4<f32>(-375f, _wgslsmith_f_op_f32(exp2(var_2.x)), var_2.x, var_2.x))))));
    return Struct_1(~0u, -1i);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(Struct_1(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(64999u, 38480u, 4294967295u)), vec3<u32>(4621u, 0u, 42478u)), 9169i));
    var_0 = func_2(func_2(func_2(Struct_1(abs(var_0.a), u_input.b.x))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -325f);
    var_0 = func_2(func_2(func_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.yy), _wgslsmith_mult_i32(u_input.b.x, var_0.b)))));
    var_0 = Struct_1(41683u, u_input.a);
    return StorageBuffer(vec4<u32>(~(~abs(1u)), u_input.c.x, var_0.a, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(163f, -623f);
    let x = u_input.a;
    s_output = func_1();
}

