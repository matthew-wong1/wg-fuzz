struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(1738f, 1000f), vec2<f32>(-700f, 620f), vec2<f32>(-573f, -502f), vec2<f32>(-693f, 987f), vec2<f32>(-565f, 873f), vec2<f32>(-631f, -299f), vec2<f32>(1714f, 1112f), vec2<f32>(-257f, 1907f), vec2<f32>(2234f, -1915f), vec2<f32>(343f, -302f), vec2<f32>(121f, -1113f), vec2<f32>(938f, 1449f), vec2<f32>(262f, -286f), vec2<f32>(-938f, 1299f), vec2<f32>(-845f, -852f), vec2<f32>(194f, -178f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    global0 = array<vec2<f32>, 16>();
    let var_0 = u_input.b;
    let var_1 = min(vec3<i32>(0i, _wgslsmith_sub_i32(i32(-1i) * -15121i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, -18611i)), u_input.a)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a << (14456u % 32u), -15967i, -u_input.a), 1i)), vec3<i32>(_wgslsmith_add_i32(-(u_input.a << (u_input.b % 32u)), countOneBits(-u_input.a)), 13001i, firstLeadingBit(11175i)));
    global0 = array<vec2<f32>, 16>();
    var var_2 = select(arg_0.xy, select(arg_0.yy, !vec2<bool>(arg_0.x, arg_0.x && arg_0.x), arg_0.xz), arg_0.wy);
    return vec4<u32>(var_0, ~1u, _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_sub_u32(~u_input.b, reverseBits(45605u))), _wgslsmith_add_u32(u_input.b, 4294967295u));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(~arg_0);
    var_0 = i32(-1i) * -8867i;
    var var_1 = Struct_1(firstTrailingBit(countOneBits(arg_1.b.zx)), _wgslsmith_mult_vec4_u32(firstLeadingBit(~countOneBits(arg_1.b)), min(vec4<u32>(min(u_input.b, 11792u), arg_1.a.x >> (u_input.b % 32u), 1u, 1u), _wgslsmith_add_vec4_u32(max(arg_1.b, arg_1.b), func_3(vec4<bool>(true, false, true, false))))));
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(0u) ^ _wgslsmith_add_u32(20736u, arg_1.a.x), u_input.b), ~(~(~vec2<u32>(1u, 4294967295u))), arg_1.b.yx), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, 16149u, u_input.b), arg_1.b), reverseBits(~var_1.b)), var_1.b));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1066f)) * -515f);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_0.a.x;
    let var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = arg_0.a.x;
    var var_4 = Struct_1(~vec2<u32>(_wgslsmith_div_u32(7675u, 5861u), func_2(~u_input.a, var_2).a.x), ~select(var_2.b, ~_wgslsmith_div_vec4_u32(var_1.b, arg_0.b), true));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(471f, -2605f, -1052f), vec3<f32>(-121f, -1273f, -747f)))))))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> StorageBuffer {
    var var_0 = vec3<f32>(223f, _wgslsmith_f_op_f32(sign(-814f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-697f - 1138f)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 293f)), _wgslsmith_f_op_f32(909f * _wgslsmith_f_op_f32(ceil(var_0.x)))), -2553f);
    let var_1 = 44557u;
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), -807f, var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(-225f + -1000f), var_0.x, _wgslsmith_f_op_f32(max(1000f, var_0.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(34952i, Struct_1(vec2<u32>(var_1, 0u), vec4<u32>(var_1, var_1, var_1, var_1))), Struct_1(vec2<u32>(24575u, 40614u), vec4<u32>(5896u, 48081u, 397u, 10728u))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -244f), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_f_op_f32(var_0.x - -2106f))), select(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(arg_1 != arg_1, true, true), select(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1)), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, false, false)), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, true, arg_1))))))));
    let var_2 = -(~(-(~vec3<i32>(-14161i, 16835i, 8642i)) & (vec3<i32>(-4803i, u_input.a, arg_2.x) | vec3<i32>(1i, 58483i, u_input.a))));
    return StorageBuffer(vec4<u32>(~arg_0, func_2(firstTrailingBit(arg_2.x), Struct_1(vec2<u32>(arg_0, 0u), vec4<u32>(arg_0, 90939u, 3123u, 15389u))).b.x, ~_wgslsmith_mod_u32(max(var_1, u_input.b), max(var_1, arg_0)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, arg_0), var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f) * 960f), var_0.x, 883f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(156f + 539f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 16>();
    global0 = array<vec2<f32>, 16>();
    let var_0 = u_input.b;
    var var_1 = all(!vec2<bool>(-2147483647i != _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(1i, 86338i, 1i)), false || all(vec4<bool>(false, true, false, true))));
    var var_2 = countOneBits(~8616u);
    var_1 = false;
    var_1 = true;
    global0 = array<vec2<f32>, 16>();
    let x = u_input.a;
    s_output = func_1(84347u, !(u_input.a <= (~(-2147483647i) ^ reverseBits(u_input.a))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-23i, -1i, u_input.a), vec3<i32>(15284i, u_input.a, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, 0i), vec3<i32>(u_input.a, 1i, u_input.a))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, -1i, u_input.a), ~vec3<i32>(u_input.a, -2147483647i, u_input.a))), firstLeadingBit(9665i)));
}

