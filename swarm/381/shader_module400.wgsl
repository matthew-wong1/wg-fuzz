struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(852f, 942f, 2101f, -295f) * vec4<f32>(-395f, 249f, 547f, -666f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1221f, 272f, 1000f, -295f)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-618f * -457f), -154f)), _wgslsmith_f_op_f32(-1370f + _wgslsmith_f_op_f32(round(-281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - -227f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-386f)), -1726f, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1595f, -109f, -1091f, -531f), vec4<f32>(642f, 308f, 989f, 1592f))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a <= u_input.a, all(vec2<bool>(false, true)), true, 6567u >= u_input.a), vec4<bool>(select(false, true, true), true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, true)), false), vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(abs(0i), _wgslsmith_mult_i32(36454i, min(-7034i, countOneBits(-8635i))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), select(~vec2<i32>(-2147483647i, -24041i), max(vec2<i32>(-2147483647i, 1i), vec2<i32>(0i, 2952i)), vec2<bool>(false, true)))), reverseBits(min(vec3<i32>(1i, 1i, 1i), vec3<i32>(~27171i, -1i, 1i))));
    var var_2 = _wgslsmith_add_vec4_i32(~vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(1i, 0i)), var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 18714i), -var_1.zx), var_1.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.x, 2147483647i, var_1.x, 16943i), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 2147483647i, var_1.x, 26148i), vec4<i32>(53124i, var_1.x, var_1.x, -2147483647i) & vec4<i32>(var_1.x, 1i, var_1.x, -37565i)))));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-48738i, abs(var_1.x), ~599i, var_1.x | (i32(-1i) * -19698i)), vec4<i32>(1i, 32726i, (_wgslsmith_mod_i32(2147483647i, var_2.x) ^ _wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(var_1.x, -24584i))) >> (u_input.a % 32u), var_2.x));
    var_1 = var_2.xzx;
    return 1702f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = Struct_1(28901u, arg_1);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_3)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))));
    var var_2 = var_0;
    var_2 = Struct_1(_wgslsmith_add_u32(~var_2.a, arg_0.x), vec3<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_1.x, -1i), vec4<i32>(var_2.b.x, arg_1.x, var_0.b.x, -36851i)), vec4<i32>(20840i, -2147483647i, 5002i, -30661i)), 13175i), 2147483647i));
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(ceil(1404f))) * -112f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1)))) * var_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 290f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3, 2077f))))), _wgslsmith_f_op_f32(-973f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3))))), Struct_1(var_2.a, vec3<i32>(~(-4287i), min(arg_1.x, ~(-40129i)), abs(29041i) | ~var_0.b.x)), -31851i, Struct_1(~var_2.a, select(var_0.b, ~vec3<i32>(var_2.b.x, 22740i, 2147483647i), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), true))), ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-16149i, var_0.b.x, -48070i, var_0.b.x), vec4<i32>(arg_1.x, arg_1.x, var_0.b.x, var_2.b.x)), vec4<i32>(var_0.b.x, -1i, var_0.b.x, arg_1.x)), vec4<i32>(~var_0.b.x, -1i, -2147483647i, var_2.b.x)));
    return all(vec4<bool>(true, any(vec2<bool>(any(vec3<bool>(false, true, false)), all(vec3<bool>(false, true, true)))), !all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec2<f32> {
    var var_0 = u_input.a;
    let var_1 = vec4<bool>(func_2(vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(u_input.a, u_input.a)), 1u, arg_0.d.a, 0u), arg_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_1)), arg_2), !((arg_0.d.b.x & arg_0.d.b.x) == ~(arg_0.e.x & -8689i)), !select(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), (19609u > ~(~arg_0.b.a)) & all(vec2<bool>(true, all(vec4<bool>(true, false, true, true)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec4<f32>(arg_0.a.x, arg_0.a.x, -381f, -1802f))) + _wgslsmith_f_op_vec4_f32(exp2(arg_0.a))))), arg_0.b, -1i, Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.b.a, 1u), vec3<u32>(u_input.a, u_input.a, arg_0.b.a)), vec3<u32>(0u, arg_0.b.a >> (arg_0.b.a % 32u), _wgslsmith_mod_u32(u_input.a, arg_0.d.a))), firstTrailingBit(vec3<i32>(arg_0.d.b.x, reverseBits(arg_0.b.b.x), 58190i))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(arg_0.b.b.x, 12028i, arg_0.d.b.x, arg_0.d.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-40567i, arg_0.d.b.x, arg_0.d.b.x, 0i), arg_0.e, arg_0.e) >> (select(vec4<u32>(u_input.a, arg_0.d.a, 4294967295u, arg_0.b.a), vec4<u32>(u_input.a, arg_0.b.a, u_input.a, u_input.a), var_1) % vec4<u32>(32u)), -vec4<i32>(-1i, arg_0.d.b.x, -50422i, arg_0.c)), arg_0.e));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), -2510f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.a.yw))), arg_0.a.wz)), var_1.zz)) - arg_0.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(340f - -335f), -451f, true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-346f, -542f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec4<f32>(367f, -1000f, -849f, -1283f), Struct_1(1u, vec3<i32>(21626i, 11044i, -2147483647i)), -33818i, Struct_1(0u, vec3<i32>(2147483647i, 6954i, 25335i)), vec4<i32>(-1i, 14567i, -1i, 21785i)), -2232f, -1395f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(473f, 1955f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1501f, 224f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(157f, 115f), vec2<f32>(2139f, -828f), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -122f)))));
    let var_1 = ~min(~_wgslsmith_div_vec4_u32(min(vec4<u32>(9007u, 0u, 4294967295u, u_input.a), vec4<u32>(u_input.a, 60952u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 2003u, 1u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 3734u, 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 14627u, 21530u)), _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, ~29677u) & vec4<u32>(5676u, ~u_input.a, _wgslsmith_sub_u32(1u, u_input.a), _wgslsmith_add_u32(4655u, 0u)));
    let var_2 = Struct_2(vec4<f32>(-988f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-326f, -731f))) - 1850f), _wgslsmith_f_op_f32(ceil(var_0.x))), Struct_1(50306u, reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 39896i), vec3<i32>(-37366i, -38046i, -62186i)), ~vec3<i32>(-2147483647i, 16824i, 36172i)))), -1i, Struct_1(var_1.x, max(vec3<i32>(1i, 1i, 1i), -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -47209i, -2147483647i), vec3<i32>(-2147483647i, -1i, 40362i)))), ~countOneBits(vec4<i32>(52298i, -1i, 2147483647i, 37803i)) ^ -vec4<i32>(~2147483647i, i32(-1i) * -2147483647i, reverseBits(1i), select(-16642i, -1i, false)));
    let var_3 = Struct_3(true);
    var_0 = vec2<f32>(-475f, var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(211f, _wgslsmith_mult_u32(max(_wgslsmith_sub_u32(~u_input.a, var_2.b.a), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(var_1.zxx, var_1.zxy))), ~max(max(u_input.a, var_1.x), ~var_2.b.a)), abs(var_2.e.wzx));
}

