struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: i32) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f) * _wgslsmith_f_op_f32(1801f - -1541f)))))) * -144f);
    global0 = -295f;
    global0 = global1.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(min(global1.x, global1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -385f), 1518f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -1074f)))));
    global0 = global1.x;
    return !(!(!(!arg_0)));
}

fn func_3(arg_0: u32) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 1704f, -120f, 350f), vec4<f32>(global1.x, 545f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(180f, global1.x, 424f, global1.x) * vec4<f32>(-160f, global1.x, global1.x, -1968f)))))) + vec4<f32>(-892f, -1637f, _wgslsmith_div_f32(869f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, 791f), -169f))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -759f), vec4<f32>(global1.x, global1.x, global1.x, global1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1295f, -132f, global1.x, _wgslsmith_f_op_f32(select(-568f, global1.x, false))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(980f, -1526f, _wgslsmith_f_op_f32(-690f + global1.x), _wgslsmith_f_op_f32(exp2(global1.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -666f), global1.x, _wgslsmith_f_op_f32(global1.x - 919f), _wgslsmith_f_op_f32(global1.x - global1.x))))));
    global2 = array<i32, 27>();
    var var_0 = global1.x;
    return any(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(true, false, false))), all(vec2<bool>(true, true)), true));
}

fn func_1() -> Struct_2 {
    let var_0 = 0u;
    global2 = array<i32, 27>();
    global2 = array<i32, 27>();
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), global1.x);
    var var_1 = max(select(u_input.b, ~4294967295u, !select(func_2(false, -58101i), func_3(7776u), u_input.a == -1i)), var_0);
    return Struct_2(~firstTrailingBit(0u), u_input.c);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1)) * arg_1);
    global2 = array<i32, 27>();
    var var_1 = arg_0;
    global2 = array<i32, 27>();
    let var_2 = Struct_4(all(arg_3.xz), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(max(~vec2<u32>(18867u, 1u), _wgslsmith_mult_vec2_u32(arg_2.b.zz, vec2<u32>(51057u, 5263u))), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 4294967295u), arg_2.b.ww))), vec2<u32>(0u, select(u_input.c.x, 1u, arg_3.x || arg_3.x))), Struct_3(max(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_0), vec2<i32>(-64945i, -41897i), vec2<i32>(-1i, global2[_wgslsmith_index_u32(arg_2.b.x, 27u)])), vec2<i32>(-78196i, arg_0)), ~vec2<i32>(1i, arg_0)), 783f, Struct_1(-2317i, firstLeadingBit(_wgslsmith_div_i32(9412i, -51852i)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 27u)], -54674i, global2[_wgslsmith_index_u32(u_input.b, 27u)], 1i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], 2147483647i, -13600i, -65668i), vec4<i32>(-1i, u_input.a, global2[_wgslsmith_index_u32(32181u, 27u)], 2040i))), !vec3<bool>(arg_3.x, false, true), u_input.a)), Struct_3(vec2<i32>(-10099i, -5963i) | firstTrailingBit(-vec2<i32>(-44023i, global2[_wgslsmith_index_u32(u_input.d, 27u)])), _wgslsmith_f_op_f32(-global1.x), Struct_1(-14142i, 1i, vec4<i32>(abs(-1i), global2[_wgslsmith_index_u32(~4294967295u, 27u)], _wgslsmith_add_i32(u_input.a, u_input.a), u_input.a | -5854i), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)] > 2147483647i, !arg_3.x, true), -2147483647i)));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    global2 = array<i32, 27>();
    var var_1 = select(vec4<bool>(-21857i > global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.c.x), 27u)], all(vec4<bool>(true, true, true, true)), true, true), select(!vec4<bool>(u_input.a < global2[_wgslsmith_index_u32(u_input.c.x, 27u)], true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), global1.x != -1137f), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.a == u_input.a)));
    var var_2 = ~min(firstTrailingBit(vec2<i32>(min(u_input.a, global2[_wgslsmith_index_u32(u_input.b, 27u)]), u_input.a)), -vec2<i32>(~2147483647i, -2147483647i));
    let var_3 = func_4(global2[_wgslsmith_index_u32(4294967295u, 27u)], vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -334f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) - _wgslsmith_f_op_f32(min(global1.x, -1170f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3059f, global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1000f - global1.x)))), -1008f), func_1(), select(var_1.xxz, var_1.zyw, select(!(!var_1.wwy), select(vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, true, var_1.x), var_1.x), var_1.yxz)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 280f));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 26579u), 27u)];
    let var_5 = vec4<bool>(true, true, var_1.x, true);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(var_4.x)), _wgslsmith_f_op_f32(-669f - var_4.x), var_3.b, _wgslsmith_f_op_f32(var_3.b + global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -1091f, 161f, var_4.x) - vec4<f32>(1000f, global1.x, var_4.x, global1.x))), select(select(vec4<bool>(var_3.c.d.x, var_5.x, var_1.x, true), var_5, true), select(var_5, var_5, vec4<bool>(var_3.c.d.x, var_1.x, var_1.x, var_5.x)), var_5))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1640f, 568f, var_3.b, var_3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, 2424f, 1000f, 2896f) + vec4<f32>(global1.x, var_3.b, 353f, -1374f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(497f, var_3.b, var_3.b, -392f), vec4<f32>(-1000f, var_4.x, global1.x, var_4.x), vec4<bool>(var_5.x, var_5.x, true, false))), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b, -1622f, 225f, -1178f), vec4<f32>(331f, -2430f, 107f, var_3.b)))) + vec4<f32>(var_4.x, _wgslsmith_f_op_f32(var_3.b * -821f), var_4.x, var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.yyy, abs(vec3<u32>(u_input.b, 37431u, 0u))), 76125u, max(~4294967295u, abs(53207u)), 4294967295u), var_4.x, 2644u);
}

