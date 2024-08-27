struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 12> = array<f32, 12>(-653f, -366f, 359f, -231f, -216f, -219f, 1000f, -515f, -1299f, -814f, -1421f, 792f);

var<private> global2: array<bool, 19> = array<bool, 19>(true, false, false, false, false, false, false, false, false, true, false, true, true, false, false, true, true, true, false);

var<private> global3: vec4<u32> = vec4<u32>(2615u, 28625u, 1u, 37885u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1() -> u32 {
    return ~global3.x | ~abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(26267u, 0u, 0u), global3.xxx));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-(~(-2147483647i & global0.a.x)), max(-20921i, _wgslsmith_mult_i32(-20953i, u_input.a.x))), 1i);
    let var_1 = arg_1.x <= -1000f;
    let var_2 = select(!vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0, global2[_wgslsmith_index_u32(arg_2, 19u)], arg_0, var_1), true)), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(4294967295u, 4294967295u, arg_2, arg_2)), 19u)], global2[_wgslsmith_index_u32(~arg_2, 19u)], !(!var_1)), select(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 19u)], true, true, false), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(global2[_wgslsmith_index_u32(38111u, 19u)], global2[_wgslsmith_index_u32(arg_2, 19u)], arg_0, var_1))), vec4<bool>((16928u < arg_3.a.b.x) | any(vec3<bool>(var_1, true, false)), true, !select(false, global2[_wgslsmith_index_u32(arg_3.a.b.x, 19u)], true), arg_0), true), arg_0);
    var var_3 = Struct_1(vec2<i32>(~_wgslsmith_sub_i32(0i, arg_3.a.a.x), var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(~55286u << (~arg_3.a.b.x % 32u), ~42669u | _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, arg_2), arg_3.a.b.wy), ~reverseBits(global0.b.x), 29381u), firstTrailingBit(~arg_3.a.b)));
    global0 = arg_3.a;
    return arg_2;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global3 = min(vec4<u32>(firstTrailingBit(reverseBits(1u)), ~func_3(any(vec3<bool>(global2[_wgslsmith_index_u32(60891u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(global0.b.x, 19u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(global0.b.x, 12u)]) - vec2<f32>(-727f, global1[_wgslsmith_index_u32(global0.b.x, 12u)])), global0.b.x, Struct_2(Struct_1(arg_1.a, vec4<u32>(79982u, 0u, 20982u, global0.b.x)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(6014u, 56931u, global3.x), ~vec3<u32>(global3.x, 8305u, arg_1.b.x)), 28439u), vec4<u32>(_wgslsmith_div_u32(~4294967295u, global3.x), 24113u, reverseBits(abs(13602u)), arg_1.b.x));
    global0 = Struct_1(-(~(~vec2<i32>(-2147483647i, u_input.a.x)) << (~global3.xw % vec2<u32>(32u))), abs(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3.x, global0.b.x, 13141u, 57010u), arg_1.b), vec4<u32>(global3.x, global3.x, arg_1.b.x, 80746u) >> (arg_1.b % vec4<u32>(32u)))));
    global2 = array<bool, 19>();
    var var_0 = Struct_1(vec2<i32>(arg_0.x, -1i), vec4<u32>(~reverseBits(~arg_1.b.x), 7078u, reverseBits(1u), _wgslsmith_div_u32(min(1u, 4294967295u), global0.b.x)));
    global3 = ~_wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(select(_wgslsmith_div_u32(29990u, global3.x), 94640u, all(vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 19u)], true, true))), ~4294967295u, select(_wgslsmith_mult_u32(0u, 67501u), global3.x, !global2[_wgslsmith_index_u32(var_0.b.x, 19u)]), _wgslsmith_dot_vec4_u32(global0.b, abs(vec4<u32>(global0.b.x, 1u, 0u, global0.b.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-514f - global1[_wgslsmith_index_u32(arg_1.b.x, 12u)]) + global1[_wgslsmith_index_u32(_wgslsmith_div_u32(23620u, ~_wgslsmith_mod_u32(abs(0u), ~global0.b.x)), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global0.a, vec4<u32>(4294967295u, 51077u, func_1(), _wgslsmith_mod_u32(~global0.b.x, global0.b.x))));
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    global2 = array<bool, 19>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(-vec4<i32>(u_input.a.x, u_input.a.x, global0.a.x, global0.a.x), Struct_1(global0.a, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 12u)] - global1[_wgslsmith_index_u32(global0.b.x, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1660f - -710f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)])))), -129f, 540f))));
    let var_2 = global2[_wgslsmith_index_u32(var_0.a.b.x, 19u)];
    var var_3 = firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, select(countOneBits(u_input.a), -vec3<i32>(-16436i, var_0.a.a.x, -1i), vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.b.x, 19u)], false, false))), vec3<i32>(global0.a.x ^ firstLeadingBit(2147483647i), u_input.a.x, -17897i)));
    global2 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -2964f, 476f, 1796f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], var_1.x, 804f, 1053f), vec4<f32>(249f, var_1.x, 442f, 473f), vec4<bool>(false, false, global2[_wgslsmith_index_u32(global3.x, 19u)], global2[_wgslsmith_index_u32(1422u, 19u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 745f, -1187f, 2314f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(157f, global1[_wgslsmith_index_u32(var_0.a.b.x, 12u)], 475f, var_1.x) + vec4<f32>(1129f, var_1.x, 1000f, var_1.x))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2170f, -823f, global1[_wgslsmith_index_u32(global0.b.x, 12u)], 1960f) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], 542f, -1159f, -266f))))), select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 19u)], true, global2[_wgslsmith_index_u32(19451u, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(global0.b.x, 19u)], true)), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.b.x, 19u)], false), !vec4<bool>(global2[_wgslsmith_index_u32(global0.b.x, 19u)], false, global2[_wgslsmith_index_u32(global0.b.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)])), !select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false, global2[_wgslsmith_index_u32(16796u, 19u)], global2[_wgslsmith_index_u32(43146u, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.b.x, 19u)], true, true, global2[_wgslsmith_index_u32(15677u, 19u)]), false), false))), ~countOneBits(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(global0.a.x, 0i, -5278i, var_3.x), any(vec2<bool>(false, global2[_wgslsmith_index_u32(global3.x, 19u)])))), vec3<u32>(_wgslsmith_clamp_u32(global3.x, min(4294967295u, abs(var_0.a.b.x)), _wgslsmith_add_u32(0u, ~var_0.a.b.x)), _wgslsmith_sub_u32(~14032u & var_0.a.b.x, _wgslsmith_sub_u32(~global3.x, 1u & global3.x)), ~(_wgslsmith_clamp_u32(var_0.a.b.x, 33394u, var_0.a.b.x) << (min(var_0.a.b.x, global3.x) % 32u))), global0.b.x | _wgslsmith_dot_vec3_u32(global3.wyz, var_0.a.b.wzw), vec4<f32>(_wgslsmith_f_op_f32(sign(-1744f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), -296f, var_1.x));
}

