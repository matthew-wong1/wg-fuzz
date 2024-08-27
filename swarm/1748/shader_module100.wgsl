struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<i32>(-1i, -56606i, 30265i, 0i), 0i, 0u), Struct_2(vec4<i32>(i32(-2147483648), -58696i, -1i, i32(-2147483648)), 0i, 23310u), Struct_2(vec4<i32>(-28581i, i32(-2147483648), -36940i, -20410i), 2147483647i, 4294967295u), Struct_2(vec4<i32>(2147483647i, 13935i, 40783i, i32(-2147483648)), 0i, 66201u), Struct_2(vec4<i32>(9150i, 0i, 19440i, -19606i), 2043i, 1u), Struct_2(vec4<i32>(i32(-2147483648), -7463i, -6254i, -2609i), -5830i, 1u), Struct_2(vec4<i32>(-54753i, i32(-2147483648), i32(-2147483648), -1i), 8013i, 93158u), Struct_2(vec4<i32>(981i, 0i, 0i, 1i), -13785i, 0u), Struct_2(vec4<i32>(-11387i, 23049i, -1i, 7446i), 2147483647i, 4294967295u), Struct_2(vec4<i32>(-68835i, 2147483647i, 1i, 2147483647i), 35193i, 19849u), Struct_2(vec4<i32>(28283i, -68118i, 1i, 2147483647i), 1i, 38080u), Struct_2(vec4<i32>(-1i, 1i, -3203i, -22158i), -1i, 1u), Struct_2(vec4<i32>(-58868i, 0i, i32(-2147483648), 27123i), 3370i, 1u), Struct_2(vec4<i32>(2147483647i, -42397i, 0i, 1i), -18356i, 18844u), Struct_2(vec4<i32>(2147483647i, -39081i, -18745i, -901i), 0i, 1u), Struct_2(vec4<i32>(2147483647i, 1i, 0i, 15858i), 5622i, 21788u), Struct_2(vec4<i32>(27572i, 2147483647i, 42074i, 1i), -1i, 47113u), Struct_2(vec4<i32>(-19395i, -10621i, i32(-2147483648), 15105i), 16573i, 59715u), Struct_2(vec4<i32>(18657i, 25784i, -65818i, -1i), 0i, 13272u), Struct_2(vec4<i32>(-10083i, -16759i, 1i, -26676i), 1i, 26387u), Struct_2(vec4<i32>(1i, i32(-2147483648), 0i, 0i), -16890i, 4294967295u));

var<private> global2: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_1(true, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(15469u, 3926u), select(vec2<u32>(arg_0.c, global0.x), vec2<u32>(global0.x, global0.x), vec2<bool>(true, true)))), arg_1.x, false);
    global1 = array<Struct_2, 21>();
    global1 = array<Struct_2, 21>();
    global0 = ~var_0.b;
    let var_1 = arg_0.c & _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, 1u, arg_0.c, arg_0.c)), min(vec4<u32>(arg_0.c, 0u, global0.x, global0.x), vec4<u32>(1u, 0u, 0u, 4294967295u))), vec4<u32>(1u, ~_wgslsmith_mult_u32(var_0.b.x, var_0.b.x), 0u, 4294967295u));
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: bool) -> vec3<u32> {
    var var_0 = Struct_1(arg_2, countOneBits(vec2<u32>(global0.x ^ global0.x, 0u)), ~(~select(u_input.c, u_input.b.x, arg_1.x)) | 1i, true);
    var var_1 = global1[_wgslsmith_index_u32(var_0.b.x, 21u)];
    global0 = ~(_wgslsmith_mult_vec2_u32(~countOneBits(var_0.b), var_0.b) >> (reverseBits(var_0.b) % vec2<u32>(32u)));
    let var_2 = Struct_1(!(_wgslsmith_clamp_u32(firstTrailingBit(var_0.b.x), 0u, _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(4294967295u, var_0.b.x))) == 0u), vec2<u32>(abs(1u), var_0.b.x), 2948i, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1275f)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2246f * -603f)))) == all(arg_1));
    var_0 = var_2;
    return abs(~(~(~firstTrailingBit(vec3<u32>(19234u, var_2.b.x, var_1.c)))));
}

fn func_2(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = u_input.b.x;
    let var_1 = vec4<u32>(~global0.x, global0.x, global0.x >> (global0.x % 32u), 96780u);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f)))));
    var_2 = -737f;
    let var_3 = Struct_2(~(~(~vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.c) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-20595i, 25794i, -1760i, u_input.b.x), vec4<i32>(u_input.a, u_input.c, 0i, -2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.b.x, -2147483647i)))), -(~u_input.a), var_1.x);
    return ~(~func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -176f), 1146f), arg_0, func_3(Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, var_3.b), 31667i, global0.x), u_input.b)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global2 = _wgslsmith_dot_vec3_u32((_wgslsmith_add_vec3_u32(~vec3<u32>(global0.x, arg_1.b.x, global0.x), ~vec3<u32>(4294967295u, global0.x, 7927u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 73480u, 4294967295u) ^ vec3<u32>(1u, arg_1.b.x, 18729u), ~vec3<u32>(8275u, arg_1.b.x, global0.x)) % vec3<u32>(32u))) << ((vec3<u32>(~global0.x, arg_1.b.x, min(arg_2.b.x, arg_2.b.x)) ^ abs(func_2(vec2<bool>(true, arg_1.d)))) % vec3<u32>(32u)), select(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b.x, arg_1.b.x, 42439u), vec3<u32>(global0.x, arg_1.b.x, arg_1.b.x)), vec3<u32>(4294967295u, ~74810u, ~arg_1.b.x), !select(vec3<bool>(arg_1.d, false, true), vec3<bool>(false, true, arg_1.a), true)) >> ((~vec3<u32>(arg_1.b.x, global0.x, global0.x) >> (vec3<u32>(1u, 1u, arg_1.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = countOneBits(arg_2.b);
    let var_0 = arg_1.a;
    global0 = vec2<u32>(max(arg_2.b.x, arg_2.b.x), 0u);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-760f - _wgslsmith_div_f32(-141f, -199f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1373f - 406f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1691f), -696f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-779f, -2478f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-763f, _wgslsmith_div_f32(-187f, -591f), -1000f, _wgslsmith_f_op_f32(ceil(538f))))))));
    return ~arg_2.b;
}

fn func_5(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = vec2<i32>(u_input.a, _wgslsmith_add_i32(countOneBits(~(u_input.a & u_input.b.x)), 31361i));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), ~vec2<u32>(1u, 4294967295u), abs(func_1(u_input.b.x, Struct_1(true, vec2<u32>(global0.x, global0.x), u_input.a, false), Struct_1(true, vec2<u32>(global0.x, global0.x), -2147483647i, false)))), ~(~(~vec2<u32>(global0.x, 4294967295u)))));
    global0 = _wgslsmith_mod_vec2_u32(~(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 0u), vec2<u32>(6130u, global0.x)) | min(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)))), max(vec2<u32>(~global0.x, 14610u), ~(~reverseBits(vec2<u32>(global0.x, global0.x)))));
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), select(vec2<u32>(~(~global0.x), reverseBits(global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, countOneBits(global0.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, global0.x), ~vec2<u32>(108752u, global0.x))), func_3(Struct_2(vec4<i32>(u_input.b.x, -1i, u_input.a, 0i), -u_input.a, 1u), u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(-136f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-228f))))), _wgslsmith_f_op_f32(-151f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(606f, -1163f)), _wgslsmith_f_op_f32(802f - -545f), false != var_0.x))), false)));
    let var_2 = vec4<i32>(_wgslsmith_div_i32(-27095i, -1i), -firstTrailingBit(_wgslsmith_add_i32(-29079i, u_input.a)) >> (0u % 32u), min(abs(reverseBits(8273i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(20061u, global0.x, 89200u, global0.x), vec4<u32>(global0.x, global0.x, 66478u, global0.x)) % 32u)), u_input.b.x), ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.a, u_input.b.x)) ^ vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, ~(-2147483647i), -33432i)));
    let var_3 = u_input.c;
    var var_4 = Struct_4(global1[_wgslsmith_index_u32(global0.x, 21u)]);
    let var_5 = Struct_1(true, ~func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, var_1))), !var_0, true).yy, abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_2.x, 48774i), -u_input.a, ~_wgslsmith_sub_i32(-14794i, var_3))), func_3(var_4.a, -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-79302i, -21935i), var_2.xx), select(var_4.a.a.x, var_2.x, var_0.x))));
    global1 = array<Struct_2, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1)))), _wgslsmith_f_op_f32(-var_1)))), max(vec4<i32>(39801i, _wgslsmith_div_i32(var_3, -1i), -1i, var_5.c ^ var_3), vec4<i32>(var_5.c, firstLeadingBit(0i), 0i, var_3)), countOneBits(-firstTrailingBit(var_4.a.b)), vec3<u32>(0u, 0u, global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, 1025f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))));
}

