struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(false, Struct_1(false)), -649i));

var<private> global2: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4, arg_3: i32) -> u32 {
    global2 = arg_2;
    global1 = arg_2;
    var var_0 = -1459f;
    global0 = u_input.a.x;
    let var_1 = Struct_3(Struct_2(select(false, arg_1.a.a.a | !arg_2.a.a.a, _wgslsmith_div_f32(arg_0, arg_0) > _wgslsmith_f_op_f32(floor(arg_0))), Struct_1(true)), -67351i << (~u_input.a.x % 32u));
    return 11506u;
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2459f);
    global0 = ~_wgslsmith_add_u32(u_input.a.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(188f, -1523f))), Struct_4(arg_0), Struct_4(global1.a), _wgslsmith_mod_i32(i32(-1i) * -721i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -23574i, arg_0.b), vec3<i32>(11697i, -1i, arg_0.b)))));
    let var_1 = min(abs(vec3<u32>(76844u, 4294967295u, u_input.a.x)), ~u_input.a.xyy);
    var var_2 = Struct_3(Struct_2(true & (select(false, arg_0.a.a, global1.a.a.a) == false), arg_0.a.b), _wgslsmith_add_i32(1i, 18125i));
    let var_3 = firstLeadingBit(_wgslsmith_mod_u32(~max(var_1.x, ~17141u), 1u));
    return -457f;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(global1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), -317f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1704f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(308f, -1376f)), 1576f)))), _wgslsmith_f_op_f32(round(-606f)));
    var var_1 = !((max(func_3(1087f, Struct_4(Struct_3(Struct_2(false, global1.a.a.b), 2147483647i)), Struct_4(global2.a), 197i), 1u) <= u_input.a.x) == (var_0.x < var_0.x));
    global1 = Struct_4(Struct_3(global1.a.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, -48455i), _wgslsmith_clamp_i32(u_input.b, 11975i, 1i)), 10246i)));
    global0 = u_input.a.x;
    var_1 = !select((403i << (u_input.a.x % 32u)) != reverseBits(1i), false, global2.a.a.a);
    return global1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(u_input.b | u_input.b, firstTrailingBit(-(firstTrailingBit(u_input.b) ^ 1i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), 711f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(362f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-687f)), -1000f))));
    let var_2 = Struct_3(global2.a.a, select(1i, -22905i, false));
    let var_3 = ~u_input.a.x;
    let var_4 = Struct_3(func_1(), -countOneBits(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1379f, 594f, global1.a.a.a))), _wgslsmith_f_op_f32(111f + 1637f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2119f, 184f, false)), _wgslsmith_f_op_f32(ceil(-338f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1546f * -193f) - _wgslsmith_f_op_f32(-930f * -923f)))));
}

