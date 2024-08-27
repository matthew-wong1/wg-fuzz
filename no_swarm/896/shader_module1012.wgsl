struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * _wgslsmith_f_op_f32(arg_0.b + arg_0.b)))));
    let var_1 = arg_1;
    var var_2 = var_1;
    var_2 = var_1;
    let var_3 = reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 32054u, 4294967295u, 4294967295u), ~(~vec4<u32>(5506u, var_1.a.x, var_1.a.x, arg_1.a.x))), ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(52708u, 2779u, var_2.a.x, u_input.b.x), vec4<u32>(u_input.c, 88592u, 1u, 0u)), vec4<u32>(u_input.c, 62635u, 24337u, 1u))));
    return 1i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(vec2<u32>(~u_input.b.x, 4294967295u | u_input.c), abs(u_input.b & u_input.b), !all(vec2<bool>(true, false))) & vec2<u32>(~(~40845u), 35653u), -924f);
    let var_1 = var_0;
    let var_2 = true;
    let var_3 = Struct_1(~(vec2<u32>(58232u, ~u_input.c) >> (~var_1.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(-var_1.b));
    let var_4 = func_3(Struct_1(vec2<u32>(20830u, _wgslsmith_div_u32(u_input.b.x, 4466u) >> (1u % 32u)), var_1.b), Struct_1(~var_3.a, _wgslsmith_div_f32(var_0.b, -1969f)));
    return Struct_1(abs(abs(_wgslsmith_sub_vec2_u32(~var_0.a, vec2<u32>(u_input.c, var_1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(select(arg_0.a, ~abs(~vec2<u32>(arg_0.a.x, 12718u)), true), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b + var_0.b)))));
    return func_2();
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-592f, 1563f)) + _wgslsmith_f_op_f32(min(-552f, -1000f))))) - 550f)));
    var var_1 = (var_0 != _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - -791f), _wgslsmith_div_f32(-230f, 796f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -427f)), true))) || (_wgslsmith_f_op_f32(var_0 + 343f) > -1014f);
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1572f, var_0, -1873f, _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-878f, var_0, -979f, var_0) - vec4<f32>(-181f, 191f, -2413f, 473f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, -1000f, 480f, 1297f), vec4<f32>(var_0, 960f, var_0, var_0))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1554f, var_0, -1096f)) + vec4<f32>(-1094f, var_0, var_0, var_0))))));
    let var_4 = func_4(func_2(), vec4<bool>(true, true, true, true));
    return vec3<bool>(false, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-700f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-357f * -953f), 1000f, false))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, -323f) - vec2<f32>(1f, 1f)))));
    var var_1 = vec3<bool>(true, false, false);
    let var_2 = vec2<bool>(true, any(select(select(func_1(30018u), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, true), true), true), func_1(reverseBits(40604u)), !(!var_1.x))));
    var var_3 = var_2.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_div_f32(_wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + 105f), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f - 133f)))));
    var_3 = !any(var_2);
    var var_5 = func_4(func_2(), vec4<bool>(!all(vec4<bool>(true, false, false, var_2.x)), false, !(_wgslsmith_mult_i32(u_input.a.x, -2147483647i) < 0i), (u_input.c << (0u % 32u)) != ~(~u_input.c)));
    var var_6 = true || var_2.x;
    var_1 = !vec3<bool>(var_1.x, var_1.x, !all(!vec4<bool>(false, var_1.x, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~40309u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-276f, var_4.x, var_4.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_0.x, var_5.b) * vec3<f32>(689f, var_0.x, var_4.x)), select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_2.x, true, var_2.x), false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(340f, 1672f, -400f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b, -313f, var_0.x)))))), vec3<u32>(28095u, 62311u, ~(~0u)), ~u_input.a, 0u >> (var_5.a.x % 32u));
}

