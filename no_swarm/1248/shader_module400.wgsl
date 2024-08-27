struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> i32 {
    let var_0 = ~arg_0.b;
    let var_1 = !vec2<bool>(arg_0.c, !arg_0.d);
    var var_2 = Struct_1(arg_0.a, arg_0.b, !var_1.x, arg_0.c, ~38883u);
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -928f) + -757f));
    return select(arg_2.x, ~max(arg_1, _wgslsmith_mult_i32(2147483647i ^ arg_1, min(arg_1, arg_1))), any(vec2<bool>(true, !var_3.d)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = all(vec4<bool>(true, false, arg_0.c, arg_0.d));
    let var_1 = ~(17596u >> (~abs(arg_1.b.x) % 32u));
    let var_2 = func_3(Struct_1(~(~countOneBits(arg_1.e)), vec3<u32>(4294967295u, abs(arg_1.b.x ^ 4294967295u), max(113485u, 37000u)), !(all(vec3<bool>(false, true, var_0)) & true), !(all(vec3<bool>(arg_0.d, var_0, true)) != var_0), arg_1.b.x), reverseBits(select(~_wgslsmith_clamp_i32(-24748i, 1i, 13588i), 1i, true)), ~reverseBits(vec4<i32>(1i, 1i, 1i, 1i)));
    var var_3 = Struct_1(~(~(0u & var_1)) >> (~28295u % 32u), vec3<u32>(~arg_1.a, abs(~arg_0.e), 15340u) | arg_0.b, false, all(select(select(vec3<bool>(true, arg_1.d, false), vec3<bool>(true, true, true), !vec3<bool>(false, arg_0.d, true)), select(select(vec3<bool>(var_0, true, false), vec3<bool>(var_0, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, arg_1.d), vec3<bool>(var_0, arg_1.c, true), var_0), !arg_1.c), select(true, false, !var_0))), 1u);
    var_3 = arg_0;
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, -2147483647i, firstTrailingBit(_wgslsmith_sub_i32(var_2, var_2) & -81168i)), vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2, 30679i), ~var_2), firstTrailingBit(~(-1i)), var_2), (vec3<i32>(-1i) * -vec3<i32>(var_2, -1i, 2147483647i)) | vec3<i32>(func_3(arg_0, 35166i, -vec4<i32>(1i, var_2, var_2, -83111i)), 5652i, var_2));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = min(vec2<i32>(-26180i, abs(~(-2147483647i))), (~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -40582i), vec2<i32>(-1i, 87903i)) >> (arg_1.yw % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_1.x, 4294967295u), arg_1.x | arg_1.x), 62396u) % vec2<u32>(32u)));
    var var_1 = select(vec4<i32>(-34929i | ~var_0.x, -1i, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, var_0.x), vec3<i32>(2147483647i, var_0.x, var_0.x)), func_2(arg_0, arg_0))), ~(9087i >> (_wgslsmith_dot_vec4_u32(arg_1, arg_1) % 32u))), (vec4<i32>(var_0.x, ~0i, -var_0.x, 25923i) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1, arg_1), arg_1) % vec4<u32>(32u))) & (_wgslsmith_mult_vec4_i32(vec4<i32>(15625i, 1i, 1i, 2147483647i), select(vec4<i32>(-22083i, 0i, -28937i, -2147483647i), vec4<i32>(-42052i, var_0.x, var_0.x, 48728i), arg_0.c)) >> (countOneBits(~arg_1) % vec4<u32>(32u))), select(!vec4<bool>(any(vec3<bool>(true, true, true)), select(arg_0.c, false, false), false, all(vec3<bool>(arg_0.c, arg_0.d, arg_0.d))), !select(!vec4<bool>(arg_0.c, false, arg_0.d, false), select(vec4<bool>(arg_0.c, false, arg_0.d, arg_0.d), vec4<bool>(true, true, false, arg_0.d), vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d)), select(vec4<bool>(arg_0.c, arg_0.d, arg_0.c, true), vec4<bool>(true, false, arg_0.d, arg_0.d), vec4<bool>(true, arg_0.c, true, arg_0.c))), vec4<bool>(var_0.x == _wgslsmith_mult_i32(0i, 28661i), (false && arg_0.d) | arg_0.d, all(!vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d)), true)));
    let var_2 = arg_0;
    let var_3 = vec3<bool>(!(-2147483647i < ~var_0.x) && false, true, all(!vec4<bool>(arg_0.c, arg_0.c, false, false)));
    var_1 = _wgslsmith_add_vec4_i32(select(vec4<i32>(var_0.x, 43439i, max(var_0.x << (20508u % 32u), 1i), _wgslsmith_mult_i32(~var_0.x, ~var_0.x)), vec4<i32>(var_1.x, -26193i, var_1.x, -1i), !vec4<bool>(true, arg_0.d, false, arg_0.a <= 34355u)), -(~(~vec4<i32>(-1i, var_1.x, 0i, -1i))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_1(~abs(u_input.a), vec3<u32>(abs(countOneBits(u_input.a)), 0u, u_input.a), true, false, ~abs(_wgslsmith_add_u32(u_input.a >> (1u % 32u), countOneBits(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec3<u32>(var_1.e, 105869u, var_1.b.x), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(func_1(Struct_1(var_1.e, vec3<u32>(60576u, 38473u, var_1.b.x), var_1.d, var_1.d, 48503u), vec4<u32>(u_input.a, 1u, 0u, var_1.e)), ~54241u), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 54399u), ~var_1.a)), vec2<u32>(reverseBits(min(4294967295u, 34222u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 39051u, 1u), vec3<u32>(0u, 1u, var_1.b.x)))), ~vec3<u32>(16454u, var_1.a, var_1.a), ~1121u);
}

