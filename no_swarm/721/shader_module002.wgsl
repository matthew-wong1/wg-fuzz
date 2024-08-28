struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(155f * 1052f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-561f, -915f)), -1318f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f - -891f) - -109f), 1412f, _wgslsmith_f_op_f32(f32(-1f) * -309f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1583f, -490f, -251f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-468f, -722f, -572f) + vec3<f32>(2131f, 1000f, 1830f))) + vec3<f32>(_wgslsmith_f_op_f32(1566f * 288f), _wgslsmith_f_op_f32(func_3(3128i, Struct_1(arg_0))), -806f))), Struct_1(select(arg_0, arg_0, false)), Struct_1(true));
    var var_1 = reverseBits(~_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)));
    let var_2 = Struct_3(all(select(vec2<bool>(!arg_0, !arg_0), !vec2<bool>(var_0.b.a, true), min(49882u, 4294967295u) != (var_1.x ^ 7853u))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1919f - var_0.a.x))));
    var var_4 = var_0;
    return Struct_2(_wgslsmith_f_op_vec3_f32(var_4.a + _wgslsmith_f_op_vec3_f32(ceil(var_4.a))), Struct_1(any(!vec2<bool>(arg_0, true))), var_0.c);
}

fn func_1() -> u32 {
    var var_0 = ~(~(~0u));
    var var_1 = 17552i <= firstLeadingBit(-u_input.b.x);
    let var_2 = func_2(true);
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = func_2(false).a.x;
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    return vec4<u32>(arg_2, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, select(6517u, 17641u, false)), arg_1) | _wgslsmith_div_u32(abs(1u), 1u), abs(arg_2), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 60632u;
    var var_1 = vec2<bool>(true, true);
    let var_2 = func_4(Struct_1(false), (_wgslsmith_mod_u32(~var_0, _wgslsmith_mod_u32(283u, var_0)) | ~reverseBits(var_0)) & 4294967295u, func_1(), func_2(var_1.x));
    let var_3 = vec4<bool>(1i > _wgslsmith_dot_vec3_i32(-(~u_input.b), -u_input.b), !var_1.x, true && var_1.x, !any(select(!vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true))));
    let var_4 = !select(select(vec3<bool>(var_3.x, true, false), !var_3.wzx, any(select(var_3, var_3, var_1.x))), vec3<bool>(any(var_3) || var_1.x, !(var_0 < var_2.x), any(!var_3.xyw)), true);
    let var_5 = Struct_1(true);
    let var_6 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1277f, 430f)))), _wgslsmith_div_f32(-383f, _wgslsmith_f_op_f32(593f - 1000f)), _wgslsmith_f_op_f32(step(-1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1513f * -2165f))))), func_2(false).b, var_5);
    var var_7 = true;
    var_7 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(1016f);
}

