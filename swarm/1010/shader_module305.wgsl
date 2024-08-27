struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    let var_0 = arg_0;
    let var_1 = arg_2.a;
    var var_2 = reverseBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.d.x, u_input.b.x));
    var var_3 = arg_1.a.a.a;
    var var_4 = arg_1.a;
    return 0i;
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1495f, _wgslsmith_f_op_f32(f32(-1f) * -823f), true)))), _wgslsmith_div_f32(-296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(791f, -1271f))))));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1031f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -182f)))));
    var var_1 = !vec3<bool>(!any(vec2<bool>(true, true)), true, !(!all(vec4<bool>(true, true, true, true))));
    var var_2 = false;
    let var_3 = Struct_1(var_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(2743f, _wgslsmith_f_op_f32(-var_0.x)), var_0.x) + -1982f) * _wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(exp2(var_0.x))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = true;
    var_0 = any(vec4<bool>(true, -2147483647i != _wgslsmith_mult_i32(func_2(Struct_2(Struct_1(true)), Struct_3(Struct_2(Struct_1(false))), Struct_3(Struct_2(Struct_1(true)))), firstLeadingBit(13870i)), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 9068i)), true));
    var var_1 = arg_0.x;
    var_0 = !(false && all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    var var_2 = Struct_3(Struct_2(Struct_1(false)));
    return Struct_2(Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, var_2.a.a.a, true), var_2.a.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d | max(~min(~vec3<u32>(53104u, u_input.d.x, 48562u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, 0u), u_input.d)), u_input.d);
    var_0 = _wgslsmith_clamp_vec3_u32((~vec3<u32>(u_input.b.x, u_input.c, 0u) ^ ~_wgslsmith_sub_vec3_u32(u_input.d, u_input.d)) << (vec3<u32>(_wgslsmith_div_u32(~var_0.x, 1u), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, 89350u, 31073u), vec4<u32>(var_0.x, var_0.x, 1u, 15204u))) % vec3<u32>(32u)), abs(u_input.d), u_input.d);
    var_0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.x ^ 1u, abs(71701u)), var_0.x), 6755u), 1u, countOneBits(var_0.x));
    let var_1 = Struct_3(func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f + -438f) + 553f), 299f, -244f, _wgslsmith_f_op_f32(round(-1183f)))));
    var var_2 = !select(!select(!vec2<bool>(true, var_1.a.a.a), vec2<bool>(var_1.a.a.a, false), !var_1.a.a.a), select(select(select(vec2<bool>(var_1.a.a.a, var_1.a.a.a), vec2<bool>(false, var_1.a.a.a), false), select(vec2<bool>(var_1.a.a.a, true), vec2<bool>(true, var_1.a.a.a), vec2<bool>(false, false)), !vec2<bool>(var_1.a.a.a, var_1.a.a.a)), !select(vec2<bool>(true, false), vec2<bool>(false, true), var_1.a.a.a), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(var_1.a.a.a, var_1.a.a.a), var_1.a.a.a), select(vec2<bool>(true, var_1.a.a.a), vec2<bool>(var_1.a.a.a, var_1.a.a.a), false), var_1.a.a.a), select(select(vec2<bool>(var_1.a.a.a, var_1.a.a.a), vec2<bool>(var_1.a.a.a, false), vec2<bool>(false, var_1.a.a.a)), vec2<bool>(var_1.a.a.a, false), var_1.a.a.a), !vec2<bool>(var_1.a.a.a, var_1.a.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, -729f, -323f, 1724f) - vec4<f32>(344f, -254f, 1000f, -1266f)) + vec4<f32>(1991f, 437f, -727f, 1204f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, -1387f, -463f, 569f) + vec4<f32>(909f, 740f, -1210f, -960f)), var_1.a.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1296f, -305f, -1929f, 3602f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-392f, -1137f, 744f, -654f), vec4<f32>(-854f, 984f, 1200f, 1026f), vec4<bool>(false, var_2.x, true, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, 443f, -139f, -935f)))), false)));
}

