struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-533f, -1106f, -454f), vec3<f32>(557f, -1099f, -1234f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(566f, 1222f, 362f))))))));
    global0 = vec2<bool>(global0.x, min(~u_input.c, 4294967295u & u_input.c) > abs(~(~1u)));
    let var_1 = false;
    global0 = vec2<bool>(!var_1, !(true && !any(vec2<bool>(false, var_1))));
    let var_2 = vec2<bool>(var_1, true);
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-544f))))), _wgslsmith_f_op_f32(floor(arg_0.a.x)), -732f, 1000f);
    let var_1 = 7868u;
    global0 = !select(select(!(!vec2<bool>(global0.x, false)), select(vec2<bool>(global0.x, false), vec2<bool>(false, true), all(vec2<bool>(false, false))), _wgslsmith_sub_u32(37296u, 1u) <= ~u_input.c), func_1(), vec2<bool>(global0.x, 1u <= abs(arg_1)));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(arg_2.a.zy, vec2<f32>(1000f, -1000f)));
    return _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -520f);
    let var_1 = -13619i;
    var var_2 = ~1i;
    var var_3 = Struct_1(vec3<f32>(arg_2, _wgslsmith_f_op_f32(max(415f, -517f)), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(1000f, 178f, 1739f), arg_1), u_input.d.x, Struct_1(vec3<f32>(-1804f, arg_1, 711f), arg_2)))))), _wgslsmith_f_op_f32(arg_2 - arg_2));
    let var_4 = u_input.d.x;
    return _wgslsmith_sub_i32(~1i, ~(arg_3 << (4294967295u % 32u))) <= ~var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(false || (_wgslsmith_mod_u32(u_input.d.x, 12569u) > 4294967295u), global0.x), select(!select(!vec2<bool>(false, global0.x), vec2<bool>(false, false), !vec2<bool>(global0.x, false)), !(!select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), vec2<bool>(global0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) <= 230f), vec2<bool>(true, true));
    global0 = select(!func_1(), !select(vec2<bool>(u_input.e.x >= 42128i, func_2(u_input.e.x, -688f, 1383f, u_input.a.x)), !(!vec2<bool>(true, global0.x)), true), global0.x);
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-991f, _wgslsmith_f_op_f32(step(-1162f, -503f)), _wgslsmith_f_op_f32(-192f * _wgslsmith_f_op_f32(833f + 602f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f - -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-880f * 540f), _wgslsmith_f_op_f32(704f - -307f), func_1().x)), -1000f)));
    let var_1 = vec3<bool>(func_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))), -372f, -8331i), global0.x, !all(!func_1()));
    let var_2 = select(var_1, vec3<bool>(false, func_2(-32053i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-732f - 1241f), _wgslsmith_f_op_f32(-var_0.a.x), select(true, var_1.x, true))), 544f, u_input.b & (i32(-1i) * -43967i)), var_1.x), vec3<bool>(any(!var_1.xz), func_2(select(u_input.e.x >> (26005u % 32u), -u_input.e.x, var_1.x || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1168f)), -553f, ~(-1i)), all(select(vec4<bool>(true, global0.x, true, var_1.x), vec4<bool>(global0.x, true, false, true), global0.x)) & true));
    global0 = select(var_2.zx, func_1(), any(vec4<bool>(true, any(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_1.x, global0.x, var_2.x, false), vec4<bool>(false, false, var_1.x, global0.x))), var_0.a.x == var_0.b, var_1.x)));
    global0 = var_1.xz;
    let var_3 = reverseBits(143514u);
    global0 = var_2.zz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xyz, 1412f, vec4<u32>(~var_3, abs(1u), u_input.c, 19082u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(43938u, u_input.d.x, 42093u), u_input.d.wwx)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_3, 0u, 56567u, u_input.c) ^ u_input.d, u_input.d ^ vec4<u32>(u_input.d.x, u_input.c, 17116u, 0u))) << (u_input.d % vec4<u32>(32u)));
}

