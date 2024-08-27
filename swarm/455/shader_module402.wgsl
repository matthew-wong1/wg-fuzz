struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f - -391f)))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1350f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(456f)) - 468f), _wgslsmith_f_op_f32(f32(-1f) * -1352f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 451f, -713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1236f - 424f) + 1110f))), Struct_1(-2147483647i, _wgslsmith_f_op_f32(max(979f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(591f * -212f), _wgslsmith_div_f32(475f, 1553f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))), vec3<i32>(min(0i << (1u % 32u), u_input.b >> (arg_0.x % 32u)), select(0i, arg_2.x, false) >> (~arg_0.x % 32u), ~(-arg_1.a.x))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -248f), var_0.c.c.x, _wgslsmith_f_op_f32(723f + var_0.c.c.x), _wgslsmith_f_op_f32(-var_0.c.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, 232f, -1890f, var_0.b.x), _wgslsmith_f_op_vec4_f32(floor(var_0.a)))))), var_0.c);
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1042f, -1000f, var_0.a.x, var_0.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1104f)), _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1702f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_0.a.x) * -173f), var_0.c.c.x), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -1573f), var_0.a.x)), var_0.c);
    var var_1 = Struct_1(-1i, -1206f, var_0.c.c, -arg_1.a);
    var_1 = var_0.c;
    return var_0.b.zyw;
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-406f, _wgslsmith_f_op_f32(f32(-1f) * -258f), !select(true, true, true))), -159f, -589f);
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -396f, var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2037f, var_0.x, 109f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, 353f, 873f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(0u, 66742u, 1u), Struct_4(vec3<i32>(u_input.a, -52618i, u_input.b)), vec2<i32>(u_input.b, -12494i))) - vec3<f32>(-1251f, -1115f, -806f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-347f, 1144f, var_0.x)))))))));
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(~abs(0u)), abs(1u), 1u), reverseBits(vec3<u32>(_wgslsmith_mult_u32(83792u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 15225u))), 47944u, 0u)));
    let var_2 = !select(!vec2<bool>(true, var_1.x != 42317u), !vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(_wgslsmith_f_op_f32(-var_0.x) != var_0.x, false));
    let var_3 = Struct_4(vec3<i32>(_wgslsmith_sub_i32(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(78411i, u_input.a, u_input.a))) >> (59417u % 32u), -23400i, reverseBits(_wgslsmith_mod_i32(u_input.a, u_input.b))));
    return Struct_3(vec4<f32>(-327f, var_0.x, _wgslsmith_f_op_f32(abs(1355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -504f), var_2.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1303f, var_0.x, 1557f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(-var_0.x), -1125f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(253f, 764f, var_0.x, -354f) + vec4<f32>(var_0.x, -1000f, -1260f, 247f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, 778f, 261f) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), Struct_1(var_3.a.x, 1186f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1191f, _wgslsmith_f_op_f32(f32(-1f) * -864f), -1355f, var_0.x)), countOneBits(vec3<i32>(firstTrailingBit(u_input.a), u_input.b, _wgslsmith_add_i32(-1i, -2147483647i)))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_3(var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(647f + var_0.c.c.x), 1218f, _wgslsmith_f_op_f32(var_0.c.c.x - 826f), _wgslsmith_f_op_f32(-var_0.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.c.b, var_0.c.c.x)), 1478f, _wgslsmith_f_op_f32(-1044f - -186f), -397f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-806f, var_0.c.c.x, -1101f, 529f) - var_0.a))), Struct_1(~(func_2().c.d.x | _wgslsmith_mult_i32(var_0.c.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.b))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-281f - var_0.b.x) - _wgslsmith_div_f32(-501f, -905f))), -select(var_0.c.d, _wgslsmith_mod_vec3_i32(var_0.c.d, var_0.c.d), false)));
    return func_2();
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(arg_0.a)))), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1())));
    var var_1 = _wgslsmith_dot_vec2_u32(min(vec2<u32>(_wgslsmith_mult_u32(4294967295u, 0u), 0u), ~vec2<u32>(1u, 0u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(0u, 0u)))) & ~(~(~firstTrailingBit(10382u)));
    var var_2 = select(select(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true || all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))), vec4<bool>(any(vec3<bool>(true, true, true)), true, false, true), !(_wgslsmith_f_op_f32(abs(var_0.x)) == -579f)), vec4<bool>(select(select(true, true, -34161i >= u_input.a), u_input.b != 9418i, _wgslsmith_mod_i32(u_input.b, -3982i) > 1i), true, true & all(vec3<bool>(true, true, true)), true), all(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false))));
    let var_3 = var_0.yw;
    let var_4 = any(!vec3<bool>(true, var_3.x >= -2415f, true)) & !var_2.x;
    var var_5 = func_2();
    var_1 = firstLeadingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 4294967295u, 9429u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_mod_u32(0u, 30823u), ~1u, 28366u)));
    var_2 = select(select(!vec4<bool>(true, any(var_2.xxx), var_4, all(vec2<bool>(var_4, var_4))), select(!(!vec4<bool>(true, true, var_4, false)), select(vec4<bool>(var_2.x, true, var_4, false), select(vec4<bool>(var_4, false, var_4, var_4), vec4<bool>(true, false, true, false), var_4), var_2.x), vec4<bool>(all(vec4<bool>(var_2.x, true, var_2.x, var_4)), var_4, var_4, all(var_2.yxw))), var_4), vec4<bool>((false || any(vec2<bool>(var_4, var_2.x))) & true, var_2.x, false, all(select(vec4<bool>(var_4, false, true, true), vec4<bool>(var_2.x, var_2.x, var_4, var_2.x), var_2.x)) & !all(vec2<bool>(true, var_4))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

