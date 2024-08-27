struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 26> = array<i32, 26>(1i, -47726i, 1i, -25441i, 2147483647i, 422i, -1i, 36514i, -35923i, -4972i, i32(-2147483648), -6902i, 2147483647i, -28235i, 1i, 2147483647i, 2147483647i, -1i, -20463i, 2154i, i32(-2147483648), 1758i, 1i, -1i, 24866i, 1i);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: u32) -> bool {
    global0 = Struct_2(global0.a, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(firstLeadingBit(arg_3), 26u)], 9876i) ^ firstLeadingBit(global1[_wgslsmith_index_u32(~1u, 26u)]), arg_0.x);
    let var_0 = global0.a;
    let var_1 = countOneBits(max(_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(49696u, 30568u), vec2<u32>(arg_3, 1u)), vec2<u32>(6416u, arg_3) << (_wgslsmith_add_vec2_u32(vec2<u32>(20852u, 63113u), vec2<u32>(48414u, 59492u)) % vec2<u32>(32u)), countOneBits(vec2<u32>(arg_3, 1u)) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), firstLeadingBit(max(select(vec2<u32>(arg_3, arg_3), vec2<u32>(arg_3, arg_3), arg_0.x), ~vec2<u32>(11990u, arg_3)))));
    var var_2 = _wgslsmith_div_i32(reverseBits(-(i32(-1i) * -59003i) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, 6651u, var_1.x), ~vec3<u32>(var_1.x, 0u, var_1.x)) % 32u)), 0i);
    var var_3 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_3, 98181u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 686u, 8476u), vec3<u32>(0u, 1u, var_1.x), vec3<u32>(var_1.x, var_1.x, 32863u)), reverseBits(vec3<u32>(arg_3, var_1.x, arg_3)))), ~_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(arg_3, 0u, var_1.x)), ~(~vec3<u32>(arg_3, 38610u, 12191u))), firstTrailingBit(~reverseBits(select(vec3<u32>(var_1.x, arg_3, var_1.x), vec3<u32>(var_1.x, 2893u, 51582u), var_0.a.zwz))));
    return arg_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_2 {
    global0 = Struct_2(global0.a, ~(-arg_3), true);
    var var_0 = Struct_1(global0.a.a);
    var var_1 = Struct_2(global0.a, _wgslsmith_clamp_i32(11899i | arg_3, 1i, u_input.b | -31355i), func_3(global0.a.a.wz, true, 1i, ~(~6826u)) | all(global0.a.a.yxz));
    var_1 = Struct_2(global0.a, 2147483647i, var_1.a.a.x && global2.x);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(trunc(-613f)), -956f, _wgslsmith_f_op_f32(f32(-1f) * -2250f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1226f, 1000f, -1000f, arg_0.x)), 4587i == var_1.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(993f, 524f, -386f, arg_0.x), vec4<f32>(1000f, arg_0.x, arg_0.x, -390f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-641f, 1570f, -288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f + -203f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1249f, _wgslsmith_f_op_f32(f32(-1f) * -1547f), _wgslsmith_f_op_f32(ceil(1000f)), -203f)))));
    return Struct_2(Struct_1(vec4<bool>(global0.b <= ~1i, any(vec3<bool>(global0.c, true, arg_2)), var_0.a.x, global2.x)), countOneBits(-_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, global1[_wgslsmith_index_u32(37790u, 26u)], 0i), vec3<i32>(-62204i, -18824i, u_input.c)), global0.b)), true);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    global1 = array<i32, 26>();
    var var_0 = arg_0.b;
    global1 = array<i32, 26>();
    global0 = arg_0;
    let var_1 = ~vec3<u32>(13307u, 56815u, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 18453u, 4294967295u, 1u), vec4<u32>(3900u, 33853u, 31274u, 25261u)), ~vec4<u32>(1u, 23773u, 44734u, 1u))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(522f, _wgslsmith_f_op_f32(sign(238f)), 1412f)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 646f) - -329f);
    var var_1 = ~(~_wgslsmith_sub_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(48275u, 21436u), vec2<u32>(846u, 62259u)), vec2<u32>(1u, 10776u), global2.x), ~countOneBits(vec2<u32>(14541u, 33846u))));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1973f, 354f) * vec3<f32>(-1000f, arg_1.x, 371f))))), global2.x, 1u >= _wgslsmith_sub_u32(select(~var_1.x, ~1u, true), 1u), -16508i ^ ~global1[_wgslsmith_index_u32(~1u, 26u)]).a;
    var_1 = ~(~reverseBits(vec2<u32>(var_1.x, 1u)));
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = Struct_2(func_5(Struct_2(global0.a, global0.b, select(true, !global0.a.a.x, all(vec2<bool>(true, global0.a.a.x)))), _wgslsmith_f_op_vec3_f32(func_4(func_2(_wgslsmith_f_op_vec3_f32(-arg_0), false, global0.a.a.x, global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), i32(-1i) * -2147483647i, all(!arg_1.a.wxz) || func_5(Struct_2(func_5(Struct_2(Struct_1(arg_2.a), u_input.b, false), vec3<f32>(760f, -1580f, -298f)), _wgslsmith_mult_i32(-1i, 26616i), true && arg_3.a.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0)))).a.x);
    global0 = func_2(arg_0, func_3(!arg_3.a.zz, !all(global0.a.a.wxw) || any(func_2(arg_0, arg_2.a.x, arg_1.a.x, global1[_wgslsmith_index_u32(0u, 26u)]).a.a.wzw), -1i, ~1u), !(!(!arg_3.a.x) | any(arg_1.a)), min(1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(-1419i), _wgslsmith_mult_i32(35468i, 37139i)), _wgslsmith_mod_i32(0i, u_input.a))));
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    var var_0 = _wgslsmith_div_vec4_i32(max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global0.b, 16165i, 1i), vec4<i32>(-1i, global1[_wgslsmith_index_u32(12372u, 26u)], u_input.c, global1[_wgslsmith_index_u32(0u, 26u)]), vec4<i32>(global1[_wgslsmith_index_u32(1u, 26u)], u_input.b, u_input.a, -2147483647i)), countOneBits(vec4<i32>(u_input.c, 25025i, -1i, u_input.c)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(1i, -1i, u_input.a, -38924i) | vec4<i32>(8299i, ~2147483647i, global0.b, -global0.b)) << (vec4<u32>(1u, _wgslsmith_mod_u32(~(~32576u), _wgslsmith_dot_vec2_u32(vec2<u32>(16308u, 1u), vec2<u32>(65059u, 92731u))), (firstTrailingBit(4294967295u) >> (min(7381u, 4294967295u) % 32u)) << (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(21479u, 4294967295u))) % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(16303u, 0u), vec2<u32>(40307u, 64145u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 75316u, 46387u), vec3<u32>(4126u, 1u, 0u), arg_2.a.yzy)))) % vec4<u32>(32u));
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_f32(arg_0.x * -283f) < _wgslsmith_f_op_f32(-arg_0.x), !global0.c, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, global1[_wgslsmith_index_u32(~(~1u) >> ((firstTrailingBit(0u) << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(70215u, 3004u, 4294967295u, 38967u), vec4<u32>(14838u, 3471u, 16968u, 21952u)), vec4<u32>(69138u, 96144u, 4069u, 1u)) % 32u)) % 32u), 26u)], false);
    global2 = vec2<bool>(global0.a.a.x, false || any(!(!vec4<bool>(global0.a.a.x, true, true, true))));
    var var_0 = global0.a.a;
    global0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1906f, -581f, 1888f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, -727f, 565f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(468f, 430f, -319f) - vec3<f32>(-656f, -395f, -552f)))))), Struct_1(vec4<bool>(true, false, true, global2.x)), Struct_1(select(global0.a.a, select(global0.a.a, !global0.a.a, global0.a.a), vec4<bool>(true, true, true, select(global2.x, true, false)))), global0.a);
    let var_1 = 76660u;
    var var_2 = !select(vec4<bool>(true, var_0.x, global0.c, !var_0.x), !func_5(Struct_2(global0.a, u_input.b, false), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(367f, 455f, -1078f)))).a, true);
    var var_3 = vec2<u32>(var_1, abs(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, -277f, 1f, 272f)), vec4<u32>(4294967295u, ~var_3.x, select(~0u, 4294967295u, true) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(8977u, 1u, var_1, var_3.x), vec4<u32>(43286u, var_3.x, 47021u, 97676u))), ~1u), 0u);
}

