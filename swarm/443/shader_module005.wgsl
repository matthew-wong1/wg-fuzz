struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    global0 = array<i32, 16>();
    var var_0 = true;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_0 = ~u_input.a.yzw;
    global0 = array<i32, 16>();
    var var_1 = arg_1.a.wx;
    return select(select(!func_3(), vec2<bool>(arg_1.b.x, arg_1.b.x), !all(func_3())), arg_1.b.xz, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1738f, 1000f, arg_1.b.x)) * _wgslsmith_f_op_f32(floor(-763f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1245f)) - 556f)));
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 16>();
    var var_0 = select(func_2(1u, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, -1i, -2147483647i) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], -17982i, 2147483647i, 2147483647i), vec4<i32>(-20533i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 36152i, 1503i))), vec3<bool>(true, true, true))), vec2<bool>(true, true), true);
    var var_1 = u_input.a.wx;
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), 1i, _wgslsmith_mod_i32(-18895i, -23490i), _wgslsmith_mod_i32(0i, -1174i)), vec4<i32>(max(-11643i, 10628i), u_input.c, abs(u_input.d), 0i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(abs(-9095i), ~1i), -19195i), -1i, u_input.b), !select(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x)), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(703f)), _wgslsmith_f_op_f32(2061f - 1182f), 551f, _wgslsmith_div_f32(-508f, 744f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))))));
    return Struct_1(var_2.a, !vec3<bool>(true, !var_0.x, !all(vec4<bool>(true, false, var_0.x, var_0.x))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    global0 = array<i32, 16>();
    var var_1 = -1012f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-500f)));
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_4(func_1());
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f - -420f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(279f, 2186f))), !var_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f * -1214f)))));
    let var_3 = ~vec4<u32>(abs(_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(u_input.a.x))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 43587u), u_input.a.yzz), u_input.a.x, ~18773u);
    var var_4 = func_1().b.yx;
    let var_5 = select(select(!vec3<bool>(true, true, !var_1.b.x), select(var_1.b, func_1().b, true), select(!(!vec3<bool>(var_1.b.x, var_1.b.x, true)), vec3<bool>(u_input.a.x >= var_3.x, var_1.b.x, true || var_4.x), select(select(vec3<bool>(false, false, var_4.x), var_1.b, false), !vec3<bool>(true, var_1.b.x, var_1.b.x), true))), var_1.b, !var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(8523u, _wgslsmith_clamp_u32(var_3.x, 14684u, 1u), _wgslsmith_mult_u32(1u, firstTrailingBit(var_3.x))));
}

