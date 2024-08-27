struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    let var_0 = vec3<u32>(~0u, firstLeadingBit(31107u), _wgslsmith_mod_u32(~(~(~arg_0.b)), u_input.c));
    let var_1 = arg_0;
    let var_2 = Struct_1(u_input.a, u_input.d, u_input.a.x);
    let var_3 = abs(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(27272u, var_0.x, var_0.x, 70033u) << (vec4<u32>(var_0.x, var_0.x, arg_0.b, var_1.b) % vec4<u32>(32u))), ~vec4<u32>(1u, countOneBits(1u), abs(24120u), ~u_input.c)));
    var var_4 = Struct_2(select(var_3.ww, max(~(vec2<u32>(var_0.x, var_1.a.x) ^ var_0.zx), var_1.a), !vec2<bool>(u_input.a.x <= -7537i, any(vec3<bool>(true, arg_2, true)))), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 1u), ~0u, var_3.x)));
    return _wgslsmith_mod_u32(var_4.a.x, 34290u);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = ~(arg_2.b & 38550u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2138f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1839f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)))) - -1004f);
    var_0 = _wgslsmith_mod_u32(arg_1.x, _wgslsmith_mult_u32((36475u ^ _wgslsmith_sub_u32(arg_0.b, 38019u)) >> (~_wgslsmith_div_u32(73892u, arg_2.b) % 32u), 91270u));
    var_0 = firstLeadingBit(arg_1.x);
    let var_2 = ~vec4<i32>(max(0i, u_input.d), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, ~vec2<i32>(1i, u_input.b)), i32(-1i) * -u_input.d), _wgslsmith_add_i32(~32493i, min(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, -4110i)), -2147483647i)), _wgslsmith_sub_i32(2147483647i, reverseBits(u_input.b)) | -2147483647i);
    return ~_wgslsmith_mod_u32(~func_3(Struct_2(vec2<u32>(0u, 40601u), 4950u), vec4<bool>(true, true, true, true), true), _wgslsmith_dot_vec4_u32(vec4<u32>(37223u, arg_2.b, 23895u, 4294967295u) ^ (vec4<u32>(1u, arg_2.a.x, arg_2.a.x, u_input.c) | vec4<u32>(53209u, arg_1.x, arg_0.b, 1u)), select(vec4<u32>(arg_2.a.x, 1u, arg_0.a.x, 0u), vec4<u32>(arg_1.x, 53159u, arg_0.b, u_input.c), true)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-(u_input.d | 0i), _wgslsmith_div_i32(u_input.a.x & -1i, -3948i), -26176i), vec3<i32>(abs(abs(u_input.b)), select(-15088i, _wgslsmith_mod_i32(10026i, u_input.b), all(vec2<bool>(false, false))), 19239i), vec3<i32>(~u_input.a.x << (~0u % 32u), 2483i << (_wgslsmith_div_u32(u_input.c, u_input.c) % 32u), ~(~0i))), _wgslsmith_add_i32(1i, u_input.b) >> (_wgslsmith_add_u32(u_input.c, _wgslsmith_add_u32(~0u, func_2(Struct_2(vec2<u32>(27271u, u_input.c), 4294967295u), vec2<u32>(9912u, u_input.c), Struct_2(vec2<u32>(u_input.c, u_input.c), 42811u)))) % 32u), select(-countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-96514i, -2137i, 42028i, u_input.b), vec4<i32>(-23779i, u_input.d, -1i, u_input.b))), 1i, true));
    return Struct_1(reverseBits(-vec3<i32>(~u_input.b, var_0.a.x, ~var_0.a.x)), var_0.a.x, _wgslsmith_dot_vec2_i32(min(var_0.a.yy, u_input.a.yx), min(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, var_0.b), u_input.a.zx, var_0.a.xz)), vec2<i32>(u_input.a.x | var_0.b, -42204i))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(944f - _wgslsmith_f_op_f32(max(-1000f, 1213f))) + 2333f), -171f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f - -328f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -405f))))))));
    let var_1 = reverseBits(1i);
    let var_2 = firstLeadingBit(vec2<u32>(~u_input.c, ~(~(u_input.c ^ u_input.c))));
    let var_3 = func_1();
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(u_input.c, 16058u, u_input.c, 0u))), abs(abs(firstLeadingBit(vec4<u32>(u_input.c, var_2.x, 31388u, u_input.c))))));
    return ~min(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 16332i), -vec2<i32>(arg_1, -80440i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a.xx, func_4(func_1(), func_1().c), !vec2<bool>(all(vec3<bool>(true, true, true)) & any(vec3<bool>(true, false, false)), !any(vec2<bool>(true, true))));
    let var_1 = false != all(select(vec4<bool>(select(false, true, false), all(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(u_input.a.x > var_0.x, true, true, any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, true, true, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * -475f) - _wgslsmith_f_op_f32(763f + -291f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1159f, 1852f, 137f, -265f), vec4<f32>(-1000f, -814f, 1099f, 1525f), var_1)) + vec4<f32>(-1130f, -2938f, -523f, 363f))))));
    var var_3 = select(vec2<bool>(!var_1, true), select(vec2<bool>(true, true), !(!select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1))), select(var_1, var_1, var_1)), vec2<bool>(select(true, var_1, !all(vec3<bool>(var_1, var_1, var_1))), true));
    var var_4 = Struct_1(vec3<i32>(62813i, func_1().b, 2147483647i), 19745i, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c >> (0u % 32u), firstTrailingBit(u_input.c)), _wgslsmith_mod_u32(~u_input.c, ~0u)));
}

