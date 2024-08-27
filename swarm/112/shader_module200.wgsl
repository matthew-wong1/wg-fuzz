struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0i);

var<private> global1: array<Struct_3, 24>;

var<private> global2: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    global2 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(44695u, 4294967295u, u_input.b, 0u), ~vec4<u32>(u_input.a, 0u, 48110u, u_input.a))) <= _wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.b, 1u, u_input.a), ~vec4<u32>(u_input.a, u_input.b, 1u, 65055u))), u_input.c.x);
    var var_0 = u_input.b;
    let var_1 = Struct_3(arg_0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(741f * arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, any(vec2<bool>(arg_1.x, arg_1.x))))), arg_0));
    global2 = arg_1.x;
    let var_2 = ~u_input.c.xz;
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_2(arg_0: u32) -> vec4<u32> {
    global0 = Struct_2(((u_input.d.x ^ -8376i) & abs(reverseBits(u_input.d.x))) ^ -3479i);
    var var_0 = ~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(global0.a, u_input.d.x), u_input.d.x), 1i), global0.a, -21616i);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -981f), vec4<bool>(true, false, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1812f + -1634f) * _wgslsmith_f_op_f32(f32(-1f) * -1171f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-721f * -420f))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(-1044f, _wgslsmith_f_op_f32(-1174f * _wgslsmith_f_op_f32(select(-1000f, 809f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-451f, -1034f)), _wgslsmith_f_op_f32(sign(-490f)), -737f)));
    let var_3 = !vec2<bool>(any(vec2<bool>(true, false)), !any(vec4<bool>(true, true, true, true)));
    return countOneBits(u_input.c);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = abs(arg_1.a);
    var var_1 = select(~max(u_input.c, abs(func_2(arg_0))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~30228u, 1u, _wgslsmith_div_u32(var_0.x, firstLeadingBit(24142u))), vec4<u32>(8409u ^ var_0.x, 4294967295u, ~abs(4294967295u), select(_wgslsmith_div_u32(u_input.a, 6246u), 51215u, true))), select(vec4<bool>(!any(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, false, true)) != true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), vec4<bool>(~1u == ~u_input.b, all(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))), any(vec4<bool>(false, false, true, false))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(any(vec2<bool>(true, true)), false, true, all(vec4<bool>(false, true, true, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), false))));
    let var_2 = u_input.c.yyz;
    var var_3 = vec4<bool>(all(vec4<bool>(true || (arg_1.c < -2147483647i), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), true, false)), global0.a == (global0.a | -1i), -901f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000f))))), true);
    let var_4 = Struct_2(u_input.d.x);
    return Struct_4(Struct_2(arg_1.c), var_3.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(725f + -897f))), -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -978f)))));
    global2 = !all(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true));
    let var_2 = func_1(106676u, Struct_1(vec3<u32>(_wgslsmith_mult_u32(~1u, u_input.c.x), ~u_input.c.x, 1u), firstLeadingBit(i32(-1i) * -2147483647i), _wgslsmith_div_i32(global0.a, -(~47197i))));
    var var_3 = any(vec2<bool>(13200i > -var_2.a.a, true | (!var_2.b.x | false)));
    var var_4 = var_2;
    var var_5 = Struct_4(Struct_2(u_input.d.x), !select(vec2<bool>(true, var_4.b.x), var_4.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(~20554u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), -171f), func_1(var_0.x, Struct_1(~(vec3<u32>(21936u, u_input.a, u_input.c.x) & vec3<u32>(0u, var_0.x, u_input.c.x)), var_4.a.a, -var_5.a.a)).a.a);
}

