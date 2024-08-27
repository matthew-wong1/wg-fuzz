struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, false, false, false, false, false, false, true, false, true, false, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_5) -> vec3<u32> {
    let var_0 = select(~(-abs(u_input.e)), u_input.e, global1[_wgslsmith_index_u32(~(~arg_0.d), 13u)]);
    var var_1 = (arg_3.c.a.b.b.a > -2147483647i) | global1[_wgslsmith_index_u32(u_input.d, 13u)];
    global1 = array<bool, 13>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1423f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(f32(-1f) * -1375f)));
    let var_2 = Struct_5(select(arg_3.a, vec4<bool>(arg_0.c.b.b.x, select(false & arg_2.x, !global1[_wgslsmith_index_u32(1u, 13u)], true), true, false), select(true, false, global1[_wgslsmith_index_u32(select(u_input.c.x, firstTrailingBit(arg_3.c.a.d), false), 13u)])), arg_0.b.c.wz, arg_3.c);
    return abs(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 16898u, 17527u), arg_0.b.e, vec3<u32>(u_input.d, 4294967295u, 16472u)), _wgslsmith_sub_vec3_u32(var_2.c.b.e, arg_3.c.b.e)), ~vec3<u32>(arg_3.c.a.c.e.x, 14141u, arg_0.b.a.c))) << (arg_0.c.e % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_4(Struct_3(!global1[_wgslsmith_index_u32(min(~44464u, 4294967295u ^ u_input.c.x), 13u)], Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 54674i, u_input.e.x), u_input.e), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 13u)], false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 13u)])), u_input.d), Struct_1(~32313i, select(vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(58145u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 13u)])), 21754u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 825f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1962f, arg_0.x, 1372f, -630f))), ~u_input.d << (22871u % 32u), _wgslsmith_mod_vec3_u32(func_3(Struct_3(global1[_wgslsmith_index_u32(6791u, 13u)], Struct_2(Struct_1(-1i, vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(113902u, 13u)]), u_input.c.x), Struct_1(0i, vec3<bool>(global1[_wgslsmith_index_u32(34871u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)], true), u_input.c.x), vec4<f32>(591f, arg_0.x, arg_0.x, -839f), 38839u, vec3<u32>(u_input.d, 21867u, 0u)), Struct_2(Struct_1(14192i, vec3<bool>(global1[_wgslsmith_index_u32(35368u, 13u)], global1[_wgslsmith_index_u32(14223u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), u_input.c.x), Struct_1(1i, vec3<bool>(false, false, global1[_wgslsmith_index_u32(27647u, 13u)]), u_input.a), vec4<f32>(1566f, arg_0.x, arg_0.x, -1000f), u_input.c.x, vec3<u32>(1u, 1u, u_input.d)), 3940u), vec4<f32>(-1120f, -184f, arg_0.x, arg_0.x), vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], true, global1[_wgslsmith_index_u32(4294967295u, 13u)]), Struct_5(vec4<bool>(global1[_wgslsmith_index_u32(43346u, 13u)], global1[_wgslsmith_index_u32(20462u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]), arg_0, Struct_4(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_2(Struct_1(5173i, vec3<bool>(global1[_wgslsmith_index_u32(34595u, 13u)], global1[_wgslsmith_index_u32(5752u, 13u)], true), u_input.d), Struct_1(u_input.e.x, vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(24163u, 13u)], true), u_input.d), vec4<f32>(548f, -1290f, -397f, -188f), 1u, vec3<u32>(u_input.a, 1u, u_input.d)), Struct_2(Struct_1(u_input.e.x, vec3<bool>(global1[_wgslsmith_index_u32(6428u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], false), u_input.d), Struct_1(-1i, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false, true), 14402u), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1000f), u_input.d, vec3<u32>(23671u, u_input.d, u_input.a)), 23273u), Struct_2(Struct_1(48325i, vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], false, true), 0u), Struct_1(-2147483647i, vec3<bool>(global1[_wgslsmith_index_u32(50239u, 13u)], global1[_wgslsmith_index_u32(78477u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]), u_input.a), vec4<f32>(-1000f, arg_0.x, arg_0.x, arg_0.x), u_input.a, vec3<u32>(u_input.d, u_input.c.x, 4294967295u)), Struct_1(-2147483647i, vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 13u)]), u_input.d), vec4<f32>(-1383f, -817f, arg_0.x, arg_0.x)))), ~vec3<u32>(u_input.c.x, 4294967295u, 4294967295u))), Struct_2(Struct_1(~(-2147483647i), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(74422u, 13u)]), 12525u), Struct_1(0i, vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), _wgslsmith_clamp_u32(u_input.d, 81090u, 21049u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 428f, arg_0.x, 436f)), max(u_input.a, ~u_input.c.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.a), vec3<u32>(0u, 49826u, 1u))), _wgslsmith_add_u32(29442u, 46045u)), Struct_2(Struct_1(0i, !select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(40331u, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]), vec3<bool>(true, false, true)), u_input.d), Struct_1(0i, vec3<bool>(!global1[_wgslsmith_index_u32(2842u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], !global1[_wgslsmith_index_u32(u_input.d, 13u)]), ~(~u_input.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, 799f, _wgslsmith_f_op_f32(exp2(arg_0.x)), -392f)), 1u, vec3<u32>(u_input.d, u_input.d << (~28852u % 32u), ~4294967295u)), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.e.x, u_input.e.x) & u_input.e.x, u_input.b.x, ~11086i), select(!(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 13u)])), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], true, true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), !vec3<bool>(global1[_wgslsmith_index_u32(114u, 13u)], true, global1[_wgslsmith_index_u32(51921u, 13u)])), vec3<bool>(true || global1[_wgslsmith_index_u32(u_input.a, 13u)], any(vec2<bool>(true, true)), false)), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1675f, 621f, -283f, arg_0.x))))));
    let var_1 = _wgslsmith_div_u32(~u_input.d, _wgslsmith_dot_vec3_u32(func_3(Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(29114u, 24712u), 13u)], var_0.b, Struct_2(Struct_1(u_input.b.x, var_0.a.b.b.b, 4294967295u), var_0.b.a, var_0.a.c.c, u_input.d, vec3<u32>(var_0.c.c, 24046u, var_0.b.b.c)), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.a.c.c.x, -2098f, 1372f) * vec4<f32>(arg_0.x, arg_0.x, 1056f, 898f))), var_0.b.a.b, Struct_5(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], var_0.a.c.b.b.x, true, global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-939f, -1233f), vec2<f32>(arg_0.x, -770f), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)]))), Struct_4(var_0.a, Struct_2(var_0.b.b, Struct_1(u_input.b.x, vec3<bool>(false, var_0.b.a.b.x, true), 4294967295u), var_0.a.b.c, var_0.a.c.d, vec3<u32>(var_0.c.c, u_input.a, 13680u)), Struct_1(u_input.b.x, vec3<bool>(true, var_0.c.b.x, global1[_wgslsmith_index_u32(var_0.a.d, 13u)]), 1u), vec4<f32>(-159f, var_0.d.x, 649f, 521f)))), reverseBits(vec3<u32>(1u, firstLeadingBit(28364u), _wgslsmith_div_u32(4294967295u, 42972u)))));
    var var_2 = select(!(!(!select(vec4<bool>(false, var_0.b.b.b.x, false, true), vec4<bool>(var_0.c.b.x, var_0.c.b.x, false, var_0.b.b.b.x), vec4<bool>(false, global1[_wgslsmith_index_u32(93377u, 13u)], true, true)))), select(vec4<bool>(_wgslsmith_sub_i32(-1i, u_input.e.x) == _wgslsmith_add_i32(var_0.b.a.a, -6823i), _wgslsmith_f_op_f32(trunc(297f)) <= 1544f, global1[_wgslsmith_index_u32(u_input.a, 13u)], ~0u != ~u_input.d), !select(vec4<bool>(var_0.b.b.b.x, true, true, false), !vec4<bool>(global1[_wgslsmith_index_u32(57851u, 13u)], false, true, false), false), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, 1u, var_1), vec4<u32>(34744u, 61318u, 23847u, var_1)) == 0u, global1[_wgslsmith_index_u32(~var_0.a.c.d << (abs(13876u) % 32u), 13u)], any(!var_0.c.b), true)), !vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), 13u)], false, var_0.b.a.b.x, true));
    var var_3 = Struct_4(var_0.a, Struct_2(var_0.a.c.b, var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)), ~1u, ~reverseBits(firstLeadingBit(var_0.b.e))), Struct_1(abs(abs(2147483647i)), select(select(vec3<bool>(false, true, true), !var_2.wzy, !var_0.c.b.x), var_0.c.b, true), 4294967295u), var_0.a.b.c);
    var var_4 = !select(select(vec3<bool>(!var_3.b.a.b.x, global1[_wgslsmith_index_u32(select(0u, 4294967295u, true), 13u)], !global1[_wgslsmith_index_u32(99714u, 13u)]), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(var_3.a.b.a.b, var_0.a.b.b.b, true), select(var_0.c.b, vec3<bool>(false, true, var_0.c.b.x), true))), vec3<bool>(select(false, true, true), select(false, true, arg_0.x <= 896f), false), select(vec3<bool>(var_0.c.b.x, all(vec2<bool>(false, false)), !var_2.x), var_3.a.b.a.b, global1[_wgslsmith_index_u32(max(~31403u, var_1), 13u)]));
    return var_0.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = arg_1;
    global1 = array<bool, 13>();
    let var_1 = ~(~firstTrailingBit(0u));
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    return vec3<f32>(458f, arg_1.b.c.x, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-115f, -662f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.c.x + -1241f)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = arg_1.x;
    let var_1 = global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(37797u, u_input.a, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 1u)), 4294967295u) | countOneBits(abs(1u))), 13u)] & false;
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), -768f), false)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(func_2(var_2.c.c.zw).c.c.xy, arg_0.zx))) * vec2<f32>(-244f, _wgslsmith_f_op_f32(f32(-1f) * -1013f))));
    let var_4 = _wgslsmith_mod_u32(1u, ~1u);
    return Struct_2(Struct_1(_wgslsmith_sub_i32(select(~0i, 52993i, var_2.c.a.b.x), i32(-1i) * -95577i), var_2.c.b.b, _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 0u, u_input.c.x, u_input.a) >> (vec4<u32>(1u, var_4, 31245u, var_4) % vec4<u32>(32u))), ~(vec4<u32>(0u, 0u, u_input.c.x, u_input.a) & vec4<u32>(23832u, 41918u, 18809u, 65199u)))), Struct_1(arg_2.x & ~firstTrailingBit(29755i), vec3<bool>(!var_2.a, false, false), 9831u & u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1425f, -517f, global1[_wgslsmith_index_u32(var_4, 13u)])) - var_2.b.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -1754f))))), -710f, arg_0.x, _wgslsmith_f_op_f32(-var_2.b.c.x)), 48012u, reverseBits(vec3<u32>(~(var_2.c.d | 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, var_2.b.d, var_4, var_4), vec4<u32>(20615u, var_2.b.e.x, var_4, u_input.c.x) << (vec4<u32>(var_4, u_input.c.x, u_input.d, 1u) % vec4<u32>(32u))), u_input.a)));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = u_input.b.x;
    global1 = array<bool, 13>();
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(5989u, 13u)], false, global1[_wgslsmith_index_u32(u_input.a, 13u)])), func_2(arg_0.zy))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.ywx * arg_0.zxw)))), ~(-vec3<i32>(u_input.e.x, -27480i, 34719i) << (firstLeadingBit(~vec3<u32>(u_input.c.x, 5758u, u_input.c.x)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.e, -vec3<i32>(u_input.e.x, u_input.e.x, u_input.b.x)), reverseBits(firstLeadingBit(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))), reverseBits(vec3<i32>(u_input.e.x, -2715i, 1506i))) << ((_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 20229u, u_input.d), vec3<u32>(117755u, 4294967295u, 1u), vec3<u32>(u_input.a, u_input.c.x, 0u)), ~vec3<u32>(16470u, u_input.a, 1u)) << (vec3<u32>(u_input.d, 17993u, ~42965u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(33356u, var_1.b.c, var_1.e.x, 46394u), ~vec4<u32>(1u, 18710u, 15632u, var_1.d)), ~(~vec4<u32>(var_1.a.c, 4294967295u, 0u, 1u)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, var_1.b.c, u_input.a, 4294967295u), vec4<u32>(var_1.b.c, 4294967295u, u_input.a, 1u)), ~vec4<u32>(1u, 1u, var_1.d, var_1.e.x))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(2656u, 53641u, 12892u, var_1.b.c), abs(vec4<u32>(u_input.c.x, u_input.a, u_input.d, 4294967295u) >> (vec4<u32>(u_input.c.x, 4294967295u, 1u, 34797u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, 4294967295u) | vec4<u32>(var_1.a.c, var_1.e.x, 0u, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.d, u_input.c.x, u_input.a), vec4<u32>(22199u, var_1.a.c, 4294967295u, 32836u)))));
    var_0 = -select(abs(16350i) | firstTrailingBit(_wgslsmith_div_i32(-7359i, u_input.e.x)), ~u_input.b.x, var_1.a.b.x);
    return func_2(_wgslsmith_f_op_vec2_f32(abs(arg_0.wz))).c.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 13>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(990f, -685f), _wgslsmith_f_op_f32(floor(-188f)), 944f, _wgslsmith_f_op_f32(floor(-593f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1535f, -358f, 1271f, 1355f), vec4<f32>(-110f, 822f, -1159f, 344f), vec4<bool>(true, true, global1[_wgslsmith_index_u32(5971u, 13u)], false)))))));
    let var_1 = vec4<bool>(!(true || (35857i != func_1(vec4<f32>(var_0.x, 2028f, var_0.x, -1058f)))), false, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, reverseBits(u_input.d), countOneBits(0u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.a, u_input.a), vec3<u32>(u_input.c.x, 14645u, u_input.a))), 13u)], global1[_wgslsmith_index_u32(22737u, 13u)]);
    var var_2 = Struct_3(true, Struct_2(Struct_1(u_input.b.x, vec3<bool>(global1[_wgslsmith_index_u32(~u_input.d, 13u)], false, any(var_1.wz)), u_input.c.x), Struct_1(abs(1i), !(!vec3<bool>(var_1.x, true, var_1.x)), 42994u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_0.x, -349f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_1.x, var_1.x, var_1.x, global1[_wgslsmith_index_u32(84070u, 13u)])))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + func_2(var_0.zw).c.c)), u_input.d, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.c.x, u_input.a), vec3<u32>(u_input.a, u_input.d, 1u) ^ vec3<u32>(4294967295u, u_input.d, u_input.c.x))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1527f, var_0.x)) * var_0.zz) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xw, vec2<f32>(-970f, 437f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, 1700f))))).b, abs(~u_input.d | 1u) >> (u_input.a % 32u));
    var_0 = vec4<f32>(var_0.x, var_0.x, var_2.c.c.x, _wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(0u, var_2.c.e.x), ~1u), ~firstLeadingBit(23914u), abs(~select(u_input.a, 49541u, false))), _wgslsmith_mod_u32(u_input.a ^ 1u, reverseBits(_wgslsmith_mod_u32(1u, ~5458u))), _wgslsmith_div_vec3_i32(u_input.e, vec3<i32>(abs(~1i), ~(-2147483647i | var_2.b.b.a), var_2.b.b.a)), u_input.c.x);
}

