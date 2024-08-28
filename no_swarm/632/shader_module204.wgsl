struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(34490i, 0i, 60443i), vec3<i32>(2147483647i, -44915i, 0i), vec3<i32>(61120i, i32(-2147483648), 0i), vec3<i32>(11074i, 0i, -13388i), vec3<i32>(-71529i, -70029i, i32(-2147483648)), vec3<i32>(1i, 0i, 1i), vec3<i32>(29405i, -32104i, 26348i), vec3<i32>(-5468i, 2147483647i, 30432i), vec3<i32>(2813i, i32(-2147483648), 16777i), vec3<i32>(-1i, 0i, -60210i), vec3<i32>(-6881i, -5956i, 2147483647i), vec3<i32>(43400i, -2750i, 1675i), vec3<i32>(-42378i, -6762i, -1i), vec3<i32>(-30276i, -30947i, -16781i), vec3<i32>(-1i, -16108i, -1i), vec3<i32>(1i, -24822i, 30160i), vec3<i32>(-5532i, -34469i, -9662i), vec3<i32>(0i, 2147483647i, -21042i), vec3<i32>(30904i, -1i, 46601i), vec3<i32>(1i, 53481i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 13758i), vec3<i32>(39122i, -24996i, -35151i), vec3<i32>(-23200i, 19080i, 16785i), vec3<i32>(-47755i, 1i, 2147483647i), vec3<i32>(2147483647i, 1i, 46768i), vec3<i32>(40911i, -35086i, 52266i), vec3<i32>(-55082i, i32(-2147483648), -1i), vec3<i32>(26924i, 14640i, 11478i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> vec2<bool> {
    return !vec2<bool>(arg_1, all(vec3<bool>(true, arg_1, any(vec4<bool>(arg_1, arg_1, true, arg_1)))));
}

fn func_3(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<bool>(all(!(!vec4<bool>(false, false, true, arg_0))), true, true);
    var var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(57042u, 15u)] >> (0u % 32u), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), select(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(105409u, 15u)], 42131i), 2147483647i, !arg_0)), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x ^ 18475u), 15u)], u_input.b << (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u), 11896i), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(28993u, 6583u), 28u)]), arg_1, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(345f, arg_1, 1309f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1736f, -2223f, arg_1), vec3<f32>(593f, -291f, arg_1)) - vec3<f32>(-235f, arg_1, 716f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1223f, arg_1, 1000f))))))), ~vec4<i32>(1i, 17572i, 8130i, ~7574i) >> ((~abs(vec4<u32>(u_input.a.x, 34544u, 21614u, u_input.a.x)) & vec4<u32>(abs(u_input.a.x), ~u_input.a.x, u_input.a.x, ~4294967295u)) % vec4<u32>(32u)), -7649i != countOneBits(53867i & (global0[_wgslsmith_index_u32(0u, 15u)] << (u_input.a.x % 32u))));
    var var_2 = Struct_1(_wgslsmith_add_i32(5087i, var_1.a.x >> (min(4294967295u, _wgslsmith_sub_u32(u_input.a.x, 1u)) % 32u)), _wgslsmith_mult_vec2_u32(u_input.a.yx, u_input.a.zz), var_1.c, any(!func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-787f, arg_1), var_1.c.yx)), false, 9450i)));
    var var_3 = Struct_1(_wgslsmith_mult_i32(-2147483647i, var_2.a), select(_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_2.b, var_2.b, u_input.a.yy), ~(~var_2.b)), ~abs(abs(var_2.b)), !arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, -269f, 1095f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-871f, arg_1, var_1.b), _wgslsmith_f_op_vec3_f32(min(var_1.c, var_2.c))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-433f, var_2.c.x, 191f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_2.c.x, var_1.c.x) + var_2.c) * var_1.c), var_0))), any(vec3<bool>(_wgslsmith_f_op_f32(-var_1.c.x) >= -1413f, var_0.x, true | select(false, true, false))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2433f, var_3.c.x, 1931f, arg_1), vec4<f32>(arg_1, 1262f, var_3.c.x, var_3.c.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_1.b, arg_1, 406f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-370f, -1545f, var_3.c.x, 1651f)))))));
    return Struct_1(var_2.a & 1i, ~vec2<u32>(4294967295u, var_2.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-284f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(var_1.c, vec3<f32>(var_2.c.x, var_2.c.x, 1722f))), _wgslsmith_f_op_vec3_f32(-var_1.c))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_2.c.x, var_3.c.x))))))), false);
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<i32>(-23885i, -(i32(-1i) * -1i));
    let var_1 = func_3(any(select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), func_2(vec2<f32>(-1656f, -1022f), false, u_input.c.x), false), vec2<bool>(any(vec3<bool>(true, true, true)), -15851i > u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1198f, _wgslsmith_f_op_f32(-1226f + -179f))))) * _wgslsmith_f_op_f32(339f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = _wgslsmith_dot_vec4_i32(abs(~u_input.c & _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_1.a, var_0.x, u_input.c.x), u_input.c)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-27400i, global0[_wgslsmith_index_u32(var_1.b.x, 15u)], var_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]) >> (vec4<u32>(1u, u_input.a.x, var_1.b.x, u_input.a.x) % vec4<u32>(32u)), u_input.c)) & _wgslsmith_mult_i32(~var_1.a, -_wgslsmith_dot_vec4_i32(reverseBits(u_input.c), u_input.c >> (vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u))));
    var var_3 = Struct_3(vec2<u32>(_wgslsmith_mod_u32(~4294967295u, firstTrailingBit(4294967295u)), u_input.a.x) << (vec2<u32>(~var_1.b.x, ~(var_1.b.x << (u_input.a.x % 32u))) % vec2<u32>(32u)), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(var_2, 1i, _wgslsmith_sub_i32(var_2, -2147483647i)), vec3<i32>(max(u_input.b, var_0.x), -var_1.a, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) * -568f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2704f, 863f, var_1.c.x))), vec4<i32>(_wgslsmith_clamp_i32(4448i, var_0.x, var_2), u_input.c.x & 2147483647i, abs(-1i), -abs(var_1.a)), var_1.d), var_1.c, vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), 1110f, 491f, -352f));
    var_3 = Struct_3(var_1.b, Struct_2(-(~_wgslsmith_add_vec3_i32(u_input.c.yzw, vec3<i32>(35724i, var_0.x, 1i))), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_3.b.d.x, u_input.b, var_0.x), u_input.c), 0i, min(var_2, var_3.b.d.x), 19458i), var_1.d), vec3<f32>(-189f, var_1.c.x, var_3.c.x), _wgslsmith_f_op_vec4_f32(var_3.d + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, var_3.c.x, var_1.c.x, var_1.c.x) - vec4<f32>(var_1.c.x, var_3.b.c.x, 1598f, var_1.c.x)), _wgslsmith_f_op_vec4_f32(round(var_3.d)), var_1.d)))));
    return Struct_2(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a | -5762i, 9235i, 2147483647i & var_3.b.d.x), _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(var_1.b.x, 28u)], global1[_wgslsmith_index_u32(27122u, 28u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.c.x * 1f), _wgslsmith_f_op_f32(floor(966f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, _wgslsmith_f_op_f32(-var_3.c.x), 537f) + vec3<f32>(_wgslsmith_f_op_f32(min(var_3.b.c.x, 1240f)), _wgslsmith_f_op_f32(round(var_1.c.x)), -1477f)))), vec4<i32>(u_input.c.x, -2147483647i, -countOneBits(~(-1i)), 0i >> (1u % 32u)), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    global1 = array<vec3<i32>, 28>();
    let var_0 = ~(~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) ^ u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, ~89597u)));
    global0 = array<i32, 15>();
    let var_1 = vec3<i32>(2147483647i, -2147483647i, ~select(global0[_wgslsmith_index_u32(select(4294967295u, 4294967295u, arg_2.e) | (u_input.a.x ^ u_input.a.x), 15u)], -1i, true));
    let var_2 = func_1();
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) * _wgslsmith_div_f32(-2537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<i32>(u_input.c.x, 1i, -10102i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-169f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1538f + 222f) - 1000f))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(func_3(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_4(global1[_wgslsmith_index_u32(~reverseBits(u_input.a.x), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -181f)), func_1()).a).a, vec4<i32>(1i, ~(max(-2147483647i, 56566i) >> (u_input.a.x % 32u)), ~1i, -61411i));
}

