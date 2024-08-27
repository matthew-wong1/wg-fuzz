struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(22327u, 0u, 65092u, 3967u, 48159u, 1u, 4329u, 90665u, 4294967295u, 25920u, 3214u, 4294967295u, 1u, 0u, 11267u, 0u, 1u, 0u, 7626u, 58116u, 0u, 1u, 1u, 8598u, 4294967295u, 4294967295u, 44563u, 1u, 4294967295u, 6145u);

var<private> global1: array<u32, 17>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_div_f32(-2337f, 1326f)) + arg_1.a.x)));
    let var_1 = Struct_1(1u, 1i, countOneBits(vec4<u32>(min(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 17u)], 4294967295u), countOneBits(63092u)), firstTrailingBit(min(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30792u, 17u)], 17u)], 30u)], 4294967295u)), 68496u, _wgslsmith_div_u32(max(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69040u, 30u)], 17u)], u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 9850u)))), (!(arg_2.x == 874f) | arg_0) && !(!any(vec3<bool>(true, true, arg_0))), -847f);
    var var_2 = vec4<i32>(40895i, ~select(-17125i, -50588i, arg_0), ~(~(~var_1.b)), _wgslsmith_sub_i32(1i, var_1.b));
    let var_3 = Struct_2(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), select(arg_3.yw, vec2<i32>(-20343i, 1i), true)), -(var_1.b | 1i), arg_0) << (abs(reverseBits(~var_1.a)) % 32u), vec4<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(max(-392f, _wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(var_0 * 829f)))), 1344f), Struct_1(~(global1[_wgslsmith_index_u32(var_1.a, 17u)] & 0u) << (~(~1u) % 32u), countOneBits(_wgslsmith_mod_i32(-37338i, var_1.b)), var_1.c, false, 316f), var_1);
    let var_4 = Struct_2(max(-_wgslsmith_sub_i32(2147483647i << (global0[_wgslsmith_index_u32(var_1.c.x, 30u)] % 32u), var_2.x), var_2.x), var_3.b, Struct_1(~firstTrailingBit(10798u) ^ min(1u, 1u), ~max(1i, _wgslsmith_dot_vec4_i32(arg_3, arg_3)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(23887u, 0u, u_input.a.x, 34559u), _wgslsmith_mod_vec4_u32(var_3.d.c, var_1.c)), vec4<u32>(_wgslsmith_mult_u32(21263u, var_3.c.c.x), min(1u, 1u), _wgslsmith_clamp_u32(0u, var_3.d.c.x, global0[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 58667u, 0u, 1u), var_1.c, vec4<u32>(52667u, 67800u, 24044u, 5692u))), !any(select(vec3<bool>(var_1.d, var_1.d, var_3.c.d), vec3<bool>(arg_0, true, var_1.d), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -905f))), Struct_1(~1u, var_2.x, var_1.c, true | arg_0, _wgslsmith_f_op_f32(-1786f * _wgslsmith_f_op_f32(step(var_1.e, _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, false)))))));
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(min(reverseBits(~var_4.d.b), _wgslsmith_dot_vec2_i32(countOneBits(var_2.ww), vec2<i32>(var_2.x, arg_3.x))), ~min(_wgslsmith_add_i32(var_4.c.b, arg_3.x), u_input.b & var_2.x)), firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_3.xxy, abs(var_2.yyz))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_clamp_i32(-5856i, u_input.b, u_input.b), func_3(true, Struct_3(vec3<f32>(-1064f, arg_0, arg_0)), vec2<f32>(-1048f, arg_0), vec4<i32>(-2147483647i, u_input.b, u_input.b, 1i)), -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(13203i, 33042i, 2147483647i), vec3<i32>(2147483647i, -1i, u_input.b))) << (max(~vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10313u, 17u)], 30u)], u_input.a.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 30u)], u_input.a.x), ~vec4<u32>(83865u, u_input.a.x, 51585u, 68224u) ^ ~vec4<u32>(0u, 6010u, 20554u, 0u)) % vec4<u32>(32u)), vec4<i32>(u_input.b, abs(u_input.b), -25625i, ~2147483647i));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(732f, arg_0, arg_0)), vec3<f32>(1696f, -940f, arg_0), vec3<bool>(true, true, true))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -1303f) * vec3<f32>(arg_0, 1206f, arg_0)), vec3<f32>(300f, 443f, 281f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(360f, arg_0, 933f), vec3<f32>(arg_0, -206f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -816f, 2304f)), vec3<bool>(false, false, false)))))));
    var var_2 = Struct_1(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 51793u, 4294967295u, 52900u), ~vec4<u32>(4294967295u, 87730u, 0u, u_input.a.x)), vec4<u32>(40625u, global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 30u)], 5119u, _wgslsmith_mult_u32(1u, 4294967295u)))), var_0.x << (_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x))), abs(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(68258u, u_input.a.x)))) % 32u), vec4<u32>(~global0[_wgslsmith_index_u32(u_input.a.x, 30u)], ~0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 17u)], 6015u) >> (vec3<u32>(0u, 6503u, global1[_wgslsmith_index_u32(4294967295u, 17u)]) % vec3<u32>(32u)), vec3<u32>(43013u, u_input.a.x, u_input.a.x) & vec3<u32>(1u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8265u, 17u)], 30u)], 4294967295u)), ~(global1[_wgslsmith_index_u32(~0u, 17u)] & (39766u >> (u_input.a.x % 32u)))), all(vec4<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true, true)), arg_0);
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(11841i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(arg_3.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_3.b, arg_3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.e, arg_3.c.e, -977f, arg_3.d.e))), !any(vec3<bool>(false, arg_0, arg_3.c.d)))))), Struct_1(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(firstLeadingBit(0u), 30u)], 17u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~31807u, arg_3.d.a | 18930u), 17u)]), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(787f, arg_2.x))), vec4<u32>(65715u, 38754u, ~(~57901u), reverseBits(28626u)), any(select(!vec3<bool>(false, true, arg_0), !vec3<bool>(arg_0, arg_3.d.d, false), false)), arg_2.x), arg_3.c);
    global0 = array<u32, 30>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1160f, arg_3.b.x, var_0.d.d)));
    let var_2 = countOneBits(arg_1);
    global1 = array<u32, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.e, _wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(-arg_3.d.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-2664i, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -554f), 543f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-104f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(566f * 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(false, false, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 8039i, 23087i), vec3<i32>(u_input.b, u_input.b, -2457i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1503f, 1000f, 117f)), Struct_2(-1i, vec4<f32>(182f, 1080f, 591f, 416f), Struct_1(1u, u_input.b, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 4294967295u), true, -283f), Struct_1(30176u, u_input.b, vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 0u), true, -2095f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) * _wgslsmith_f_op_f32(-1647f + 281f))), 1625f), Struct_1(59420u, -u_input.b << (_wgslsmith_mod_u32(min(0u, u_input.a.x), u_input.a.x) % 32u), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(31764u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 17u)])), abs(abs(vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 30u)], 30u)])))), select(!all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(func_1(false, -6095i, vec3<f32>(-815f, 562f, -1396f), Struct_2(-44134i, vec4<f32>(1004f, 471f, -1751f, -552f), Struct_1(u_input.a.x, 0i, vec4<u32>(2515u, global1[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u), true, -808f), Struct_1(21870u, -36591i, vec4<u32>(0u, 0u, u_input.a.x, 20119u), false, -950f)))) == _wgslsmith_f_op_f32(select(-223f, 494f, false)), true | all(vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(-359f + _wgslsmith_f_op_f32(-825f + _wgslsmith_f_op_f32(f32(-1f) * -1411f)))), Struct_1(0u, i32(-1i) * -func_2(-382f), vec4<u32>(1u, abs(1u | global0[_wgslsmith_index_u32(0u, 30u)]), ~(~2219u), ~_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(1u, 30u)])), false, 2604f));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-703f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.e + var_0.c.e) - _wgslsmith_f_op_f32(sign(var_0.c.e)))) - _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(func_1(true, func_3(var_0.c.d, Struct_3(vec3<f32>(-561f, var_0.d.e, var_0.d.e)), vec2<f32>(-1000f, var_0.c.e), vec4<i32>(u_input.b, -3120i, u_input.b, -1i)), _wgslsmith_f_op_vec3_f32(var_0.b.zzw + var_0.b.www), Struct_2(var_0.a, var_0.b, var_0.d, Struct_1(global0[_wgslsmith_index_u32(88537u, 30u)], var_0.c.b, vec4<u32>(4294967295u, u_input.a.x, 32958u, global1[_wgslsmith_index_u32(1u, 17u)]), var_0.d.d, var_0.c.e)))))))));
    let var_2 = true;
    let var_3 = vec4<i32>(func_2(_wgslsmith_f_op_f32(func_1(true, 2147483647i, var_0.b.www, var_0))), _wgslsmith_mult_i32(-1i, -(var_0.d.b ^ abs(2147483647i))), reverseBits(u_input.b), ~u_input.b);
    var var_4 = var_0;
    var var_5 = !(!select(select(select(vec2<bool>(var_2, var_2), vec2<bool>(false, var_0.c.d), vec2<bool>(var_0.c.d, var_4.c.d)), select(vec2<bool>(var_0.c.d, false), vec2<bool>(true, var_4.d.d), var_2), var_2 & true), select(select(vec2<bool>(var_4.c.d, true), vec2<bool>(false, var_2), false), vec2<bool>(var_4.d.d, true), vec2<bool>(true, var_2)), var_2));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-2024f - var_0.c.e), 1335f);
    let var_7 = var_0.c;
    let var_8 = var_4.b.wyz;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.c.zyw, vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(var_0.d.c.x, 17u)], 2351u, var_4.d.c.x), var_7.c) ^ 794u, 30u)], select(16204u, 87312u, true), abs(10781u)), 2147483647i, _wgslsmith_f_op_f32(var_8.x + _wgslsmith_f_op_f32(ceil(331f))));
}

