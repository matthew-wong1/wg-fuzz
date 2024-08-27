struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec3<u32> {
    let var_0 = reverseBits(min(-(~abs(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-13741i), firstLeadingBit(34687i), firstTrailingBit(1i)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-85845i, 52608i, -7204i)), vec3<i32>(1i, 1i, 1i)))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f * 438f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 486f) * _wgslsmith_f_op_f32(-126f - arg_0))), 355f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -346f), -180f));
    let var_2 = 41737u & ~u_input.a;
    let var_3 = ~var_2 >> (_wgslsmith_div_u32(var_2, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_2, 0u, u_input.b.x, 93843u)), vec4<u32>(var_2, 4294967295u, var_2, u_input.b.x))) % 32u);
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_1);
    return vec3<u32>(_wgslsmith_add_u32(var_2, ~max(~4294967295u, u_input.b.x)), var_3, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30192u, 1u), u_input.c.yz), var_2, ~u_input.b.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = Struct_3(func_3(381f, true), arg_3.c.a.x);
    var var_1 = Struct_4(Struct_2(arg_3.a.a, Struct_1(!select(vec2<bool>(false, true), arg_3.b.a, false)), arg_3.c, -359f, vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + 212f), -2164f, arg_2.x, -138f)), Struct_1(vec2<bool>(true, true)), arg_3.c, arg_3.d, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-714f + _wgslsmith_f_op_f32(arg_3.e.x * arg_2.x)), 108f)), _wgslsmith_f_op_f32(floor(arg_3.e.x))));
    var var_2 = vec3<u32>(u_input.b.x, arg_1, _wgslsmith_div_u32(4294967295u, ~22716u));
    var_1 = arg_3;
    var_1 = Struct_4(Struct_2(vec4<bool>(all(vec4<bool>(false, var_0.b, false, false)), !(!var_0.b), !arg_3.b.a.x, var_0.b), Struct_1(arg_3.c.a), Struct_1(var_1.d.a), -310f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-758f, arg_3.a.e.x, arg_3.e.x, arg_2.x)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(193f)), 374f, _wgslsmith_f_op_f32(arg_2.x * 635f), _wgslsmith_f_op_f32(min(-2118f, arg_3.e.x))))), Struct_1(vec2<bool>(u_input.b.x < var_0.a.x, !var_0.b)), var_1.b, Struct_1(vec2<bool>(false, var_1.b.a.x)), var_1.a.e.zy);
    return !vec2<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), var_2.xy) & (0u & arg_1)) <= ~var_0.a.x, var_1.c.a.x);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_i32(-1i, -1i, -39898i));
    var var_1 = Struct_3(_wgslsmith_sub_vec3_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1175f), true) << (firstTrailingBit(min(u_input.c, vec3<u32>(0u, 8022u, u_input.c.x))) % vec3<u32>(32u)), vec3<u32>(~u_input.b.x, _wgslsmith_sub_u32(4294967295u, ~4294967295u), 1u)), all(!select(arg_0.a, select(vec2<bool>(true, false), arg_0.a, arg_0.a), vec2<bool>(arg_0.a.x, arg_0.a.x))));
    var var_2 = Struct_4(Struct_2(vec4<bool>(true, !arg_0.a.x, arg_0.a.x, any(select(vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), vec4<bool>(true, false, var_1.b, var_1.b), true))), Struct_1(select(arg_0.a, vec2<bool>(true, arg_0.a.x), true)), Struct_1(select(select(arg_0.a, arg_0.a, vec2<bool>(var_1.b, var_1.b)), arg_0.a, true)), 736f, vec4<f32>(_wgslsmith_f_op_f32(min(-833f, 1f)), -212f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(952f - 1000f), _wgslsmith_f_op_f32(select(473f, 1411f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -743f) - -1051f))), arg_0, Struct_1(vec2<bool>(!all(vec2<bool>(true, false)), select(false & arg_0.a.x, func_2(var_0, var_1.a.x, vec2<f32>(-1267f, -1391f), Struct_4(Struct_2(vec4<bool>(true, true, true, arg_0.a.x), arg_0, arg_0, -646f, vec4<f32>(-427f, -1223f, 594f, -1202f)), arg_0, arg_0, Struct_1(arg_0.a), vec2<f32>(-462f, 615f))).x, var_1.b))), Struct_1(!(!(!arg_0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-593f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, -160f, false)), _wgslsmith_f_op_f32(trunc(-126f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, -1075f))))));
    var_2 = Struct_4(var_2.a, var_2.c, var_2.c, Struct_1(arg_0.a), vec2<f32>(1513f, 1203f));
    let var_3 = reverseBits(_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(-2147483647i, var_0, 1i)), vec3<i32>(-45824i, var_0, 14005i) ^ vec3<i32>(var_0, 24573i, 16771i))));
    return var_2.a;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = arg_3;
    let var_1 = func_4(Struct_1(vec2<bool>(all(func_2(26777i, u_input.a, vec2<f32>(510f, arg_1), Struct_4(Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), arg_1, vec4<f32>(1062f, arg_1, arg_1, 1000f)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), vec2<f32>(712f, arg_1)))), true)));
    let var_2 = var_1;
    var var_3 = reverseBits(~min(u_input.c, u_input.c));
    var_3 = vec3<u32>(arg_3 << (_wgslsmith_div_u32(~4294967295u, 39371u) % 32u), select(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u << (u_input.c.x % 32u), reverseBits(85045u)), firstTrailingBit(u_input.b.x)), abs(~countOneBits(arg_3)), !(false | var_1.a.x)), arg_3);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a) | ~_wgslsmith_clamp_u32(32610u, _wgslsmith_div_u32(u_input.b.x, u_input.a) >> (u_input.b.x % 32u), func_1(2751i, _wgslsmith_div_f32(255f, -1000f), vec3<i32>(1i, 1i, 1i), ~u_input.a));
    var var_1 = Struct_3(~func_3(_wgslsmith_f_op_f32(step(-1480f, 1000f)), false), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(283f, 402f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1302f))))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, -1422f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(980f, 1571f)), vec2<f32>(1419f, 217f)))));
    var var_3 = func_4(Struct_1(!(!vec2<bool>(false, var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.zy);
}

