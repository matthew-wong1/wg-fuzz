struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-4315i), Struct_1(2147483647i), Struct_1(1i), Struct_1(1i), Struct_1(-9215i), Struct_1(2147483647i), Struct_1(7845i), Struct_1(0i), Struct_1(-1i), Struct_1(-1i), Struct_1(-74200i), Struct_1(-62866i), Struct_1(74056i), Struct_1(3463i), Struct_1(0i), Struct_1(-15653i), Struct_1(58065i), Struct_1(41310i), Struct_1(-6818i), Struct_1(-1i), Struct_1(-66842i), Struct_1(-7958i), Struct_1(17981i), Struct_1(2147483647i), Struct_1(1i), Struct_1(2147483647i), Struct_1(2147483647i));

var<private> global2: i32 = 2709i;

var<private> global3: array<u32, 11>;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(min(u_input.e, u_input.d.x));
    return Struct_1(-2147483647i);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = 6627u;
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, 810f, global4.x, global4.x) - vec4<f32>(global4.x, global4.x, global4.x, -746f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.x, global4.x, global4.x, global4.x))), vec4<f32>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(false, false, true, false))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.x))), -477f));
    var var_1 = Struct_1(-2147483647i);
    var_1 = Struct_1(max(-(~arg_1), global0.a) << (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(125106u, 11u)], 1u) % 32u));
    global0 = Struct_1(firstLeadingBit(~arg_3.a));
    return !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(arg_3.a < 7161i, 2147483647i != arg_1), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(false, true, true)));
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec3<bool>(true, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.x))), global4.x, _wgslsmith_f_op_f32(abs(global4.x)) != global4.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-547f, global4.x)) * global4.x)));
    global3 = array<u32, 11>();
    global3 = array<u32, 11>();
    global4 = vec4<f32>(-465f, global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(615f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.x * global4.x), 601f, any(vec4<bool>(arg_0.x, false, var_0.x, false))))) * 350f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1792f)) + _wgslsmith_f_op_f32(round(-2411f))), !all(!vec4<bool>(false, true, var_0.x, var_0.x)))));
    var var_1 = _wgslsmith_mult_vec4_i32(-min(vec4<i32>(-1i) * -vec4<i32>(u_input.e, u_input.e, -28773i, 14449i), ~vec4<i32>(551i, -1i, global0.a, -1i)), _wgslsmith_div_vec4_i32(reverseBits(abs(vec4<i32>(39619i, u_input.e, -35174i, 2147483647i) | vec4<i32>(u_input.e, u_input.d.x, u_input.e, global0.a))), ~select(vec4<i32>(u_input.d.x, global0.a, 62796i, 1i), vec4<i32>(global0.a, 1i, u_input.e, global0.a), !vec4<bool>(false, true, false, var_0.x))));
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    global2 = _wgslsmith_add_i32(-2147483647i, 0i) & -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(u_input.d.xz), vec2<i32>(10152i, -13562i)), firstLeadingBit(-u_input.d.x));
    let var_0 = vec4<u32>(func_4(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !func_3(Struct_1(global0.a), global0.a, vec4<u32>(0u, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.a.x, 71387u), Struct_1(59416i)), u_input.d.x <= _wgslsmith_mod_i32(arg_0.a, 17097i))), 65484u, 59235u, ~38081u);
    let var_1 = global1[_wgslsmith_index_u32(~min(_wgslsmith_div_u32(~4294967295u, max(63626u, 9371u)), global3[_wgslsmith_index_u32(6237u, 11u)]), 27u)];
    global0 = global1[_wgslsmith_index_u32(~31386u, 27u)];
    global4 = vec4<f32>(_wgslsmith_f_op_f32(floor(-178f)), -2112f, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-392f, _wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-201f, 1666f)), _wgslsmith_f_op_f32(-arg_1)))));
    return func_3(Struct_1(~abs(max(arg_0.a, global0.a))), ~(-1i << (~global3[_wgslsmith_index_u32(1u, 11u)] % 32u)) & 22725i, u_input.a, Struct_1(arg_0.a)).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a);
    var var_1 = (true || !func_2(func_1(global3[_wgslsmith_index_u32(1u, 11u)], 845f, u_input.a.wwz, true), global4.x)) == !((max(-37792i, -16064i) & _wgslsmith_mod_i32(u_input.e, 1i)) >= select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, -53926i, u_input.d.x, u_input.e), vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, -14914i)), _wgslsmith_add_i32(4308i, global0.a), false));
    let var_2 = _wgslsmith_sub_i32(var_0.a, -23338i);
    global0 = func_1(75195u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global4.x - -220f)), _wgslsmith_f_op_f32(f32(-1f) * -1383f)))), ~(u_input.a.zyx ^ vec3<u32>(u_input.c.x, ~106661u, u_input.b.x)), true);
    global2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(u_input.d.zy), vec2<i32>(var_0.a, u_input.d.x)), -(~vec2<i32>(-17494i, u_input.d.x))) ^ var_2, ~(~_wgslsmith_mult_i32(~var_2, 7763i)));
    global3 = array<u32, 11>();
    let var_3 = Struct_1(4641i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1065f, _wgslsmith_div_f32(global4.x, -430f), _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_mult_vec4_i32(~(-select(vec4<i32>(-5294i, 0i, var_2, var_3.a), vec4<i32>(-1i, 0i, -1i, var_3.a), vec4<bool>(false, false, false, true))), _wgslsmith_sub_vec4_i32(vec4<i32>(min(-19333i, var_2), max(11577i, 2147483647i), var_0.a, 1i), select(vec4<i32>(2147483647i, -2147483647i, u_input.d.x, var_2), abs(vec4<i32>(var_2, var_3.a, 1i, var_0.a)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(floor(380f)), _wgslsmith_sub_vec3_u32(u_input.a.xxz, firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.b, u_input.a.yzy))) & vec3<u32>(max(1u, _wgslsmith_mod_u32(4847u, 1u)), global3[_wgslsmith_index_u32(0u, 11u)], 1u));
}

