struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 8>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    global1 = array<bool, 8>();
    var var_0 = Struct_1(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) + _wgslsmith_f_op_vec3_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(-arg_1.b))), arg_0.c, vec4<u32>(arg_0.d.x, 51988u, arg_1.d.x, abs(firstTrailingBit(4294967295u) | _wgslsmith_add_u32(4294967295u, arg_1.d.x))), _wgslsmith_f_op_f32(arg_1.b.x * 1588f) == 1111f);
    let var_1 = true | all(vec4<bool>((arg_1.b.x != 1000f) != false, any(select(arg_2, vec4<bool>(arg_1.c, true, true, global0.x), arg_2)), global0.x, !global0.x));
    let var_2 = var_0.a;
    return arg_0.a | select(arg_0.a, abs(min(arg_0.a, ~arg_1.a)), (0u <= (var_0.d.x ^ 470u)) & arg_2.x);
}

fn func_2() -> vec3<i32> {
    global0 = !vec3<bool>(false, true, global1[_wgslsmith_index_u32(4217u, 8u)]);
    let var_0 = !global0.yy;
    global0 = !(!select(vec3<bool>(false, all(global0.xx), true && global0.x), vec3<bool>(true, !global1[_wgslsmith_index_u32(4294967295u, 8u)], all(vec3<bool>(true, false, true))), true));
    let var_1 = 57859u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1092f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2075f)))))));
    return _wgslsmith_sub_vec3_i32(~vec3<i32>(countOneBits(-29860i), func_3(Struct_1(u_input.a.x, vec3<f32>(var_2, var_2, var_2), var_0.x, vec4<u32>(var_1, 1u, 4294967295u, 9985u), global1[_wgslsmith_index_u32(0u, 8u)]), Struct_1(2147483647i, vec3<f32>(var_2, var_2, var_2), false, vec4<u32>(63154u, var_1, 0u, var_1), true), vec4<bool>(global1[_wgslsmith_index_u32(var_1, 8u)], true, false, var_0.x)) & _wgslsmith_sub_i32(-1i, 2147483647i), max(-33053i, 2147483647i) ^ u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, ~11997i), ~(~vec3<i32>(-40003i, u_input.a.x, -3418i))) << (select(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, var_1), vec3<u32>(4294967295u, 22407u, var_1)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_1, 4226u, var_1)), _wgslsmith_add_vec3_u32(vec3<u32>(var_1, var_1, var_1), vec3<u32>(var_1, 17690u, var_1))), !select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(var_1, 8u)], false), vec3<bool>(global0.x, global1[_wgslsmith_index_u32(55600u, 8u)], global1[_wgslsmith_index_u32(83102u, 8u)]))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !any(arg_0.b);
    return Struct_1(_wgslsmith_mult_i32(-2210i, 1i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-1480f, _wgslsmith_f_op_f32(ceil(753f)))), arg_3.b.x, _wgslsmith_f_op_f32(min(arg_0.c.b.x, -102f))))), global0.x, abs(arg_0.c.d >> (~_wgslsmith_clamp_vec4_u32(arg_3.d, vec4<u32>(0u, arg_0.c.d.x, arg_3.d.x, 0u), arg_3.d) % vec4<u32>(32u))), any(select(arg_0.b.yy, global0.yy, false | select(global0.x, true, false))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = func_4(Struct_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 1i), func_2()), vec4<bool>(all(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(53035u, 8u)])), true, (true != global0.x) & true, global1[_wgslsmith_index_u32(abs(96172u), 8u)]), Struct_1(firstTrailingBit(~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2247f, 672f, arg_0.x) * arg_0)), !all(global0.xy), _wgslsmith_clamp_vec4_u32(~vec4<u32>(11456u, 51980u, 88764u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), !global1[_wgslsmith_index_u32(1u, 8u)]), ~_wgslsmith_mult_u32(1u, ~1u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)), 1335f)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mult_u32(0u, 0u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(16491u, 8342u, 4294967295u), vec3<u32>(0u, 1u, 86095u))), vec4<u32>(abs(34182u), 4294967295u, ~4294967295u, ~18651u)), 885f, Struct_1(1i ^ u_input.a.x, vec3<f32>(-1015f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(181f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1030f))), !global0.x, ~vec4<u32>(_wgslsmith_div_u32(90561u, 4294967295u), ~13624u, ~0u, reverseBits(16239u)), select(global1[_wgslsmith_index_u32(~(~0u), 8u)], global0.x, false)));
    global1 = array<bool, 8>();
    let var_1 = vec3<i32>(max(min(u_input.a.x, _wgslsmith_add_i32(abs(u_input.a.x), var_0.a)), var_0.a), var_0.a, -u_input.a.x);
    var var_2 = Struct_2(var_1, vec4<bool>(var_0.c, true, !(!all(global0.yy)), select(all(!vec4<bool>(var_0.c, false, true, var_0.c)), true, !all(vec3<bool>(false, true, global0.x)))), Struct_1(var_1.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1583f, _wgslsmith_f_op_f32(min(-307f, arg_0.x)), _wgslsmith_f_op_f32(trunc(-2147f))))), global0.x, var_0.d, !(!(!global0.x))), 4294967295u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-711f, 2859f, var_0.b.x))))))));
    let var_3 = func_3(func_4(Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -56469i, 2147483647i), vec3<i32>(-1i, var_0.a, u_input.a.x), var_2.a), vec4<bool>(any(var_2.b.wxx), true | var_0.c, true, true), func_4(Struct_2(var_1, vec4<bool>(global1[_wgslsmith_index_u32(var_2.d, 8u)], false, var_0.c, var_0.e), var_2.c, 62909u, vec3<f32>(arg_0.x, -1508f, arg_0.x)), var_0.d.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), var_2.c), 70845u, arg_0), _wgslsmith_mod_u32(firstTrailingBit(~var_2.c.d.x), var_2.d), arg_0.x, var_0), Struct_1(2147483647i, arg_0, true, min(func_4(Struct_2(var_1, vec4<bool>(true, global0.x, global1[_wgslsmith_index_u32(53133u, 8u)], true), var_2.c, 55243u, vec3<f32>(var_2.c.b.x, 681f, var_0.b.x)), firstLeadingBit(var_2.c.d.x), -1000f, Struct_1(-16318i, var_2.e, var_2.c.c, var_2.c.d, false)).d, ~(~var_0.d)), false), !var_2.b);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 8>();
    var var_0 = !global0.x;
    var var_1 = global1[_wgslsmith_index_u32(abs(~func_1(vec3<f32>(1657f, -123f, -224f))) >> (0u % 32u), 8u)];
    var_1 = global0.x;
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~113414u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -668f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -1349f))))), func_4(Struct_2(select(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(u_input.a.x, var_2, 2147483647i)), vec3<i32>(1i, -1i, -26983i), !vec3<bool>(global0.x, true, global0.x)), select(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(false, true, global0.x, global0.x), global1[_wgslsmith_index_u32(1u, 8u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(23581u, 8u)], true, global0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 8u)], true, global0.x), global1[_wgslsmith_index_u32(4294967295u, 8u)]), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(13047u, 8u)]), true)), Struct_1(-1i, vec3<f32>(1f, 1f, 1f), false, vec4<u32>(72998u, 1u, 44688u, 32902u), false), ~0u >> (1u % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(114f, 714f, 1050f)))), ~countOneBits(38505u), -1104f, func_4(Struct_2(-vec3<i32>(u_input.a.x, var_2, u_input.a.x), select(vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(0u, 8u)], global0.x), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(22498u, 8u)], false, global0.x), global0.x), func_4(Struct_2(vec3<i32>(var_2, var_2, var_2), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(18453u, 8u)]), Struct_1(var_2, vec3<f32>(1044f, -422f, -549f), false, vec4<u32>(1u, 71827u, 63162u, 0u), global0.x), 27096u, vec3<f32>(-508f, 876f, 492f)), 4294967295u, 145f, Struct_1(u_input.a.x, vec3<f32>(-624f, -1271f, -1628f), false, vec4<u32>(1u, 4294967295u, 21913u, 1u), global0.x)), 1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(781f, 457f, -943f) - vec3<f32>(-563f, 300f, 986f))), _wgslsmith_dot_vec3_u32(vec3<u32>(27378u, 1u, 4294967295u), ~vec3<u32>(1038u, 10822u, 1634u)), _wgslsmith_f_op_f32(-func_4(Struct_2(vec3<i32>(-28087i, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, true), Struct_1(1i, vec3<f32>(652f, 1125f, 311f), global0.x, vec4<u32>(0u, 42694u, 47313u, 11516u), global0.x), 17053u, vec3<f32>(534f, 1173f, -1123f)), 1u, 1825f, Struct_1(-1i, vec3<f32>(227f, 1000f, 497f), global0.x, vec4<u32>(72529u, 4294967295u, 1u, 0u), false)).b.x), Struct_1(_wgslsmith_add_i32(u_input.a.x, var_2), vec3<f32>(1584f, -1000f, 282f), global0.x, vec4<u32>(44558u, 0u, 3519u, 4294967295u), true))).d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-250f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -946f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(669f, -1133f, 1530f) + vec3<f32>(-2020f, 1282f, -155f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -514f, 1488f) - func_4(Struct_2(vec3<i32>(-20953i, var_2, 4124i), vec4<bool>(global0.x, false, true, false), Struct_1(u_input.a.x, vec3<f32>(549f, 570f, 412f), true, vec4<u32>(0u, 0u, 54385u, 35923u), true), 63300u, vec3<f32>(-591f, 1000f, -498f)), 4294967295u, -1040f, Struct_1(u_input.a.x, vec3<f32>(-1565f, -397f, -653f), false, vec4<u32>(4294967295u, 19527u, 42706u, 77996u), false)).b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(655f, -1118f, -1071f))))));
}

