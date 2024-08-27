struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 3> = array<bool, 3>(false, true, false);

var<private> global2: array<bool, 9>;

var<private> global3: array<vec3<i32>, 22>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(vec2<i32>(1656i, ~1i), global0.b, global0.b);
    global2 = array<bool, 9>();
    let var_1 = Struct_3(global0.c, 116040u, 4294967295u);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1981f, 169f, 767f, -503f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(455f, -287f, -1139f, -523f)))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1590f)), _wgslsmith_f_op_f32(select(839f, -2844f, global1[_wgslsmith_index_u32(12005u, 3u)]))))), _wgslsmith_f_op_f32(max(1006f, _wgslsmith_f_op_f32(min(-1715f, -1514f)))), _wgslsmith_f_op_f32(210f * -120f), _wgslsmith_f_op_f32(-2264f + _wgslsmith_f_op_f32(floor(-302f))))));
    let var_3 = global1[_wgslsmith_index_u32(~(~46535u), 3u)] || true;
    return _wgslsmith_f_op_f32(ceil(1241f));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1091f * 754f))), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-262f + -814f), -1000f, global2[_wgslsmith_index_u32(min(0u, global0.b.a.x), 9u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2192f) - _wgslsmith_f_op_f32(1864f + -493f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1122f, 1119f, 222f, -847f))))) * vec4<f32>(_wgslsmith_f_op_f32(func_3(global0.b)), _wgslsmith_f_op_f32(max(-390f, 815f)), -647f, _wgslsmith_f_op_f32(-463f + 1407f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-2908f, 998f), _wgslsmith_f_op_f32(round(-517f)), _wgslsmith_f_op_f32(abs(292f)), -621f)))));
    var var_1 = Struct_3(Struct_1(~vec3<u32>(_wgslsmith_sub_u32(1u, global0.c.a.x), 4294967295u, 1u), select(vec3<u32>(global0.b.a.x ^ global0.c.a.x, ~global0.c.a.x, 71449u), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.b.b.x, global0.b.b.x), vec3<u32>(global0.c.a.x, global0.c.b.x, 20780u)), vec3<u32>(global0.c.a.x, global0.b.b.x, 1u)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(741u, 4294967295u), 3u)]), global1[_wgslsmith_index_u32(global0.b.b.x, 3u)], u_input.a.xz), ~countOneBits(~1u), ~0u);
    global3 = array<vec3<i32>, 22>();
    global2 = array<bool, 9>();
    global2 = array<bool, 9>();
    return global0.c.c;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(select(global0.b.b.x, ~firstTrailingBit(4294967295u), func_2()), global0.c.a.x, _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(global0.b.b.x, 4294967295u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.a.x, global0.b.a.x), vec2<u32>(global0.b.b.x, 4294967295u)), global0.b.b.xx))), ~_wgslsmith_mult_vec3_u32(global0.c.b, ~_wgslsmith_add_vec3_u32(vec3<u32>(9000u, 4141u, global0.b.b.x), vec3<u32>(global0.c.a.x, 0u, 27567u))), func_2(), vec2<i32>(u_input.a.x, -u_input.a.x));
    let var_1 = Struct_3(global0.b, global0.b.a.x, firstTrailingBit(max(_wgslsmith_div_u32(global0.b.a.x, ~global0.b.a.x), global0.b.a.x)));
    var var_2 = any(select(select(vec2<bool>(!global1[_wgslsmith_index_u32(0u, 3u)], true), !select(vec2<bool>(global1[_wgslsmith_index_u32(77021u, 3u)], true), vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.b, 9u)]), false), any(select(vec2<bool>(global0.c.c, true), vec2<bool>(global1[_wgslsmith_index_u32(global0.c.a.x, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(true, true)))), vec2<bool>(all(vec2<bool>(true, global0.b.c)), !(false | global0.b.c)), !select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 9u)], var_1.a.c), vec2<bool>(var_1.a.c, true), select(vec2<bool>(global2[_wgslsmith_index_u32(55856u, 9u)], true), vec2<bool>(true, false), vec2<bool>(var_0.c, var_0.c)))));
    global0 = Struct_2(_wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(var_0.d, u_input.a.zy), vec2<i32>(var_1.a.d.x, -17163i)), var_1.a, var_1.a);
    let var_3 = u_input.a.x;
    return Struct_1(vec3<u32>(~_wgslsmith_mult_u32(var_0.a.x, 4294967295u) & 1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 39681u, 1u), vec3<u32>(17121u, var_0.a.x, var_1.b)) << (reverseBits(global0.b.a.x) % 32u)), ~select(~var_0.a.x, ~3622u, any(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.b.x, 9u)], global1[_wgslsmith_index_u32(20969u, 3u)], var_1.a.c)))), min(~vec3<u32>(var_1.b, max(26037u, var_0.a.x), select(43646u, 85152u, global0.c.c)), ~vec3<u32>(89795u, global0.b.b.x, 30884u)), (~(-2147483647i) ^ (var_1.a.d.x << (global0.c.a.x % 32u))) <= -_wgslsmith_sub_i32(-2147483647i, ~var_1.a.d.x), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(min(var_0.d, var_0.d), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(8257i, -79095i), vec2<i32>(20063i, u_input.a.x), vec2<i32>(var_0.d.x, 2147483647i))), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.x, -82559i), vec2<i32>(global0.b.d.x, var_3), var_1.a.d)) ^ vec2<i32>(-1i, firstTrailingBit(-14287i))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(global0.b, 1u, global0.b.a.x);
    global2 = array<bool, 9>();
    global3 = array<vec3<i32>, 22>();
    var var_1 = reverseBits(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, global0.c.d.x, 0i), _wgslsmith_mod_vec3_i32(global3[_wgslsmith_index_u32(arg_0.a.x, 22u)], vec3<i32>(-17533i, -2147483647i, 1i)), firstLeadingBit(u_input.a)), ~max(vec3<i32>(arg_0.d.x, var_0.a.d.x, -747i), global3[_wgslsmith_index_u32(arg_0.a.x, 22u)])));
    var var_2 = firstTrailingBit(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a.d.x, var_1.x, -1i, arg_0.d.x) ^ vec4<i32>(global0.b.d.x, var_0.a.d.x, var_1.x, 5432i)), vec4<i32>(25554i >> (var_0.c % 32u), 1i, -var_1.x, var_0.a.d.x)) | vec4<i32>(~func_1().d.x, var_0.a.d.x, -global0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, arg_0.d.x), global3[_wgslsmith_index_u32(0u, 22u)])));
    return Struct_2(arg_0.d, Struct_1(vec3<u32>(global0.b.a.x, firstTrailingBit(28084u), 44379u), ~vec3<u32>(~30932u, ~9309u, ~69052u), true, ~(~var_1.xx)), func_1());
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(func_1().d.x, -26859i, _wgslsmith_mod_i32(global0.c.d.x, -2147483647i)), -1i), 37163i), Struct_1(~vec3<u32>(global0.b.a.x, 61753u, 22938u) | arg_1.b.a, _wgslsmith_add_vec3_u32(~arg_3.b.a, func_1().b) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(65047u, arg_0), vec2<u32>(arg_3.c.b.x, 1u)), 1u, arg_0) % vec3<u32>(32u)), true, _wgslsmith_div_vec2_i32(arg_1.b.d, ~vec2<i32>(u_input.a.x, arg_3.a.x) ^ -vec2<i32>(29234i, -1i))), func_4(Struct_1(vec3<u32>(arg_3.b.a.x, global0.c.a.x, 1u) & arg_1.b.a, _wgslsmith_mod_vec3_u32(arg_3.c.b, vec3<u32>(global0.c.a.x, 0u, 4294967295u)) & vec3<u32>(111545u, 53399u, arg_1.b.b.x), arg_2.x, func_1().d)).c);
    var var_1 = !global2[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(firstLeadingBit(24638u), arg_1.b.a.x)), 9u)];
    global0 = arg_1;
    var var_2 = Struct_2(firstLeadingBit(~u_input.a.zy), var_0.c, global0.b);
    global3 = array<vec3<i32>, 22>();
    return Struct_1(~vec3<u32>(~42837u, arg_0, 41650u), vec3<u32>(global0.c.b.x, 13791u, func_4(func_4(Struct_1(var_0.b.b, vec3<u32>(1u, 70493u, 0u), false, vec2<i32>(2147483647i, -35944i))).c).c.b.x & ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.b.x, 4294967295u, arg_0), var_0.b.b)), all(!select(select(arg_2, vec4<bool>(false, true, false, true), false), vec4<bool>(true, arg_1.b.c, global1[_wgslsmith_index_u32(global0.c.b.x, 3u)], false), true)), vec2<i32>(var_2.c.d.x, i32(-1i) * -20631i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~global0.b.a.x, func_4(func_1()), select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(global0.b.a.x, 3u)], true, global1[_wgslsmith_index_u32(global0.c.a.x, 3u)]), vec4<bool>(true, false, global0.b.c, false)), vec4<bool>(true, global0.b.c && global0.b.c, false, true), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(61663u, 9u)], global1[_wgslsmith_index_u32(25727u, 3u)], true), vec4<bool>(global0.b.c, false, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.c.b.x, 9u)], global0.b.c, global2[_wgslsmith_index_u32(0u, 9u)]))), !(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.c.a.x, 9u)], false, global0.b.c), vec4<bool>(global0.c.c, global2[_wgslsmith_index_u32(global0.b.b.x, 9u)], global2[_wgslsmith_index_u32(global0.b.b.x, 9u)], global2[_wgslsmith_index_u32(global0.b.b.x, 9u)]), true)), !select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(global0.b.a.x, 9u)], global1[_wgslsmith_index_u32(30914u, 3u)], false), select(vec4<bool>(global0.b.c, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(global0.c.a.x, 9u)], false, false, global1[_wgslsmith_index_u32(global0.c.a.x, 3u)]), global1[_wgslsmith_index_u32(global0.c.a.x, 3u)]), select(vec4<bool>(false, global0.c.c, true, false), vec4<bool>(global0.c.c, false, global0.b.c, false), false))), Struct_2(~vec2<i32>(-36143i, abs(global0.b.d.x)), func_1(), global0.b));
    global1 = array<bool, 3>();
    var var_1 = func_4(Struct_1(vec3<u32>(~1u, var_0.b.x, 0u & ~global0.c.b.x), ((var_0.b >> (var_0.a % vec3<u32>(32u))) | ~global0.c.b) | ~func_5(global0.b.a.x, Struct_2(global0.a, var_0, Struct_1(var_0.b, vec3<u32>(global0.c.a.x, global0.c.a.x, 4294967295u), false, vec2<i32>(global0.b.d.x, 1295i))), vec4<bool>(global0.c.c, global1[_wgslsmith_index_u32(global0.b.a.x, 3u)], true, false), Struct_2(global0.a, global0.c, global0.c)).b, func_1().c, vec2<i32>(max(i32(-1i) * -2147483647i, var_0.d.x), global0.a.x)));
    var var_2 = var_0;
    let var_3 = select(!(!(!(!vec4<bool>(var_1.c.c, var_0.c, var_2.c, global1[_wgslsmith_index_u32(4294967295u, 3u)])))), vec4<bool>(true, false, any(!(!vec2<bool>(global2[_wgslsmith_index_u32(global0.c.b.x, 9u)], false))), true), !select(select(select(vec4<bool>(var_1.b.c, var_1.b.c, true, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(false, true, true, false), true), vec4<bool>(false, var_1.c.c, global0.c.c, global2[_wgslsmith_index_u32(var_0.a.x, 9u)]), vec4<bool>(true, true, false, global0.c.c)), vec4<bool>(select(true, false, false), global2[_wgslsmith_index_u32(28671u << (global0.b.a.x % 32u), 9u)], global0.b.c, all(vec3<bool>(var_2.c, true, var_0.c))), true));
    let x = u_input.a;
    s_output = StorageBuffer(10597u, _wgslsmith_mod_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(global0.b.a.x, 51110u, global0.b.b.x))), vec3<u32>(_wgslsmith_sub_u32(~1u, ~var_1.c.a.x), var_1.b.a.x, _wgslsmith_mod_u32(~var_2.b.x, 54564u << (var_1.b.b.x % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + -991f), _wgslsmith_div_vec2_f32(vec2<f32>(-624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(347f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, 456f) - vec2<f32>(-722f, 393f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1121f, 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(515f, -360f), vec2<f32>(-645f, -550f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1784f - _wgslsmith_f_op_f32(352f - 1588f))), _wgslsmith_f_op_f32(trunc(-1094f)), 2052f));
}

