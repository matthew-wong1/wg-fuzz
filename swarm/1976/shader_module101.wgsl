struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

var<private> global1: Struct_2 = Struct_2(0i, vec2<f32>(-1366f, 663f));

var<private> global2: bool;

var<private> global3: array<Struct_3, 2>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(false, false), 716f), Struct_1(vec2<bool>(false, false), 638f), Struct_1(vec2<bool>(true, false), -1018f), Struct_1(vec2<bool>(false, false), -519f), Struct_1(vec2<bool>(false, false), -563f), Struct_1(vec2<bool>(true, true), -1000f), Struct_1(vec2<bool>(true, true), 506f), Struct_1(vec2<bool>(true, true), -689f), Struct_1(vec2<bool>(true, true), 968f), Struct_1(vec2<bool>(false, false), 459f), Struct_1(vec2<bool>(true, true), 361f), Struct_1(vec2<bool>(false, true), -444f), Struct_1(vec2<bool>(false, true), -1238f), Struct_1(vec2<bool>(false, false), -1365f), Struct_1(vec2<bool>(true, true), -1000f), Struct_1(vec2<bool>(false, true), 243f), Struct_1(vec2<bool>(false, true), 1823f), Struct_1(vec2<bool>(true, false), 259f), Struct_1(vec2<bool>(true, true), -1596f), Struct_1(vec2<bool>(false, true), 139f), Struct_1(vec2<bool>(true, false), -1025f), Struct_1(vec2<bool>(false, true), -1245f), Struct_1(vec2<bool>(true, false), 692f), Struct_1(vec2<bool>(true, false), -450f), Struct_1(vec2<bool>(false, true), 696f), Struct_1(vec2<bool>(false, true), 930f), Struct_1(vec2<bool>(false, false), 328f), Struct_1(vec2<bool>(false, false), -196f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: f32) -> bool {
    var var_0 = -6067i;
    var var_1 = global4[_wgslsmith_index_u32((select(~arg_1.x | 4294967295u, ~1u, all(global0[_wgslsmith_index_u32(1u, 29u)]) || true) << (firstLeadingBit(firstTrailingBit(2590u) | abs(22005u)) % 32u)) ^ (min(_wgslsmith_clamp_u32(55870u, ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 12443u)), 4294967295u) | u_input.a.x), 28u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(global1.b.x * var_1.b), 1171f, var_1.b, global1.b.x);
    var var_3 = Struct_1(vec2<bool>(var_1.a.x, !any(!vec3<bool>(var_1.a.x, false, var_1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -380f));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_3.b));
    return !(!((var_3.a.x != var_3.a.x) || var_3.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> bool {
    global1 = Struct_2(~(-firstTrailingBit(_wgslsmith_div_i32(2147483647i, global1.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.b), vec2<f32>(global1.b.x, 551f))));
    let var_0 = select(vec4<bool>(arg_0.x, arg_0.x, !arg_0.x, arg_0.x), arg_0, any(vec2<bool>(true, true)));
    var var_1 = ~1u;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-174f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x * arg_1) - _wgslsmith_f_op_f32(round(481f))))));
    let var_3 = Struct_2(~_wgslsmith_mod_i32(global1.a, max(1i, global1.a)), var_2.zz);
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    global4 = array<Struct_1, 28>();
    let var_0 = !vec3<bool>(func_4(vec4<bool>(true, all(vec4<bool>(false, false, true, false)), true, func_3(vec3<f32>(-1586f, -612f, global1.b.x), vec4<u32>(u_input.a.x, 8288u, 60948u, u_input.a.x), global1.b.x)), _wgslsmith_f_op_f32(-137f + global1.b.x)), -840f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1270f))), (u_input.a.x >= 1u) && !func_3(vec3<f32>(global1.b.x, global1.b.x, 137f), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), -1000f));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-411f + global1.b.x), _wgslsmith_f_op_f32(ceil(global1.b.x))))) * _wgslsmith_f_op_f32(-global1.b.x))));
    global3 = array<Struct_3, 2>();
    var var_2 = var_0.xz;
    return Struct_2(44995i << ((u_input.a.x & u_input.a.x) % 32u), vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -938f), 579f)) - _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(f32(-1f) * -172f), var_2.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = !(!(!(!all(vec3<bool>(false, arg_2.a.x, false)))));
    var var_1 = select(vec3<bool>(arg_2.a.x, !arg_2.a.x, false), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.a.x, 53935u), 29u)], !vec3<bool>(~62372u > abs(arg_1), true, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x - arg_2.b), 103f), _wgslsmith_f_op_f32(-arg_0.b.x), 1067f, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -1147f, -164f, arg_0.b.x) + vec4<f32>(1000f, 1097f, 242f, -687f)), vec4<f32>(2839f, 1185f, -302f, 1329f), select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, false, arg_2.a.x, false), vec4<bool>(var_1.x, false, true, var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, -1183f, -1732f, arg_0.b.x) * vec4<f32>(arg_2.b, 309f, -1957f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1291f, global1.b.x, 676f, 345f))))));
    global4 = array<Struct_1, 28>();
    let var_3 = func_2();
    return global3[_wgslsmith_index_u32(u_input.a.x, 2u)];
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    global4 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1, 96850u), ~u_input.a.x) == ~30307u;
    global2 = true;
    global1 = arg_3;
    let var_1 = reverseBits(~vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~u_input.a, ~u_input.a), arg_1, abs(u_input.a.x)));
    return Struct_3(-_wgslsmith_add_i32(_wgslsmith_mod_i32(~(-1i), max(19676i, 0i)), min(global1.a, -35598i)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a, -1i, -2147483647i, global1.a) & arg_2.b, -vec4<i32>(arg_2.a, 1i, global1.a, -28266i)), vec4<i32>(-2147483647i, i32(-1i) * -1i, abs(26493i), 0i)), ~arg_2.b));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: bool) -> vec4<i32> {
    global3 = array<Struct_3, 2>();
    global2 = u_input.a.x >= 1u;
    global3 = array<Struct_3, 2>();
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(712f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(1000f * global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -712f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, 224f, 321f)), vec4<f32>(global1.b.x, global1.b.x, 1020f, 1228f), !arg_2)))), 1u, func_5(func_2(), u_input.a.x, Struct_1(vec2<bool>(arg_2, true), _wgslsmith_f_op_f32(-global1.b.x))), func_2());
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, _wgslsmith_div_f32(global1.b.x, global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1571f))), 1833f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(-2031f, 158f)), global1.b.x, 244f, _wgslsmith_f_op_f32(517f * global1.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, -1238f, -304f, global1.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1054f, -1000f, global1.b.x) * vec4<f32>(1016f, global1.b.x, global1.b.x, global1.b.x)))), !select(select(vec4<bool>(true, false, true, arg_2), vec4<bool>(true, arg_2, false, false), false), vec4<bool>(true, true, arg_2, arg_2), select(vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(true, arg_2, true, true), false)))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, !all(vec4<bool>(true, true, true, false)));
    var var_1 = select(reverseBits(2401u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u))), vec4<u32>(~u_input.a.x, 4294967295u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), (4294967295u > u_input.a.x) && true) & abs(99966u);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(~(-(~global1.a)), _wgslsmith_div_i32(reverseBits(global1.a), global1.a), -(~1i), abs(0i)), _wgslsmith_div_vec4_i32(func_1(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-42771i, global1.a)), ~vec2<i32>(-9982i, global1.a), select(vec2<i32>(-2134i, global1.a), vec2<i32>(-2147483647i, -2147483647i), var_0)), ~firstLeadingBit(46458i), false), ~(-vec4<i32>(-7175i, global1.a, global1.a, global1.a))));
    let var_3 = select(var_0, select(vec2<bool>(var_0.x, false), select(!(!vec2<bool>(var_0.x, true)), !(!vec2<bool>(var_0.x, false)), select(vec2<bool>(false, false), var_0, vec2<bool>(var_0.x, var_0.x))), var_0), any(vec2<bool>(select(true, var_0.x, var_0.x), true)) != (select(true, var_0.x, var_0.x) | var_0.x));
    global2 = var_0.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b.x, 1367f)) + _wgslsmith_f_op_f32(global1.b.x * -1405f))), -925f)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_mod_vec3_u32(~firstLeadingBit(select(vec3<u32>(21825u, 79495u, 28749u), vec3<u32>(23466u, u_input.a.x, 80078u), var_3.x)), max(~(vec3<u32>(u_input.a.x, 49333u, 19340u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(0u, 4129u, u_input.a.x)))), reverseBits(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(global1.a, var_2.x)), vec2<i32>(var_2.x, 2147483647i))), -1i);
}

