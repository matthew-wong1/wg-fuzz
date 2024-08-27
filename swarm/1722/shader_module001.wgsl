struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    var var_0 = u_input.c ^ abs(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 37310u, 63045u, 1u)), select(vec4<u32>(arg_1.c, 42222u, 4294967295u, arg_1.b), vec4<u32>(23730u, u_input.a, 9107u, u_input.c), true)));
    let var_1 = Struct_2(_wgslsmith_div_f32(arg_1.a, arg_1.a), vec2<f32>(arg_1.a, 135f), Struct_1(_wgslsmith_f_op_f32(-arg_1.a), arg_1.c, countOneBits(1u)));
    var_0 = 0u;
    var_0 = 1u & ~u_input.c;
    return 0i;
}

fn func_2() -> f32 {
    global0 = array<Struct_3, 4>();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -func_3(~(-20207i), Struct_1(-396f, 34097u, u_input.b), vec3<bool>(false, true, false)), _wgslsmith_add_i32(-30889i, _wgslsmith_clamp_i32(1i >> (u_input.c % 32u), 32277i, min(-32475i, -35739i)))), abs(vec3<i32>(~(~2147483647i), 1i, ~func_3(47591i, Struct_1(854f, 37262u, 53658u), vec3<bool>(true, false, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000f))))))), 80790u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 14363u), ~vec2<u32>(u_input.a, u_input.a)), 0u), u_input.b));
    var var_2 = -2147483647i;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) - var_1.a)))), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 4294967295u), vec2<u32>(65587u, 45017u)) >> (reverseBits(4294967295u) % 32u)), u_input.a);
    return -481f;
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    var var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, -2376i, -57730i, 1i)), -reverseBits(vec4<i32>(arg_0.x, -26590i, arg_0.x, 34956i))), -vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(arg_0.x, -2147483647i, arg_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-24923i, arg_0.x, 39488i, 0i), vec4<i32>(arg_0.x, 2147483647i, -1i, arg_0.x)), 1i, ~arg_0.x)));
    var_1 = vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(arg_0.x, 56380i, 9223i) << (vec3<u32>(50605u, u_input.a, u_input.c) % vec3<u32>(32u))) << (u_input.a % 32u), 1i, (min(1i, var_1.x) ^ 0i) ^ arg_0.x), -1i, -arg_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(936f, _wgslsmith_f_op_f32(f32(-1f) * -422f))))), 4294967295u, ~(_wgslsmith_mult_u32(93272u, countOneBits(u_input.c)) & u_input.a));
    var_0 = _wgslsmith_div_f32(var_2.a, var_2.a);
    return _wgslsmith_sub_vec3_u32(~(abs(vec3<u32>(59664u, 41466u, 1u)) >> (~vec3<u32>(var_2.c, var_2.b, var_2.c) % vec3<u32>(32u))), ~countOneBits(vec3<u32>(u_input.a, 1u, 1u)) | ~(~vec3<u32>(0u, var_2.b, 40045u))) | ~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.c, var_2.c), vec3<u32>(var_2.b, u_input.c, u_input.c), vec3<u32>(u_input.a, 15828u, var_2.b)) ^ ~vec3<u32>(1u, 4294967295u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(u_input.c, ~u_input.b), 1u, u_input.a), min(~(vec3<u32>(u_input.c, 4294967295u, 45127u) << (func_1(vec3<i32>(-48699i, -2147483647i, 1i)) % vec3<u32>(32u))), ~max(vec3<u32>(4294967295u, u_input.a, 0u), ~vec3<u32>(u_input.b, 1u, 30615u))));
    global0 = array<Struct_3, 4>();
    let var_1 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(-1761f, -1000f, true)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, select(1u, var_0, true)), var_0 >> (~(~var_1) % 32u)), ~var_0);
    var var_3 = global0[_wgslsmith_index_u32(var_0, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.a.xy, ~(~0u), countOneBits(reverseBits(~countOneBits(vec2<i32>(var_3.a.x, -5244i)))), min(reverseBits(_wgslsmith_mod_u32(4294967295u, var_2.c)), _wgslsmith_add_u32(var_1 | u_input.c, var_0)) >> (((_wgslsmith_dot_vec4_u32(vec4<u32>(6849u, 1u, 0u, 3361u), vec4<u32>(2346u, var_1, u_input.c, var_1)) ^ var_0) << (max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 58691u), vec2<u32>(0u, var_2.c))) % 32u)) % 32u), select(vec3<u32>(var_0, var_0, firstLeadingBit(var_0)), ~vec3<u32>(~4294967295u, 0u ^ var_2.b, func_1(var_3.a).x), select(var_3.c.x, !var_3.c.x, any(vec4<bool>(var_3.c.x, false, var_3.c.x, var_3.c.x)) & all(vec2<bool>(false, var_3.c.x)))));
}

