struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec4<f32> = vec4<f32>(519f, 1039f, 707f, 318f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = vec2<u32>(~(min(arg_0.a.x, _wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x)) ^ min(_wgslsmith_mult_u32(1u, 0u), ~278u)), 0u);
    global0 = u_input.c;
    let var_1 = 342f;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2029f), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.x, -256f, any(vec4<bool>(true, false, true, false))))))));
    var var_2 = arg_0;
    return select(vec3<bool>(reverseBits(0i ^ arg_0.c.x) >= -u_input.a.x, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true), vec3<bool>(true, all(vec3<bool>(true, true, true)), true), !vec3<bool>(true, true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true))));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(726f * 485f), _wgslsmith_f_op_f32(-360f - _wgslsmith_div_f32(311f, global1.x)), _wgslsmith_f_op_f32(sign(-585f))));
    var var_1 = !select(!vec3<bool>(true, select(true, true, true), true), func_3(Struct_2(vec2<u32>(15970u, 43811u), ~vec4<i32>(u_input.b.x, u_input.b.x, -14454i, u_input.d), vec2<i32>(-2147483647i, u_input.a.x), vec4<i32>(9003i, u_input.a.x, u_input.c, -2147483647i))), true);
    let var_2 = max(_wgslsmith_sub_i32(u_input.d << (2258u % 32u), -1i), -28130i);
    var var_3 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, ~33186u, countOneBits(45183u), 4294967295u)), reverseBits(firstLeadingBit(vec4<u32>(4294967295u, 58837u, 1u, 1u)))) != 1u;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(626f)))) - var_0.x)), _wgslsmith_f_op_f32(-global1.x), -1677f, -601f);
    return var_1.yy;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(vec2<bool>(true, !any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true))), func_2(), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, _wgslsmith_f_op_f32(-global1.x), -372f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) * _wgslsmith_f_op_vec4_f32(select(var_1, vec4<f32>(_wgslsmith_f_op_f32(ceil(1128f)), -1133f, 244f, 1884f), !select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), var_0.x)))));
    var var_2 = u_input.b.zzy;
    var var_3 = Struct_1(~vec3<u32>(firstLeadingBit(1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(89406u, 1u), vec2<u32>(11772u, 4294967295u)), ~(~4294967295u)), u_input.a, u_input.b.x);
    return StorageBuffer(var_3.b.zy, u_input.a.yz, _wgslsmith_f_op_f32(sign(var_1.x)), -vec2<i32>(u_input.d, var_3.c) >> (var_3.a.yy % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, any(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), false);
    let x = u_input.a;
    s_output = func_1();
}

