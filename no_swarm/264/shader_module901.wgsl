struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(857f * 304f) + _wgslsmith_f_op_f32(f32(-1f) * -1067f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1303f))))), -505f);
    let var_1 = Struct_2(Struct_1(u_input.a.x));
    let var_2 = vec4<i32>(~_wgslsmith_mod_i32(~var_1.a.a, 23731i << (1u % 32u)) >> (23786u % 32u), -4597i, -var_1.a.a, 1i);
    var var_3 = 1f;
    let var_4 = var_1;
    return _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1291f - _wgslsmith_f_op_f32(step(-152f, var_0.x)))))), var_0.x > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -225f)) + _wgslsmith_f_op_f32(-1890f - _wgslsmith_f_op_f32(f32(-1f) * -351f)))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = Struct_1(-u_input.a.x);
    var var_1 = var_0;
    var_1 = arg_2.b;
    var var_2 = var_0;
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(-_wgslsmith_mult_vec2_i32(u_input.a, u_input.a)), u_input.a));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 480f)) * -528f) + _wgslsmith_f_op_f32(481f - _wgslsmith_f_op_f32(trunc(arg_1))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), 1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) - _wgslsmith_f_op_f32(sign(arg_1))))), -1195f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1809f), arg_1)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_5 {
    let var_0 = Struct_4(i32(-1i) * -8773i, Struct_1(-2147483647i));
    var var_1 = all(!vec2<bool>(true, !arg_0));
    var_1 = all(select(select(select(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(true, false, false, arg_0)), select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0)), all(vec4<bool>(arg_0, arg_0, false, true))), select(!vec4<bool>(arg_0, true, arg_0, true), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, arg_0, arg_0, false), false), !vec4<bool>(true, false, arg_0, true)), arg_0), select(!vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, !arg_0, select(arg_0, true, arg_0), arg_0), true), !(!vec4<bool>(arg_0, arg_0, true, arg_0))));
    var var_2 = Struct_3(Struct_1(17036i), ~(~(~firstTrailingBit(var_0.b.a))), vec4<i32>(_wgslsmith_clamp_i32(~(-12936i), arg_3.a.a, firstLeadingBit(abs(1317i))), -53992i, (i32(-1i) * -20075i) & arg_3.a.a, reverseBits(44243i)));
    var_1 = any(!(!select(vec4<bool>(arg_0, false, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, false, false))));
    return Struct_5(Struct_2(var_2.a), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -arg_2.b.a, u_input.a.x, min(-2147483647i, ~arg_3.a.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2.a, -2147483647i, -2147483647i), vec4<i32>(-1i, -655i, 49371i, -19288i))), -vec4<i32>(~0i, _wgslsmith_sub_i32(2147483647i, 14473i), 0i, _wgslsmith_dot_vec2_i32(var_2.c.yx, vec2<i32>(5673i, arg_3.a.a)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(-1259f < _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec4_f32(func_3(arg_0, -206f, Struct_4(u_input.a.x, Struct_1(arg_1.a)))), Struct_4(_wgslsmith_sub_i32(arg_1.a, (u_input.a.x | -1i) | 41794i), Struct_1(_wgslsmith_mod_i32(abs(arg_1.a), u_input.a.x))), Struct_2(arg_1));
    let var_1 = 1u;
    var var_2 = arg_0;
    let var_3 = func_4(select(false, any(!vec3<bool>(false, false, arg_0)), arg_0), vec4<f32>(1f, 1f, 1f, 1f), Struct_4(0i, var_0.a.a), func_4(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1546f, 2256f, -697f, -1148f) - vec4<f32>(1992f, 187f, 440f, 2456f)) + vec4<f32>(907f, -210f, 556f, 269f))), Struct_4(arg_1.a, Struct_1(u_input.a.x)), func_4(any(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0), true)), vec4<f32>(-1008f, -656f, _wgslsmith_f_op_f32(trunc(599f)), _wgslsmith_f_op_f32(max(333f, 310f))), Struct_4(-1033i, Struct_1(u_input.a.x)), func_4(!arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-932f, -396f, 1000f, -904f)), Struct_4(arg_1.a, arg_1), func_4(arg_0, vec4<f32>(327f, -497f, 1682f, -1238f), Struct_4(-54091i, Struct_1(1i)), Struct_2(var_0.a.a)).a).a).a).a);
    var_0 = Struct_5(func_4(true & any(vec4<bool>(true, arg_0, arg_0, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(410f, -419f, 900f, 1077f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))), Struct_4(1i, arg_1), Struct_2(arg_1)).a, -1i & -_wgslsmith_sub_i32(18377i, _wgslsmith_mod_i32(1i, var_3.a.a.a)));
    return Struct_1(var_3.a.a.a);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = true;
    let var_1 = func_4(any(!select(vec4<bool>(true, var_0, var_0, true), !vec4<bool>(var_0, var_0, var_0, var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, true, false, false), vec4<bool>(true, false, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-3144f * -692f), _wgslsmith_f_op_f32(max(-109f, -1117f)), _wgslsmith_f_op_f32(-1060f * -211f), 641f) - vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1500f, -404f, -322f, -817f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1959f, 784f, -426f, -1118f), vec4<f32>(963f, -667f, -245f, 859f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(953f, -971f, -2121f, -385f)))))), Struct_4(0i, func_4(!var_0 & any(vec2<bool>(var_0, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1415f, -385f, 993f, -1000f))), Struct_4(0i ^ arg_2.a, func_4(var_0, vec4<f32>(-149f, 123f, -2149f, 1418f), Struct_4(6087i, arg_1.a), Struct_2(arg_0.a.a)).a.a), arg_0.a).a.a), Struct_2(Struct_1(arg_2.a))).a;
    var var_2 = -671f;
    var_2 = -1131f;
    var var_3 = arg_1.c.yxz << (vec3<u32>(1u, ~(~93671u), 1u) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1827f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, _wgslsmith_f_op_f32(func_5(Struct_5(Struct_2(Struct_1(u_input.a.x)), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), Struct_3(Struct_1(2147483647i), u_input.a.x, -vec4<i32>(1i, u_input.a.x, u_input.a.x, 2147483647i)), func_1(true, Struct_1(-32130i)), 1i)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(527f - -362f) * _wgslsmith_f_op_vec4_f32(func_3(all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -459f), Struct_4(36313i, Struct_1(u_input.a.x)))).x), true == all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    let var_1 = ~(~65u);
    var_0 = select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, all(vec2<bool>(!var_0.x, true)), any(vec2<bool>(false, true != var_0.x))), false);
    var_0 = select(!(!vec3<bool>(var_0.x, var_0.x | var_0.x, var_0.x)), vec3<bool>(false, (u_input.a.x << (_wgslsmith_add_u32(var_1, 21810u) % 32u)) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) ^ u_input.a, _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(12513i, u_input.a.x))), var_0.x), !select(select(!vec3<bool>(true, false, var_0.x), !vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_0.x & false, var_0.x, var_0.x), !(!vec3<bool>(var_0.x, var_0.x, false))));
    var_0 = select(vec3<bool>(true, !(~0u >= (4294967295u | var_1)), false), !vec3<bool>(!(!var_0.x), all(var_0.yz) || false, !all(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), var_0.x);
    var var_2 = -abs(-_wgslsmith_div_vec3_i32(vec3<i32>(5258i, 34385i, u_input.a.x), vec3<i32>(-1i, -37062i, 42093i))) & (reverseBits(vec3<i32>(-u_input.a.x, 679i, 0i)) >> (vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, var_1), max(vec3<u32>(1u, var_1, 32586u), vec3<u32>(var_1, var_1, 37278u))), abs(~var_1)) % vec3<u32>(32u)));
    var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-13545i, 10864i, 2147483647i, 67i), reverseBits(vec4<i32>(var_2.x, 1i, u_input.a.x, -10188i))), ~(-12929i), var_2.x), -vec3<i32>(~firstTrailingBit(2147483647i), u_input.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(3448i, -65965i), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-21621i, 28037i)))), vec3<i32>(func_1(true, Struct_1(13096i)).a, ~(-u_input.a.x) ^ ~(i32(-1i) * -10454i), u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_4 = func_4(!(!all(!vec2<bool>(var_0.x, var_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1863f, 1187f, -2074f, -517f) - vec4<f32>(405f, 845f, -641f, -348f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1563f, 217f, -1985f, 291f) - vec4<f32>(1997f, 1618f, 1248f, 612f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-738f, 1466f, -1736f, 211f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), false), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), false), !vec4<bool>(false, false, true, var_0.x))))), Struct_4(-2147483647i, func_4(any(var_0.zx) || var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, 953f, -756f, -1859f)), Struct_4(var_2.x, func_1(true, Struct_1(var_2.x))), Struct_2(func_4(var_0.x, vec4<f32>(1269f, -1665f, 323f, -1000f), Struct_4(14120i, Struct_1(12894i)), Struct_2(Struct_1(u_input.a.x))).a.a)).a.a), Struct_2(func_1(any(vec3<bool>(true, var_0.x, var_0.x)) & (var_1 <= var_1), Struct_1(u_input.a.x)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1696f, -1886f), vec2<f32>(1f, 1f), abs(-var_4.a.a), max(select(vec2<u32>(0u, 4294967295u) << (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u)), max(vec2<u32>(41654u, 82764u), vec2<u32>(var_1, 1u)), var_0.xz), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(634u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(var_1, 41000u), vec2<u32>(90693u, var_1)))) & _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 0u), ~vec2<u32>(var_1, 40951u)), ~max(vec2<u32>(var_1, var_1), vec2<u32>(var_1, 3306u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-189f, _wgslsmith_f_op_f32(205f - -549f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1238f, 1493f)))));
}

