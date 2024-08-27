struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(968f, 1u, vec3<bool>(true, true, false)));

var<private> global2: f32;

var<private> global3: array<i32, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = u_input.b;
    let var_1 = 1434f;
    var var_2 = select(u_input.a.x << (~(~var_0.x) % 32u), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-30117i, 0i, -4662i), vec3<i32>(-1499i, 25918i, u_input.a.x)), true) == firstTrailingBit(firstLeadingBit(-31039i));
    let var_3 = global1[_wgslsmith_index_u32(var_0.x, 1u)];
    let var_4 = arg_2;
    return arg_2.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = true;
    let var_1 = arg_0.b;
    let var_2 = func_3(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.a), vec3<bool>(false, var_0, arg_0.c.x), global1[_wgslsmith_index_u32(4294967295u, 1u)]);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-1869f + arg_0.a))))), u_input.c.x ^ ~10128u, var_2);
    global3 = array<i32, 26>();
    return func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, arg_0.a, -553f, -377f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 1637f, 253f, 1722f) - vec4<f32>(arg_0.a, var_3.a, 499f, var_3.a))))))), select(func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(ceil(var_3.a)), var_3.a), arg_0.c, Struct_1(_wgslsmith_div_f32(-229f, arg_0.a), var_1, vec3<bool>(var_3.c.x, arg_0.c.x, true))), var_3.c, select(func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a, -1107f, 703f, -386f), vec4<f32>(var_3.a, arg_0.a, -1373f, 276f))), var_2, Struct_1(var_3.a, arg_0.b, arg_0.c)), !(!var_2), var_3.c.x)), Struct_1(arg_0.a, ~61859u, select(vec3<bool>(true, global0.x, false), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(496f, 339f, arg_0.a, -392f), vec4<f32>(1891f, var_3.a, 1191f, arg_0.a), vec4<bool>(false, false, false, var_2.x))), var_3.c, global1[_wgslsmith_index_u32(~var_1, 1u)]), false)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(0u & _wgslsmith_mod_u32(arg_0.b, 1u));
    var var_1 = ~arg_3.b;
    global1 = array<Struct_1, 1>();
    var var_2 = u_input.c << (vec4<u32>(~min(firstLeadingBit(4294967295u), arg_3.b), _wgslsmith_dot_vec3_u32(vec3<u32>(7458u, 1u, arg_1.x), vec3<u32>(4302u, 29382u, arg_1.x)) << (4034u % 32u), ~(~(~arg_1.x)), _wgslsmith_clamp_u32(~(~u_input.c.x), ~14341u, _wgslsmith_add_u32(arg_3.b, arg_3.b))) % vec4<u32>(32u));
    global2 = 928f;
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(arg_3.a - 490f)))))), ~var_0, arg_3.c);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_1, 1>();
    let var_0 = func_4(Struct_1(-1688f, u_input.b.x, select(select(vec3<bool>(global0.x, true, arg_0.x), vec3<bool>(false, true, true), select(arg_0, vec3<bool>(true, arg_0.x, global0.x), vec3<bool>(true, true, true))), select(!arg_0, func_2(Struct_1(-1000f, u_input.c.x, vec3<bool>(true, global0.x, arg_0.x)), vec2<i32>(u_input.a.x, global3[_wgslsmith_index_u32(21481u, 26u)])), arg_0), true)), ~vec2<u32>(u_input.c.x, min(abs(1722u), u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-419f, _wgslsmith_f_op_f32(sign(-685f))))), Struct_1(_wgslsmith_f_op_f32(step(-1534f, _wgslsmith_f_op_f32(f32(-1f) * -307f))), u_input.c.x, vec3<bool>(global0.x, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(1165f, -145f, -400f, -608f), vec4<f32>(-1933f, 721f, -1030f, -791f)), func_2(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.a.x)), Struct_1(-1159f, 1u, arg_0)).x, any(global0.yy) && true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1292f, 1336f), vec2<f32>(var_0.a, var_0.a)))) * vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -838f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(1203f, var_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1891f, -183f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1073f, -2301f)))))));
    var var_2 = func_4(global1[_wgslsmith_index_u32(0u, 1u)], u_input.c.wx, _wgslsmith_f_op_f32(-1805f * -286f), var_0);
    var var_3 = var_0;
    return global1[_wgslsmith_index_u32(26048u, 1u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global3 = array<i32, 26>();
    global0 = arg_0.c;
    let var_0 = arg_0;
    global0 = !func_4(global1[_wgslsmith_index_u32((arg_0.b | (var_0.b | 18183u)) ^ (56477u | _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b.x, 4294967295u, 85814u, arg_0.b))), 1u)], reverseBits(~abs(vec2<u32>(45342u, 48865u))), _wgslsmith_f_op_f32(-1130f * arg_0.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 1618f)), ~(arg_0.b & arg_0.b), vec3<bool>(true, arg_0.c.x, !global0.x))).c;
    var var_1 = select(select(abs(~vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(arg_0.b, 26u)], 700i)) << (~u_input.b % vec3<u32>(32u)), max(abs(select(vec3<i32>(global3[_wgslsmith_index_u32(35193u, 26u)], global3[_wgslsmith_index_u32(27208u, 26u)], -2147483647i), vec3<i32>(-1i, u_input.a.x, global3[_wgslsmith_index_u32(1u, 26u)]), vec3<bool>(true, var_0.c.x, true))), vec3<i32>(-20821i, ~global3[_wgslsmith_index_u32(20352u, 26u)], -5876i)), select(!func_3(vec4<f32>(var_0.a, 759f, 216f, arg_0.a), vec3<bool>(true, true, var_0.c.x), Struct_1(var_0.a, 4294967295u, vec3<bool>(true, var_0.c.x, var_0.c.x))), vec3<bool>(any(vec4<bool>(true, false, arg_0.c.x, false)), func_3(vec4<f32>(var_0.a, 148f, arg_0.a, arg_0.a), arg_0.c, var_0).x, arg_0.c.x), !vec3<bool>(true, false, global0.x))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x) | select(vec3<i32>(u_input.a.x, -13602i, -2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], -19845i, 0i), arg_0.c), vec3<i32>(-2147483647i, abs(-2147483647i), global3[_wgslsmith_index_u32(reverseBits(u_input.c.x), 26u)])), !func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 538f, arg_0.a, arg_0.a)))), !vec3<bool>(false, global0.x, true), arg_0));
    return func_4(Struct_1(468f, firstTrailingBit(38274u), !(!var_0.c)), ~(~(~_wgslsmith_sub_vec2_u32(u_input.c.xy, u_input.b.xy))), _wgslsmith_f_op_f32(-1324f - func_4(global1[_wgslsmith_index_u32(arg_0.b, 1u)], vec2<u32>(_wgslsmith_clamp_u32(0u, var_0.b, var_0.b), arg_0.b), 1075f, arg_0).a), func_4(Struct_1(var_0.a, firstLeadingBit(select(5898u, 4294967295u, arg_0.c.x)), func_1(var_0.c).c), min(u_input.c.wx, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yy, u_input.c.zx), vec2<u32>(arg_0.b, var_0.b), abs(u_input.c.xx))), -295f, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a))), arg_0.b, vec3<bool>(global0.x, global3[_wgslsmith_index_u32(u_input.c.x, 26u)] <= u_input.a.x, !global0.x))));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = arg_1;
    let var_1 = u_input.c.xxy;
    let var_2 = arg_0;
    var var_3 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(func_4(Struct_1(var_2.a, var_2.b, vec3<bool>(false, true, arg_0.c.x)), var_1.yy, 202f, global1[_wgslsmith_index_u32(var_1.x, 1u)]).b, 26u)], i32(-1i) * -2147483647i, global3[_wgslsmith_index_u32(var_2.b, 26u)]), (vec3<i32>(u_input.a.x, -52924i, 15806i) | vec3<i32>(0i, 2147483647i, global3[_wgslsmith_index_u32(60640u, 26u)])) ^ countOneBits(vec3<i32>(8974i, global3[_wgslsmith_index_u32(0u, 26u)], 29219i))), arg_1, 2147483647i, abs(global3[_wgslsmith_index_u32(abs(~4294967295u), 26u)]));
    var var_4 = global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~arg_0.b, 50222u, _wgslsmith_add_u32(u_input.b.x, var_1.x)) ^ 30751u) & var_2.b, 1u)];
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec3<i32>(i32(-1i) * -2147483647i, 0i, u_input.a.x));
    global1 = array<Struct_1, 1>();
    var var_1 = u_input.b.x ^ (_wgslsmith_add_u32(u_input.c.x, min(u_input.c.x, 0u) ^ u_input.c.x) << (_wgslsmith_dot_vec3_u32(u_input.c.zxx, _wgslsmith_clamp_vec3_u32(u_input.c.zzy, reverseBits(vec3<u32>(u_input.c.x, 0u, u_input.b.x)), ~vec3<u32>(4294967295u, 0u, 1u))) % 32u));
    let var_2 = _wgslsmith_sub_i32(firstLeadingBit(-var_0.x & 0i), max(21935i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, global3[_wgslsmith_index_u32(u_input.c.x, 26u)]), u_input.a, vec2<i32>(var_0.x, var_0.x))), ~(-var_0.xz))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(func_1(vec3<bool>(false, false, global0.x))), max(-1i ^ u_input.a.x, 492i)))), 4294967295u, vec3<bool>(!(u_input.c.x < 1u), global0.x, func_5(func_1(!vec3<bool>(true, true, global0.x))).c.x));
    global3 = array<i32, 26>();
    var_1 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))), (((vec3<i32>(16059i, -2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 26u)]) & vec3<i32>(7683i, -40974i, 1i)) << (~u_input.b % vec3<u32>(32u))) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 7764u, 0u), u_input.c.yyx) % vec3<u32>(32u))) ^ reverseBits(select(vec3<i32>(u_input.a.x, var_0.x, -18396i), vec3<i32>(2147483647i, 0i, 27442i) >> (u_input.b % vec3<u32>(32u)), func_3(vec4<f32>(var_3.a, -1021f, var_3.a, -558f), var_3.c, Struct_1(-1045f, u_input.c.x, var_3.c)).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-403f, _wgslsmith_f_op_f32(var_3.a + 553f), _wgslsmith_f_op_f32(var_3.a * -287f), _wgslsmith_f_op_f32(-var_3.a))))));
}

