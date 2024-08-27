struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(821f, -1644f, 1000f, 455f);

var<private> global1: array<u32, 13>;

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> i32 {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)) - global0.x))), _wgslsmith_f_op_f32(floor(855f)), global0.x);
    global2 = array<vec4<bool>, 3>();
    let var_0 = 2071f;
    global1 = array<u32, 13>();
    var var_1 = _wgslsmith_dot_vec3_u32(arg_1, abs(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 13u)]) >> (arg_1 % vec3<u32>(32u))) | vec3<u32>(~arg_1.x, global1[_wgslsmith_index_u32(arg_1.x, 13u)], 4294967295u));
    return ~(-(~min(0i, 74i)));
}

fn func_3(arg_0: u32) -> f32 {
    global1 = array<u32, 13>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-290f))), 208f, 491f, -164f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1017f, global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -287f, global0.x, global0.x), vec4<f32>(global0.x, -234f, 1056f, -933f))))))));
    var var_0 = Struct_5(Struct_4(Struct_2(global1[_wgslsmith_index_u32(~arg_0, 13u)], select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), !select(global2[_wgslsmith_index_u32(arg_0, 3u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 3u)], false), max(vec2<u32>(arg_0, arg_0), vec2<u32>(1u, 6607u)) >> (abs(vec2<u32>(0u, 74187u)) % vec2<u32>(32u))), 899f, select(vec2<bool>(any(global2[_wgslsmith_index_u32(18067u, 3u)]), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let var_1 = vec3<i32>(u_input.b.x, abs(-2147483647i), ~u_input.a.x);
    let var_2 = select(-(~vec3<i32>(7837i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -7813i, 11204i), vec3<i32>(u_input.a.x, var_1.x, var_1.x)), 2147483647i << (var_0.a.a.e.x % 32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(min(u_input.c, vec4<i32>(u_input.a.x, var_1.x, -2147483647i, -21804i)) >> (select(vec4<u32>(arg_0, 0u, arg_0, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<u32>(global1[_wgslsmith_index_u32(108299u, 13u)], arg_0, 0u, global1[_wgslsmith_index_u32(2749u, 13u)]), var_0.a.a.b.x) % vec4<u32>(32u)), select(vec4<i32>(u_input.b.x, -49257i, 2147483647i, 1i), u_input.c >> (vec4<u32>(var_0.a.a.e.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], 36963u, 4294967295u) % vec4<u32>(32u)), true)), ~(-(u_input.a.x & -35678i)), abs(firstLeadingBit(var_1.x))), select(vec3<bool>(true, 2147483647i == u_input.b.x, !var_0.a.c.x & true), vec3<bool>(any(select(vec3<bool>(true, false, true), var_0.a.a.d.xwy, vec3<bool>(var_0.a.c.x, true, var_0.a.c.x))), false, true), true));
    return var_0.a.b;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = Struct_3(-(~vec2<i32>(u_input.a.x, -arg_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -457f)) - global0.x))));
    let var_1 = 1774f;
    global2 = array<vec4<bool>, 3>();
    global0 = vec4<f32>(524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1379f + -1000f) - 543f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(57604u, 13u)])))))), var_1, _wgslsmith_f_op_f32(abs(var_1)));
    global1 = array<u32, 13>();
    return Struct_5(Struct_4(Struct_2(_wgslsmith_add_u32(firstTrailingBit(global1[_wgslsmith_index_u32(arg_0, 13u)]), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 13u)], 13u)]), arg_1.yx, select(vec2<bool>(false, true), arg_1.xx, false), select(select(vec4<bool>(true, true, true, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(true, true, arg_1.x, arg_1.x)), global2[_wgslsmith_index_u32(0u, 3u)], arg_1), vec2<u32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 13u)], 13u)]) >> ((vec2<u32>(arg_0, arg_0) >> (vec2<u32>(arg_0, global1[_wgslsmith_index_u32(arg_0, 13u)]) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(abs(-974f)), !arg_1.yw));
}

fn func_4(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = -2147483647i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-490f)), _wgslsmith_f_op_f32(f32(-1f) * -654f));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.b)), _wgslsmith_f_op_f32(1762f - -229f), 446f, global0.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1027f, arg_0.a.b, 2314f, -1197f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-349f)), 2466f, var_1.x, 1705f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-145f, -1370f, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.c.x, 2147483647i), u_input.c) <= _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(14619i, u_input.b.x)))), global0.x) + global0.wz);
    var var_3 = Struct_1(all(arg_0.a.a.d), var_1.x);
    return !vec3<bool>(arg_0.a.a.d.x, !arg_0.a.c.x | true, var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x - 489f), global0.x, _wgslsmith_f_op_f32(-global0.x), 143f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 523f, 223f, global0.x) * vec4<f32>(global0.x, 1493f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-282f, 1195f, -503f, global0.x))))))));
    global2 = array<vec4<bool>, 3>();
    var var_0 = _wgslsmith_sub_i32(u_input.c.x, -579i);
    var var_1 = select(vec3<bool>(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b.x, 2147483647i, 1i), u_input.c), ~vec3<u32>(global1[_wgslsmith_index_u32(19605u, 13u)], global1[_wgslsmith_index_u32(20730u, 13u)], 46362u), vec4<bool>(false, false, true, true)) > func_1(vec4<i32>(0i, 0i, -14154i, 1i), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 25279u, global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<u32>(76049u, global1[_wgslsmith_index_u32(0u, 13u)], 1u)), global2[_wgslsmith_index_u32(1u, 3u)]), true, any(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 4294967295u), ~global1[_wgslsmith_index_u32(11456u, 13u)], _wgslsmith_mod_u32(23129u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40428u, 13u)], 13u)])), 3u)])), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)) + global0.x), !(true | any(vec3<bool>(false, false, false)))), !func_4(func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 18659u), 13u)], global2[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(28433u, 13u)], 1u, true), 3u)], _wgslsmith_f_op_f32(-global0.x), ~u_input.c)));
    var var_2 = !select(func_2(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], global1[_wgslsmith_index_u32(11170u, 13u)]), vec4<bool>(global0.x > global0.x, true, var_1.x, true || var_1.x), 862f, abs(vec4<i32>(u_input.c.x, 2147483647i, u_input.a.x, 2147483647i))).a.a.d.wzy, vec3<bool>(_wgslsmith_f_op_f32(max(global0.x, 1457f)) < _wgslsmith_f_op_f32(trunc(global0.x)), false, select(0i == u_input.b.x, false, var_1.x)), select(!(!vec3<bool>(false, var_1.x, true)), func_4(func_2(global1[_wgslsmith_index_u32(66498u, 13u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74518u, 13u)], 3u)], -122f, u_input.c)), !func_4(Struct_5(Struct_4(Struct_2(global1[_wgslsmith_index_u32(60178u, 13u)], var_1.yy, vec2<bool>(false, var_1.x), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 3u)], vec2<u32>(global1[_wgslsmith_index_u32(18927u, 13u)], 0u)), global0.x, var_1.yz)))));
    let var_3 = Struct_3(_wgslsmith_add_vec2_i32(min(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.c.x), u_input.a.x), u_input.c.yx), firstTrailingBit(firstTrailingBit(vec2<i32>(-2147483647i, u_input.a.x))) << (vec2<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -332f))), _wgslsmith_f_op_f32(global0.x * -1269f));
    var var_4 = func_2(23531u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~65168u, ~1u)), select(vec2<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 0u), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(3801u, 0u), vec2<u32>(10930u, 1u), vec2<u32>(1u, 63726u)), _wgslsmith_mult_vec2_u32(vec2<u32>(102879u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76926u, 13u)], 13u)]), vec2<u32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28665u, 13u)], 13u)], 13u)]))), !var_2.xz)), 13u)], 3u)], -1864f, u_input.c).a.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(-29759i, 0u, ~(~max(vec2<u32>(54911u, 103401u), vec2<u32>(34842u, 1u))), vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(85933u, 13u)], 13u)])), vec2<u32>(1u, 1u)), ~global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)] << (0u % 32u)), 13u)], 0u), vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29529u, 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 13u)], 13u)], 0u), global1[_wgslsmith_index_u32(~4294967295u, 13u)]));
}

