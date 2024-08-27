struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 32>;

var<private> global2: array<bool, 12> = array<bool, 12>(false, true, false, false, false, false, true, false, false, false, false, true);

var<private> global3: vec2<f32>;

var<private> global4: f32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_clamp_vec3_i32((vec3<i32>(43900i, u_input.b.x, 0i) & countOneBits(u_input.b)) ^ vec3<i32>(global1[_wgslsmith_index_u32(arg_1.x, 32u)], select(-12262i, u_input.e, true), max(-5142i, u_input.b.x)), vec3<i32>(29623i, 2147483647i, _wgslsmith_mod_i32(~u_input.a.x, ~1i)), ~select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, global1[_wgslsmith_index_u32(arg_0.a.x, 32u)], -1i), vec3<i32>(u_input.a.x, u_input.a.x, 9143i)), abs(vec3<i32>(global1[_wgslsmith_index_u32(1u, 32u)], -8432i, global1[_wgslsmith_index_u32(u_input.c.x, 32u)])), global2[_wgslsmith_index_u32(arg_1.x, 12u)])));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(718f, global3.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global3.x) + vec2<f32>(115f, -1000f)), vec2<f32>(-1230f, global3.x), global2[_wgslsmith_index_u32(~73189u, 12u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-466f, 1243f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)) + vec2<f32>(global3.x, global3.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, global3.x) + vec2<f32>(global3.x, global3.x)) - vec2<f32>(global3.x, global3.x)))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) - 1033f))), -167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)), global3.x);
    global1 = array<i32, 32>();
    let var_2 = Struct_3(arg_0, arg_0, -723i, Struct_1(select(select(arg_0.a, vec4<u32>(4294967295u, u_input.d.x, arg_1.x, 4294967295u), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d.x, 12u)], true)), abs(arg_0.a >> (u_input.d % vec4<u32>(32u))), vec4<bool>(!global2[_wgslsmith_index_u32(arg_0.a.x, 12u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 93956u, 14328u), 12u)], false || global2[_wgslsmith_index_u32(0u, 12u)], true))));
    return _wgslsmith_sub_u32(select(arg_0.a.x, 35225u, all(!select(vec2<bool>(true, true), vec2<bool>(false, global2[_wgslsmith_index_u32(24333u, 12u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)])))), var_2.d.a.x);
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = func_3(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, 0u, u_input.c.x) << (vec4<u32>(1u, u_input.d.x, 23371u, 47784u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 200u, u_input.c.x), u_input.d & u_input.d))), u_input.d.xz);
    let var_1 = Struct_4(u_input.b ^ vec3<i32>(u_input.e, _wgslsmith_div_i32(~u_input.e, global1[_wgslsmith_index_u32(u_input.c.x ^ var_0, 32u)]), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_0.xw, vec2<i32>(arg_0.x, -1994i)), -1i, -41143i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-global3.x))), -456f, -145f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 291f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -297f, -1396f) - vec3<f32>(global3.x, global3.x, 543f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-998f, global3.x, 1388f) + vec3<f32>(972f, 936f, global3.x)))))));
    let var_3 = Struct_4(vec3<i32>(reverseBits(25078i), min(-2147483647i, ~_wgslsmith_sub_i32(var_1.a.x, arg_0.x)), var_1.a.x));
    var var_4 = var_0;
    return u_input.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_5 {
    var var_0 = Struct_3(Struct_1(firstTrailingBit(vec4<u32>(1u, 1u, ~17763u, u_input.d.x ^ 4294967295u))), Struct_1(~(~select(u_input.d, vec4<u32>(u_input.c.x, u_input.c.x, 87024u, 0u), false))), 0i, Struct_1(u_input.d));
    var var_1 = Struct_5(vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x << (min(var_0.b.a.x, var_0.d.a.x) % 32u)), ~(~(~33844u)), _wgslsmith_mod_u32(4294967295u, u_input.d.x), var_0.b.a.x));
    let var_2 = ~u_input.c.zy;
    global3 = vec2<f32>(arg_1.x, -495f);
    let var_3 = u_input.a;
    return Struct_5(u_input.d);
}

fn func_1() -> Struct_1 {
    global4 = 1871f;
    let var_0 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_1 = func_4(-vec4<i32>(func_2(vec4<i32>(global1[_wgslsmith_index_u32(72984u, 32u)], global1[_wgslsmith_index_u32(u_input.d.x, 32u)], global1[_wgslsmith_index_u32(64294u, 32u)], 1i) & vec4<i32>(global1[_wgslsmith_index_u32(5168u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.d.x, 32u)], 7458i)), _wgslsmith_div_i32(-2147483647i, 1i), u_input.a.x, 1i), vec4<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global3.x))))), -129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(318f)))), _wgslsmith_f_op_f32(568f * _wgslsmith_f_op_f32(f32(-1f) * -668f))));
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_add_u32(55163u, 39910u), u_input.c.x), 32u)] <= _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(33277u, 32u)], u_input.e), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -47600i), vec2<i32>(global1[_wgslsmith_index_u32(var_1.a.x, 32u)], -1i))), u_input.a ^ (vec2<i32>(global1[_wgslsmith_index_u32(var_1.a.x, 32u)], 0i) | vec2<i32>(-6400i, 2147483647i))), vec2<i32>(-2147483647i >> (firstLeadingBit(13523u) % 32u), min(14533i, u_input.b.x) << ((u_input.c.x ^ var_1.a.x) % 32u)));
    let var_3 = u_input.d;
    return Struct_1(~select(var_1.a, vec4<u32>(abs(u_input.c.x), abs(12968u), min(var_1.a.x, u_input.c.x), ~16933u), false));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 612f;
    var var_0 = Struct_2(func_1(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, 187f), vec3<f32>(-350f, global3.x, 547f), global2[_wgslsmith_index_u32(0u, 12u)]))), vec3<f32>(_wgslsmith_f_op_f32(min(global3.x, -1000f)), _wgslsmith_div_f32(global3.x, 1114f), 1f), true)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1327f, global3.x) + vec3<f32>(global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, 2376f, global3.x), vec3<f32>(global3.x, global3.x, global3.x), vec3<bool>(true, false, false)))))))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -1i, u_input.b.x), vec4<i32>(u_input.a.x, -2147483647i, 35547i, u_input.b.x >> (29487u % 32u)))), -2464f, func_1());
    global2 = array<bool, 12>();
    global1 = array<i32, 32>();
    var var_1 = Struct_3(Struct_1(var_0.e.a), Struct_1(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(var_0.a.a.wzw, vec3<u32>(u_input.c.x, 1u, u_input.d.x))), u_input.c.x, firstLeadingBit(u_input.d.x | 41472u), func_3(func_1(), vec2<u32>(u_input.c.x, 4294967295u)))), ~(-global1[_wgslsmith_index_u32(9492u, 32u)]), var_0.e);
    global1 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(804f * global3.x), global3.x, _wgslsmith_f_op_f32(select(392f, var_0.b.x, false)), _wgslsmith_f_op_f32(ceil(-1053f))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(-global3.x), 1000f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global3.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1405f)))))), var_1.b.a.x << (var_1.d.a.x % 32u), reverseBits(~vec3<i32>(2147483647i, u_input.a.x, var_0.c.x)) ^ ~u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.zx * vec2<f32>(var_0.b.x, -450f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1007f, -526f)) - var_0.b.xz), vec2<f32>(330f, -451f)))));
}

