struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<i32, 25> = array<i32, 25>(2147483647i, 9145i, 6584i, i32(-2147483648), 18093i, -47710i, i32(-2147483648), 45710i, 26662i, 1i, 0i, -8803i, 2756i, -1i, -19312i, i32(-2147483648), 1i, -32778i, 27869i, 20941i, 1i, 1i, 0i, -1i, 5992i);

var<private> global2: f32;

var<private> global3: f32 = 232f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(global1[_wgslsmith_index_u32(1567u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], -26486i, -1i), -u_input.a, vec4<bool>(true, true, true, 38219i < u_input.a.x)), vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 1i)), vec3<i32>(u_input.a.x, 69446i, global1[_wgslsmith_index_u32(0u, 25u)])), global1[_wgslsmith_index_u32(countOneBits(109318u) << (select(u_input.b.x, u_input.b.x, false) % 32u), 25u)])), global1[_wgslsmith_index_u32(u_input.b.x, 25u)]);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0));
    global0 = array<Struct_1, 29>();
    global2 = arg_0;
    let var_1 = Struct_3(-43667i, Struct_1(firstLeadingBit(1i), vec3<u32>(u_input.b.x, ~u_input.b.x, ~u_input.b.x)));
    return select(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(var_1.b.b.x, 15604u)), u_input.b.x), ~_wgslsmith_mod_u32(u_input.b.x | 52770u, ~50449u)), false | !(!any(vec4<bool>(false, true, false, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_3(max(55544i, arg_0.x), Struct_1(_wgslsmith_div_i32(arg_0.x, -(i32(-1i) * -2147483647i)), _wgslsmith_div_vec3_u32(~select(vec3<u32>(arg_2.x, 21231u, arg_2.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<bool>(false, false, false)), _wgslsmith_div_vec3_u32(vec3<u32>(65045u, u_input.b.x, 4294967295u), vec3<u32>(1u, arg_2.x, 0u)))));
    global3 = -944f;
    var var_1 = var_0.b;
    var_0 = Struct_3(global1[_wgslsmith_index_u32(var_0.b.b.x, 25u)], global0[_wgslsmith_index_u32(var_1.b.x, 29u)]);
    global0 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(132f * arg_1.x)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.a.yz, vec4<f32>(-320f, 2474f, _wgslsmith_f_op_f32(1000f - -1736f), _wgslsmith_f_op_f32(ceil(-544f))), ~vec4<u32>(1u, u_input.b.x, 1u, func_3(-1000f)))));
    var var_1 = Struct_3(abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, countOneBits(~u_input.b.x)), 25u)]), Struct_1(33382i, u_input.b));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(664f * _wgslsmith_f_op_f32(-var_0)))));
    global0 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(375f, 1656f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(var_0, -536f)), -1554f))));
    return Struct_1(global1[_wgslsmith_index_u32(12476u, 25u)], _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, var_1.b.b.x, 45243u), ~vec3<u32>(3775u, u_input.b.x, 25137u)), vec3<u32>(u_input.b.x, ~func_3(-1000f), _wgslsmith_mod_u32(abs(70004u), var_1.b.b.x))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a | (((-25777i ^ arg_1.b.a) << (min(22947u, u_input.b.x) % 32u)) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.b.a, 53922i, 0i), _wgslsmith_clamp_vec3_i32(u_input.a.xwx, vec3<i32>(-29047i, u_input.a.x, -14696i), u_input.a.yyz))), arg_0);
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = Struct_2(func_2(), func_2(), arg_2.a, !(!(!(!vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x)))));
    let var_3 = ~(~_wgslsmith_div_vec2_u32(min(~vec2<u32>(1u, 1u), ~var_2.a.b.xx), arg_2.b.xz));
    return var_2.b;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    global3 = arg_1;
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, arg_1, -728f, -302f) * vec4<f32>(-536f, arg_1, 1100f, arg_1))))) * vec4<f32>(-1279f, -949f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_div_f32(-1612f, _wgslsmith_f_op_f32(-arg_1))))));
    let var_2 = Struct_2(arg_0, func_2(), ~(~(-29148i)), vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(arg_3, true), vec2<bool>(false, false)), vec2<bool>(true, arg_3), select(vec2<bool>(true, true), vec2<bool>(arg_3, false), arg_3))), all(vec2<bool>(true, true)), true, all(select(!vec3<bool>(arg_3, arg_3, arg_3), select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, false, arg_3), true), any(vec2<bool>(arg_3, false))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 - var_1)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(924f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-1427f))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(arg_1)), var_1.x, var_1.x))));
    return Struct_1(arg_2.x, u_input.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = ~firstTrailingBit(45595u) << (~_wgslsmith_clamp_u32(u_input.b.x >> (13087u % 32u), u_input.b.x, firstLeadingBit(u_input.b.x) & 1u) % 32u);
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -(~arg_1.x)), arg_1), vec3<u32>(_wgslsmith_mod_u32(max(_wgslsmith_mod_u32(var_0, 1255u), _wgslsmith_mod_u32(var_0, u_input.b.x)), u_input.b.x), 4294967295u, ((u_input.b.x >> (var_0 % 32u)) ^ _wgslsmith_clamp_u32(var_0, var_0, u_input.b.x)) & u_input.b.x));
    var var_2 = global0[_wgslsmith_index_u32(70113u, 29u)];
    let var_3 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(var_0, 4294967295u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x | 90588u, ~u_input.b.x, min(56916u, var_0)), ~var_1.b | vec3<u32>(var_1.b.x, var_0, var_0))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60392u, 4294967295u, 0u, 0u), vec4<u32>(21018u, u_input.b.x, 67904u, 40891u)), 0u) << (var_1.b.x % 32u), 23597u);
    let var_4 = ~0u >= (_wgslsmith_div_u32(20124u, ~var_0) << (1u % 32u));
    return Struct_3(-1i, func_6(func_5(~(~u_input.b), Struct_3(var_1.a, func_2()), Struct_1(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_0, 25u)], 2089i), vec3<u32>(22585u, var_2.b.x, 1u) | u_input.b), select(select(vec2<bool>(var_4, arg_0.x), arg_0.xz, vec2<bool>(false, arg_0.x)), vec2<bool>(false, arg_0.x), vec2<bool>(true, var_4))), -1000f, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -49988i, -1i, u_input.a.x), u_input.a), ~var_1.a, 36346i) >> (u_input.b % vec3<u32>(32u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(all(vec4<bool>(true, u_input.b.x <= 0u, false, 1u != u_input.b.x)), true, true), reverseBits(~_wgslsmith_add_vec2_i32(-u_input.a.wz, ~vec2<i32>(2147483647i, 1i))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2426f))))));
    var var_1 = select(vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, true || select(false, u_input.b.x > u_input.b.x, select(false, false, true)), false), select(vec4<bool>(true, any(vec4<bool>(true, false, true, true)), !all(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), !(false || any(vec3<bool>(true, false, true)))), true);
    let var_2 = firstTrailingBit(func_2().b.x);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(step(-373f, -934f))))))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(~(u_input.b.x << (0u % 32u)), 1u));
}

