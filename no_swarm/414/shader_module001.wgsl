struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> vec3<bool> {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))));
    let var_1 = ~vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)), ~4294967295u) | _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(112191u, 5392u), countOneBits(vec2<u32>(1u, 0u))), reverseBits(min(vec2<u32>(u_input.b, 57554u), vec2<u32>(u_input.b, 39898u)))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), abs(min(vec2<u32>(10217u, u_input.b), vec2<u32>(u_input.b, 1u)))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -592f);
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, 107f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x - 1594f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 511f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_2, _wgslsmith_div_f32(424f, -1105f))))));
    return select(!vec3<bool>(1i < max(-1i, u_input.c), any(vec4<bool>(var_2.x, var_2.x, true, false)), !all(var_0)), vec3<bool>(-41985i <= ((u_input.c & u_input.a) & _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(1i, arg_1.x, arg_1.x, -44854i))), true, !any(select(vec4<bool>(var_2.x, false, false, false), vec4<bool>(false, false, var_2.x, false), var_0.x))), true);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true, select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_3(Struct_1(vec2<f32>(169f, 1045f)), ~vec2<i32>(2147483647i, 23843i), _wgslsmith_div_f32(-1336f, 283f)), true), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), false));
    var var_1 = 17219u;
    var_1 = abs(u_input.b);
    var_1 = min(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 53796u, 13740u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), _wgslsmith_mod_u32(u_input.b, u_input.b), ~u_input.b), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(u_input.b, 206u, 4294967295u))), vec3<u32>(abs(countOneBits(4294967295u)), _wgslsmith_div_u32(16354u, u_input.b) >> (~u_input.b % 32u), ~20368u)), _wgslsmith_add_u32(u_input.b, countOneBits(max(1u, u_input.b))));
    var var_2 = Struct_2(true, select(!var_0.b, var_0.b, var_0.b));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-324f, -680f), vec2<f32>(-1267f, 1051f), vec2<bool>(var_0.b.x, var_2.b.x))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-686f, 209f), vec2<f32>(1000f, 410f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-285f, -383f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1941f, -1000f))), var_2.b.zx))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(-190f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2706f, 602f))), _wgslsmith_div_f32(-686f, 477f)));
    let var_1 = !((_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 1i, u_input.a), -vec3<i32>(-10403i, u_input.c, 6145i)) >> (~(~1u) % 32u)) > -1i);
    var var_2 = func_2();
    let var_3 = vec4<bool>(1i > _wgslsmith_mult_i32(select(u_input.a, 1i, false), firstTrailingBit(~u_input.c)), true, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1109f))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * var_0.a.x) * 440f))));
    let var_4 = abs(_wgslsmith_mult_i32(u_input.c, -1i));
    return Struct_2(!(!all(vec2<bool>(var_1, var_1))), select(var_3.wxw, var_3.yzw, func_3(Struct_1(_wgslsmith_f_op_vec2_f32(max(var_2.a, var_0.a))), ~firstTrailingBit(vec2<i32>(-2147483647i, 0i)), func_2().a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, 1000f)) - vec2<f32>(var_0.a.x, arg_2.x)))));
    var var_1 = vec4<i32>(u_input.c >> ((~_wgslsmith_sub_u32(u_input.b, u_input.b) & u_input.b) % 32u), -2147483647i, 0i, -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x * 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))))), var_0.a.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-240f - -101f)), -333f)));
    return Struct_2(arg_1.b.x, !vec3<bool>(true, _wgslsmith_div_f32(-492f, var_3.a.x) > _wgslsmith_f_op_f32(-var_2), select(true, arg_0.b.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(0u), func_1(u_input.b >> (~(~u_input.b) % 32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1194f, 1449f, 1719f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1888f, -302f, 1558f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1190f, 1000f))))))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(144f, -904f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-455f, -1618f)))), 1f));
    var var_2 = true || !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x))) != var_1.a.x);
    let var_3 = u_input.c;
    var var_4 = var_0.b.zx;
    var var_5 = func_4(var_0, func_1(~_wgslsmith_div_u32(~2696u, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, 541f)), _wgslsmith_f_op_f32(-266f * var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, 1000f))), func_2());
    var var_6 = abs(-abs(vec2<i32>(u_input.a, 6791i)) ^ vec2<i32>(u_input.c, var_3)) >> (~(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u), var_0.b.yz), abs(vec2<u32>(79613u, 11026u)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(762f - -725f))), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1675f), func_4(Struct_2(var_5.a, vec3<bool>(true, var_4.x, false)), var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, -1251f)), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x))).a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(699f, 1000f, var_1.a.x) - vec3<f32>(1000f, var_1.a.x, 256f)))));
}

