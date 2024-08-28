struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1009f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> i32 {
    var var_0 = Struct_2(14027i, abs(u_input.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), 194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(165f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a)))), arg_1.c)), Struct_1(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -1746f))), vec2<bool>(arg_2 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, global0.a)) - _wgslsmith_f_op_f32(abs(global0.a))), true));
    var var_1 = u_input.d.x;
    let var_2 = ~(u_input.d.yx >> (~vec2<u32>(u_input.d.x ^ 18786u, u_input.d.x) % vec2<u32>(32u)));
    var var_3 = Struct_2(-2147483647i, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(var_0.a, ~u_input.a.x), var_0.a, countOneBits(-2147483647i)), -vec4<i32>(arg_1.a, firstLeadingBit(-1i), u_input.b.x, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(700f)), _wgslsmith_f_op_f32(abs(961f))))), vec2<bool>(arg_1.e.x, select(arg_1.e.x, arg_1.e.x || var_0.e.x, true)));
    var_1 = var_2.x & 0u;
    return ~1i;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    var var_0 = ~func_3(arg_2, Struct_2(arg_0, -firstLeadingBit(u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, global0.a, -167f, arg_2.a))), arg_2, vec2<bool>(true, true)), -484f);
    global0 = arg_2;
    var_0 = u_input.c.x;
    var var_1 = arg_0;
    global0 = arg_2;
    return !all(vec4<bool>(true, all(arg_1), arg_1.x, !arg_1.x));
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = 8612u;
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.d.x), ~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d));
    var var_3 = global0.a;
    let var_4 = func_2(_wgslsmith_add_i32(arg_0.x, -12964i), !select(vec2<bool>(all(vec4<bool>(false, true, false, false)), true), vec2<bool>(true, true), !all(vec4<bool>(false, false, false, true))), Struct_1(-647f));
    return vec2<u32>((~select(u_input.d.x, 0u, true) | select(u_input.d.x, 1u, var_4)) >> (var_2 % 32u), 77448u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.d.yy, max(u_input.d.xx, u_input.d.xx)) ^ ~abs(vec2<u32>(62843u, u_input.d.x)), u_input.d.yz), reverseBits(~func_1(u_input.c.xy)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.d.yy)), vec2<u32>(~u_input.d.x, ~0u)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1206f, -1963f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(-471f, global0.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-574f, global0.a))))), vec2<bool>(true, global0.a < global0.a))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, 502f), vec2<f32>(579f, global0.a), false)))))), all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 976f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1115f, -422f)))) * vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(var_1.x))))) - vec2<f32>(-1211f, _wgslsmith_f_op_f32(sign(130f))));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, 293f)), _wgslsmith_f_op_f32(-global0.a))))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(2283f)), 1711f))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(~(~var_0.x), ~_wgslsmith_div_u32(0u, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-global0.a))), 1221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a) + var_3.x)), _wgslsmith_add_u32(72235u, u_input.d.x));
}

