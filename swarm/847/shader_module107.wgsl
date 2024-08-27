struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(1057f);

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = global0.x;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(20112u, global0.x)), firstLeadingBit(firstLeadingBit(19156u)));
    var var_2 = Struct_2(-1i, Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(-111f)))), select(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.zxz, vec3<u32>(u_input.b.x, u_input.a, u_input.a)), u_input.a) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.x, 0u), ~1u) % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 1u), global0.x), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true), true))), vec4<bool>(all(vec3<bool>(true, true, true)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), false, !(!all(vec3<bool>(false, true, true)))));
    var var_3 = vec3<u32>(~global0.x, 0u, _wgslsmith_div_u32(11141u, ~_wgslsmith_mult_u32(var_2.c, global0.x)));
    var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.xwz, u_input.b.ywz), 1u, u_input.a);
    return vec4<bool>(true, 0i >= ~var_2.a, false, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = true;
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-393f))) - global2.a));
    global2 = arg_3.b;
    var var_1 = vec4<i32>(-arg_3.a, arg_3.a, 20176i, -arg_3.a);
    var var_2 = arg_0;
    return _wgslsmith_sub_u32(u_input.b.x, ~(~_wgslsmith_add_u32(47188u, global0.x & 28756u)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-1198f);
    let var_1 = func_4(Struct_1(global3.a), vec3<bool>(all(func_3(var_0)) & true, true, true | (_wgslsmith_f_op_f32(exp2(global3.a)) <= -1055f)), ~vec2<u32>(u_input.b.x, countOneBits(_wgslsmith_mult_u32(global0.x, u_input.a))), Struct_2(i32(-1i) * -6505i, Struct_1(_wgslsmith_f_op_f32(-global2.a)), ~u_input.a, vec4<bool>(false, true, !any(vec3<bool>(true, true, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)))));
    var var_2 = var_0;
    var var_3 = !vec2<bool>(false, !select(true, true, false));
    var var_4 = Struct_1(1600f);
    return var_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~(~(~u_input.b.wzy)) >> (u_input.b.zzw % vec3<u32>(32u));
    global3 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(380f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - global1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))));
    var var_2 = func_2();
    var_2 = arg_0;
    return func_2();
}

fn func_1() -> u32 {
    let var_0 = abs(-2147483647i);
    var var_1 = global1.a;
    global2 = func_5(func_2());
    global1 = func_2();
    global1 = Struct_1(_wgslsmith_f_op_f32(global1.a + 102f));
    return abs(1u);
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = func_2();
    var var_1 = 3992i;
    let var_2 = ~(vec3<i32>(arg_2.a, _wgslsmith_sub_i32(arg_2.a, arg_2.a), 2155i) << ((vec3<u32>(118986u, _wgslsmith_mult_u32(arg_0, 30476u), 1u) & u_input.b.xyw) % vec3<u32>(32u)));
    global1 = arg_2.b;
    let var_3 = arg_2.a;
    return _wgslsmith_f_op_f32(trunc(1676f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.b.xzw;
    var var_0 = _wgslsmith_f_op_f32(718f - _wgslsmith_f_op_f32(func_6(_wgslsmith_clamp_u32(min(6611u, global0.x) | func_1(), 1380u, min(0u, ~46023u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -491f)), -316f)), Struct_2(i32(-1i) * -8826i, Struct_1(global1.a), 0u, vec4<bool>(true, true, any(vec2<bool>(false, false)), true)))));
    var_0 = -537f;
    var var_1 = select(!vec3<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), true), vec3<bool>(!(_wgslsmith_f_op_f32(-global3.a) == _wgslsmith_f_op_f32(ceil(global2.a))), !(~1u <= reverseBits(u_input.b.x)), true), !select(any(vec4<bool>(true, true, true, true)), ~4294967295u >= firstTrailingBit(u_input.b.x), true));
    var var_2 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)) ^ countOneBits(11517i)), Struct_1(_wgslsmith_f_op_f32(-837f - _wgslsmith_f_op_f32(-global1.a))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u) ^ u_input.b, u_input.b)), !(!(!func_3(Struct_1(global1.a)))));
    var var_3 = select(var_1.yz, var_2.d.zw, !select(select(!var_1.xx, vec2<bool>(var_2.d.x, true), true), var_1.yx, vec2<bool>(true, select(false, var_2.d.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(1i & var_2.a, ~(-2147483647i), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b.a)) + -1074f), var_2.a);
}

