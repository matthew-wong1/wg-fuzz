struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1105f, -766f, 1903f, -920f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(global0.a);
    let var_1 = vec4<bool>(select(!all(vec3<bool>(false, true, false)), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), true), any(!vec2<bool>(select(false, true, true), true)), false | (((i32(-1i) * -1i) < _wgslsmith_div_i32(u_input.a.x, u_input.a.x)) & true), false);
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-110f * -160f), var_0.a.x, -481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) * _wgslsmith_f_op_f32(1000f + var_0.a.x))), global0.a));
    let var_3 = firstTrailingBit(~(-30595i));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_div_vec4_f32(vec4<f32>(-241f, var_2.a.x, 1370f, global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -316f, -1049f, -334f)))))));
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = ~arg_0.x;
    global0 = Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a.x, arg_2.a.x, global0.a.x, arg_2.a.x), vec4<f32>(global0.a.x, -1667f, arg_2.a.x, arg_2.a.x))), arg_1.a))));
    var var_1 = Struct_1(arg_1.a);
    var var_2 = _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f * -301f)))));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f * _wgslsmith_div_f32(global0.a.x, arg_1.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)) + _wgslsmith_f_op_f32(1662f - -2146f))))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) * -1174f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f + 2428f))), -234f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -210f), 649f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(217f, _wgslsmith_f_op_f32(-var_1.a.x)))), -1520f);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = all(vec4<bool>(true, func_2(), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), true));
    var var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(global0.a.x, arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0), 513f, 1f), _wgslsmith_f_op_vec4_f32(func_3(arg_1, Struct_1(global0.a), Struct_1(vec4<f32>(232f, 1017f, arg_0, 653f))))))));
    var var_3 = vec2<i32>(u_input.c.x, -u_input.a.x);
    var var_4 = vec4<u32>(_wgslsmith_mod_u32(arg_1.x, ~27637u), 25594u, ~(arg_1.x | reverseBits(1u)), 3299u);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_vec4_f32(func_3(var_4.xz, Struct_1(vec4<f32>(arg_0, var_2.a.x, global0.a.x, global0.a.x)), Struct_1(vec4<f32>(-792f, global0.a.x, -622f, -1015f)))).x), vec2<f32>(arg_0, _wgslsmith_f_op_f32(step(global0.a.x, 488f)))), var_2.a.yw))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(578f * 201f))), -685f, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(arg_1.x - -1220f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + global0.a) + vec4<f32>(2039f, 466f, -1244f, global0.a.x))), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, arg_1.x, -1276f), _wgslsmith_div_vec4_f32(global0.a, global0.a))))));
    var var_0 = false;
    var var_1 = select(select(vec4<bool>(all(vec3<bool>(true, true, true)), !(arg_0 <= arg_0), all(vec3<bool>(true, true, true)), true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), any(vec3<bool>(true, false, false))), !vec4<bool>(false, all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, true, true)), false)), select(vec4<bool>(true, true, true, false), !vec4<bool>(true, all(vec2<bool>(false, false)), arg_0 == arg_0, any(vec4<bool>(false, false, true, false))), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), -_wgslsmith_add_i32(~2147483647i, ~u_input.a.x) != u_input.b.x);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.a, vec4<f32>(global0.a.x, 363f, 341f, 641f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -392f, -518f, global0.a.x) * global0.a)), global0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-308f, 673f, arg_1.x, arg_1.x), global0.a, var_1.x))), global0.a))));
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * global0.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_1.x, -221f, arg_1.x))), any(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), var_1.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = -1092f;
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(min(51431i, u_input.c.x), u_input.c.x, -2147483647i), countOneBits(45110i));
    let var_2 = func_4(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~4294967295u, arg_2 & arg_2, _wgslsmith_mult_u32(27013u, arg_2)), max(0u, arg_2)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(~0u, ~arg_2))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f)))), 669f));
    let var_3 = u_input.c.x;
    var var_4 = (_wgslsmith_div_u32(16843u, arg_2) ^ arg_2) < countOneBits(~arg_2);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(abs(~(~0u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1(global0.a.x, vec2<u32>(0u, 21750u)))))))), true, 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-622f * global0.a.x)))))));
    var var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 7695u))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 41177u))), vec2<u32>(~(~738u), 1u));
    var_0 = abs(0u);
    var var_1 = func_5(Struct_1(global0.a), true, ~abs(abs(countOneBits(4294967295u))), _wgslsmith_f_op_f32(-1f));
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~(~4294967295u), 2506u, _wgslsmith_mod_u32(1u, min(4294967295u, 88098u)), ~64108u), vec4<u32>(max(~57590u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 68040u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u))), ~_wgslsmith_add_u32(0u, 4294967295u), 4294967295u, 1u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(31840u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 37521u, 72271u, 4773u), vec4<u32>(4294967295u, 4294967295u, 20254u, 1u)), ~3704u), _wgslsmith_mod_u32(1u, 8691u), _wgslsmith_dot_vec3_u32(~vec3<u32>(62071u, 0u, 4294967295u), vec3<u32>(22246u, 7824u, 0u))) ^ vec4<u32>(52079u, 1u, ~(~4294967295u), abs(51910u)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(50130u, 0u, 10799u, 6069u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = !(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_4 = Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 1489f) + -754f), 670f, -1617f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u, 0u)), 2147483647i, 6395i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(211f, -1000f, global0.a.x, var_1.a.x) - vec4<f32>(1297f, var_1.a.x, var_1.a.x, -127f)))) + vec4<f32>(global0.a.x, func_5(func_4(1u, global0.a.zx), true, countOneBits(0u), -1031f).a.x, _wgslsmith_f_op_f32(step(-1617f, _wgslsmith_f_op_f32(global0.a.x + 365f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -440f))))), u_input.b.x);
}

