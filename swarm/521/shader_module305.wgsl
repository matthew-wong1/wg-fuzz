struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1075f, -1722f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(695f, 309f) * vec2<f32>(1430f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, -1553f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(293f, 818f)))))) - vec2<f32>(1f, 1f)));
    let var_1 = vec2<bool>(any(!select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 11377u), 13u)], select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(1u, 13u)])), ~_wgslsmith_add_u32(arg_0.a, arg_3.b.x) > ~(1u >> (min(arg_3.a, 40900u) % 32u)));
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    let var_2 = min(vec2<u32>(_wgslsmith_mult_u32(1u, ~1u), arg_0.a), select(arg_0.b.zx, _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_2.b.x, 48131u), vec2<u32>(arg_1 << (arg_0.a % 32u), u_input.a.x), u_input.a), !(!all(vec3<bool>(true, var_1.x, var_1.x)))));
    return reverseBits(max(~reverseBits(vec3<i32>(2147483647i, 2147483647i, 24958i)) & vec3<i32>(1i, select(-48100i, 2147483647i, true), _wgslsmith_mod_i32(70096i, -2147483647i)), vec3<i32>(~0i, -2147483647i, -2147483647i) >> (arg_0.b % vec3<u32>(32u))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = firstLeadingBit(func_3(Struct_2(4294967295u, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, u_input.a.x, 45999u), vec3<u32>(arg_0, 25702u, u_input.a.x))), reverseBits(4294967295u), Struct_2(_wgslsmith_mod_u32(18246u, 4294967295u), vec3<u32>(47259u, 1u, u_input.a.x) ^ vec3<u32>(54071u, arg_0, u_input.a.x)), Struct_2(reverseBits(arg_0), vec3<u32>(arg_0, arg_0, arg_0))) >> (~(~(~vec3<u32>(0u, u_input.a.x, 63473u))) % vec3<u32>(32u)));
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    var_0 = vec3<i32>(-(~(var_0.x & var_0.x) << (max(1u, u_input.a.x) % 32u)), ~_wgslsmith_div_i32(var_0.x, ~var_0.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(-5514i, ~var_0.x), var_0.x & 1i) | (~(-var_0.x) & var_0.x));
    let var_1 = select(select(select(vec3<bool>(!arg_1, arg_2, all(vec4<bool>(true, true, true, arg_1))), !vec3<bool>(false, arg_1, false), true), select(!select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(arg_2, arg_1, !arg_2), !vec3<bool>(arg_1, arg_2, arg_1)), !(reverseBits(2147483647i) <= var_0.x)), vec3<bool>(!(select(arg_1, true, true) | all(global0[_wgslsmith_index_u32(1u, 13u)])), all(vec2<bool>(any(vec4<bool>(true, arg_1, true, false)), true)), true), !vec3<bool>(!(arg_2 & arg_2), arg_1, !arg_1));
    return Struct_2(26842u, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), ~countOneBits(vec3<u32>(arg_0, u_input.a.x, arg_0)), ~vec3<u32>(u_input.a.x, arg_0, 17485u) | select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, 44440u, 4294967295u), vec3<bool>(arg_2, arg_1, var_1.x))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_u32(arg_3.b, abs(reverseBits((arg_3.b << (arg_3.b % vec3<u32>(32u))) ^ ~arg_3.b)));
    var var_1 = firstLeadingBit(-func_3(func_2(_wgslsmith_sub_u32(63703u, u_input.a.x), false, false), 1u, arg_3, arg_3));
    var var_2 = var_1.xx;
    var var_3 = arg_3.b;
    global0 = array<vec2<bool>, 13>();
    return Struct_2(~(arg_3.b.x >> (~_wgslsmith_mod_u32(0u, arg_3.a) % 32u)), vec3<u32>(~firstTrailingBit(_wgslsmith_clamp_u32(var_3.x, 1u, 13922u)), ~countOneBits(arg_3.b.x), firstLeadingBit(4294967295u << (var_0.x % 32u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> f32 {
    global0 = array<vec2<bool>, 13>();
    var var_0 = vec3<bool>(false, true && (-_wgslsmith_mod_i32(arg_2.x, -21718i) != (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -7774i, arg_2.x), arg_2) ^ -44976i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f - 545f)) > _wgslsmith_f_op_f32(sign(-113f)));
    let var_1 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(115f)), -450f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f))), func_2(u_input.a.x, var_0.x, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1188f - 638f), _wgslsmith_f_op_f32(sign(-785f)), -772f), vec3<f32>(1f, 1f, 1f), var_0.x))), vec3<f32>(_wgslsmith_div_f32(-1343f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1334f, 1126f))))), _wgslsmith_f_op_f32(min(-782f, 1000f)), 654f)));
    let var_3 = Struct_2(~(~((1u >> (var_1.a % 32u)) | arg_1.x)), var_1.b);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f * _wgslsmith_f_op_f32(var_2.x * var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~vec4<u32>(31011u, 20361u, u_input.a.x, 4294967295u), ~vec4<u32>(u_input.a.x, 15853u, u_input.a.x, 0u), vec3<i32>(1i, -14994i, -1i)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2008f - 1737f))))));
    var var_1 = 846f;
    let var_2 = Struct_1((vec2<u32>(30765u >> (u_input.a.x % 32u), u_input.a.x) << (~u_input.a % vec2<u32>(32u))) << (~(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(30026u, u_input.a.x))) % vec2<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 12938u), u_input.a.x, abs(_wgslsmith_mod_u32(1u, 1u))), vec4<u32>(75294u, u_input.a.x, _wgslsmith_sub_u32(50237u, u_input.a.x), _wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x)) | ~(vec4<u32>(3844u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 60301u))));
    let var_3 = Struct_2(u_input.a.x, min(_wgslsmith_sub_vec3_u32(reverseBits(var_2.b.zxx), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 5670u))), var_2.b.zxx));
    let var_4 = max(~_wgslsmith_mod_i32(-2147483647i, ~8879i), -2948i);
    var var_5 = var_3;
    var var_6 = Struct_1(select(firstTrailingBit(countOneBits(~u_input.a)), ~(~(~vec2<u32>(var_3.a, var_5.a))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)], var_0 < 575f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_5.a, var_5.b.x), max(0u, 15063u)), 13u)], vec2<bool>(var_4 < var_4, true))), var_2.b);
    let var_7 = !select(!(!select(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], vec2<bool>(true, true), global0[_wgslsmith_index_u32(31765u, 13u)])), vec2<bool>(any(vec2<bool>(false, true)), true), !vec2<bool>(true, any(vec3<bool>(true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-72338i, 19546i, -3833i, var_4), vec2<i32>(_wgslsmith_sub_i32(~var_4, ~var_4), -2908i), _wgslsmith_mult_i32(var_4, ~(-23185i) << (((1u | var_2.a.x) << (var_3.a % 32u)) % 32u)), max(_wgslsmith_div_vec2_u32(select(_wgslsmith_mult_vec2_u32(var_3.b.yz, vec2<u32>(var_2.b.x, var_6.b.x)), vec2<u32>(47144u, 4294967295u), var_7.x), var_2.b.wy), _wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(var_6.a, vec2<u32>(var_6.b.x, var_3.b.x))), func_4(var_7.x, true && var_7.x, _wgslsmith_f_op_f32(var_0 * var_0), func_4(var_7.x, false, -930f, var_3)).b.zy)));
}

