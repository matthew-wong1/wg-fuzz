struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30729u;

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<bool>, 9>;

var<private> global3: vec3<u32> = vec3<u32>(0u, 38502u, 12297u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> u32 {
    global2 = array<vec3<bool>, 9>();
    global3 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, abs(u_input.d), global1.x), firstTrailingBit(vec3<u32>(global1.x, global1.x, u_input.c.x))), vec3<u32>(~18484u, abs(u_input.c.x), 1u) << (vec3<u32>(~4294967295u, 55256u, ~global3.x) % vec3<u32>(32u))));
    global2 = array<vec3<bool>, 9>();
    return ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, 4294967295u, 1u), vec4<u32>(1u, 59687u, 1u, global3.x)), vec4<u32>(81263u, global1.x, 4294967295u, 10906u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    global2 = array<vec3<bool>, 9>();
    global0 = arg_2;
    var var_0 = Struct_2(Struct_1(arg_1.b.a, any(global2[_wgslsmith_index_u32(arg_2, 9u)]), _wgslsmith_f_op_f32(-arg_1.e.c)), arg_1.e, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(757f))))), _wgslsmith_f_op_f32(f32(-1f) * -279f)), arg_1.d, arg_1.b);
    let var_1 = 4294967295u;
    global0 = _wgslsmith_div_u32(u_input.d, var_0.d.a);
    return ~abs(4294967295u);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> bool {
    global3 = arg_2.xwz;
    var var_0 = func_3(vec3<u32>(_wgslsmith_sub_u32(~arg_3.x, 1u), firstLeadingBit(~80204u) << (u_input.c.x % 32u), arg_2.x), Struct_2(Struct_1(select(arg_3.x, ~u_input.c.x, true), (54001u >> (1u % 32u)) < arg_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-678f * 1197f)))), Struct_1(_wgslsmith_div_u32(8427u, 63696u) ^ arg_2.x, 79527u == select(8932u, u_input.e, false), _wgslsmith_div_f32(-925f, _wgslsmith_div_f32(283f, 708f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1170f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(542f, 513f))))), Struct_1(_wgslsmith_clamp_u32(reverseBits(u_input.e), global3.x, 4294967295u), !all(global2[_wgslsmith_index_u32(1u, 9u)]), 1239f), Struct_1(~(~4294967295u), false, 443f)), 1u << (global1.x % 32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1306f)), _wgslsmith_f_op_f32(abs(107f))))))));
    var_0 = arg_2.x;
    var_0 = countOneBits(~arg_2.x);
    return false;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = firstTrailingBit(vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 61676u), 39549u >> (global3.x % 32u)), _wgslsmith_sub_u32(~func_1(), ~global3.x ^ 40358u), 1u, 0u));
    global2 = array<vec3<bool>, 9>();
    let var_1 = Struct_2(Struct_1(~(~(~6515u)), any(!select(vec2<bool>(arg_2.x, false), vec2<bool>(arg_2.x, false), arg_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1090f, arg_1.x)))), Struct_1(~0u, true, arg_1.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))), Struct_1(4294967295u, arg_2.x, -273f), Struct_1(~0u, arg_2.x, 1033f));
    global3 = _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(85258u, global3.x, global3.x) << (firstTrailingBit(var_0.xyy) % vec3<u32>(32u)), vec3<u32>(~0u, ~var_1.d.a, u_input.e)), var_0.yyx >> (~(~(var_0.xwx << (vec3<u32>(var_1.e.a, 21585u, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    return Struct_1(global1.x, var_1.d.b, 1485f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_1());
    var var_1 = _wgslsmith_add_u32(var_0, var_0) > abs(max(0u, global1.x) >> (~(1u | var_0) % 32u));
    let var_2 = -(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1088f)) * _wgslsmith_f_op_f32(abs(922f)))), _wgslsmith_f_op_f32(min(-2030f, -972f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1014f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -503f))), all(vec4<bool>(false, true, true, false)))))));
    let var_4 = Struct_2(func_4(9608i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, 137f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1431f) + vec2<f32>(-528f, 696f)), vec2<bool>(true, true))), vec4<bool>(!any(vec4<bool>(true, false, false, false)), false, false, func_2(~(-37991i), 1i, _wgslsmith_div_vec4_u32(vec4<u32>(25434u, var_0, 45177u, 55874u), vec4<u32>(16072u, 4294967295u, 4294967295u, 42504u)), _wgslsmith_mult_vec3_u32(vec3<u32>(28602u, var_0, 25755u), vec3<u32>(1u, 4294967295u, 50553u))))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(func_4(2147483647i, vec2<f32>(-826f, -455f), vec4<bool>(false, true, true, true)).a, select(global1.x, global1.x, false)), abs(u_input.c << (vec2<u32>(global1.x, 75323u) % vec2<u32>(32u)))), _wgslsmith_div_i32(var_2, u_input.a.x & var_2) == ~0i, 943f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-788f, -1189f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2738f, 960f)))))), Struct_1(countOneBits(firstLeadingBit(global1.x | 42972u)), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1013f))))), func_4(-1i, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1087f - -639f))), 1f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_4(var_2, vec2<f32>(119f, -243f), vec4<bool>(false, false, false, false)).b, true, true), true)));
    let var_5 = select(vec4<i32>(2147483647i, u_input.b, 23030i, min(2147483647i, ~21844i)) | -(~(~vec4<i32>(u_input.b, u_input.a.x, u_input.b, -61013i))), abs(-reverseBits(vec4<i32>(u_input.a.x, -39309i, var_2, 48452i))), func_4(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_4.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.c, var_4.b.c) + var_4.c))), !select(!vec4<bool>(var_4.b.b, false, true, false), !vec4<bool>(false, var_4.a.b, true, false), !vec4<bool>(true, true, false, var_4.d.b))).b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(209f - _wgslsmith_f_op_f32(f32(-1f) * -2215f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_4.d.c) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_4.a.c, 229f)))), _wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(round(-1486f)))), _wgslsmith_mult_u32(var_4.b.a, var_4.d.a), ~(~96154u), _wgslsmith_sub_i32(-var_5.x, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(var_2, 34930i), var_2)));
}

