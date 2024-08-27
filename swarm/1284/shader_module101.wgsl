struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec2<f32> = vec2<f32>(-133f, -927f);

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    return 1u;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> i32 {
    global0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(firstTrailingBit(max(-6360i, -40532i)), ~(~u_input.c), u_input.c)), vec3<i32>(-1i) * -(vec3<i32>(10044i, u_input.a, u_input.c) >> (_wgslsmith_sub_vec3_u32(global3.a, vec3<u32>(30414u, 2846u, 1u)) % vec3<u32>(32u))));
    let var_0 = Struct_2(true, ~min(~_wgslsmith_mod_vec4_u32(vec4<u32>(8602u, 10869u, 79456u, 1u), vec4<u32>(56674u, u_input.b, 37297u, 4294967295u)), ~(vec4<u32>(u_input.b, 4294967295u, u_input.d, 15710u) >> (vec4<u32>(29511u, 3720u, 1u, 84489u) % vec4<u32>(32u)))), abs(u_input.c << (global3.a.x % 32u)), ~294u, u_input.b);
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1584f, global2.x));
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-564f, arg_0)), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)))))));
    var var_1 = abs(vec2<i32>(~(~select(-1i, u_input.a, false)), u_input.c));
    return firstLeadingBit(~u_input.c);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = firstLeadingBit(1u);
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~u_input.a, select(1i, u_input.c, true)), -countOneBits(u_input.c), func_3(_wgslsmith_f_op_f32(global2.x + 677f), vec2<bool>(true, true))), -select(vec3<i32>(-12534i, -25794i, -2147483647i), vec3<i32>(1i, u_input.c, -1i), vec3<bool>(true, true, true)) << (firstTrailingBit(max(vec3<u32>(0u, global3.a.x, global3.a.x), vec3<u32>(global3.a.x, arg_0, 136320u))) % vec3<u32>(32u))), ~((min(vec3<i32>(u_input.a, -5330i, u_input.a), vec3<i32>(-2147483647i, -1i, u_input.c)) & -vec3<i32>(u_input.c, -1i, -2147483647i)) >> (vec3<u32>(10310u >> (u_input.b % 32u), 1u, 1u) % vec3<u32>(32u))));
    var var_1 = global3.a;
    return global1[_wgslsmith_index_u32(4611u, 21u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec2<u32>(~31803u, arg_3.a.x);
    global0 = firstTrailingBit(~(~(-45351i)));
    var var_1 = vec4<bool>(false, all(select(select(vec2<bool>(true, arg_2), !vec2<bool>(true, arg_2), !vec2<bool>(arg_2, false)), vec2<bool>(false, all(vec4<bool>(false, arg_1, false, arg_1))), !(!vec2<bool>(false, arg_1)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-338f))) < global2.x), !((-27683i ^ u_input.c) == (2147483647i & u_input.c)) && !any(select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_1), vec2<bool>(false, arg_1))));
    let var_2 = vec4<u32>(arg_0.a.x, countOneBits(func_1(max(_wgslsmith_div_u32(4294967295u, u_input.b), 4294967295u), Struct_2(!arg_2, _wgslsmith_mod_vec4_u32(vec4<u32>(36210u, arg_3.a.x, 1u, 786u), vec4<u32>(arg_0.a.x, 0u, var_0.x, u_input.b)), -20176i, var_0.x & arg_0.a.x, func_1(4294967295u, Struct_2(true, vec4<u32>(134u, 30192u, 14867u, 0u), -918i, 38147u, var_0.x), 2147483647i, vec2<f32>(920f, global2.x))), firstLeadingBit(22097i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1285f, global2.x)) * vec2<f32>(global2.x, global2.x)))), global3.a.x, u_input.b);
    global3 = Struct_1(vec3<u32>(~global3.a.x, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.x & arg_0.a.x, firstLeadingBit(12687u)), var_0.x)));
    return Struct_2(true, vec4<u32>(func_2(_wgslsmith_dot_vec3_u32(arg_0.a, ~var_2.wwz), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1246f, -1405f)))).a.x, func_1(56829u, Struct_2(any(var_1.zww), _wgslsmith_sub_vec4_u32(var_2, vec4<u32>(0u, 1u, 41972u, 0u)), 92284i, 7540u, 1u), 4826i, vec2<f32>(_wgslsmith_f_op_f32(global2.x - -1065f), _wgslsmith_f_op_f32(global2.x * 176f))), ~firstTrailingBit(~4294967295u), arg_3.a.x), -u_input.a, global3.a.x, arg_0.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    global3 = func_2(select(global3.a.x, _wgslsmith_clamp_u32(0u, ~func_4(global1[_wgslsmith_index_u32(u_input.d, 21u)], true, arg_1.x, Struct_1(vec3<u32>(global3.a.x, arg_0.e, arg_0.d))).b.x, _wgslsmith_div_u32(~4759u, 78699u)), func_4(global1[_wgslsmith_index_u32(~62965u, 21u)], func_4(global1[_wgslsmith_index_u32(firstTrailingBit(37131u), 21u)], arg_1.x, arg_1.x, func_2(1u, arg_3.xy)).a, false, Struct_1(~vec3<u32>(global3.a.x, 4294967295u, 31166u))).a), vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.x - arg_3.x), -109f)))));
    let var_0 = _wgslsmith_clamp_i32(1i, 0i, ~arg_0.c << (u_input.b % 32u));
    let var_1 = 138f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_3.yxy)));
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(0u, global3.a.x) & u_input.d, arg_0.d, abs(_wgslsmith_mult_u32(0u, 92574u))) >> (func_2(arg_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, 907f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1647f) * arg_3.yw))).a % vec3<u32>(32u)));
    return i32(-1i) * -54255i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(579f * global2.x);
    global0 = func_5(func_4(func_2(~func_1(u_input.b, Struct_2(true, vec4<u32>(global3.a.x, 4294967295u, u_input.b, global3.a.x), u_input.a, 20286u, 0u), u_input.a, vec2<f32>(372f, global2.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-535f, global2.x), vec2<f32>(-145f, global2.x))), vec2<f32>(global2.x, -1128f)))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<bool>(true, any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), ((global3.a.x | _wgslsmith_sub_u32(1u, 0u)) & _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global3.a.x, 59653u, global3.a.x), vec4<u32>(u_input.b, 2598u, 61330u, u_input.d)), vec4<u32>(u_input.d, 4294967295u, 0u, 23796u) & vec4<u32>(4294967295u, global3.a.x, 21646u, u_input.d))) <= (u_input.d | 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1076f, global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1227f, 1177f, true)), _wgslsmith_div_f32(-1000f, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -1569f)) + vec4<f32>(-1699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + global2.x))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -705f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, -1035f), vec2<bool>(false, false)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1215f) + vec2<f32>(global2.x, global2.x)))))));
    var_0 = global2.x;
    var var_1 = func_4(func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.b), max(vec3<u32>(global3.a.x, u_input.d, 0u), vec3<u32>(global3.a.x, 14423u, global3.a.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, -176f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, global2.x)))))), !all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), any(vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)))), global1[_wgslsmith_index_u32(~u_input.d & ~1u, 21u)]);
    var_0 = _wgslsmith_div_f32(global2.x, 2102f);
    let var_2 = all(select(select(select(!vec2<bool>(var_1.a, true), !vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, true)), !(!vec2<bool>(var_1.a, false)), !select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, true), false)), !select(!vec2<bool>(var_1.a, true), !vec2<bool>(true, var_1.a), var_1.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(736f, global2.x))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-304f, -261f), vec2<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(global2.x * global2.x)))), vec2<bool>(var_2, select(var_1.a, false, var_1.a)))), vec4<i32>(13710i, var_1.c & 1i, ~1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_1.c, 2147483647i), vec3<i32>(-18022i, u_input.c, var_1.c))) << (var_1.b % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(114f, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1002f, global2.x, -267f)))) + vec3<f32>(135f, global2.x, _wgslsmith_f_op_f32(global2.x + -367f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(699f, -1000f, global2.x) - vec3<f32>(297f, 381f, global2.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -1445f, -320f), vec3<f32>(global2.x, 1000f, global2.x), true)), true))))));
}

