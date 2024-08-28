struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1>;

var<private> global1: i32;

var<private> global2: array<bool, 3>;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> bool {
    let var_0 = Struct_3(Struct_1(!select(!arg_2.yw, select(vec2<bool>(arg_2.x, true), arg_3.xz, arg_2.x), false), select(global2[_wgslsmith_index_u32((u_input.a & 0u) | firstLeadingBit(u_input.a), 3u)], arg_2.x, false | !global2[_wgslsmith_index_u32(u_input.a, 3u)]), ~_wgslsmith_sub_u32(arg_0.c, ~0u), 2147483647i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -862f) * arg_1.xy))))), Struct_2(~(~firstLeadingBit(vec2<u32>(0u, u_input.a)))));
    global1 = _wgslsmith_dot_vec2_i32(-(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_0.d), ~vec2<i32>(-1i, arg_0.d)) ^ -vec2<i32>(arg_0.d, arg_0.d)), -vec2<i32>(_wgslsmith_mult_i32(-1i, -19514i), var_0.a.d));
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = arg_0.d ^ (var_0.a.d | 0i);
    var var_3 = abs(~(~(~(~vec3<i32>(-1i, 1i, arg_0.d)))));
    return _wgslsmith_dot_vec4_i32(abs(global0[_wgslsmith_index_u32(~(~arg_0.c), 1u)]), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(reverseBits(24368u), 1u)], vec4<i32>(~5243i, ~arg_0.d, abs(0i), -arg_0.d))) > 2147483647i;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = true;
    var var_1 = !all(select(select(arg_0.a.a, vec2<bool>(true, false), vec2<bool>(false, arg_0.a.b)), select(vec2<bool>(true, arg_0.a.a.x), vec2<bool>(arg_0.a.a.x, global2[_wgslsmith_index_u32(75873u, 3u)]), false), select(arg_0.a.a, arg_0.a.a, vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], true)))) & func_3(arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.e.x, -708f, _wgslsmith_f_op_f32(f32(-1f) * -127f))), !select(vec4<bool>(true, var_0, false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(62339u, 3u)], false, true), var_0), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a | arg_0.a.c, 3u)], any(arg_0.a.a)), !vec3<bool>(false, arg_0.a.b, false), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 3u)], arg_0.a.b), vec3<bool>(var_0, arg_0.a.a.x, true), vec3<bool>(true, false, arg_0.a.b))));
    global2 = array<bool, 3>();
    let var_2 = var_0;
    let var_3 = true;
    return arg_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-236f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))), -918f))), arg_1.x);
    global0 = array<vec4<i32>, 1>();
    global1 = 18986i;
    let var_1 = Struct_3(Struct_1(!select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(arg_0.a.x, 3u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], false), vec2<bool>(false, true)), !vec2<bool>(global2[_wgslsmith_index_u32(14899u, 3u)], global2[_wgslsmith_index_u32(20809u, 3u)]), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 3u)], false)), true & global2[_wgslsmith_index_u32(4294967295u, 3u)], ~arg_0.a.x, 1i, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(step(-165f, _wgslsmith_f_op_f32(round(global3.x)))))), arg_0);
    let var_2 = true;
    return Struct_3(var_1.a, var_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~(-27795i);
    let var_1 = Struct_2(~(~(vec2<u32>(arg_1.b.a.x, 0u) << (~vec2<u32>(arg_0.c, arg_0.c) % vec2<u32>(32u)))));
    var var_2 = func_4(var_1, vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(-513f + _wgslsmith_f_op_f32(trunc(arg_1.a.e.x))), -277f, _wgslsmith_f_op_f32(max(1f, 1000f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(f32(-1f) * -1342f)), global3.x, _wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x)))));
    global1 = 2147483647i;
    global0 = array<vec4<i32>, 1>();
    return func_4(var_2.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.e.x * _wgslsmith_f_op_f32(round(arg_0.e.x)))), _wgslsmith_f_op_f32(step(func_4(func_4(Struct_2(vec2<u32>(24709u, 24081u)), vec4<f32>(813f, 1630f, -879f, -313f), vec3<f32>(arg_0.e.x, var_2.a.e.x, -745f)).b, vec4<f32>(437f, arg_1.a.e.x, arg_1.a.e.x, 772f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-556f, -908f, 502f), vec3<f32>(-424f, 828f, 882f)))).a.e.x, _wgslsmith_f_op_f32(floor(var_2.a.e.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a.e.x, global3.x), func_4(var_2.b, vec4<f32>(arg_1.a.e.x, arg_1.a.e.x, -625f, var_2.a.e.x), vec3<f32>(-112f, global3.x, 861f)).a.e.x, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.e.x)) + _wgslsmith_f_op_f32(-arg_1.a.e.x)), _wgslsmith_f_op_f32(ceil(404f)))), vec3<f32>(609f, 1000f, _wgslsmith_div_f32(-169f, _wgslsmith_f_op_f32(-873f * _wgslsmith_f_op_f32(-343f - global3.x))))).a;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(218f * _wgslsmith_f_op_f32(select(-2126f, _wgslsmith_f_op_f32(arg_0.e.x * global3.x), func_5(Struct_1(arg_0.a, true, 1u, -24495i, arg_0.e), Struct_3(arg_0, Struct_2(vec2<u32>(arg_1, 0u)))).a.x))), _wgslsmith_f_op_f32(sign(global3.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-267f, 1753f)));
    let var_1 = vec3<u32>(arg_1, abs(arg_0.c >> (~arg_0.c % 32u)), u_input.a);
    global3 = arg_0.e;
    global0 = array<vec4<i32>, 1>();
    var var_2 = !(false && global2[_wgslsmith_index_u32(var_1.x >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, arg_1, arg_0.c), vec4<u32>(arg_0.c, 52151u, var_1.x, 0u)) >> ((var_1.x >> (arg_0.c % 32u)) % 32u)) % 32u), 3u)]);
    return vec4<u32>(_wgslsmith_mod_u32(var_1.x, ~(~u_input.a)), max(func_5(arg_0, func_4(Struct_2(var_1.zx), vec4<f32>(313f, -214f, global3.x, -488f), vec3<f32>(-504f, global3.x, -1498f))).c, 35759u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(max(var_1.x, var_1.x), _wgslsmith_add_u32(arg_1, 1u)), firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(38726u, 24298u, arg_0.c), vec3<u32>(arg_1, 0u, 4294967295u)), ~vec3<u32>(var_1.x, u_input.a, 4294967295u))), arg_0.c) >> (firstTrailingBit((vec4<u32>(30568u, var_1.x, var_1.x, var_1.x) | vec4<u32>(4294967295u, 0u, arg_0.c, var_1.x)) << (vec4<u32>(min(1u, 66819u), _wgslsmith_dot_vec3_u32(var_1, var_1), arg_0.c ^ 1u, arg_0.c & 3324u) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(vec2<u32>(0u, ~(arg_1.a.x << (_wgslsmith_clamp_u32(4294967295u, 39720u, arg_0.x) % 32u))));
    let var_1 = func_5(Struct_1(vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], false, global2[_wgslsmith_index_u32(0u, 3u)], true)) & global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, var_0.a.x, 0u), 3u)], all(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(var_0.a.x, 3u)])))), !select(0u > arg_0.x, false && global2[_wgslsmith_index_u32(20961u, 3u)], all(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 3u)], global2[_wgslsmith_index_u32(arg_0.x, 3u)], true))), (min(48763u, 15439u) | _wgslsmith_clamp_u32(4294967295u, var_0.a.x, 27902u)) ^ firstTrailingBit(4294967295u), -2147483647i << (arg_0.x % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(475f, -1368f) + vec2<f32>(global3.x, 998f)))))), Struct_3(func_4(Struct_2(vec2<u32>(1u, 40965u) ^ var_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, global3.x, global3.x, global3.x)), vec4<f32>(-2390f, -2647f, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1000f, global3.x) - vec3<f32>(504f, 786f, global3.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-658f, -1000f, -149f), vec3<f32>(299f, -386f, 536f), vec3<bool>(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(arg_1.a.x, 3u)], global2[_wgslsmith_index_u32(var_0.a.x, 3u)]))))).a, Struct_2(~vec2<u32>(0u, 0u))));
    var var_2 = var_1.e;
    let var_3 = vec3<u32>(var_0.a.x, ~(_wgslsmith_mult_u32(var_0.a.x << (arg_0.x % 32u), arg_1.a.x | 4768u) ^ select(u_input.a, arg_1.a.x, 0u == arg_0.x)), 10509u);
    var var_4 = 30882i;
    return func_4(arg_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), -1750f, _wgslsmith_f_op_f32(select(-2240f, global3.x, false)), var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, global3.x, global3.x, var_2.x)), select(!vec4<bool>(global2[_wgslsmith_index_u32(23521u, 3u)], true, true, var_1.b), vec4<bool>(var_1.a.x, var_1.a.x, global2[_wgslsmith_index_u32(var_0.a.x, 3u)], var_1.a.x), true))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-800f - -1000f) - var_1.e.x)), var_2.x, var_1.e.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = func_7(func_6(func_5(Struct_1(arg_2.a.a, any(vec2<bool>(true, arg_2.a.b)), ~arg_2.a.c, -2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(1638f, arg_2.a.e.x))), func_4(func_2(arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, -330f, 957f, arg_2.a.e.x)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 334f, global3.x), vec3<f32>(-1259f, global3.x, arg_2.a.e.x)))), arg_1.a.x, !((arg_2.a.d >= arg_2.a.d) && true)), Struct_2(vec2<u32>(arg_2.a.c, ~1u)));
    let var_1 = 1u;
    var var_2 = vec4<bool>(all(arg_3.zzw), arg_2.a.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_0.x), vec3<u32>(0u, u_input.a, u_input.a)), firstLeadingBit(~arg_0.x)) < ~(~func_7(vec4<u32>(0u, var_0.b.a.x, 24839u, arg_2.b.a.x), var_0.b).a.c), all(vec3<bool>(!var_0.a.a.x, false, var_0.b.a.x != func_5(arg_2.a, var_0).c)));
    var var_3 = reverseBits(abs(abs(vec2<i32>(arg_2.a.d, var_0.a.d))) >> (~vec2<u32>(~4294967295u, var_0.b.a.x) % vec2<u32>(32u)));
    let var_4 = max(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, var_0.a.c, 50175u, arg_0.x), vec4<u32>(var_0.a.c, arg_1.a.x, 121531u, 0u)) << (~abs(vec4<u32>(0u, 55405u, var_0.a.c, var_0.b.a.x)) % vec4<u32>(32u))), abs(countOneBits(min(vec4<u32>(arg_0.x, arg_0.x, arg_2.b.a.x, arg_0.x), vec4<u32>(arg_2.b.a.x, var_1, 4294967295u, u_input.a))) | abs(select(vec4<u32>(1u, var_0.a.c, 4294967295u, 1u), vec4<u32>(20239u, var_0.b.a.x, arg_1.a.x, var_0.a.c), true))));
    return arg_2;
}

fn func_8(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = arg_0.a.e;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, -110f, arg_0.a.e.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -786f, 545f), vec3<f32>(1000f, global3.x, -218f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1426f, 1291f, 1414f))))) - vec3<f32>(1f, -232f, 1000f));
    global2 = array<bool, 3>();
    var var_2 = arg_0;
    var var_3 = vec3<i32>(arg_0.a.d, -1i, firstLeadingBit(var_2.a.d) | arg_0.a.d);
    return 32498i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(-(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(43042i, 37271i, 12217i, -1i), vec4<i32>(-23040i, 76223i, 0i, 1i)), _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(32435u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), global0[_wgslsmith_index_u32(u_input.a, 1u)]) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 2751u), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))), -vec4<i32>(firstLeadingBit(max(21856i, 0i)), func_8(func_1(vec2<u32>(u_input.a, u_input.a), Struct_2(vec2<u32>(0u, u_input.a)), Struct_3(Struct_1(vec2<bool>(true, true), global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a, -1i, vec2<f32>(global3.x, global3.x)), Struct_2(vec2<u32>(u_input.a, 1u))), vec4<bool>(global2[_wgslsmith_index_u32(71335u, 3u)], true, global2[_wgslsmith_index_u32(u_input.a, 3u)], false)), global3.x, global3.x), select(1i, 69591i, any(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 3u)]))), ~(-1i)), _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(2458u, 1u)], vec4<i32>(2147483647i, 25970i, 1i, 18689i), select(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], true)), global0[_wgslsmith_index_u32(~u_input.a, 1u)]));
    var var_1 = func_1(~abs(vec2<u32>(0u, 0u | u_input.a)), func_2(Struct_3(Struct_1(vec2<bool>(true, true), !global2[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_mult_u32(32790u, 17058u), _wgslsmith_sub_i32(var_0.x, 0i), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, global3.x)))), Struct_2(func_2(Struct_3(Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 3u)]), true, u_input.a, -2658i, vec2<f32>(global3.x, global3.x)), Struct_2(vec2<u32>(4294967295u, 1u)))).a))), func_4(func_2(func_4(Struct_2(vec2<u32>(u_input.a, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 485f, global3.x) - vec3<f32>(global3.x, global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1502f, global3.x, -1226f, global3.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, 1659f, 1996f, global3.x)))) + vec4<f32>(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(trunc(375f)), func_4(Struct_2(vec2<u32>(1u, 1u)), vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec3<f32>(global3.x, -2345f, global3.x)).a.e.x, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)), 634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-602f - global3.x)))), !select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(50729u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(18421u, 3u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(53099u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(9093u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)])), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(11117u, 3u)], global2[_wgslsmith_index_u32(48758u, 3u)], false)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], true, true, global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 3u)], false, global2[_wgslsmith_index_u32(23015u, 3u)]), true), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], false, global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], false, global2[_wgslsmith_index_u32(11123u, 3u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], false)), func_3(Struct_1(vec2<bool>(true, false), global2[_wgslsmith_index_u32(28522u, 3u)], u_input.a, var_0.x, vec2<f32>(-640f, global3.x)), vec3<f32>(global3.x, 1326f, 1654f), vec4<bool>(true, global2[_wgslsmith_index_u32(40289u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)])))));
    let var_2 = ~44530i;
    var_1 = Struct_3(Struct_1(var_1.a.a, func_3(func_5(var_1.a, func_1(var_1.b.a, Struct_2(var_1.b.a), Struct_3(Struct_1(var_1.a.a, var_1.a.a.x, var_1.a.c, -4575i, vec2<f32>(-1262f, global3.x)), Struct_2(var_1.b.a)), vec4<bool>(true, true, global2[_wgslsmith_index_u32(70647u, 3u)], var_1.a.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.x, global3.x, var_1.a.e.x)))), vec4<bool>(all(vec2<bool>(true, false)), true, global2[_wgslsmith_index_u32(u_input.a << (4294967295u % 32u), 3u)], true), vec3<bool>(global2[_wgslsmith_index_u32(var_1.b.a.x, 3u)] | false, func_1(vec2<u32>(u_input.a, 156406u), Struct_2(var_1.b.a), Struct_3(var_1.a, Struct_2(vec2<u32>(4294967295u, 4294967295u))), vec4<bool>(false, true, true, false)).a.a.x, true)), u_input.a, var_1.a.d, var_1.a.e), func_2(Struct_3(Struct_1(var_1.a.a, true, 14206u >> (1u % 32u), 80186i, _wgslsmith_f_op_vec2_f32(var_1.a.e + vec2<f32>(global3.x, 502f))), var_1.b)));
    let var_3 = func_7(_wgslsmith_add_vec4_u32(vec4<u32>(abs(var_1.b.a.x | u_input.a), (1u >> (var_1.a.c % 32u)) & func_2(Struct_3(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(27980u, 3u)], true), var_1.a.a.x, 121039u, var_2, var_1.a.e), var_1.b)).a.x, func_5(func_4(var_1.b, vec4<f32>(global3.x, var_1.a.e.x, var_1.a.e.x, -284f), vec3<f32>(var_1.a.e.x, var_1.a.e.x, global3.x)).a, func_7(vec4<u32>(u_input.a, 55329u, u_input.a, var_1.b.a.x), var_1.b)).c, _wgslsmith_div_u32(82587u, max(u_input.a, 4294967295u))), _wgslsmith_clamp_vec4_u32(func_6(Struct_1(var_1.a.a, true, var_1.a.c, var_2, var_1.a.e), u_input.a, true), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), vec4<u32>(var_1.b.a.x, func_4(Struct_2(var_1.b.a), vec4<f32>(1701f, 132f, var_1.a.e.x, global3.x), vec3<f32>(global3.x, var_1.a.e.x, -676f)).b.a.x, var_1.b.a.x, func_4(Struct_2(var_1.b.a), vec4<f32>(global3.x, global3.x, 530f, -264f), vec3<f32>(-309f, -620f, global3.x)).a.c))), func_7(firstLeadingBit(vec4<u32>(1u, u_input.a, 1u, 5240u)) << (~(~vec4<u32>(4294967295u, 4294967295u, var_1.a.c, 4294967295u)) % vec4<u32>(32u)), var_1.b).b);
    let var_4 = var_3;
    let var_5 = func_1(_wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(var_3.b.a & var_4.b.a, vec2<u32>(var_3.a.c, 30960u)), ~(_wgslsmith_sub_vec2_u32(var_4.b.a, vec2<u32>(var_4.b.a.x, 1u)) << (var_3.b.a % vec2<u32>(32u)))), Struct_2(var_4.b.a), var_3, select(!(!select(vec4<bool>(var_4.a.b, true, var_3.a.b, true), vec4<bool>(false, true, false, false), false)), vec4<bool>(true, true & any(var_3.a.a), true && (var_4.a.e.x < 1259f), !(var_1.a.c <= var_4.b.a.x)), vec4<bool>(var_1.a.a.x, var_1.a.a.x, func_7(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a.c, var_3.a.c, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.a, var_3.b.a.x, var_1.a.c)), Struct_2(vec2<u32>(var_3.a.c, var_3.b.a.x))).a.a.x, true | all(vec2<bool>(global2[_wgslsmith_index_u32(var_3.b.a.x, 3u)], false))))).a;
    let var_6 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_4.a.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(floor(var_5.e.x))) + -261f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(func_5(var_1.a, var_3).e.x)), -852f)), _wgslsmith_f_op_f32(select(126f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.e.x, -1168f) + _wgslsmith_f_op_f32(-var_5.e.x)), any(vec3<bool>(var_4.a.b, var_1.a.b, var_5.a.x)) == func_4(var_4.b, vec4<f32>(1183f, var_3.a.e.x, var_4.a.e.x, 1314f), vec3<f32>(var_3.a.e.x, global3.x, var_1.a.e.x)).a.b)))));
    var var_7 = !(!(!(-2147483647i <= var_4.a.d))) | false;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.d, var_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(func_1(vec2<u32>(var_4.a.c, 4294967295u) ^ vec2<u32>(var_5.c, 0u), func_2(var_4), var_4, vec4<bool>(true, true, true, true)).a.e, vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-var_6.x)))) + vec2<f32>(156f, _wgslsmith_f_op_f32(var_4.a.e.x + _wgslsmith_f_op_f32(exp2(var_5.e.x))))), ~(-var_3.a.d));
}

