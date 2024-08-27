struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> bool {
    var var_0 = reverseBits(0u);
    var var_1 = ~vec2<u32>(1u, ~max(arg_2, 11998u)) << (~vec2<u32>(~12163u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), firstTrailingBit(vec2<u32>(arg_2, 1u)))) % vec2<u32>(32u));
    var_1 = vec2<u32>(~var_1.x, ~max(var_1.x, countOneBits(arg_2)));
    return -1215f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)))));
}

fn func_2(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = true;
    let var_1 = ~_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(51225u, arg_0))), abs(~vec2<u32>(1u, 1u)));
    let var_2 = Struct_3(!(!any(vec2<bool>(true, true)) | all(vec2<bool>(true, true))), Struct_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(func_3(-307f, 22208i, 12585u, vec4<i32>(u_input.b, u_input.b, u_input.a, 4328i)), any(vec4<bool>(false, false, false, true)), -4505i != u_input.b, true)), 1i, 0u, ~_wgslsmith_mod_u32(max(23905u, 0u), 1u), select(vec2<bool>(any(vec2<bool>(true, false)), func_3(1144f, u_input.b, arg_0, vec4<i32>(12199i, u_input.b, 1i, u_input.a))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec3<bool>(true, false, true)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-189f * arg_1)), -496f), 371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_mod_i32(u_input.b, -4421i)), 2147483647i, u_input.b, -55411i), vec4<i32>(u_input.b, ~u_input.b, ~_wgslsmith_sub_i32(u_input.b, 2147483647i), _wgslsmith_div_i32(min(-2147483647i, u_input.b), -u_input.a))));
    let var_3 = max(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_2.b.b, firstTrailingBit(22319i)), max(firstTrailingBit(2147483647i), -5379i)), vec2<i32>(~(-6634i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.b, -6857i, -1i), vec3<i32>(41212i, u_input.a, 4393i))) >> (~abs(var_1) % vec2<u32>(32u))), firstLeadingBit(-(~vec2<i32>(var_2.b.b, var_2.d))));
    var var_4 = Struct_3(false, Struct_1(!(!(!var_2.b.a)), var_3.x, 4294967295u, 93700u, var_2.b.a.yz), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(841f, 289f, var_2.c.x))), var_2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 - var_2.c.x), _wgslsmith_f_op_f32(step(arg_1, -125f)), 531f)), true)), _wgslsmith_mod_i32(reverseBits(select(_wgslsmith_add_i32(33870i, var_3.x), -var_3.x, true && var_2.a)), u_input.a));
    return var_4.b.e.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1001f * _wgslsmith_div_f32(944f, 402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1741f - 1149f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1737f))), !all(vec2<bool>(arg_3, true)) | any(vec4<bool>(arg_3, arg_3, arg_3, true))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0), 2013f, _wgslsmith_f_op_f32(-1309f - var_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(211f, -1212f, var_0, var_0) * vec4<f32>(var_0, var_0, var_0, 830f)), vec4<f32>(-1279f, -445f, var_0, 189f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_div_f32(-1000f, var_0), 1000f))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1015f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * 1733f)))) - _wgslsmith_f_op_f32(-var_1.x)), -1000f, _wgslsmith_div_f32(-971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) * var_0)));
    var var_2 = select(!vec3<bool>(true != arg_3, arg_3, arg_3 && arg_3), !(!select(vec3<bool>(false, false, arg_3), vec3<bool>(false, arg_3, true), func_3(var_1.x, 1i, arg_0.x, vec4<i32>(arg_2, u_input.a, -1i, u_input.b)))), select(select(!select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(true, arg_3, false), vec3<bool>(arg_3, false, true)), !vec3<bool>(true, true, arg_3), !vec3<bool>(arg_3, false, arg_3)), vec3<bool>(true, true, !any(vec4<bool>(true, true, true, arg_3))), true));
    return Struct_1(vec4<bool>(true, !all(var_2.yy), var_2.x, true), ~arg_2, _wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, 9455u, arg_0.x) >> (~vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u))), ~vec3<u32>(25059u, arg_0.x, firstTrailingBit(arg_0.x))), arg_0.x, vec2<bool>(false, select(false, true, arg_3)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_2(func_4(min(vec2<u32>(32248u, ~arg_1.c), reverseBits(vec2<u32>(arg_1.c, 14417u))), abs(vec2<i32>(max(-1i, arg_1.b), _wgslsmith_div_i32(arg_2.x, -17151i))), arg_1.b, true), func_4(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(0u, 25145u) | vec2<u32>(arg_1.d, 1u)), ~abs(vec2<u32>(0u, 974u))), -_wgslsmith_sub_vec2_i32(arg_2.xz, vec2<i32>(arg_2.x, arg_1.b)), arg_1.b, arg_1.e.x | arg_1.a.x), func_4(vec2<u32>(arg_1.c, arg_1.d), select(~(-vec2<i32>(arg_2.x, 1i)), vec2<i32>(func_4(vec2<u32>(arg_1.d, arg_1.c), vec2<i32>(arg_2.x, u_input.b), 0i, arg_0.x).b, arg_2.x), arg_1.a.xy), arg_2.x, !(!arg_1.e.x || arg_1.a.x)), Struct_1(!vec4<bool>(false, -46604i > arg_2.x, true, func_3(-578f, -2147483647i, arg_1.c, vec4<i32>(u_input.b, -17577i, u_input.a, arg_1.b))), 1i, arg_1.c, arg_1.d, select(!(!vec2<bool>(true, arg_0.x)), vec2<bool>(true, true), all(func_4(vec2<u32>(0u, arg_1.c), arg_2.xz, arg_1.b, arg_1.a.x).a.yw))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(f32(-1f) * -828f))), 1657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2027f, 774f) + _wgslsmith_f_op_f32(sign(-627f))) - -648f), _wgslsmith_f_op_f32(max(924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f))))));
    var_0 = Struct_2(var_0.c, var_0.b, func_4(abs(~(vec2<u32>(40258u, 4294967295u) & vec2<u32>(arg_1.c, 87296u))), vec2<i32>(_wgslsmith_div_i32(1i, -2147483647i), ~_wgslsmith_clamp_i32(0i, 44388i, 2147483647i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -48337i) | vec4<i32>(1i, var_0.d.b, 31765i, 2147483647i), -vec4<i32>(u_input.b, -1i, -37383i, arg_1.b)), arg_1.a.x), var_0.b);
    let var_2 = -117f;
    let var_3 = func_4(~firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(113393u, var_0.d.c), vec2<u32>(arg_1.c, arg_1.c)), ~vec2<u32>(4290u, 37052u))), vec2<i32>(var_0.c.b, countOneBits(u_input.a)), 2147483647i, var_0.b.a.x);
    return Struct_3(true, Struct_1(!vec4<bool>(var_3.a.x, var_0.b.e.x, all(vec2<bool>(var_0.d.a.x, false)), false), ~_wgslsmith_mult_i32(arg_1.b ^ arg_2.x, _wgslsmith_mod_i32(var_0.a.b, arg_2.x)), arg_1.c, ~0u & ~(arg_1.d >> (8346u % 32u)), arg_0.yy), vec3<f32>(-154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-907f)) + _wgslsmith_f_op_f32(var_1.x - 389f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * var_2))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(980f, var_1.x))))), -1i);
}

fn func_1() -> vec3<f32> {
    let var_0 = func_5(!vec3<bool>(!(u_input.b >= -13442i), all(vec2<bool>(true, true)), true), func_4(vec2<u32>(1u, 1u), -vec2<i32>(_wgslsmith_add_i32(u_input.a, 12052i), ~u_input.b), u_input.b, all(vec3<bool>(func_2(4294967295u, -2311f), true, all(vec4<bool>(false, false, false, true))))), vec3<i32>(firstLeadingBit(64969i), 5108i, (firstLeadingBit(-7089i) | u_input.a) ^ 116332i));
    var var_1 = !func_5(vec3<bool>(!var_0.b.a.x, false, all(var_0.b.a.yx)), var_0.b, vec3<i32>(var_0.d, 1i, ~select(u_input.a, u_input.b, var_0.a))).b.a;
    let var_2 = 4294967295u;
    var var_3 = Struct_2(var_0.b, var_0.b, func_5(!var_0.b.a.xyy, func_4(vec2<u32>(1u, var_0.b.c), -(vec2<i32>(-2147483647i, u_input.a) >> (vec2<u32>(var_0.b.d, 20345u) % vec2<u32>(32u))), 1i, true & !var_1.x), -firstLeadingBit(vec3<i32>(u_input.a, 30525i, 0i)) >> (~vec3<u32>(var_0.b.c, var_0.b.c, var_0.b.d) % vec3<u32>(32u))).b, var_0.b);
    let var_4 = !var_0.b.a;
    return _wgslsmith_f_op_vec3_f32(abs(var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~0u);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1975f, -160f, _wgslsmith_f_op_f32(round(-455f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1625f, -520f, 1340f) - vec3<f32>(334f, -1000f, -668f)))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1266f, 476f, false)), _wgslsmith_div_f32(-1050f, -335f), _wgslsmith_f_op_f32(f32(-1f) * -1017f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 240f, -1000f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-454f, -407f, 435f)))) - _wgslsmith_f_op_vec3_f32(func_1()))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x));
    var_0 = _wgslsmith_div_u32(~(~countOneBits(1u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(52298u, 1522u, 19235u, _wgslsmith_sub_u32(1u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))));
    var_1 = func_2(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) - _wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(-1168f, -2271f))));
    var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(59865u, 54034u, 1u)), vec3<u32>(3260u, 42397u, 4294967295u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(29338u, 0u, 1u), vec3<u32>(68468u, 16058u, 4294967295u), vec3<u32>(54677u, 37910u, 0u)), vec3<u32>(1u, 1u, 1u)), abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 0u, 42438u), vec3<u32>(4294967295u, 66107u, 1u)))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(92091u, ~1u, ~19984u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(124747u, 4294967295u), vec2<u32>(4294967295u, 6630u)), 1u, _wgslsmith_clamp_u32(1u, 5393u, 40849u))), vec3<u32>(34533u, abs(_wgslsmith_clamp_u32(4294967295u, 1u, 55809u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37678u), vec2<u32>(4294967295u, 0u)), select(0u, 39674u, true), ~4294967295u))));
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(trunc(var_2.x)))), -abs(min(vec3<i32>(2147483647i, u_input.a, u_input.b), vec3<i32>(u_input.a, u_input.b, u_input.b)) | select(vec3<i32>(u_input.b, u_input.a, 2147483647i), vec3<i32>(-1i, u_input.a, -23964i), vec3<bool>(false, true, false))));
}

