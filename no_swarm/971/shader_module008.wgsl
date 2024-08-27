struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(55989u, 1u), vec2<u32>(4294967295u, 34818u), vec2<u32>(28687u, 1u), vec2<u32>(4294967295u, 75037u), vec2<u32>(1u, 0u), vec2<u32>(11163u, 4294967295u), vec2<u32>(82389u, 23879u), vec2<u32>(25243u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(51164u, 4294967295u), vec2<u32>(85818u, 47904u), vec2<u32>(55174u, 1u), vec2<u32>(8976u, 4294967295u), vec2<u32>(0u, 42097u), vec2<u32>(1u, 4294967295u), vec2<u32>(28523u, 17690u), vec2<u32>(1u, 0u), vec2<u32>(51292u, 4162u), vec2<u32>(65683u, 0u), vec2<u32>(96705u, 0u), vec2<u32>(0u, 40007u), vec2<u32>(66217u, 21169u), vec2<u32>(4294967295u, 1u));

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: array<u32, 15>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    global2 = array<u32, 15>();
    global2 = array<u32, 15>();
    var var_0 = 904f;
    let var_1 = ~u_input.d;
    var var_2 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, ~63269u, ~1u, 1u), ~(vec4<u32>(0u, global2[_wgslsmith_index_u32(0u, 15u)], 13452u, u_input.d) << (~vec4<u32>(var_1, var_1, global2[_wgslsmith_index_u32(var_1, 15u)], u_input.d) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1611f, 364f)) - _wgslsmith_f_op_f32(step(255f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x - -282f)))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-337f - -205f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(586f - arg_1.x))) * arg_1.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(-35458i, u_input.a.x);
    var var_1 = Struct_1(select(vec3<bool>(!(global2[_wgslsmith_index_u32(arg_0.x, 15u)] < arg_0.x), all(select(vec4<bool>(true, false, arg_1.b, false), vec4<bool>(false, true, arg_1.b, false), true)), true), arg_1.a, arg_3), 1543f == _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(529f, -391f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(446f, -220f))))));
    var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f * -1450f) - -468f), _wgslsmith_f_op_f32(select(131f, -260f, !arg_2)), var_1.a.x)), 1973f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), -1200f)));
    global0 = array<vec2<u32>, 23>();
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> f32 {
    global1 = array<vec2<i32>, 22>();
    let var_0 = _wgslsmith_f_op_f32(floor(-893f)) > -1950f;
    let var_1 = arg_1.b;
    return 106f;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(531f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~arg_0, func_2(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 23u)]), Struct_1(vec3<bool>(false, true, false), true), any(vec3<bool>(true, true, true)), true && all(vec3<bool>(false, false, true))), countOneBits(-(vec2<i32>(1i, arg_0) >> (global0[_wgslsmith_index_u32(u_input.d, 23u)] % vec2<u32>(32u)))), abs(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], _wgslsmith_clamp_u32(22881u, 0u, u_input.d), firstTrailingBit(u_input.d))))) + 1197f);
    var var_2 = u_input.d;
    let var_3 = _wgslsmith_add_vec2_u32(select(reverseBits(vec2<u32>(u_input.d, ~u_input.d)), global0[_wgslsmith_index_u32(4294967295u, 23u)], any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)))), vec2<u32>(39998u, select(u_input.d, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(41362u, 0u, 82464u)), min(vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 56204u), vec3<u32>(u_input.d, 1u, 1u))), all(vec2<bool>(false, false)))));
    var var_4 = Struct_2(select(!vec4<bool>(select(false, false, true), true, true, false), vec4<bool>(true, !(global2[_wgslsmith_index_u32(60034u, 15u)] >= 0u), all(vec2<bool>(true, true)), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), func_2(abs(min(_wgslsmith_div_vec2_u32(vec2<u32>(12677u, 54948u), global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_3.x), vec2<u32>(0u, 4294967295u)))), func_2(vec2<u32>(~var_3.x, 1u), func_2(~vec2<u32>(91288u, 4885u), Struct_1(vec3<bool>(false, true, true), true), true, all(vec3<bool>(false, true, true))), func_2(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), var_3), func_2(vec2<u32>(var_3.x, 0u), Struct_1(vec3<bool>(false, false, false), false), true, false), false, false).b, true), true, any(func_2(max(var_3, var_3), func_2(vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_1(vec3<bool>(true, true, false), false), true, false), true, true).a)), func_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.x, 15u)], 15u)])), vec2<u32>(var_3.x, u_input.d)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 12914u), var_3) << (vec2<u32>(1u, u_input.d) % vec2<u32>(32u)), ~reverseBits(vec2<u32>(var_3.x, 1u))), func_2(~abs(vec2<u32>(global2[_wgslsmith_index_u32(var_3.x, 15u)], 4294967295u)), func_2(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.d, 15u)]), func_2(vec2<u32>(19086u, 49998u), Struct_1(vec3<bool>(false, false, false), true), true, true), all(vec3<bool>(true, true, false)), true), true, true), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), any(vec2<bool>(false, all(vec2<bool>(true, true))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1074f)), _wgslsmith_f_op_f32(round(-2140f))))), -451f))));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = array<vec2<i32>, 22>();
    var var_0 = -6005i;
    let var_1 = Struct_2(select(vec4<bool>(!(arg_1 >= 542f), true, !(56017u != global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)]), func_2(select(vec2<u32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], u_input.d), global0[_wgslsmith_index_u32(65310u, 23u)], vec2<bool>(true, arg_3)), Struct_1(arg_2.a, false), arg_2.b | true, true).a.x), !select(vec4<bool>(true, false, arg_2.b, false), select(vec4<bool>(arg_2.a.x, arg_3, false, arg_2.b), vec4<bool>(true, arg_3, true, false), vec4<bool>(arg_3, true, arg_2.a.x, arg_2.a.x)), arg_2.a.x), u_input.d <= u_input.d), Struct_1(vec3<bool>(any(vec2<bool>(true, true)), arg_2.a.x, arg_3), !(!(arg_2.b | false))), Struct_1(arg_2.a, true));
    var var_2 = 65971u;
    var var_3 = global1[_wgslsmith_index_u32(u_input.d, 22u)];
    return func_2(~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, u_input.d), vec4<u32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], 1u, 48207u, global2[_wgslsmith_index_u32(u_input.d, 15u)])), _wgslsmith_mod_u32(1u, 1544u))), Struct_1(select(!(!arg_2.a), !func_2(global0[_wgslsmith_index_u32(20472u, 23u)], Struct_1(var_1.c.a, arg_3), arg_2.b, false).a, var_1.b.a), false), arg_2.a.x, !(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(round(-1000f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - 421f), _wgslsmith_f_op_f32(426f + 2250f))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 728f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2706f), arg_2))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-207f, -383f) * vec2<f32>(arg_2, -897f)))))));
    var var_1 = Struct_2(select(select(!vec4<bool>(true, false, false, arg_1.a.x), vec4<bool>(false, true, true, !arg_1.a.x), arg_1.b), select(!vec4<bool>(arg_1.a.x, true, true, arg_1.b), !vec4<bool>(true, true, false, arg_1.b), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c) > arg_0.x), arg_1.b), arg_1, func_2(_wgslsmith_mod_vec2_u32(~firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d, 23u)]), global0[_wgslsmith_index_u32(1u, 23u)]), func_2(~vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 15u)]) ^ abs(vec2<u32>(4294967295u, 118694u)), Struct_1(!arg_1.a, arg_1.a.x), arg_1.a.x, !(!arg_1.b)), all(!vec3<bool>(arg_1.a.x, arg_1.b, arg_1.b)) | true, !(_wgslsmith_f_op_f32(var_0.x * arg_2) <= 478f)));
    global0 = array<vec2<u32>, 23>();
    let var_2 = firstTrailingBit(vec4<u32>(min(4294967295u, global2[_wgslsmith_index_u32(~0u >> (abs(u_input.d) % 32u), 15u)]), ~(~10173u), 42188u, global2[_wgslsmith_index_u32(firstTrailingBit(min(4294967295u, abs(global2[_wgslsmith_index_u32(u_input.d, 15u)]))), 15u)]));
    let var_3 = func_2(vec2<u32>(35629u, 1u), Struct_1(select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 15u)], 15u)], 15u)]), var_2.yw), var_1.b, all(arg_1.a.xy), var_0.x == -996f).a, var_1.a.x), true), arg_1.b, var_1.c.b);
    return -734f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 15>();
    global0 = array<vec2<u32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(func_6(vec4<i32>(firstTrailingBit(abs(reverseBits(u_input.c.x))), abs(~1i), -1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(u_input.c.zw, vec2<i32>(u_input.b, u_input.c.x), true), firstLeadingBit(vec2<i32>(u_input.a.x, -20243i))), firstTrailingBit(firstTrailingBit(u_input.c.x)))), func_5(vec4<i32>(u_input.b, _wgslsmith_mod_i32(~u_input.b, 40123i), countOneBits(-16403i), 1095i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i))), Struct_1(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), true), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1958f)) + 869f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1869f, 1649f)))))))));
    var var_1 = func_5(vec4<i32>(u_input.b, reverseBits(~4385i), -(u_input.c.x << (_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 23u)], vec2<u32>(36017u, global2[_wgslsmith_index_u32(48818u, 15u)])) % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-4649i, u_input.a.x, 1i), u_input.a) << (u_input.d % 32u)), var_0, Struct_1(func_5(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, -2147483647i, 1i, 15952i), -vec4<i32>(-19892i, u_input.b, 37093i, -2147483647i)), -1187f, Struct_1(func_5(u_input.c, var_0, Struct_1(vec3<bool>(true, false, true), true), true).a, false), all(func_5(u_input.c, var_0, Struct_1(vec3<bool>(false, false, false), false), true).a)).a, any(vec3<bool>(true, true, true))), true);
    let var_2 = func_5(_wgslsmith_div_vec4_i32(select(~(u_input.c << (vec4<u32>(u_input.d, 0u, 86788u, 1396u) % vec4<u32>(32u))), vec4<i32>(u_input.c.x, _wgslsmith_div_i32(u_input.b, 0i), u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(6873i, u_input.c.x), u_input.c.zw)), select(!vec4<bool>(true, true, var_1.a.x, var_1.b), vec4<bool>(var_1.b, var_1.b, true, false), var_1.a.x)), countOneBits(abs(abs(vec4<i32>(0i, -1i, -1i, 0i))))), var_0, Struct_1(var_1.a, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1126f)) >= _wgslsmith_f_op_f32(func_3(func_5(u_input.c, var_0, Struct_1(var_1.a, var_1.b), var_1.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, -567f))))), (i32(-1i) * -min(u_input.a.x, u_input.b)) != 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(~global2[_wgslsmith_index_u32(4294967295u, 15u)] & _wgslsmith_add_u32(72575u, u_input.d), 39967u, ~u_input.d), vec3<u32>(global2[_wgslsmith_index_u32(~u_input.d, 15u)], u_input.d, 105u)), ~(firstLeadingBit(global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(131333u, 15u)]), 15u)]) | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 15u)], 15u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(58535u, 22u)], ~(~vec2<i32>(u_input.c.x, -18385i))), vec2<i32>(-u_input.c.x, 1i)));
}

