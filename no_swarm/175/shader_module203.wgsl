struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(320f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2304f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1092f, var_0.a))), var_0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(exp2(var_0.b)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.b))))), true)));
    var var_2 = ~(~vec3<i32>(-7839i, arg_0, arg_0)) | vec3<i32>(arg_0, _wgslsmith_add_i32(arg_0, abs(u_input.c)), firstLeadingBit(2147483647i));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-204f)))))), -887f);
    global0 = _wgslsmith_f_op_f32(step(104f, var_1.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-196f * var_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -630f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.b, -250f), _wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + 1000f), _wgslsmith_f_op_f32(1054f - var_1.a)))) - _wgslsmith_f_op_f32(-var_1.a));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(-(countOneBits(u_input.b) ^ 43403i), true)), 107f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(403f))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(step(1278f, var_0.a))), var_0.b) - _wgslsmith_f_op_f32(-var_0.b)));
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(step(var_0.a, -119f)));
    var_1 = Struct_1(1409f, 1854f);
    var_1 = Struct_1(var_1.b, _wgslsmith_f_op_f32(150f - _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_div_f32(var_1.b, -842f)))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(max(var_1.a, var_0.b))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = all(select(vec3<bool>(select(arg_2, arg_2 && false, false), select(false, false, arg_2), !arg_2 || (arg_2 || true)), vec3<bool>(22127i > reverseBits(u_input.c), !(arg_2 & true), arg_2), !vec3<bool>(all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), select(false, false, false), all(vec2<bool>(false, true)))));
    var var_1 = arg_1;
    global0 = _wgslsmith_div_f32(1142f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(100f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(f32(-1f) * -291f)), var_1.a))));
    let var_2 = 2147483647i;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    return Struct_1(_wgslsmith_f_op_f32(arg_3.a - 100f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(arg_0))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = func_4(1000f, func_2(), true, func_2());
    global0 = var_0.b;
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(313f + 1540f))))))), -126f);
    var_0 = Struct_1(_wgslsmith_div_f32(1f, var_0.a), 706f);
    var var_1 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~(~(~vec4<u32>(1912u, 1u, 103401u, 11219u))) ^ vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(10231u, 120u, 1u, 12383u), vec4<u32>(4294967295u, 0u, 19894u, 49357u)), 54263u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(51356u, 81264u, 0u), ~4294967295u), 0u)) >> (~vec4<u32>(12125u, func_1(~26700u), ~0u, ~_wgslsmith_mod_u32(26005u, 52070u)) % vec4<u32>(32u));
    var var_1 = abs(vec4<i32>(reverseBits(~0i), firstLeadingBit(u_input.b) << (select(~4294967295u, ~var_0.x, true) % 32u), -16746i, (i32(-1i) * -2147483647i) & u_input.c));
    var var_2 = func_2();
    var_1 = -reverseBits(vec4<i32>(var_1.x, min(var_1.x, i32(-1i) * -18673i), -834i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.c), u_input.a), _wgslsmith_sub_i32(1i, 0i))));
    var var_3 = select(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.zwy), ~_wgslsmith_mod_vec3_u32(var_0.xwx, vec3<u32>(var_0.x, 15054u, var_0.x))), var_0.wwz, all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * var_2.b), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_2.a), func_2().a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, _wgslsmith_f_op_f32(-446f * _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.b, var_2.b)), _wgslsmith_f_op_f32(var_2.b + var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)))), func_2().b, _wgslsmith_mod_vec4_u32(~vec4<u32>(~var_3.x, var_3.x, var_0.x, var_0.x), vec4<u32>(_wgslsmith_mod_u32(var_0.x, var_3.x), _wgslsmith_add_u32(var_0.x, var_3.x), var_0.x, firstLeadingBit(12443u)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_3.x, 1u, 0u), vec4<u32>(0u, 1u, 2520u, var_3.x), vec4<u32>(42961u, 22301u, var_0.x, 0u)), max(vec4<u32>(var_0.x, var_3.x, 4294967295u, var_0.x), vec4<u32>(var_3.x, 0u, var_0.x, var_0.x))) % vec4<u32>(32u))));
}

