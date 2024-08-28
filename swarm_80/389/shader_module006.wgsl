struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
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

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = !select(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !any(vec3<bool>(true, true, true)));
    global0 = array<Struct_1, 19>();
    var var_1 = global0[_wgslsmith_index_u32(46578u, 19u)];
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, u_input.b.x), vec2<u32>(u_input.c.x, var_1.b)), max(u_input.c.x, var_1.b)), ~var_1.b)), ~_wgslsmith_div_vec2_u32(firstLeadingBit(select(vec2<u32>(var_1.b, 15202u), u_input.b.yx, true)), max(vec2<u32>(49701u, 30659u), ~u_input.b.xy)));
    let var_3 = global0[_wgslsmith_index_u32(abs(reverseBits(~firstTrailingBit(23255u))) >> (countOneBits(~(~69614u)) % 32u), 19u)];
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)));
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_1 = arg_0;
    return 0u | ~_wgslsmith_clamp_u32(0u, abs(~0u), 9014u);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~func_4(global0[_wgslsmith_index_u32(func_3(), 19u)], all(vec2<bool>(true, true)) != true), 19u)];
    let var_1 = !select(vec3<bool>(-u_input.a.x < ~var_0.a.x, true, true), vec3<bool>(true, _wgslsmith_f_op_f32(-var_0.c) <= -1130f, false), any(vec3<bool>(true, true, all(vec4<bool>(true, true, false, false)))));
    var var_2 = Struct_1(-select(-var_0.a ^ _wgslsmith_mod_vec4_i32(var_0.d, var_0.d), ~var_0.d, min(34108u, var_0.b) > ~34616u), ~min(~u_input.b.x, ~40827u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f))), select(_wgslsmith_add_vec4_i32(countOneBits(~var_0.a), vec4<i32>(_wgslsmith_clamp_i32(58295i, var_0.a.x, var_0.a.x), ~u_input.a.x, -1i, u_input.a.x)), countOneBits(reverseBits(vec4<i32>(var_0.d.x, -14599i, var_0.d.x, var_0.d.x))), ~max(u_input.b.x, 0u) <= _wgslsmith_sub_u32(21391u, 0u)));
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(var_0.d.x, _wgslsmith_dot_vec3_i32(~var_2.d.xyz, var_0.a.xzz)), ~_wgslsmith_mult_i32(u_input.a.x, var_0.d.x), var_2.d.x, 23806i), 53862u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f + 1f)), 2187f), vec4<i32>(abs(min(-u_input.a.x, var_2.d.x)), 1i, reverseBits(u_input.a.x), 6278i));
    global0 = array<Struct_1, 19>();
    return 2870u >> (var_0.b % 32u);
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 62029u), vec4<u32>(4294967295u, arg_3.x, 1u, 14335u)), _wgslsmith_sub_vec4_u32(vec4<u32>(11319u, arg_3.x, u_input.b.x, 0u), vec4<u32>(0u, 56315u, arg_3.x, 63803u))) << (~28741u % 32u), 14158u)), 19u)];
    let var_1 = global0[_wgslsmith_index_u32(var_0.b, 19u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(41038u, firstLeadingBit(88148u)), 19u)];
    var var_3 = global0[_wgslsmith_index_u32(37392u, 19u)];
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(953f))));
    return global0[_wgslsmith_index_u32(1u, 19u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = func_5(abs(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.c, -501f, arg_1.c), vec3<f32>(-440f, 1787f, arg_1.c))))) == 1u, select(select(!(!vec3<bool>(arg_0.x, false, arg_0.x)), vec3<bool>(true, any(vec2<bool>(arg_0.x, false)), all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(!arg_0.x, all(vec4<bool>(arg_0.x, false, arg_0.x, true)), arg_0.x)), select(select(vec3<bool>(false, true, arg_0.x), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(false, false, arg_0.x), false), select(arg_0.x, false, false)), select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, true)), !arg_0.x), vec3<bool>(arg_0.x, true, !all(vec4<bool>(true, arg_0.x, false, false)))), vec3<f32>(1491f, 1050f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mult_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b, 17995u), vec2<u32>(2789u, arg_1.b))), u_input.b.yz));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(arg_1.d, vec4<i32>(1i, abs(func_5(arg_0.x, vec3<bool>(false, true, true), vec3<f32>(arg_1.c, arg_1.c, arg_1.c), vec2<u32>(25465u, 17720u)).a.x), 0i, -_wgslsmith_mult_i32(-1i, var_0.d.x)), ~var_0.d), _wgslsmith_clamp_u32(countOneBits(arg_1.b), ~(~var_0.b), ~(~1u)), -863f, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -11964i, -1i), ~vec4<i32>(0i, 2147483647i, var_0.a.x, 14597i)), abs(arg_1.d)) & -(_wgslsmith_add_vec4_i32(arg_1.d, arg_1.d) & -vec4<i32>(var_0.d.x, u_input.a.x, 2147483647i, -1i)));
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(46565u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(4294967295u, 0u, 34060u)), ~u_input.c)), var_0.b), max(_wgslsmith_clamp_u32(18233u, ~var_0.b, 0u), ~arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_0 = countOneBits(select(vec4<u32>(1u | (1u ^ u_input.c.x), 32258u, u_input.c.x, 1u), vec4<u32>(u_input.b.x, 4294967295u, func_1(vec2<bool>(false, false), global0[_wgslsmith_index_u32(~u_input.b.x, 19u)]), 16104u), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, false, true), true)));
    let var_1 = ~_wgslsmith_div_u32(~_wgslsmith_div_u32(var_0.x, var_0.x), ~var_0.x);
    var var_2 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), true), !select(true, false, false)), true));
    let var_3 = global0[_wgslsmith_index_u32(~(~(~(var_1 ^ var_0.x) >> (var_1 % 32u))), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.yyy, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 6965u, 6646u), vec3<u32>(var_0.x, var_0.x, var_1))) & u_input.b));
}

