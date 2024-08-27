struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    return ~(~0u >> (~(~select(0u, 4294967295u, false)) % 32u));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = any(vec2<bool>(true, !all(vec2<bool>(true, true))));
    var var_1 = Struct_2(any(vec4<bool>(func_2(vec3<i32>(u_input.a.x, 0i, -1i)) < 1u, true, false, true)), vec4<u32>(_wgslsmith_sub_u32(max(4294967295u, 0u), 1u) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13824u), vec2<u32>(1u, 15392u)), 1u) % 32u), ~1u, _wgslsmith_mod_u32(9757u, 1u), 1u));
    let var_2 = Struct_3(Struct_1(u_input.a.x, u_input.a));
    let var_3 = var_2;
    let var_4 = 110427u;
    return Struct_1(arg_1, min(min(abs(vec2<i32>(var_2.a.b.x, var_3.a.a)), firstTrailingBit(var_2.a.b)), var_3.a.b) & _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(var_3.a.b.x, arg_1)), _wgslsmith_clamp_vec2_i32(abs(var_3.a.b), vec2<i32>(arg_1, var_2.a.a), vec2<i32>(var_2.a.b.x, -2147483647i))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(floor(236f));
    var_0 = -159f;
    var_0 = -1341f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-265f, 1615f, false))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -441f))));
    var var_1 = _wgslsmith_sub_vec2_u32(select(arg_0.b.yz, vec2<u32>(min(_wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x), arg_0.b.x), arg_0.b.x), !vec2<bool>(all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), true)), arg_0.b.zz);
    return firstTrailingBit(select(~vec4<u32>(_wgslsmith_mod_u32(arg_0.b.x, var_1.x), ~18392u, _wgslsmith_mult_u32(var_1.x, 1u), var_1.x), select(~(~vec4<u32>(9719u, 4294967295u, 10736u, 4294967295u)), ~arg_0.b, vec4<bool>(true, true, !arg_0.a, false)), select(!(!vec4<bool>(arg_0.a, false, false, arg_0.a)), select(vec4<bool>(arg_0.a, arg_0.a, false, true), !vec4<bool>(arg_0.a, arg_0.a, false, false), arg_0.a), select(!vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(true, arg_0.a, true, false), vec4<bool>(false, true, false, false), arg_0.a), !vec4<bool>(true, false, arg_0.a, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(364f, ~u_input.a.x ^ u_input.a.x);
    let var_1 = var_0.a;
    let var_2 = Struct_4(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, -64333i, var_1, -38295i), vec4<i32>(-2147483647i, var_1, 1i, var_0.a)), abs(u_input.b), 597i) | reverseBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(6964i, 2147483647i, var_0.a), vec3<i32>(0i, var_1, -74663i), vec3<i32>(1i, -1899i, 2147483647i))));
    let var_3 = vec2<f32>(-1398f, 1095f);
    let var_4 = _wgslsmith_mod_vec2_u32(select(~vec2<u32>(1u, 1u), select(vec2<u32>(0u, 0u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_mult_u32(88127u, 18470u)), false), (firstLeadingBit(var_2.a.x) | u_input.b) < _wgslsmith_mod_i32(~0i, var_1)), vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(6222u, min(1u, 43907u)), 1u)));
    let var_5 = Struct_2(true, func_3(Struct_2(all(vec4<bool>(false, false, true, true)), max(vec4<u32>(var_4.x, 55573u, var_4.x, 0u), vec4<u32>(0u, 0u, 21489u, 29658u))), var_2) | vec4<u32>(var_4.x, _wgslsmith_add_u32(_wgslsmith_div_u32(var_4.x, var_4.x), var_4.x), 4294967295u, var_4.x));
    let var_6 = firstTrailingBit(-vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, var_2.a.xx), _wgslsmith_mod_vec2_i32(u_input.a, var_2.a.yz)), ~var_0.b.x, i32(-1i) * -2147483647i, u_input.a.x));
    let var_7 = _wgslsmith_f_op_f32(step(902f, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_7, -519f, var_7)))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_7)), _wgslsmith_f_op_f32(floor(518f)), _wgslsmith_f_op_f32(sign(var_7)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1956f)), _wgslsmith_f_op_f32(var_3.x * var_3.x), var_7), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2140f, var_7, 1217f), vec3<f32>(var_3.x, var_3.x, 1837f)) - vec3<f32>(var_3.x, 1650f, var_7)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -114f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)))), -223f, _wgslsmith_f_op_f32(-var_7));
}

