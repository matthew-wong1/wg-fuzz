struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: array<bool, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global1 = array<bool, 23>();
    var var_0 = !select(!select(vec2<bool>(false, false), !vec2<bool>(global1[_wgslsmith_index_u32(29407u, 23u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 23u)])), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 23u)]), global1[_wgslsmith_index_u32(9910u, 23u)]);
    var var_1 = Struct_2(!(!vec4<bool>(true != var_0.x, all(vec2<bool>(true, true)), !var_0.x, any(vec2<bool>(true, false)))), Struct_1(~vec3<u32>(0u, firstTrailingBit(u_input.a.x), ~u_input.a.x), ~vec2<i32>(1i, 1i), _wgslsmith_div_f32(-257f, -1229f), ~(-vec2<i32>(1i, 1i))), _wgslsmith_add_u32(1u, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 56264u), ~u_input.a.x)), vec4<f32>(606f, _wgslsmith_f_op_f32(-1694f + -457f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -445f))), 1692f));
    global1 = array<bool, 23>();
    var var_2 = ~vec3<u32>(var_1.c, 4294967295u, ~47422u);
    return false;
}

fn func_2() -> Struct_2 {
    global1 = array<bool, 23>();
    var var_0 = select(select(select(vec2<bool>(true, !global1[_wgslsmith_index_u32(2752u, 23u)]), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false)), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), !vec2<bool>(global1[_wgslsmith_index_u32(42825u ^ u_input.a.x, 23u)], !global1[_wgslsmith_index_u32(1u, 23u)]), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]))), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), !select(!select(vec2<bool>(global1[_wgslsmith_index_u32(70819u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], false), vec2<bool>(true, true), true), true));
    var_0 = !vec2<bool>(~countOneBits(121950u) > _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(15992u, u_input.a.x), u_input.a.yy), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), !func_3());
    var_0 = select(!select(select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], var_0.x), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec2<bool>(true, true)), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(59546u, u_input.a.x), 23u)], true), func_3()), vec2<bool>(true, !all(vec2<bool>(global1[_wgslsmith_index_u32(66488u, 23u)], true))), var_0.x);
    var var_1 = Struct_4(307f);
    return Struct_2(!select(!select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 23u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], var_0.x, false, global1[_wgslsmith_index_u32(0u, 23u)])), vec4<bool>(false, global1[_wgslsmith_index_u32(~67873u, 23u)], true, all(vec2<bool>(global1[_wgslsmith_index_u32(14433u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))), (u_input.a.x >= 15233u) && global1[_wgslsmith_index_u32(~u_input.a.x, 23u)]), Struct_1(u_input.a, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 41219i), vec2<i32>(-1i, 2147483647i)), ~vec2<i32>(-1i, 1i)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(619f, _wgslsmith_f_op_f32(round(1443f)), global1[_wgslsmith_index_u32(~u_input.a.x, 23u)])) + var_1.a), reverseBits(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(1i, -2147483647i)), ~vec2<i32>(-12480i, 2147483647i)))), ~(abs(u_input.a.x) << (0u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-144f, var_1.a, _wgslsmith_f_op_f32(-var_1.a), -532f)))));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = func_2();
    let var_2 = Struct_4(var_1.b.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(221f)), var_2.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-952f - var_1.b.c) + var_1.b.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + 979f), 305f, all(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false, true, false)))))));
    var var_4 = _wgslsmith_add_i32(max(var_1.b.b.x, _wgslsmith_mult_i32(countOneBits(~var_1.b.d.x), ~2147483647i)), countOneBits(-22719i));
    return var_1.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    var var_0 = ~(~(~firstTrailingBit(func_2().b.a)));
    var var_1 = -574f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-607f, -369f, 119f))), vec3<f32>(-1256f, arg_0.c, 1765f), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 23u)], false, global1[_wgslsmith_index_u32(1u, 23u)]))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(exp2(arg_0.c)), _wgslsmith_f_op_f32(-339f + arg_0.c))))));
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 10>();
    var var_0 = func_4(Struct_1(abs(func_1(u_input.a.x)), ~max(vec2<i32>(2147483647i, -33226i), vec2<i32>(-2147483647i, 0i)), _wgslsmith_f_op_f32(max(400f, -1000f)), vec2<i32>(1i, abs(0i))), !(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 23u)], true))), 134419u, vec4<u32>(min(u_input.a.x, 0u), u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, 62843u, 45587u) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 38066u), select(vec4<u32>(u_input.a.x, u_input.a.x, 21951u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])))) | _wgslsmith_mult_i32(func_4(Struct_1(u_input.a, vec2<i32>(31136i, -2147483647i), 1544f, vec2<i32>(-1i, 15283i)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true, global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), u_input.a.x & 49347u, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 15030u), vec4<u32>(1u, 1u, u_input.a.x, 78462u))) ^ (-1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(0u, 0u)) % 32u)), 23781i);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-174f)))))))));
    global0 = array<vec2<u32>, 10>();
    var_0 = ~(-56830i);
    let var_2 = Struct_2(select(vec4<bool>(select(global1[_wgslsmith_index_u32(min(1u, 15108u), 23u)], global1[_wgslsmith_index_u32(firstLeadingBit(1u), 23u)], global1[_wgslsmith_index_u32(0u, 23u)] && true), true, global1[_wgslsmith_index_u32(0u, 23u)] & !global1[_wgslsmith_index_u32(u_input.a.x, 23u)], !select(true, global1[_wgslsmith_index_u32(1u, 23u)], true)), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(9744u, 23u)], false, global1[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global1[_wgslsmith_index_u32(1u, 23u)]), true), vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(16586u, 23u)], global1[_wgslsmith_index_u32(11546u, 23u)], true, true)), select(!vec4<bool>(global1[_wgslsmith_index_u32(21307u, 23u)], false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(4784u, 23u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(10226u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec4<bool>(func_2().a.x, !global1[_wgslsmith_index_u32(58636u, 23u)], true, global1[_wgslsmith_index_u32(~10880u, 23u)])), all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 23u)]))), func_2().b, 0u, _wgslsmith_f_op_vec4_f32(-func_2().d));
    let x = u_input.a;
    s_output = StorageBuffer(-905f);
}

