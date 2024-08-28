struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(4294967295u, 4294967295u, 0u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    global0 = array<u32, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1768f, -2280f, -1273f) - vec3<f32>(876f, 1238f, -1000f))) - vec3<f32>(_wgslsmith_div_f32(137f, -324f), -807f, _wgslsmith_f_op_f32(sign(-556f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(-965f, -1310f)), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-165f)) - _wgslsmith_f_op_f32(-1031f - 2281f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -271f);
    let var_2 = -8781i;
    var var_3 = !vec4<bool>(any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, true), !vec3<bool>(arg_0, true, true))), !arg_0, !any(vec3<bool>(arg_0, false, arg_0)) & !all(vec3<bool>(true, arg_0, arg_0)), all(select(!vec3<bool>(arg_0, false, arg_0), !vec3<bool>(arg_0, true, arg_0), all(vec4<bool>(false, false, arg_0, true)))));
    return _wgslsmith_sub_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(~var_2, var_2 & var_2, 10087i, var_2), _wgslsmith_mult_vec4_i32(vec4<i32>(34902i, -16412i, -50836i, -52306i), -vec4<i32>(var_2, var_2, var_2, 6941i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -13247i, -27088i), ~vec3<i32>(var_2, var_2, var_2)), abs(var_2), var_2 << (~u_input.e.x % 32u), _wgslsmith_mod_i32(~(-5112i), var_2))), ~(-(vec4<i32>(0i, var_2, 2147483647i, var_2) & vec4<i32>(var_2, var_2, var_2, var_2))) << (~vec4<u32>(~u_input.a.x, 39377u, global0[_wgslsmith_index_u32(4294967295u, 3u)], ~4294967295u) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-268f, -1774f, -765f) + vec3<f32>(-434f, -930f, -1557f)) * vec3<f32>(1000f, -2070f, 539f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1206f, 727f, -713f))))));
    let var_1 = true;
    global0 = array<u32, 3>();
    let var_2 = var_0.a.x;
    let var_3 = any(select(vec2<bool>(false, select(true, select(var_1, var_1, var_1), var_1)), !vec2<bool>(true, var_1), any(vec3<bool>(var_1, -499f != var_0.a.x, u_input.e.x <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60679u, 3u)], 3u)], 3u)]))));
    return vec4<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(21474u)), 3u)] >> ((u_input.d | _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(global0[_wgslsmith_index_u32(29178u, 3u)], 1u))) % 32u), u_input.e.x, _wgslsmith_mult_u32(3239u, 31448u)), _wgslsmith_clamp_u32(1u, u_input.e.x, firstLeadingBit(64922u)), 1u, ~u_input.a.x);
}

fn func_5(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = true || (func_4(reverseBits(abs(vec4<i32>(23696i, -61607i, -1i, -2653i)))).x <= ~4294967295u);
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_1 = abs(_wgslsmith_add_vec2_i32(~(~vec2<i32>(1i, -1i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(40775u, global0[_wgslsmith_index_u32(u_input.c, 3u)]), vec2<u32>(36566u, 39445u)) % vec2<u32>(32u)), select(countOneBits(vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-3481i, -19141i)), vec2<bool>(true, var_0)) >> (vec2<u32>(~u_input.e.x, ~0u) % vec2<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(1f, 1f, 1f)));
    return abs(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(-11883i, -4581i, var_1.x)), -var_1.x, i32(-1i) * -1i), -(vec3<i32>(var_1.x, var_1.x, var_1.x) | vec3<i32>(9440i, 2147483647i, var_1.x)))));
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(~u_input.e, firstLeadingBit(u_input.e & ~u_input.e), select(~(~u_input.e), abs(_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(0u, 4294967295u, 26071u))), (28367i >> (u_input.c % 32u)) <= ~1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, 1f, _wgslsmith_f_op_f32(step(1199f, 1547f)), 985f)))));
    var var_2 = min(_wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(-18614i, -31764i, -26076i)), _wgslsmith_add_vec3_i32(~vec3<i32>(-13255i, 31357i, -58721i), -vec3<i32>(20632i, -1i, -15329i))) | func_5(func_4(func_3(true))), ~_wgslsmith_add_vec3_i32(abs(max(vec3<i32>(-46185i, 42776i, 1i), vec3<i32>(-15219i, 16797i, 34567i))), vec3<i32>(_wgslsmith_sub_i32(0i, -2147483647i), _wgslsmith_sub_i32(-2332i, -2664i), func_5(vec4<u32>(89361u, var_0.x, u_input.d, 15099u)).x)));
    var var_3 = -(~vec4<i32>(var_2.x, ~var_2.x, _wgslsmith_mod_i32(-1i, var_2.x), -28696i)) >> (_wgslsmith_clamp_vec4_u32(func_4(firstTrailingBit(vec4<i32>(13553i, var_2.x, 0i, var_2.x)) >> (~vec4<u32>(58047u, var_0.x, 71449u, 238u) % vec4<u32>(32u))), ~(~vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 3u)], u_input.d, global0[_wgslsmith_index_u32(var_0.x, 3u)]) ^ ~vec4<u32>(var_0.x, 4294967295u, u_input.c, var_0.x)), ~(~vec4<u32>(global0[_wgslsmith_index_u32(12414u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], 0u, 5368u))) % vec4<u32>(32u));
    var_3 = vec4<i32>(var_3.x, countOneBits(_wgslsmith_mult_i32(~(-10347i), var_3.x)) << (firstLeadingBit(abs(min(u_input.c, var_0.x))) % 32u), abs(_wgslsmith_sub_i32(-12121i, min(1i, var_2.x) << (~global0[_wgslsmith_index_u32(var_0.x, 3u)] % 32u))), var_3.x);
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(~var_0.x << (global0[_wgslsmith_index_u32(1u, 3u)] % 32u)), 22271u) ^ func_4(-_wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, var_2.x, 1i, var_2.x), firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, -12876i, -26769i)))).x, 3u)], 3u)];
}

fn func_1() -> f32 {
    global0 = array<u32, 3>();
    var var_0 = ~(min(vec3<u32>(~u_input.c, min(0u, 0u), ~34162u), vec3<u32>(0u, global0[_wgslsmith_index_u32(~u_input.e.x, 3u)], global0[_wgslsmith_index_u32(abs(u_input.d), 3u)])) ^ u_input.e);
    let var_1 = ~select(vec4<u32>(min(~31552u, ~43213u), ~1u, var_0.x, func_2()), _wgslsmith_mult_vec4_u32(~vec4<u32>(19411u, 50601u, 0u, var_0.x) ^ ~vec4<u32>(1u, 86511u, global0[_wgslsmith_index_u32(4294967295u, 3u)], 13813u), _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, 29259u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, var_0.x, u_input.c), vec4<u32>(4294967295u, var_0.x, u_input.a.x, global0[_wgslsmith_index_u32(7414u, 3u)])))), false);
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    return 1323f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = 999i;
    var_0 = _wgslsmith_f_op_f32(func_1());
    var var_2 = !vec4<bool>(select(true, true, true), true, !(u_input.b < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.e.x), 3u)], 3u)]), true);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(1743f)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, _wgslsmith_f_op_f32(1000f + 213f), -1000f)))), -_wgslsmith_mult_i32(~var_1, func_5(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 3u)], 3u)], 4294967295u, 4294967295u, 11116u) | vec4<u32>(38221u, u_input.d, 7281u, 66415u)).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a, u_input.c, var_3.b.a.xx);
}

