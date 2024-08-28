struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_2) -> bool {
    global0 = ~_wgslsmith_add_vec2_u32(arg_2.ww, _wgslsmith_mod_vec2_u32(arg_2.yz, _wgslsmith_mod_vec2_u32(vec2<u32>(58312u, 1u), vec2<u32>(arg_2.x, 1u) >> (vec2<u32>(22898u, 0u) % vec2<u32>(32u)))));
    var var_0 = Struct_2(Struct_1(all(vec2<bool>(41024i <= global1.x, true)), arg_2.x), !arg_0 | true);
    var var_1 = ~vec3<u32>(u_input.a, ~arg_3.a.b, _wgslsmith_div_u32(arg_2.x, 4294967295u));
    let var_2 = Struct_1(arg_3.b, var_0.a.b);
    var var_3 = !select(select(select(select(vec3<bool>(arg_3.b, false, true), vec3<bool>(arg_3.b, false, true), vec3<bool>(arg_3.a.a, true, arg_3.b)), vec3<bool>(arg_3.b, arg_3.b, arg_3.b), arg_3.a.a), select(select(vec3<bool>(var_0.b, arg_0, false), vec3<bool>(arg_3.b, false, false), arg_0), !vec3<bool>(var_2.a, true, false), var_0.b | false), select(select(vec3<bool>(true, arg_3.a.a, true), vec3<bool>(var_0.b, var_2.a, false), vec3<bool>(false, false, arg_3.b)), select(vec3<bool>(var_2.a, true, arg_3.a.a), vec3<bool>(arg_0, false, var_0.a.a), vec3<bool>(var_0.a.a, var_0.a.a, false)), !vec3<bool>(arg_3.b, arg_3.a.a, true))), select(!vec3<bool>(true, true, arg_0), select(select(vec3<bool>(var_0.b, false, true), vec3<bool>(arg_0, true, false), vec3<bool>(false, arg_0, arg_0)), select(vec3<bool>(var_0.b, false, arg_3.a.a), vec3<bool>(false, true, arg_3.a.a), vec3<bool>(true, false, true)), vec3<bool>(arg_3.a.a, true, false)), false), all(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), select(vec2<bool>(var_2.a, arg_0), vec2<bool>(true, arg_3.a.a), vec2<bool>(true, var_2.a)))));
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(454f, _wgslsmith_f_op_f32(-1022f * 1576f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, 707f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-283f))))))));
    var var_1 = any(!(!select(select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(false, true), vec2<bool>(arg_2.a, arg_2.a)), !vec2<bool>(arg_2.a, false), select(vec2<bool>(true, false), vec2<bool>(arg_2.a, arg_2.a), arg_2.a))));
    var_1 = arg_2.a;
    let var_2 = arg_0 | vec2<u32>(~(~arg_2.b), 91342u);
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.x, 4294967295u, global0.x) >> (vec4<u32>(global0.x, (var_2.x & 2970u) >> (0u % 32u), (u_input.b >> (arg_0.x % 32u)) | firstTrailingBit(arg_2.b), u_input.a) % vec4<u32>(32u)), vec4<u32>(~44813u, _wgslsmith_dot_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(22341u, 32848u, 0u), vec3<u32>(15510u, 1520u, 1u)), vec3<u32>(1u, 31454u, 0u)), ~(~vec3<u32>(arg_2.b, 4294967295u, 13049u))), global0.x, 0u));
    return ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1 & (arg_1 | 46367i), select(1i, 12555i, arg_2.a) << (reverseBits(40586u) % 32u), -1i, ~global1.x), _wgslsmith_add_vec4_i32(vec4<i32>(~0i, reverseBits(arg_1), arg_1, min(1i, global1.x)), vec4<i32>(~arg_1, -global1.x, 1i ^ arg_1, global1.x)));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global1 = func_4(_wgslsmith_clamp_vec2_u32((~vec2<u32>(43285u, global0.x) ^ ~vec2<u32>(0u, 1u)) ^ ~vec2<u32>(4294967295u, u_input.b), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.x, 21231u, 31916u), vec4<u32>(0u, global0.x, u_input.a, global0.x)), 67384u), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.a)) << (vec2<u32>(11981u, u_input.b) % vec2<u32>(32u)), vec2<u32>(~global0.x, _wgslsmith_mod_u32(global0.x, 14722u)))), -1i, Struct_1(!func_3(false, vec3<i32>(arg_0.x, 0i, 37313i), vec4<u32>(global0.x, u_input.a, 4294967295u, global0.x), Struct_2(Struct_1(false, 62305u), false)) & true, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.x, global0.x), 4294967295u, 33917u)));
    global0 = vec2<u32>(u_input.a | ~u_input.b, reverseBits(1u));
    let var_0 = vec2<u32>(global0.x, global0.x);
    var var_1 = Struct_3(Struct_1(true, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(var_0, var_0), vec2<u32>(~var_0.x, abs(0u)))), vec2<bool>(true, true & !all(vec3<bool>(true, false, true))), Struct_2(Struct_1(true, global0.x), true));
    let var_2 = ~firstLeadingBit(~vec2<u32>(countOneBits(0u), _wgslsmith_div_u32(1u, 41018u)));
    return countOneBits(~4294967295u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_0;
    let var_1 = Struct_3(Struct_1(arg_0.x, global0.x), !var_0.xx, Struct_2(arg_1.a, true));
    global0 = ~(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(global0.x, global0.x), vec2<u32>(100043u, var_1.a.b), arg_1.a.a), min(vec2<u32>(var_1.a.b, 26716u) & vec2<u32>(u_input.b, arg_1.a.b), vec2<u32>(0u, u_input.a))));
    var var_2 = var_1.b.x;
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1.a.b, 0u, u_input.a), vec4<u32>(1u, 119830u, 34026u, var_1.c.a.b)), ~var_1.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4015u, 20652u), ~vec3<u32>(u_input.b, 79u, 52836u))), vec3<u32>(var_1.c.a.b, _wgslsmith_div_u32(firstTrailingBit(var_1.c.a.b), _wgslsmith_div_u32(var_1.a.b, 4294967295u)), _wgslsmith_clamp_u32(arg_1.a.b, func_2(vec2<i32>(-1i, global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.b, global0.x, var_1.a.b, 14891u), vec4<u32>(u_input.a, var_1.a.b, u_input.a, 39183u))))), _wgslsmith_add_u32(6134u, 49600u));
    return _wgslsmith_sub_i32(countOneBits(~(18733i ^ global1.x)) | global1.x, ~(~_wgslsmith_add_i32(-global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(-12271i, 0i, -27105i, global1.x)))));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: u32, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_1(true, _wgslsmith_sub_u32(u_input.b, max(_wgslsmith_div_u32(global0.x, 4294967295u) << (_wgslsmith_mult_u32(547u, arg_2) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(18768u, u_input.a, u_input.b), vec3<u32>(u_input.a, 39362u, global0.x)))));
    global1 = _wgslsmith_add_vec4_i32(vec4<i32>(-(~arg_0), (i32(-1i) * -2147483647i) >> (var_0.b % 32u), -22710i ^ _wgslsmith_div_i32(-40211i, arg_0), _wgslsmith_clamp_i32(-1i, 1i, _wgslsmith_dot_vec3_i32(global1.wzw, global1.wwx))), abs(min(func_4(vec2<u32>(10130u, 15795u), -2147483647i, Struct_1(arg_1.x, arg_2)), -vec4<i32>(global1.x, global1.x, global1.x, 57584i)))) | abs(-((vec4<i32>(arg_0, 1i, -69520i, arg_0) | vec4<i32>(global1.x, arg_0, 6690i, 2147483647i)) >> (vec4<u32>(arg_2, u_input.a, global0.x, global0.x) % vec4<u32>(32u))));
    var var_1 = var_0;
    var var_2 = Struct_2(var_0, true);
    var var_3 = ~47785i;
    return vec3<bool>(false, all(vec3<bool>(!any(arg_1), arg_1.x, true)), !arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(u_input.b, 4294967295u);
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(429f, _wgslsmith_f_op_f32(-1f), any(func_5(func_1(vec3<bool>(true, false, true), Struct_2(Struct_1(false, 4294967295u), false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1451f))))), -435f));
    global0 = firstTrailingBit(~vec2<u32>(~global0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 69392u), vec2<u32>(global0.x, 55890u)), ~vec2<u32>(global0.x, 58082u))));
    let var_1 = global1.wy;
    let var_2 = global1.xx;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, i32(-1i) * -_wgslsmith_add_i32(global1.x, var_1.x), -15123i), ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), _wgslsmith_clamp_i32(58503i, var_1.x, 63356i), -var_1.x), global1.xzw));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-1i, var_2.x, var_1.x)), vec3<i32>(_wgslsmith_add_i32(1i, var_1.x), ~global1.x, var_1.x), vec3<i32>(var_3.x, max(var_2.x, var_2.x), -var_1.x)), vec2<f32>(var_0, var_0), var_1.x, global0.x, ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(37297u, global0.x) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<u32>(global0.x, 0u) ^ vec2<u32>(6806u, global0.x), ~vec2<u32>(9083u, global0.x)), vec2<u32>(0u, abs(1u))));
}

