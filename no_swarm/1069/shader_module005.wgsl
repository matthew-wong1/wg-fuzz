struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(910f, 257f, 422f, 484f, -293f, -1508f, -575f, -617f, 211f, 157f, -221f, 2308f, 761f, 565f, 1689f, -683f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global0 = array<f32, 16>();
    var var_0 = reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_2.a.x, 4294967295u, 41009u, arg_2.b.b) ^ vec4<u32>(arg_2.b.b, arg_2.a.x, arg_2.a.x, 1u)), firstTrailingBit(vec4<u32>(71807u, 0u, arg_2.a.x, arg_2.b.b))), arg_2.b.b));
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    let var_1 = Struct_2(~countOneBits(arg_2.a), Struct_1(~(~vec3<i32>(arg_2.c, u_input.d, arg_2.c)), 106489u), select(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-15637i, arg_2.b.a.x), 48i, u_input.a.x & u_input.d), -2147483647i, true), false, arg_1.b);
    return ~(~firstLeadingBit(~var_1.b.b)) & ~_wgslsmith_div_u32(69442u, _wgslsmith_dot_vec2_u32(~var_1.a, var_1.a));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_mod_vec3_i32(u_input.b.zxw, u_input.b.xzy), select(arg_0.x, arg_0.x, true));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = true;
    var_0 = !(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), all(vec4<bool>(false, true, true, false)))) && false);
    let var_1 = func_2(max(~vec4<u32>(~4294967295u, select(arg_0, 1u, true), arg_0 >> (arg_1.b % 32u), ~arg_1.b), vec4<u32>(~46546u, ~arg_1.b | _wgslsmith_sub_u32(arg_0, arg_1.b), arg_0, 18005u)));
    let var_2 = ~arg_0;
    let var_3 = Struct_1(max(var_1.a, vec3<i32>(func_2(vec4<u32>(41925u, 89644u, 0u, 10095u)).a.x, u_input.c, _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2622i, var_1.a.x, 2147483647i), var_1.a)))), ~reverseBits(32622u));
    return !any(vec4<bool>((arg_1.b != 46281u) || false, true, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(select(false, false, true) && true, !(func_3(func_1(vec2<f32>(global0[_wgslsmith_index_u32(16237u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), Struct_3(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(0u, 16u)]), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(u_input.b.yyz, 16296u), u_input.d, true, global0[_wgslsmith_index_u32(1u, 16u)])), func_2(vec4<u32>(30153u, 4294967295u, 4294967295u, 4294967295u))) | true), false);
    let var_1 = u_input.c;
    var_0 = vec3<bool>(~_wgslsmith_div_u32(17620u, select(24550u, 1u, var_0.x)) != 1u, var_0.x, true);
    global0 = array<f32, 16>();
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 2549u))), func_2(~select(vec4<u32>(0u, 26758u, 1u, 4294967295u), firstTrailingBit(vec4<u32>(24539u, 0u, 1u, 18693u)), any(vec3<bool>(true, var_0.x, var_0.x)))), reverseBits(reverseBits(~(-40204i))), var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(16919u, 51476u, 0u), vec3<u32>(10770u, 0u, 4294967295u), vec3<bool>(var_0.x, false, true)), vec3<u32>(19379u, 6365u, 8983u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(33882u, 56231u, 69634u), ~vec3<u32>(81962u, 24785u, 28673u))), ~vec3<u32>(~4294967295u, ~4294967295u, ~14559u)), 16u)]);
    var_0 = vec3<bool>(var_0.x, !all(vec2<bool>(var_2.d, !var_0.x)), _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(abs(u_input.b), u_input.b)) == (var_2.b.a.x << (0u % 32u)));
    var var_3 = Struct_2(var_2.a, func_2(_wgslsmith_mult_vec4_u32(countOneBits(max(vec4<u32>(4294967295u, var_2.b.b, var_2.b.b, var_2.a.x), vec4<u32>(var_2.b.b, 0u, 4294967295u, 40466u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.b, 1u, var_2.b.b, var_2.a.x), vec4<u32>(var_2.a.x, var_2.a.x, 79855u, var_2.a.x)), ~var_2.b.b, func_2(vec4<u32>(var_2.a.x, 6411u, var_2.a.x, 0u)).b, ~12560u))), _wgslsmith_dot_vec3_i32(vec3<i32>(-var_2.c, _wgslsmith_mod_i32(-1i, countOneBits(var_1)), 17845i), -u_input.a), false, _wgslsmith_f_op_f32(f32(-1f) * -509f));
    let var_4 = Struct_2(vec2<u32>(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.b, 0u, 4294967295u), vec3<u32>(var_2.a.x, var_3.a.x, 0u))), ~var_2.b.b), Struct_1(var_2.b.a, var_3.b.b), 29216i ^ (_wgslsmith_dot_vec3_i32(u_input.a >> (vec3<u32>(42544u, 1u, 0u) % vec3<u32>(32u)), min(u_input.a, var_2.b.a)) | 21881i), all(select(select(vec4<bool>(false, false, var_2.d, var_0.x), vec4<bool>(false, var_2.d, false, var_2.d), vec4<bool>(var_3.d, var_3.d, false, var_0.x)), select(select(vec4<bool>(var_0.x, var_2.d, false, var_2.d), vec4<bool>(var_2.d, false, true, false), vec4<bool>(false, false, false, true)), !vec4<bool>(false, var_3.d, false, var_2.d), var_2.d), select(select(vec4<bool>(var_0.x, var_2.d, var_3.d, true), vec4<bool>(true, var_2.d, true, var_2.d), var_0.x), !vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, true, var_2.d)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(128f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-737f - -621f), _wgslsmith_f_op_f32(max(-1469f, -149f))))));
    var var_5 = Struct_3(vec3<bool>(true, any(vec4<bool>(!var_0.x, var_4.d, true, var_0.x || false)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_4.b.b, 16u)] * global0[_wgslsmith_index_u32(4294967295u, 16u)]) + 767f), !(var_4.b.a.x <= var_2.b.a.x))) * -232f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 16u)])), vec2<u32>(_wgslsmith_sub_u32(reverseBits(21212u), var_4.a.x), _wgslsmith_clamp_u32(min(var_2.a.x, 44336u), 0u, select(var_4.b.b, ~4294967295u, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-862f)), var_4.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(var_5.b)), var_0.x))) + vec2<f32>(var_2.e, -816f)));
}

