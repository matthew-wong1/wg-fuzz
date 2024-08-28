struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec2<f32> = vec2<f32>(-914f, -1000f);

var<private> global2: array<vec2<u32>, 28>;

var<private> global3: bool = true;

var<private> global4: array<i32, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, -438f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(-584f))))), vec3<f32>(-1000f, global1.x, -806f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x))), -394f, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1535f, global1.x, 1520f), vec4<f32>(1513f, global1.x, global1.x, -1096f))) + vec4<f32>(global1.x, global1.x, global1.x, 2507f)))), u_input.d.x);
    var var_2 = Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.c, -1i), vec2<i32>(-11574i, -33513i) << (global2[_wgslsmith_index_u32(var_1.c, 28u)] % vec2<u32>(32u)), min(u_input.a, u_input.a)) >> (abs(_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(28183u, 28u)], vec2<u32>(var_1.c, 21740u))) % vec2<u32>(32u)), u_input.e.xz), select(u_input.e.wx, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i << (var_1.c % 32u), ~global4[_wgslsmith_index_u32(12678u, 28u)]), u_input.a), vec2<bool>(false, 0u == var_1.c)), true, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, 1395f)) * _wgslsmith_f_op_f32(max(global1.x, -992f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2937f + var_0.x) + global1.x)), vec2<f32>(global1.x, 143f)));
    global4 = array<i32, 28>();
    let var_3 = Struct_2(u_input.a, var_2.a, firstTrailingBit(var_2.a.x) == firstTrailingBit(~_wgslsmith_mult_i32(var_2.a.x, -14591i)), var_2.d);
    return var_3.c;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> u32 {
    global0 = array<Struct_1, 12>();
    global4 = array<i32, 28>();
    var var_0 = max(u_input.e.x, arg_0);
    global3 = func_3();
    var var_1 = Struct_2(_wgslsmith_mult_vec2_i32(u_input.a, -_wgslsmith_mod_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(arg_1, 28u)], global4[_wgslsmith_index_u32(1u, 28u)]), u_input.e.wy)) ^ vec2<i32>(25878i, abs(reverseBits(global4[_wgslsmith_index_u32(0u, 28u)]))), ~u_input.e.xy, true & all(vec3<bool>(true, true, func_3())), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, 246f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1230f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(547f, global1.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1643f, arg_2)))), true)))));
    return min(u_input.d.x, 1u);
}

fn func_4(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = vec4<u32>(u_input.b.x, ~(~0u), 1u, arg_0);
    var var_1 = abs(u_input.e);
    global4 = array<i32, 28>();
    global3 = any(!(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), false)));
    global4 = array<i32, 28>();
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, var_0.x), u_input.b.x), ~(~31979u), firstTrailingBit(arg_0 | 33527u), 104361u), vec4<u32>(26049u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 12802u), ~vec2<u32>(6670u, 1u)), ~_wgslsmith_mult_u32(var_0.x, var_0.x), firstTrailingBit(u_input.b.x))), 1u);
}

fn func_1() -> u32 {
    global4 = array<i32, 28>();
    var var_0 = func_4(func_2(u_input.c, u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 1702f)))), global1.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, 1507f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1030f)), false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -1000f), vec4<f32>(-861f, -436f, global1.x, global1.x))))))), 114359u);
    var var_2 = var_1.c;
    let var_3 = vec4<i32>(~(~2147483647i), global4[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 62010u, 63376u, 38595u), abs(vec4<u32>(u_input.d.x, var_1.c, 10134u, var_1.c))), ~abs(u_input.b.x)), firstLeadingBit(countOneBits(min(u_input.b.x, u_input.b.x)))), 28u)], -(~(-(~436i))), reverseBits(-_wgslsmith_dot_vec4_i32(countOneBits(u_input.e), u_input.e << (vec4<u32>(var_1.c, var_1.c, 47659u, 19u) % vec4<u32>(32u)))));
    return reverseBits(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(global1.x, global1.x);
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.b) | (func_1() >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d.x, 3640u), _wgslsmith_sub_u32(4294967295u, u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(37441u, u_input.b.x), _wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(25380u, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)]))) % 32u));
    let var_1 = global0[_wgslsmith_index_u32(func_4(var_0, global1.x), 12u)];
    var var_2 = select(select(false != all(vec4<bool>(true, true, true, true)), any(vec4<bool>(all(vec2<bool>(false, true)), true, -22709i > u_input.c, func_3())), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), all(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), !all(vec2<bool>(true, true)));
    var var_3 = global0[_wgslsmith_index_u32(~34014u, 12u)];
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 100f) - var_3.a.zx) * _wgslsmith_f_op_vec2_f32(var_3.b.xw * var_3.b.xx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 1751f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(620f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.b.x, -1905f)) + _wgslsmith_f_op_f32(-var_3.a.x)))), global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(35391u, 12u)]);
    var var_5 = any(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), global4[_wgslsmith_index_u32(u_input.d.x, 28u)] <= u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, min(_wgslsmith_sub_i32(~(-27685i), _wgslsmith_clamp_i32(u_input.c, -13934i, u_input.e.x)), ~_wgslsmith_add_i32(1i, -2147483647i)) & -u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(min(var_3.a.x, -1868f)))) - -1000f));
}

