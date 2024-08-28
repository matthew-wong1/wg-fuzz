struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> f32 {
    let var_0 = true;
    let var_1 = arg_1.d.d.x;
    let var_2 = arg_1.e.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(976f * -1786f) - _wgslsmith_f_op_f32(-arg_1.d.a.b)), _wgslsmith_f_op_f32(max(-2535f, _wgslsmith_f_op_f32(min(1673f, arg_1.b.b))))))) * arg_1.d.a.b);
}

fn func_3() -> bool {
    var var_0 = Struct_4(Struct_3(u_input.c.x, Struct_1(~u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(262f)))), _wgslsmith_div_i32(firstTrailingBit(42075i), i32(-1i) * -17195i), ~vec4<i32>(-72831i, u_input.d, u_input.d, 14726i) ^ ~vec4<i32>(u_input.d, u_input.d, -4350i, 2147483647i)), _wgslsmith_f_op_f32(515f * -1000f), Struct_2(Struct_1(max(-14183i, u_input.a), -1255f, _wgslsmith_sub_i32(u_input.d, u_input.d), vec4<i32>(u_input.a, u_input.a, u_input.d, 1i) & vec4<i32>(2147483647i, u_input.a, 0i, 2147483647i)), -(vec4<i32>(1i, u_input.d, u_input.d, u_input.a) & vec4<i32>(6842i, u_input.d, u_input.a, u_input.a)), true, select(vec2<bool>(global0[_wgslsmith_index_u32(38310u, 3u)], global0[_wgslsmith_index_u32(49804u, 3u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false), false), u_input.d == 0i), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), u_input.c.xwy)), Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-269f, 1795f)), -11224i, ~abs(vec4<i32>(u_input.d, -39073i, -43749i, u_input.d)))), Struct_3(u_input.b, Struct_1(u_input.d, -1696f, -72967i, reverseBits(-vec4<i32>(0i, u_input.d, 14623i, u_input.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-550f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1130f, 611f)), _wgslsmith_f_op_f32(floor(1000f)), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 3u)]))), Struct_2(Struct_1(-15704i, _wgslsmith_f_op_f32(sign(-627f)), ~u_input.d, ~vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.d)), -vec4<i32>(u_input.d, 0i, u_input.a, -2147483647i), global0[_wgslsmith_index_u32(u_input.c.x, 3u)], !select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)])), countOneBits(~u_input.c.yxx)), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(12168i, -19258i, 76923i), ~0i, u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f * -1174f) - 174f), -u_input.d, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-17010i, 2147483647i, u_input.d, u_input.a), vec4<i32>(u_input.d, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.a)), -vec4<i32>(u_input.d, 16797i, 31052i, u_input.d), vec4<i32>(u_input.d, 13i, 0i, u_input.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-279f, -860f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-624f, 923f))))), vec4<i32>(1i, i32(-1i) * -u_input.d, 21425i, 8412i));
    var_0 = Struct_4(var_0.b, Struct_3(abs(var_0.a.d.e.x), var_0.b.b, -246f, Struct_2(Struct_1(_wgslsmith_mod_i32(var_0.a.d.a.a, 2147483647i), _wgslsmith_f_op_f32(var_0.c * -851f), firstTrailingBit(0i), countOneBits(vec4<i32>(-2147483647i, u_input.a, -2147483647i, 35783i))), countOneBits(vec4<i32>(-34144i, 2147483647i, -50854i, -2147483647i)), -817f >= var_0.c, select(!vec2<bool>(false, var_0.a.d.c), !var_0.b.d.d, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(48620u, var_0.a.a), 3u)]), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 39392u, 0u), vec3<u32>(92885u, var_0.b.d.e.x, 24249u)), vec3<u32>(4294967295u, 4294967295u, var_0.a.a))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.d, vec4<i32>(1i, u_input.a, u_input.a, var_0.a.b.d.x)), ~var_0.b.d.a.d), var_0.a.b.b, ~(-var_0.a.e.c), vec4<i32>(2147483647i, _wgslsmith_mult_i32(var_0.a.b.d.x, 2147483647i), max(u_input.d, 2582i), 2147483647i))), var_0.b.e.b, min(vec4<i32>(u_input.a, var_0.b.b.a, var_0.a.e.d.x, u_input.d), ~select(var_0.b.d.a.d, var_0.b.b.d, vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.a, 3u)], var_0.b.d.d.x, true, false)) << (max(vec4<u32>(1u, var_0.b.a, var_0.a.a, 35179u) | vec4<u32>(35277u, 23437u, u_input.b, var_0.b.a), ~vec4<u32>(4294967295u, 0u, 1u, var_0.a.a)) % vec4<u32>(32u))));
    var_0 = Struct_4(Struct_3(~(~(~5394u)), var_0.b.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e.b - 1180f)))), Struct_2(Struct_1(_wgslsmith_clamp_i32(0i, 32308i, u_input.a), -131f, _wgslsmith_clamp_i32(var_0.b.b.a, -2147483647i, -7754i), vec4<i32>(1i, 16667i, -38444i, -9968i) | vec4<i32>(2147483647i, -5100i, var_0.a.e.d.x, var_0.a.d.a.a)), _wgslsmith_clamp_vec4_i32(var_0.d, ~var_0.b.b.d, reverseBits(var_0.a.b.d)), var_0.b.d.d.x, select(var_0.a.d.d, vec2<bool>(true, true), var_0.a.d.d), var_0.b.d.e), Struct_1(var_0.d.x, _wgslsmith_f_op_f32(546f * _wgslsmith_f_op_f32(floor(var_0.a.c))), -79954i, firstTrailingBit(var_0.b.d.a.d))), Struct_3(~_wgslsmith_div_u32(var_0.b.d.e.x, u_input.b), Struct_1(u_input.a, _wgslsmith_f_op_f32(func_2(u_input.b < 16893u, var_0.b)), reverseBits(8396i), var_0.a.e.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.c)))), Struct_2(var_0.a.b, _wgslsmith_sub_vec4_i32(vec4<i32>(-8128i, -2147483647i, -60767i, -14853i), var_0.b.e.d), true & all(vec4<bool>(true, var_0.a.d.d.x, true, var_0.a.d.c)), vec2<bool>(select(false, true, false), var_0.c > var_0.a.d.a.b), var_0.a.d.e), Struct_1(~u_input.a, _wgslsmith_f_op_f32(func_2(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(67587u, 3u)])), Struct_3(var_0.b.a, var_0.b.b, var_0.b.e.b, Struct_2(Struct_1(var_0.a.e.d.x, 1634f, var_0.d.x, var_0.a.d.b), vec4<i32>(-2426i, -19222i, -1i, 39327i), false, var_0.b.d.d, u_input.c.ywy), Struct_1(-1i, var_0.c, -2147483647i, vec4<i32>(1i, -2147483647i, var_0.d.x, u_input.d))))), -2147483647i, var_0.d)), 597f, ~vec4<i32>(~var_0.a.b.a, -9299i, i32(-1i) * -var_0.b.d.b.x, u_input.d));
    let var_1 = vec4<f32>(var_0.a.d.a.b, var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.b.c)))));
    var_0 = Struct_4(var_0.a, var_0.b, _wgslsmith_f_op_f32(-1716f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f - _wgslsmith_f_op_f32(1321f - var_1.x)))), _wgslsmith_sub_vec4_i32(var_0.d, vec4<i32>(var_0.d.x, u_input.d, ~(var_0.a.b.d.x | 59240i), ~(i32(-1i) * -1i))));
    return !var_0.a.d.c;
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-1709f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(true, Struct_3(1u, Struct_1(-2147483647i, arg_0, 52044i, vec4<i32>(u_input.d, u_input.a, u_input.d, u_input.a)), arg_0, Struct_2(Struct_1(10225i, 686f, -12591i, vec4<i32>(u_input.a, u_input.a, u_input.d, u_input.d)), vec4<i32>(u_input.d, u_input.d, -33017i, 1125i), true, vec2<bool>(false, true), u_input.c.wwz), Struct_1(11047i, arg_0, -19292i, vec4<i32>(-1i, u_input.a, -12390i, u_input.a))))), 902f))) * arg_0));
    var_0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = array<bool, 3>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -599f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-494f * -333f), -1225f))));
    var var_2 = select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], true, true, u_input.b >= _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz << (vec2<u32>(u_input.b, 11027u) % vec2<u32>(32u)), u_input.c.wy), 3u)], all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(37089u, 3u)], global0[_wgslsmith_index_u32(13677u, 3u)]))), func_3()), global0[_wgslsmith_index_u32(abs(u_input.b), 3u)]), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(52168u, 3u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.b, 3u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(18384u, 3u)], global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)])))), global0[_wgslsmith_index_u32(u_input.b, 3u)]);
    return !(!select(vec2<bool>(true, true), !vec2<bool>(false, var_2.x), select(vec2<bool>(var_2.x, global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(var_2.x, false), select(vec2<bool>(global0[_wgslsmith_index_u32(130541u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(true, false), var_2.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    let var_0 = 1u;
    let var_1 = select(select(vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 3u)], true, false, global0[_wgslsmith_index_u32(73757u, 3u)])), true), vec2<bool>(abs(var_0) >= 1u, select(true, all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true)), var_0 <= u_input.b)), vec2<bool>(global0[_wgslsmith_index_u32(select(u_input.b, u_input.b, true), 3u)] && true, true)), select(func_1(-120f), func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(652f * -1011f), _wgslsmith_f_op_f32(-859f + 181f)))), func_3()), vec2<bool>(any(vec4<bool>(func_3(), any(vec2<bool>(global0[_wgslsmith_index_u32(33715u, 3u)], false)), global0[_wgslsmith_index_u32(u_input.b, 3u)], true)), any(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)], false, global0[_wgslsmith_index_u32(46090u, 3u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(3377u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)]), global0[_wgslsmith_index_u32(var_0, 3u)]))));
    var var_2 = Struct_2(Struct_1(0i, _wgslsmith_f_op_f32(f32(-1f) * -1210f), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-46179i, 0i, u_input.d), countOneBits(vec3<i32>(u_input.d, -2147483647i, u_input.a))), min(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.a, -5061i, u_input.d), vec4<i32>(u_input.d, -63014i, -2850i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -1i, 1i, 50738i), vec4<i32>(54751i, u_input.d, -1i, 1i))), vec4<i32>(~u_input.a, u_input.a, u_input.a, i32(-1i) * -63930i))), vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, -2147483647i), firstLeadingBit(vec2<i32>(34319i, -51708i)))), reverseBits(u_input.d), 1i, select(2147483647i, -u_input.a, true) >> (u_input.b % 32u)), var_1.x, vec2<bool>(false, reverseBits(reverseBits(2147483647i)) != -(-1i & u_input.a)), ~(~reverseBits(vec3<u32>(32614u, 4294967295u, u_input.c.x))));
    let var_3 = var_2.b.xyw;
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec3<f32>(var_2.a.b, _wgslsmith_div_f32(var_2.a.b, -111f), _wgslsmith_f_op_f32(max(var_2.a.b, _wgslsmith_f_op_f32(var_2.a.b * var_2.a.b)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), -476f));
}

