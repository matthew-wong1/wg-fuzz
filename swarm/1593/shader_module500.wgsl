struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec2<bool> {
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    let var_0 = countOneBits(u_input.a ^ 31236u) ^ ~0u;
    var var_1 = ~0u;
    let var_2 = var_0;
    return arg_2;
}

fn func_3() -> bool {
    global0 = array<Struct_3, 5>();
    var var_0 = 1i;
    global0 = array<Struct_3, 5>();
    let var_1 = !(!(!(all(vec2<bool>(true, false)) | all(vec2<bool>(false, true)))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(36735u, u_input.a), vec2<u32>(4294967295u, u_input.a))), vec2<u32>(~u_input.a, select(64460u, 1u, var_1)) & _wgslsmith_mult_vec2_u32(vec2<u32>(18454u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)))), 1u);
    return true;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = vec3<bool>(false, all(vec3<bool>(all(func_2(vec4<f32>(arg_0.a, arg_0.a, 220f, 265f), vec2<f32>(arg_0.a, 323f), vec2<bool>(false, true))), arg_0.a < arg_0.a, false)), 4294967295u >= select(u_input.a, ~(~u_input.a), func_3()));
    var var_1 = any(vec3<bool>(true, var_0.x, true)) || true;
    var var_2 = ~_wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.a, 2356u, 0u, 1u))), ~((vec4<u32>(1u, u_input.a, 8973u, u_input.a) | vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) ^ (vec4<u32>(u_input.a, 4294967295u, u_input.a, 29332u) << (vec4<u32>(18889u, 4294967295u, 3145u, 1u) % vec4<u32>(32u)))));
    var_1 = var_0.x;
    var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, 1u, 1057u, var_2.x)), vec4<u32>(var_2.x, 64659u, ~var_2.x, _wgslsmith_sub_u32(49245u, var_2.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_2.x, u_input.a, 599u, var_2.x)), vec4<u32>(var_2.x, u_input.a, var_2.x, u_input.a) >> (vec4<u32>(36391u, 57362u, var_2.x, var_2.x) % vec4<u32>(32u))), vec4<u32>(13185u, _wgslsmith_mult_u32(0u, 28991u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.a, 4294967295u), var_2.www), u_input.a >> (u_input.a % 32u)))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_2.x, _wgslsmith_div_u32(var_2.x, ~0u), reverseBits(~u_input.a)), vec4<u32>(78737u, ~var_2.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, 0u), reverseBits(1u), var_2.x & 1u), ~var_2.x)) % vec4<u32>(32u));
    return select(vec3<bool>(true, false, arg_0.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), select(select(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), vec3<bool>(true, false & var_0.x, true), vec3<bool>(true & var_0.x, true, var_0.x)), !vec3<bool>(false, true && var_0.x, any(vec3<bool>(true, false, var_0.x))), !(!vec3<bool>(var_0.x, var_0.x, var_0.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 22383i, 0i), vec3<i32>(2147483647i, -75944i, -61060i), vec3<i32>(2147483647i, 2147483647i, -4832i)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.a, 6706u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var var_1 = vec4<bool>(any(func_1(Struct_1(-810f))), true, true, func_3());
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(1000f, -1740f)) + 1f)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(-572f - -1029f), false & !var_1.x))), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), i32(-1i) * -1i);
    var_1 = vec4<bool>(true, !(false == all(func_1(var_2.b))), false, var_2.c.x);
    var var_3 = vec4<u32>(1u, 1u, 1u, 1u);
    var_0 = vec3<i32>(41558i, _wgslsmith_clamp_i32(reverseBits(41186i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, -82336i), vec3<i32>(-2147483647i, -1i, var_0.x)), vec3<i32>(-1i, var_0.x, -15029i)), var_2.d), max(reverseBits(-var_2.d) | reverseBits(-1i), var_0.x));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(f32(-1f) * -2199f))))));
    var var_5 = ~var_3.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-1i, var_0.x), ~vec2<u32>(_wgslsmith_div_u32(1u, ~u_input.a), var_3.x), var_4.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_4.a, 541f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a, -1235f, var_4.a) - vec3<f32>(var_2.b.a, var_2.a.a, var_2.b.a)))))));
}

