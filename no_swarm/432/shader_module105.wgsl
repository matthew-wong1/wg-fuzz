struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    return -1086f;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3()), true)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-246f - 134f), _wgslsmith_f_op_f32(580f * -1000f))), -1273f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1412f, -862f, 1122f, -737f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1011f, -132f, -291f, 1046f)))))), ~vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-10041i, -15955i, u_input.b) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -25036i, -13166i), vec4<i32>(u_input.b, 2151i, 1i, -30504i)), -2147483647i));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(var_0.c.x, reverseBits(21438i)), -30747i, i32(-1i) * -2147483647i)), -firstLeadingBit(max(var_0.c | vec3<i32>(2147483647i, u_input.b, 1i), vec3<i32>(var_0.c.x, 40325i, -44945i) >> (vec3<u32>(4294967295u, u_input.c, u_input.d) % vec3<u32>(32u)))));
    let var_3 = Struct_2(~u_input.a, true, _wgslsmith_mod_i32(-948i, -42836i), var_0.a, Struct_1(select(var_0.a, any(vec2<bool>(false, var_0.a)), all(!vec3<bool>(true, var_0.a, var_0.a))), _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -796f), 506f, var_0.b.x)), select(countOneBits(firstTrailingBit(vec3<i32>(-2147483647i, var_2.x, -35829i))), firstTrailingBit(var_2), var_0.a)));
    var var_4 = !select(!(!(!vec4<bool>(true, var_0.a, var_3.e.a, var_3.b))), !(!select(vec4<bool>(true, false, false, var_3.e.a), vec4<bool>(true, false, var_3.d, var_0.a), var_3.e.a)), var_0.a);
    return Struct_3(false);
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = ~(~(~abs(vec2<u32>(1770u, u_input.d))));
    var var_1 = min(countOneBits(vec2<i32>(~(-38378i) ^ (u_input.b ^ 16267i), abs(~u_input.b))), reverseBits(~firstLeadingBit(min(vec2<i32>(0i, u_input.b), vec2<i32>(1i, u_input.b)))));
    let var_2 = Struct_2(u_input.c, true, 1i, true, Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(325f, 2036f, 630f, 1147f) * vec4<f32>(-355f, 330f, -1000f, 1277f))))), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-46941i, 1i, var_1.x), vec3<i32>(var_1.x, var_1.x, -20237i)) ^ vec3<i32>(var_1.x, u_input.b, u_input.b))));
    var_1 = vec2<i32>(-41322i, ~((var_1.x ^ -42861i) ^ -_wgslsmith_mod_i32(-2147483647i, 27983i)));
    var_1 = reverseBits(vec2<i32>(var_1.x, -2147483647i));
    return vec4<bool>(select(!(!arg_0.a & (2147483647i >= var_2.e.c.x)), all(vec2<bool>(true, 17986i >= var_1.x)), func_2().a), var_2.e.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), 25353u >= var_2.a, firstLeadingBit(2147483647i) <= countOneBits(reverseBits(abs(u_input.b))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = select(select(!(!vec4<bool>(arg_2.x, arg_3.a, false, true)), select(func_4(func_2()), !vec4<bool>(arg_2.x, false, arg_2.x, false), false), select(vec4<bool>(arg_3.a, all(vec2<bool>(arg_3.a, true)), any(vec3<bool>(arg_3.a, true, arg_2.x)), any(arg_2.xx)), func_4(Struct_3(arg_2.x)), vec4<bool>(true | arg_3.a, !arg_3.a, true, !arg_3.a))), func_4(Struct_3(true)), arg_2.x);
    let var_1 = arg_1;
    var var_2 = u_input.a;
    var_2 = u_input.c;
    return func_4(Struct_3(true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(func_1(_wgslsmith_add_i32(u_input.b, 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-336f)))), vec3<bool>(true, true, true), Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(1245f, 716f, -1000f, -104f) - vec4<f32>(-1501f, 617f, 626f, 779f)), countOneBits(vec3<i32>(u_input.b, 6719i, u_input.b))))), vec4<f32>(-952f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) + -801f)), 1140f, _wgslsmith_f_op_f32(floor(-827f))), ~vec3<i32>(24539i, -_wgslsmith_mod_i32(u_input.b, u_input.b), firstLeadingBit(firstLeadingBit(u_input.b))));
    var_0 = Struct_1(var_0.a, var_0.b, vec3<i32>(~_wgslsmith_mult_i32(u_input.b, _wgslsmith_clamp_i32(u_input.b, 0i, u_input.b)), var_0.c.x, 0i));
    var_0 = Struct_1(!var_0.a, vec4<f32>(-759f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * 459f)))), vec3<i32>(countOneBits(var_0.c.x & var_0.c.x) & -1i, ~min(-11452i, firstTrailingBit(var_0.c.x)), 1i));
    var_0 = Struct_1(false, var_0.b, reverseBits(vec3<i32>(2147483647i, ~35531i, 0i)));
    var_0 = Struct_1(firstTrailingBit(abs(firstLeadingBit(u_input.a))) > 4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.b))), vec4<f32>(-1657f, var_0.b.x, 506f, -2005f), !(!any(vec3<bool>(false, var_0.a, false))))), ~abs(~(-var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec2<u32>(39278u, u_input.c) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.c, 72854u), vec2<u32>(u_input.a, u_input.a)))));
}

