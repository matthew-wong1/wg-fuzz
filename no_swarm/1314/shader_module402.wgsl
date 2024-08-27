struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_5) -> f32 {
    return 185f;
}

fn func_2() -> f32 {
    var var_0 = ~abs(_wgslsmith_mult_i32(~countOneBits(-2147483647i), max(_wgslsmith_dot_vec2_i32(vec2<i32>(12479i, -1i), vec2<i32>(-5338i, -1i)), ~(-2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-834f, vec3<f32>(214f, -1385f, -257f), vec4<f32>(615f, -1010f, -586f, 138f), true, u_input.a), Struct_2(-166f, Struct_1(1000f, vec3<f32>(2052f, -637f, -1130f), vec4<f32>(-1000f, 417f, 316f, 578f), true, 0u), 52952u), vec3<f32>(-1446f, -317f, -1570f), Struct_5(74065i, -24766i, -346f, 426f)))) * 1000f)) * -976f);
    return _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, 1000f)) * var_1)))));
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(arg_1.d - arg_1.d))))));
    let var_1 = _wgslsmith_dot_vec4_i32(abs(firstTrailingBit(vec4<i32>(0i, 0i, arg_1.a, 2147483647i))) << (vec4<u32>(abs(~44871u), ~1u, arg_2.x, arg_2.x) % vec4<u32>(32u)), ~(vec4<i32>(select(arg_1.a, 11144i, true), arg_1.b, _wgslsmith_add_i32(arg_1.a, arg_1.b), arg_1.b | arg_1.a) >> (vec4<u32>(~arg_0, _wgslsmith_div_u32(arg_2.x, arg_0), ~u_input.b.x, min(arg_2.x, arg_0)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-411f - 1065f), _wgslsmith_f_op_f32(floor(arg_1.c)), _wgslsmith_f_op_f32(arg_1.c + 604f), arg_1.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1581f, arg_1.d, arg_1.d, arg_1.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(572f, arg_1.c, -1671f, -520f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1646f, arg_1.c, -156f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d, arg_1.d, arg_1.d, 1533f), vec4<f32>(1000f, -962f, arg_1.d, arg_1.d), vec4<bool>(false, false, true, false))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-579f, 823f, arg_1.c, arg_1.d))))))));
    let var_3 = Struct_5(_wgslsmith_add_i32(_wgslsmith_mult_i32(~(-35944i) >> (~arg_0 % 32u), 10795i), abs(1i)), 27186i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f * 853f)) - -795f), arg_1.c);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -378f);
    return 1u >> (arg_2.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(548f - -993f)), -414f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(172f)), -1732f, _wgslsmith_f_op_f32(973f * 2398f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2262f, -1369f), -1506f, 570f, _wgslsmith_div_f32(-477f, -881f))), !((u_input.a >> (65792u % 32u)) > (u_input.a ^ 1u)), _wgslsmith_mult_u32(1u << (func_1(72578u, Struct_5(-2147483647i, 0i, 225f, 1091f), u_input.b) % 32u), 65229u)), 1u, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(1000f, vec3<f32>(814f, -513f, -214f), vec4<f32>(-445f, 1000f, -432f, -1273f), true, 4294967295u), Struct_2(-631f, Struct_1(-732f, vec3<f32>(778f, 254f, 1556f), vec4<f32>(1309f, -1000f, -681f, 2170f), false, u_input.b.x), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(655f, 158f, -972f) * vec3<f32>(527f, 317f, 1498f)), Struct_5(1i, 22955i, -1371f, -755f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1673f * 148f) + -1523f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -802f, 1017f) + vec3<f32>(1000f, -115f, -113f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(193f, -545f, -445f, 676f))))), all(vec3<bool>(true, false, true)), u_input.a), 30291u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -259f))) - _wgslsmith_f_op_f32(-var_0.a.c.x));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-var_0.c.b.a));
    let var_3 = 0u;
    var var_4 = u_input.a;
    let var_5 = countOneBits(vec2<i32>(-(~25281i), 0i));
    let var_6 = abs(select(reverseBits(reverseBits(vec3<u32>(var_0.b, 0u, 0u))), vec3<u32>(var_0.b, firstLeadingBit(countOneBits(var_0.a.e)), 1u), false));
    var_4 = u_input.a;
    var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(17110u), var_0.b & var_0.c.c));
}

