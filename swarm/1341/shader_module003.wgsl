struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(321f, arg_1.a.x, true))), _wgslsmith_div_f32(-1000f, arg_0.x))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-740f * _wgslsmith_f_op_f32(sign(723f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2486f) - _wgslsmith_f_op_f32(-1608f + 655f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(402f, -698f) - vec2<f32>(247f, -470f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1333f, 1193f), vec2<f32>(-2263f, 199f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(var_0.a.x, 1109f, var_0.a.x), Struct_2(vec2<f32>(-531f, var_0.a.x)), Struct_1(vec3<f32>(-320f, -343f, var_0.a.x), true, vec4<u32>(12409u, 14433u, u_input.a, u_input.d), vec3<i32>(26859i, u_input.c.x, u_input.e), true), vec3<u32>(u_input.a, 1u, u_input.a))) + vec2<f32>(var_0.a.x, 2842f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, -680f), _wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.a)))))));
    let var_2 = var_1;
    var var_3 = ~(-2147483647i);
    var var_4 = Struct_2(vec2<f32>(var_0.a.x, -902f));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = var_0;
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)) * -207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(min(498f, var_0.a.x))))));
    let var_2 = var_0;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(862f - var_2.a.x), _wgslsmith_div_f32(107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = vec3<bool>(arg_2, all(select(select(!vec2<bool>(true, arg_0.e), select(vec2<bool>(true, arg_2), vec2<bool>(true, arg_2), vec2<bool>(false, false)), !vec2<bool>(arg_2, true)), vec2<bool>(any(vec2<bool>(true, false)), arg_2), select(select(vec2<bool>(true, arg_0.e), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_0.e)), vec2<bool>(arg_0.b, arg_2), vec2<bool>(arg_0.e, false)))), true);
    var var_1 = arg_1;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_div_vec4_u32(arg_0.c, vec4<u32>(reverseBits(arg_0.c.x | 23298u) >> (~u_input.d % 32u), 1u, var_2.c.x, ~(~u_input.a)));
    let var_4 = _wgslsmith_sub_u32(max(_wgslsmith_sub_u32(var_2.c.x, _wgslsmith_mod_u32(~2893u, firstLeadingBit(arg_0.c.x))), firstTrailingBit(firstLeadingBit(var_3.x))), _wgslsmith_dot_vec4_u32(var_2.c, var_2.c));
    return arg_0;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(871f * -297f), -2554f));
    var var_1 = 1i;
    let var_2 = !select(!(!(!vec3<bool>(arg_1.b, arg_1.e, true))), select(select(select(vec3<bool>(true, arg_1.e, arg_1.e), vec3<bool>(arg_1.b, arg_1.e, arg_1.b), vec3<bool>(arg_1.b, arg_1.e, arg_1.b)), select(vec3<bool>(true, true, arg_1.e), vec3<bool>(true, arg_1.b, arg_1.b), arg_1.e), var_0 == 1009f), vec3<bool>(true, true, true), arg_1.e), vec3<bool>(arg_1.e, !func_4(Struct_1(vec3<f32>(-185f, arg_2.x, 190f), false, vec4<u32>(4294967295u, arg_1.c.x, 0u, arg_1.c.x), arg_0, false), Struct_2(arg_1.a.yz), arg_1.b).b, all(vec3<bool>(true, true, true))));
    var_1 = arg_1.d.x | ~func_4(func_4(Struct_1(vec3<f32>(151f, var_0, var_0), arg_1.e, arg_1.c, arg_0, var_2.x), func_1(), true), func_1(), true).d.x;
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.c.wxz, min(u_input.c.yzw, u_input.c.zxz)) ^ u_input.c.wzz, u_input.c.zyz);
    let var_1 = !vec2<bool>(false, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -121f))), _wgslsmith_f_op_f32(step(1f, -128f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(-716f, 473f)))) + _wgslsmith_f_op_vec3_f32(func_5(u_input.c.ywz, func_4(Struct_1(vec3<f32>(920f, 622f, -930f), true, vec4<u32>(70949u, 21722u, u_input.a, u_input.d), vec3<i32>(u_input.e, 8383i, -33023i), var_1.x), func_1(), all(vec4<bool>(false, false, true, false))), vec2<f32>(204f, -340f)))), vec4<f32>(2025f, 231f, _wgslsmith_div_f32(func_4(func_4(Struct_1(vec3<f32>(1000f, 1247f, 102f), var_1.x, vec4<u32>(4294967295u, 0u, 36160u, u_input.a), u_input.c.zyw, true), Struct_2(vec2<f32>(-1544f, 1046f)), var_1.x), func_2(), var_1.x).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -555f));
}

