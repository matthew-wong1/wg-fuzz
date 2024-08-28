struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 211f;

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec2<u32>(53897u, 1u)));

var<private> global2: array<i32, 13> = array<i32, 13>(2147483647i, i32(-2147483648), 63648i, -1i, 0i, -50359i, 35979i, i32(-2147483648), -6001i, -1i, 24096i, -26609i, 36393i);

var<private> global3: vec4<u32>;

var<private> global4: vec3<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(abs(firstLeadingBit(41842u)), 11665u), 1u), 1u)];
    var var_1 = Struct_1(true, !((all(vec2<bool>(true, true)) == true) | all(vec2<bool>(true, true))), !all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), false);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, -769f) * _wgslsmith_f_op_f32(-972f * 1425f));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-1149f, _wgslsmith_f_op_f32(exp2(global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(345f + arg_1.x)), 1893f))));
    global4 = arg_1.xyx;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-740f + 1488f), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(arg_1.x * 130f)) + _wgslsmith_f_op_vec3_f32(-var_0.wzz)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, -205f, arg_1.x)))))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~1u, global3.x, _wgslsmith_sub_u32(global3.x, 12492u) ^ _wgslsmith_mod_u32(212u, 4294967295u)), vec3<u32>(47573u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(47975u, 0u, global3.x, global3.x)) >> (48838u % 32u))), global3.xzy), 1u)];
    global2 = array<i32, 13>();
    return !(!(!vec4<bool>(true, true, u_input.a <= 0i, any(vec4<bool>(true, true, false, false)))));
}

fn func_1() -> vec4<u32> {
    var var_0 = select(!func_2((vec4<i32>(1i, global2[_wgslsmith_index_u32(global3.x, 13u)], -2147483647i, global2[_wgslsmith_index_u32(global3.x, 13u)]) | vec4<i32>(28689i, 19047i, global2[_wgslsmith_index_u32(7564u, 13u)], 10963i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, global2[_wgslsmith_index_u32(global3.x, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), vec4<i32>(global2[_wgslsmith_index_u32(global3.x, 13u)], global2[_wgslsmith_index_u32(global3.x, 13u)], u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1101f, global4.x, -1220f, global4.x), vec4<f32>(130f, global4.x, global4.x, 482f), false)))), select(!vec4<bool>(any(vec4<bool>(true, true, true, false)), any(vec3<bool>(false, false, true)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(global3.x > global3.x, true, true, true), vec4<bool>(true, true, true, global4.x <= 187f)), true), func_2(vec4<i32>(global2[_wgslsmith_index_u32(~global3.x, 13u)], global2[_wgslsmith_index_u32(firstLeadingBit(28757u), 13u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i), vec4<i32>(-32365i, 2147483647i, u_input.a, -2147483647i)) & abs(38255i), 0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global3.x, 13u)], -1i), vec2<i32>(8527i, 29721i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, global4.x, global4.x) + vec4<f32>(global4.x, -272f, 211f, global4.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-372f, -1286f, global4.x, 423f) + vec4<f32>(595f, global4.x, global4.x, 343f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(977f, global4.x, 1000f, global4.x))) * vec4<f32>(2103f, 898f, -483f, -115f)))));
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(12350i, global2[_wgslsmith_index_u32(0u, 13u)], u_input.a, u_input.a), abs(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(global3.x, 13u)], 2147483647i, 13170i)), false), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(40878i, global2[_wgslsmith_index_u32(0u, 13u)], 5999i, 5451i), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], u_input.a)), 1i, -43146i, 2147483647i)) | 1i, global2[_wgslsmith_index_u32(global3.x, 13u)]);
    var var_2 = _wgslsmith_add_vec4_i32(select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -35588i), vec2<i32>(2147483647i, -1i)), i32(-1i) * -1i, ~global2[_wgslsmith_index_u32(global3.x, 13u)], var_1.x) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, 4294967295u, global3.x, 83453u), vec4<u32>(0u, global3.x, global3.x, 23085u), vec4<u32>(29015u, 1u, global3.x, global3.x)) % vec4<u32>(32u)), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(71774i, -2147483647i, 14345i, var_1.x), vec4<i32>(global2[_wgslsmith_index_u32(global3.x, 13u)], u_input.a, 0i, 9626i)), _wgslsmith_div_i32(-1i, -8951i), i32(-1i) * -1i) << (vec4<u32>(1u, ~1u, 1u, global3.x) % vec4<u32>(32u)), true), vec4<i32>(var_1.x, _wgslsmith_div_i32(14218i, -2147483647i), firstLeadingBit(~u_input.a), -22084i) & (-(~vec4<i32>(var_1.x, var_1.x, global2[_wgslsmith_index_u32(63827u, 13u)], u_input.a)) >> (~abs(vec4<u32>(0u, global3.x, global3.x, global3.x)) % vec4<u32>(32u))));
    var_2 = reverseBits(min(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, var_2.x, 2147483647i), vec4<i32>(2147483647i, -62495i, 2147483647i, -1i))), vec4<i32>(1i, var_2.x, -16869i, var_1.x) | ~vec4<i32>(var_2.x, -20249i, u_input.a, -27142i)), min(firstTrailingBit(firstLeadingBit(vec4<i32>(-29596i, var_2.x, 2065i, 2216i))), select(-vec4<i32>(var_1.x, 263i, global2[_wgslsmith_index_u32(1u, 13u)], 17368i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, var_1.x), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(12444u, 13u)], 72048i, global2[_wgslsmith_index_u32(global3.x, 13u)])), vec4<bool>(var_0.x, var_0.x, true, true)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * global4.x))) - _wgslsmith_f_op_f32(global4.x - 1f)));
    return vec4<u32>(global3.x << (~select(1u >> (global3.x % 32u), 1263u, true) % 32u), countOneBits(global3.x), ~global3.x, global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(exp2(global4.x)), _wgslsmith_f_op_f32(global4.x * 165f), _wgslsmith_f_op_f32(step(-1706f, global4.x)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 464f, _wgslsmith_f_op_f32(global4.x - global4.x), global4.x)))));
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(global3.x), ~(~global3.x), ~(22713u & global3.x), 1u), vec4<u32>(global3.x, global3.x, ~(~(global3.x ^ global3.x)), ~(~95369u)));
    let var_1 = Struct_2(var_0.wyz);
    var var_2 = global4.x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -907f);
    var var_3 = ~vec4<u32>(0u, global3.x, 33239u, 1u) >> (func_1() % vec4<u32>(32u));
    var var_4 = ~reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_3.x, 13u)], u_input.a, global2[_wgslsmith_index_u32(var_3.x, 13u)]), vec3<i32>(global2[_wgslsmith_index_u32(var_3.x, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], -12801i)) << (~abs(var_3.zwz) % vec3<u32>(32u)));
    let var_5 = vec2<i32>(-(~max(_wgslsmith_clamp_i32(2147483647i, u_input.a, 0i), min(41778i, -10005i))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, firstTrailingBit(~(~global3.ww | var_3.wx)), var_5.x);
}

