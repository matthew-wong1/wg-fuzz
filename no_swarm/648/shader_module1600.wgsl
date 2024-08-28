struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(42011u, 66513u), vec2<u32>(57188u, 4294967295u), vec2<u32>(79264u, 3838u), vec2<u32>(1u, 31648u), vec2<u32>(5620u, 0u), vec2<u32>(4294967295u, 4141u), vec2<u32>(8553u, 56946u), vec2<u32>(70535u, 1u), vec2<u32>(12597u, 4294967295u), vec2<u32>(0u, 8689u), vec2<u32>(17884u, 24834u), vec2<u32>(42788u, 62511u), vec2<u32>(79923u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(110442u, 4294967295u), vec2<u32>(43038u, 1u), vec2<u32>(50358u, 97711u), vec2<u32>(1u, 162717u), vec2<u32>(0u, 14931u));

var<private> global1: f32;

var<private> global2: array<i32, 10>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(255f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.a.c + 2038f))), _wgslsmith_f_op_f32(1f - -602f)), vec4<f32>(1399f, _wgslsmith_f_op_f32(global3.a.b + -1000f), _wgslsmith_f_op_f32(-1484f - _wgslsmith_f_op_f32(abs(global3.c))), 1075f)), vec4<f32>(global3.e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.b) + -1352f)), global3.a.b), false));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 14938u, 24317u, global3.a.a), vec4<u32>(global3.e.a, 0u, global3.a.a, 0u))), vec4<u32>(u_input.d << (global3.e.a % 32u), _wgslsmith_mult_u32(u_input.d, u_input.b), ~0u, ~u_input.d) ^ ~(vec4<u32>(46312u, u_input.d, 0u, 24573u) ^ vec4<u32>(u_input.d, global3.a.a, 34918u, 4294967295u))), global3.a.c, _wgslsmith_div_f32(global3.c, var_0.x));
    let var_2 = vec2<bool>(global3.d, global3.d);
    var var_3 = Struct_3(Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1900f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1051f)), 1f, all(vec4<bool>(global3.d, global3.d, global3.d, var_2.x)))), -1559f))), vec2<f32>(var_0.x, 883f), _wgslsmith_f_op_f32(-1f), !all(vec2<bool>(-1185f != var_1.c, true || global3.d)), Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global3.e.a, 19u)]), 0u) | 73713u, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 533f) + -439f))));
    global2 = array<i32, 10>();
    return abs(min(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(29138u, 17575u)), global0[_wgslsmith_index_u32(~4294967295u, 19u)]), vec2<u32>(0u, _wgslsmith_mod_u32(global3.e.a, 31082u))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-165f, _wgslsmith_div_f32(989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + _wgslsmith_f_op_f32(round(-609f))))) + 909f);
    var var_0 = 28466i < u_input.a.x;
    return _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(163f - 502f) * 1f), arg_1.d)))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    global3 = Struct_3(Struct_2(_wgslsmith_mult_u32(u_input.d, 52926u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x - global3.b.x) + _wgslsmith_div_f32(-1000f, global3.e.c)), _wgslsmith_f_op_f32(step(1373f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(204f, -1000f, true))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(818f, _wgslsmith_div_f32(global3.c, -187f))) - vec2<f32>(-468f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b.x, global3.b.x))) - _wgslsmith_f_op_f32(func_4(Struct_5(63127i, func_3()), Struct_1(vec2<u32>(u_input.d, 0u), true, ~u_input.d, _wgslsmith_f_op_f32(abs(global3.c)), -60485i), Struct_4(any(vec3<bool>(global3.d, true, true)), Struct_3(Struct_2(37429u, -784f, global3.c), vec2<f32>(525f, global3.c), global3.c, global3.d, global3.a))))), !global3.d, global3.a);
    let var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, ~(~global3.a.a), 4294967295u), vec4<u32>(global3.e.a, ~firstTrailingBit(~global3.e.a), _wgslsmith_mod_u32(countOneBits(~global3.e.a), global3.a.a | 92097u), ~u_input.b));
    var var_1 = Struct_1(var_0.xx, global3.d, _wgslsmith_mult_u32(0u, ~min(~u_input.b, max(18683u, global3.a.a))), _wgslsmith_f_op_f32(sign(3234f)), _wgslsmith_add_i32(arg_0.x, firstLeadingBit(_wgslsmith_div_i32(-33763i, abs(global2[_wgslsmith_index_u32(u_input.b, 10u)])))));
    global3 = Struct_3(global3.a, global3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(70806i, vec2<u32>(4294967295u, var_1.c)), Struct_1(vec2<u32>(u_input.d, u_input.d), false, u_input.b, -136f, 0i), Struct_4(var_1.b, Struct_3(Struct_2(var_1.c, var_1.d, 148f), global3.b, global3.b.x, true, Struct_2(global3.a.a, global3.c, global3.c)))))), _wgslsmith_f_op_f32(-379f - _wgslsmith_f_op_f32(exp2(global3.e.b))))), !var_1.b | var_1.b, global3.a);
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(97783u, _wgslsmith_div_u32((global3.a.a ^ 1u) << (22317u % 32u), _wgslsmith_add_u32(u_input.d, 4294967295u))), ~(~select(var_0.x, select(97072u, 71562u, var_1.b), !global3.d)));
    return Struct_3(global3.e, _wgslsmith_f_op_vec2_f32(global3.b - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-965f + global3.c), _wgslsmith_f_op_f32(f32(-1f) * -612f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, -527f) - _wgslsmith_f_op_vec2_f32(-global3.b)))), _wgslsmith_f_op_f32(-global3.c), false, Struct_2(~4294967295u, 262f, -1095f));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = u_input.a.zx;
    let var_1 = Struct_4(true, func_2(abs(u_input.a)));
    let var_2 = var_1;
    let var_3 = Struct_5(firstTrailingBit(~_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), min(vec4<i32>(-16506i, 1i, 2147483647i, u_input.c), vec4<i32>(-51596i, global2[_wgslsmith_index_u32(global3.a.a, 10u)], 57016i, u_input.c)))), ~(vec2<u32>(countOneBits(45122u), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(var_1.b.e.a, 19u)], global0[_wgslsmith_index_u32(1u, 19u)])) | ~vec2<u32>(u_input.d, global3.a.a)));
    let var_4 = Struct_1(vec2<u32>(global3.e.a & var_2.b.e.a, max(var_3.b.x, 1u)), select((_wgslsmith_f_op_f32(306f - var_1.b.b.x) >= var_1.b.a.b) && func_2(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(global2[_wgslsmith_index_u32(var_1.b.e.a, 10u)], var_0.x, u_input.c, u_input.a.x))).d, true, any(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_2.a, false), select(vec3<bool>(global3.d, false, var_2.b.d), vec3<bool>(var_1.b.d, true, global3.d), vec3<bool>(true, global3.d, var_1.b.d))))), ~(~(~firstTrailingBit(var_2.b.e.a))), global3.b.x, u_input.c);
    return _wgslsmith_div_f32(-1365f, var_4.d);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_5, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_4(all(!(!(!vec2<bool>(global3.d, arg_0.b)))), func_2(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.e, arg_0.e), vec2<i32>(1i, 2147483647i)), arg_3 >> (arg_2.b % vec2<u32>(32u))), i32(-1i) * -u_input.a.x, 22844i, reverseBits(~(-53171i)))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -566f);
    var var_1 = Struct_2(_wgslsmith_clamp_u32(~(arg_0.c & 1u), _wgslsmith_sub_u32(60325u, ~(var_0.b.a.a & global3.a.a)), arg_2.b.x), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.b.x)) + _wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(f32(-1f) * -174f)))));
    var_1 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(22867u, select(1u << (global3.e.a % 32u), ~var_1.a, all(vec2<bool>(false, arg_0.b))), 16229u), ~vec3<u32>(0u, var_0.b.e.a, 1u)), _wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_f_op_f32(abs(global3.c)));
    let var_2 = arg_2;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(vec2<u32>(u_input.d, u_input.b | 1u), global3.e.c < 1f, 1u, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(477f, global3.e.c, global3.c, -884f))), _wgslsmith_f_op_f32(-global3.e.b)))), u_input.a.x), -713f, Struct_5(_wgslsmith_mod_i32((global2[_wgslsmith_index_u32(4294967295u, 10u)] ^ 0i) ^ global2[_wgslsmith_index_u32(reverseBits(global3.e.a), 10u)], global2[_wgslsmith_index_u32(~(global3.e.a >> (global3.a.a % 32u)), 10u)]), vec2<u32>(min(~49680u, ~0u), 0u)), abs(countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(u_input.d & u_input.d, 10u)], global2[_wgslsmith_index_u32(u_input.d, 10u)]))));
    global1 = _wgslsmith_f_op_f32(1018f * -1421f);
    let var_1 = Struct_5(reverseBits(-24703i << (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b, global3.a.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, global3.a.a, 0u), vec3<u32>(12372u, u_input.b, u_input.d))) % 32u)), _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~var_0.b.a.a, 1u)), 19u)], global0[_wgslsmith_index_u32(global3.e.a, 19u)]));
    global3 = Struct_3(func_2(-select(vec4<i32>(-40940i, 1i, -23484i, -40071i), u_input.a, vec4<bool>(global3.d, false, false, global3.d)) ^ select(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.d, 10u)], global2[_wgslsmith_index_u32(var_1.b.x, 10u)], 1602i, -2941i), abs(vec4<i32>(-2147483647i, 52127i, -2147483647i, 29670i)), false & var_0.b.d)).a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.b - var_0.b.b), var_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(456f)))), true || global3.d, func_5(Struct_1(~select(var_1.b, vec2<u32>(24218u, 4294967295u), true), true, _wgslsmith_div_u32(7058u, global3.a.a), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_0.b.a.b)), _wgslsmith_mult_i32(~var_1.a, _wgslsmith_div_i32(u_input.c, u_input.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-720f, _wgslsmith_f_op_f32(var_0.b.b.x - global3.e.b))))), Struct_5(-1i, countOneBits(global0[_wgslsmith_index_u32(var_0.b.a.a, 19u)]) ^ min(vec2<u32>(u_input.d, var_0.b.e.a), global0[_wgslsmith_index_u32(u_input.b, 19u)])), u_input.a.yy).b.e);
    let var_2 = u_input.b;
    var var_3 = max(u_input.a.xxw, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, -388i), -u_input.a.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 1u, 1u), 10u)]), u_input.a.wyx | abs(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 10u)], u_input.a.x))) & u_input.a.wyy);
    var var_4 = Struct_4(true, var_0.b);
    global3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-939f, _wgslsmith_f_op_f32(global3.e.b - var_4.b.c), true)))), 799f)), _wgslsmith_mult_i32(var_1.a, var_3.x) | ~select(_wgslsmith_clamp_i32(var_1.a, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(var_0.b.e.a, 10u)]), -71337i, false), ~func_5(Struct_1(var_1.b, global3.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.b.a.a, 14002u), vec3<u32>(var_2, 0u, var_4.b.e.a)), _wgslsmith_f_op_f32(f32(-1f) * -1159f), 0i), -388f, var_1, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.x, 0i), reverseBits(var_3.xz), vec2<i32>(55570i, u_input.c))).b.a.a, -1870f);
}

