struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 1> = array<f32, 1>(1350f);

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 19>;

var<private> global4: array<bool, 5>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(~arg_1, 1i), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(56719i, arg_1, -20102i, -1i), vec4<i32>(-12579i, -6192i, -12419i, u_input.a.x))) >> (vec2<u32>(~1u, _wgslsmith_add_u32(0u, 1u)) % vec2<u32>(32u)));
    var var_1 = Struct_1(arg_2.yz);
    var var_2 = Struct_1(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-global0.a.x)));
    global1 = array<f32, 1>();
    var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(34071u, 1u)], var_1.a.x))), _wgslsmith_f_op_vec2_f32(select(var_1.a, var_2.a, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(51752u, 1u)], 647f)) >= _wgslsmith_f_op_f32(1487f - 741f)))));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<f32, 1>();
    var var_0 = vec2<i32>(~(2147483647i << (select(func_3(-735f, u_input.a.x, vec4<f32>(-1000f, arg_0.a.x, arg_1.a.x, arg_0.a.x)), _wgslsmith_div_u32(4294967295u, 69341u), true) % 32u)), ~(-_wgslsmith_mod_i32(-2147483647i, 10557i) | u_input.a.x));
    global4 = array<bool, 5>();
    global4 = array<bool, 5>();
    var var_1 = vec3<i32>(-52338i, 26508i, -39641i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(20212u, 4294967295u), vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(8471u, 79442u), vec2<u32>(74102u, 3956u)), countOneBits(vec2<u32>(0u, 0u)))) % 32u));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.a.x, min(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-14714i, 1142i, u_input.a.x), vec3<i32>(-31791i, -2147483647i, 2147483647i)) | (u_input.a.x ^ u_input.a.x)), ~2147483647i), u_input.a.x);
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a)), func_2(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global1[_wgslsmith_index_u32(arg_2, 1u)]) + arg_0.a)))));
    var_0 = vec3<i32>(46160i & countOneBits(_wgslsmith_mult_i32(~u_input.a.x, 71202i)), 1i, u_input.a.x);
    var var_2 = vec3<bool>(true, !(-1i <= countOneBits(~u_input.a.x)), _wgslsmith_mod_i32(-36805i, var_0.x) <= 0i);
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(select(~arg_2, ~99440u, all(vec4<bool>(false, false, arg_1, true)))), arg_2, _wgslsmith_clamp_u32(~arg_2 & 74038u, select(abs(arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, 81761u, arg_2), vec4<u32>(22664u, 31350u, arg_2, 14858u)), true), 0u), 4294967295u), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 59767u, 31957u, arg_2), select(vec4<u32>(70879u, 6629u, arg_2, arg_2), vec4<u32>(0u, 16378u, arg_2, 1u), false))) ^ vec4<u32>(_wgslsmith_add_u32(arg_2, arg_2), ~_wgslsmith_sub_u32(arg_2, arg_2), reverseBits(max(4294967295u, arg_2)), arg_2));
    return func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-826f, global1[_wgslsmith_index_u32(0u, 1u)])))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.x, -1874f), vec2<f32>(822f, -160f))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(162f, global0.a.x) + vec2<f32>(global1[_wgslsmith_index_u32(arg_2, 1u)], arg_0.a.x))), _wgslsmith_f_op_vec2_f32(arg_0.a + arg_0.a), all(select(vec4<bool>(true, var_2.x, arg_1, arg_1), vec4<bool>(global4[_wgslsmith_index_u32(arg_2, 5u)], arg_1, var_2.x, var_2.x), true))))));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    global1 = array<f32, 1>();
    let var_0 = vec3<bool>(true && !any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global4[_wgslsmith_index_u32(0u, 5u)], false))), true, false | global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u >> (0u % 32u), 31110u, ~func_3(-322f, u_input.a.x, vec4<f32>(-1651f, global0.a.x, arg_0.a.x, -1224f))), 5u)]);
    let var_1 = vec2<u32>(4294967295u, 20073u);
    global0 = Struct_1(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) * _wgslsmith_f_op_vec2_f32(global0.a + global0.a))), arg_0).a);
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(-1477f, global0.a.x))))))), false, var_1.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = 1298f;
    global0 = arg_0;
    global0 = arg_2;
    var var_1 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_3, max(u_input.a.x, min(0i, u_input.a.x)), 2913i), _wgslsmith_clamp_i32(arg_3, ~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x)));
    global2 = _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(~(~1u), firstTrailingBit(~19079u)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a.x, arg_1.a.x))), arg_1.a, select(vec2<bool>(false, false), vec2<bool>(false, global4[_wgslsmith_index_u32(0u, 5u)]), false)))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, 175f) + vec2<f32>(-327f, arg_2.a.x))), arg_1).a)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(Struct_1(_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -1701f)))), Struct_1(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_2(Struct_1(vec2<f32>(-745f, global1[_wgslsmith_index_u32(0u, 1u)])), Struct_1(global0.a)), true, 18935u)))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -554f) * vec2<f32>(2136f, -1318f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(18018u, 1u)]), vec2<f32>(559f, global0.a.x))), vec2<f32>(1446f, -180f)))), u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(func_2(Struct_1(vec2<f32>(545f, global0.a.x)), Struct_1(vec2<f32>(561f, -1050f))), Struct_1(global0.a)).a) * vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 11583u), 1u)] - _wgslsmith_f_op_f32(f32(-1f) * -229f)), -1287f)));
    let var_2 = 713f;
    global0 = func_2(var_1, func_6(var_1, Struct_1(vec2<f32>(-200f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(957u, 1u)])))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.a, var_0.a)))), ~(-15876i)));
    var var_3 = var_1;
    return var_1;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, func_6(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(840f, global1[_wgslsmith_index_u32(18711u, 1u)]) - arg_0.a)), Struct_1(global0.a), firstLeadingBit(-u_input.a.x)).a.x), -1325f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] * -421f)), -1235f)));
    var var_1 = false;
    global0 = func_1();
    global4 = array<bool, 5>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 5>();
    var var_0 = func_7(func_1(), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, global4[_wgslsmith_index_u32(1u, 5u)]), false), vec3<bool>(global4[_wgslsmith_index_u32(29985u, 5u)], true, false), vec3<bool>(global4[_wgslsmith_index_u32(40470u, 5u)], true, true))));
    var var_1 = max(~_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, -33863i), min(vec4<i32>(26325i, u_input.a.x, 49516i, -11584i), vec4<i32>(u_input.a.x, -43625i, -5802i, u_input.a.x))) ^ vec4<i32>(~(~u_input.a.x), 0i, -min(2147483647i, 72329i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))), vec4<i32>(_wgslsmith_add_i32(-36505i & u_input.a.x, _wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, u_input.a.x)), i32(-1i) * -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, 1i));
    var var_2 = _wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, 681f))) - _wgslsmith_f_op_vec2_f32(max(var_0.a, global0.a)))) - var_0.a));
    var var_4 = select(vec4<bool>(global4[_wgslsmith_index_u32((select(4294967295u, 4294967295u, global4[_wgslsmith_index_u32(1u, 5u)]) | ~0u) & 38830u, 5u)], all(!select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 5u)], false, false), vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 5u)], false), vec3<bool>(false, global4[_wgslsmith_index_u32(11356u, 5u)], false))), all(!(!vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(1u, 5u)]))), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~7742u, 1u), ~_wgslsmith_sub_u32(2455u, 1u)), 5u)]), vec4<bool>(global4[_wgslsmith_index_u32(~0u, 5u)], global4[_wgslsmith_index_u32(~(~(~1u)), 5u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(36695u, 65255u), 5u)], _wgslsmith_mod_i32(-var_1.x, var_1.x) > u_input.a.x), true);
    var var_5 = func_7(Struct_1(_wgslsmith_f_op_vec2_f32(-func_6(Struct_1(global0.a), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(1u, 1u)], var_3.a.x)), func_6(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global0.a.x)), Struct_1(global0.a), Struct_1(global0.a), u_input.a.x), u_input.a.x << (7153u % 32u)).a)), var_4.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(min(~vec4<u32>(47296u, 43868u, 0u, 45219u), firstTrailingBit(vec4<u32>(43026u, 2997u, 0u, 4294967295u)))), select(firstLeadingBit(abs(vec3<i32>(var_1.x, u_input.a.x, u_input.a.x))) | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 56041i), vec3<i32>(var_1.x, var_1.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, -29730i), var_1.wzx), 1i), _wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, 2147483647i, -1i), _wgslsmith_sub_vec3_i32(var_1.zwy, var_1.xxx)), vec3<bool>(!global4[_wgslsmith_index_u32(4294967295u, 5u)], var_4.x, u_input.a.x <= u_input.a.x)), _wgslsmith_dot_vec3_i32(countOneBits(countOneBits(_wgslsmith_mult_vec3_i32(var_1.wxy, vec3<i32>(u_input.a.x, var_1.x, var_1.x)))), vec3<i32>(var_1.x ^ u_input.a.x, min(0i, u_input.a.x), -12397i) | ~(~vec3<i32>(1i, var_1.x, -6057i))));
}

