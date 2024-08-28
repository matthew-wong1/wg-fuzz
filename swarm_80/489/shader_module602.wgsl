struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, 11825i, -1i, 40111i), vec2<f32>(890f, 414f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<i32> {
    global0 = Struct_1(_wgslsmith_add_vec4_i32(global0.a, global0.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(448f, global0.b.x) - global0.b) * global0.b))));
    var var_0 = false & any(vec2<bool>(u_input.a == 0u, all(vec2<bool>(false, true))));
    var var_1 = Struct_1(vec4<i32>(-8996i, u_input.b, reverseBits(global0.a.x & ~u_input.b), 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.b))) - vec2<f32>(global0.b.x, global0.b.x)));
    var_0 = true;
    let var_2 = Struct_1(-global0.a, vec2<f32>(global0.b.x, -3617f));
    return global0.a.wx;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = min(func_3(), -vec2<i32>(2147483647i, -arg_0.a.x));
    var var_1 = vec4<i32>(global0.a.x, 0i, func_3().x, ~(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.a.x, 0i, arg_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -15917i, u_input.b, 1i), arg_0.a))));
    global0 = arg_0;
    var var_2 = arg_0.a.xyw;
    var var_3 = true;
    return false;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec4_i32(-(global0.a ^ global0.a), vec4<i32>(~arg_0, arg_0, ~2214i, -15875i) | vec4<i32>(u_input.b, u_input.b, abs(15264i), 2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-203f + 2058f), global0.b.x, !arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + -1000f) - _wgslsmith_f_op_f32(global0.b.x + 706f))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    var var_0 = func_4(-1i, arg_1, func_2(arg_2, 1u));
    let var_1 = Struct_1(-arg_2.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b.x, arg_2.b.x))), arg_3.yw)))))));
    let var_2 = select(_wgslsmith_mult_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(27488u, u_input.c, arg_1, u_input.a), vec4<u32>(0u, arg_1, u_input.a, u_input.c)) >> (countOneBits(vec4<u32>(u_input.c, u_input.a, arg_1, u_input.c)) % vec4<u32>(32u)), (vec4<u32>(4294967295u, 1u, 14360u, u_input.a) ^ vec4<u32>(0u, 1u, u_input.a, u_input.c)) & _wgslsmith_mod_vec4_u32(vec4<u32>(49098u, 20212u, 0u, 7252u), vec4<u32>(u_input.c, 1u, 41809u, 4294967295u))), (select(vec4<u32>(4294967295u, 4294967295u, 10273u, 54206u), vec4<u32>(u_input.c, arg_1, arg_1, arg_1), true) | vec4<u32>(4294967295u, 0u, u_input.c, 0u)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 1589u, u_input.a, u_input.a), firstTrailingBit(vec4<u32>(arg_1, arg_1, 0u, arg_1))) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 1u << (arg_1 % 32u), ~56117u, 1u), max(vec4<u32>(u_input.a, 77546u, arg_1, 18504u) | vec4<u32>(u_input.c, 1u, u_input.c, arg_1), vec4<u32>(23008u, u_input.c, 46927u, u_input.a)) << (vec4<u32>(arg_1 ^ u_input.c, _wgslsmith_div_u32(43513u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, 1u), vec3<u32>(arg_1, 0u, 0u))) % vec4<u32>(32u)), vec4<u32>(~0u, ~_wgslsmith_sub_u32(arg_1, 63220u), u_input.c, min(u_input.c, countOneBits(1u)))), !(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false))));
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.xxz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 100f, 526f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(348f)), _wgslsmith_f_op_f32(-330f - arg_2.b.x), -474f))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<i32>(u_input.b, ~(i32(-1i) * -63485i), firstTrailingBit(-32863i), _wgslsmith_add_i32(1i, 28559i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(func_1(658f, 4294967295u, Struct_1(global0.a, global0.b), vec4<f32>(-218f, 243f, global0.b.x, 942f)))))));
    var var_0 = abs(-global0.a.x) < (firstTrailingBit(67641i) << (firstLeadingBit(30004u) % 32u));
    var_0 = !all(vec3<bool>(true, true, true));
    var var_1 = u_input.c;
    var_0 = any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true | (u_input.b > 8878i)));
    let var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x + -656f))))));
    var var_3 = func_4(global0.a.x, 69469u >> (0u % 32u), false);
    var_1 = (~(~max(u_input.a, u_input.a)) >> (_wgslsmith_sub_u32(u_input.c, 4507u) % 32u)) << ((_wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a, u_input.c), u_input.c) >> (_wgslsmith_clamp_u32(4294967295u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 102u, u_input.a, u_input.c), vec4<u32>(614u, u_input.c, u_input.a, u_input.c)), _wgslsmith_sub_u32(u_input.c, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.c, 12738u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.a, 0u, 4294967295u), vec4<u32>(3703u, u_input.c, 13299u, u_input.c)))) % 32u)) % 32u);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(14233u, 13826u), u_input.c, ~1u, _wgslsmith_clamp_u32(u_input.a, 5487u, u_input.c)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 1u), vec4<u32>(35997u, u_input.c, 4294967295u, 1u)), vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.c), u_input.a, ~u_input.c)), ~countOneBits(~vec4<u32>(u_input.c, u_input.c, 0u, 0u))));
}

