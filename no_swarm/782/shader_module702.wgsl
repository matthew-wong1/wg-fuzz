struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<f32>(-959f, 425f)), Struct_1(vec2<f32>(-233f, 309f)), Struct_1(vec2<f32>(-796f, 758f)), Struct_1(vec2<f32>(400f, -619f)), Struct_1(vec2<f32>(978f, -2155f)), Struct_1(vec2<f32>(-1207f, 1124f)), Struct_1(vec2<f32>(-556f, 1145f)), Struct_1(vec2<f32>(696f, -230f)), Struct_1(vec2<f32>(2288f, -1438f)), Struct_1(vec2<f32>(1130f, 368f)), Struct_1(vec2<f32>(276f, -461f)), Struct_1(vec2<f32>(-1518f, 607f)), Struct_1(vec2<f32>(1597f, -110f)), Struct_1(vec2<f32>(1000f, -2566f)), Struct_1(vec2<f32>(-545f, 692f)), Struct_1(vec2<f32>(-421f, 1927f)), Struct_1(vec2<f32>(-1023f, -475f)), Struct_1(vec2<f32>(360f, 2370f)), Struct_1(vec2<f32>(-537f, -670f)), Struct_1(vec2<f32>(-2903f, -1484f)));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<f32>(1725f, -333f)), Struct_1(vec2<f32>(532f, 267f)), Struct_1(vec2<f32>(959f, -842f)), Struct_1(vec2<f32>(833f, -606f)), Struct_1(vec2<f32>(-478f, 1814f)), Struct_1(vec2<f32>(786f, 242f)), Struct_1(vec2<f32>(1666f, 389f)), Struct_1(vec2<f32>(1184f, 1345f)), Struct_1(vec2<f32>(-1000f, -1058f)), Struct_1(vec2<f32>(-987f, -918f)), Struct_1(vec2<f32>(212f, 2857f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_0 = u_input.a;
    global1 = array<Struct_1, 11>();
    global0 = array<Struct_1, 20>();
    return 13982u;
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(51013u, 11u)], Struct_2(vec4<bool>(true, false, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * _wgslsmith_f_op_f32(abs(-1173f)))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), select(1u, 30283u, true) == countOneBits(0u))), vec2<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(13975i, u_input.a)), ~vec2<i32>(u_input.a, -2147483647i) >> (vec2<u32>(60410u, 8177u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(286f, arg_0.x))))))), -2392f);
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(abs(4294967295u), 20u)], var_0.b, _wgslsmith_clamp_vec2_i32(abs(abs(var_0.c)), ~vec2<i32>(2147483647i, u_input.a) << (min(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 46457u)) % vec2<u32>(32u)), ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, u_input.a), var_0.c))), arg_0.x, 699f);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(3014f, 1605f))) + -181f)));
    let var_3 = select(!vec4<bool>(var_1.b.c.x, var_0.b.a.x, any(var_0.b.c), !var_0.b.c.x), vec4<bool>(true, var_0.b.a.x, !var_1.b.c.x, var_0.b.c.x && !var_1.b.a.x), select(select(!var_0.b.c, vec4<bool>(!var_1.b.c.x, var_0.b.c.x, var_0.b.c.x, var_1.b.c.x), var_1.b.a.x), var_1.b.c, true));
    global0 = array<Struct_1, 20>();
    return 30926u;
}

fn func_1(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~20327u, countOneBits(~0u >> (func_2(vec3<bool>(false, arg_0.x, false), Struct_2(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), 929f, vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), Struct_2(vec4<bool>(true, false, arg_0.x, arg_0.x), -904f, vec4<bool>(arg_0.x, false, true, arg_0.x)), Struct_2(vec4<bool>(true, false, true, true), 457f, vec4<bool>(false, false, arg_0.x, arg_0.x))) % 32u))), vec2<u32>(max(~4294967295u, ~1u), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -415f) - vec2<f32>(-2035f, 161f))) & ((91020u >> (1u % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7729u, 29886u, 114833u), vec4<u32>(4294967295u, 0u, 51578u, 1u)))));
    var var_1 = _wgslsmith_mult_vec4_u32((min(vec4<u32>(var_0.x, 44736u, 74964u, 4294967295u) ^ vec4<u32>(var_0.x, 20268u, var_0.x, var_0.x), ~vec4<u32>(var_0.x, 1u, var_0.x, 20792u)) ^ _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, 71620u, 12647u, var_0.x)), vec4<u32>(4294967295u, 0u, 34716u, 4294967295u))) & (vec4<u32>(~var_0.x, _wgslsmith_mult_u32(1u, var_0.x), 48142u, 86178u) >> (max(~vec4<u32>(var_0.x, 32822u, var_0.x, 4294967295u), abs(vec4<u32>(var_0.x, var_0.x, var_0.x, 21639u))) % vec4<u32>(32u))), reverseBits(reverseBits(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x), var_0.x, ~0u, _wgslsmith_clamp_u32(var_0.x, 93535u, var_0.x)))));
    var var_2 = _wgslsmith_mod_vec2_u32(var_1.xw | _wgslsmith_mult_vec2_u32(var_1.yz, firstTrailingBit(vec2<u32>(var_0.x, var_0.x))), vec2<u32>(countOneBits(var_1.x), var_0.x));
    let var_3 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2155f, -259f), _wgslsmith_f_op_f32(step(120f, 100f)), arg_0.x)), -1000f)), Struct_2(!vec4<bool>(true, arg_0.x, all(vec3<bool>(true, arg_0.x, true)), arg_0.x), -667f, !vec4<bool>(true, all(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, false, arg_0.x, false)), true)), reverseBits(vec2<i32>(-6237i | ~u_input.a, -16595i)), 352f, -235f);
    let var_4 = var_3.b;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_4.b, var_3.e), 1f, _wgslsmith_f_op_f32(min(935f, 755f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b, var_4.b, 249f) * vec3<f32>(var_3.b.b, -547f, -376f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1140f, var_3.a.a.x, var_4.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_3.a.a.x, 404f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1664f, -1439f, _wgslsmith_f_op_f32(max(-1000f, 1430f))), _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(107f, 1295f, -453f) * vec3<f32>(1238f, 103f, -452f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, 1264f, 653f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, -584f, 1000f)))))));
    let var_1 = 2147483647i;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -898f), var_0.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 401f, var_0.x)), vec3<f32>(-686f, -375f, var_0.x)))))));
    global1 = array<Struct_1, 11>();
    var var_2 = ~(~(~(~(~53282u))));
    global0 = array<Struct_1, 20>();
    var var_3 = global1[_wgslsmith_index_u32(~0u, 11u)];
    var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(50614u, 29798u, 30000u, 4294967295u), vec4<u32>(1u, 0u, 6063u, 4294967295u))), 1u, firstLeadingBit(reverseBits(4294967295u))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 70802u, 0u, 46885u), vec4<u32>(51706u, 1u, 53661u, 0u)), _wgslsmith_div_u32(24722u, 16867u)))), 20u)];
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(857f, var_0.x, 148f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -202f, -1542f), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.x, var_0.x, var_3.a.x), vec3<f32>(417f, var_3.a.x, -850f)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, 609f, var_0.x) + vec3<f32>(var_0.x, var_0.x, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~reverseBits(select(vec3<u32>(1827u, 4294967295u, 42682u), vec3<u32>(12956u, 22481u, 1u), false)), ~vec3<u32>(1u, 1u, 1u)), ~(~_wgslsmith_div_vec3_u32(min(vec3<u32>(4294967295u, 8781u, 14480u), vec3<u32>(4294967295u, 4294967295u, 1u)), ~vec3<u32>(1u, 0u, 98473u))), _wgslsmith_mult_u32(~4294967295u, 61680u));
}

