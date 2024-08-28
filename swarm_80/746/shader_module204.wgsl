struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    global0 = max(min(arg_0.b.a.x, _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(~arg_1.x, ~arg_0.b.a.x))), 16573u & ~(~u_input.b.x));
    var var_0 = select(!(!vec2<bool>(false, any(vec3<bool>(true, false, true)))), select(vec2<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.a.x), vec3<i32>(arg_0.a.x, -2147483647i, 2147483647i)) > firstTrailingBit(1437i)), vec2<bool>(true, true), true), all(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))));
    var_0 = !(!vec2<bool>(!var_0.x | var_0.x, true));
    var var_1 = ~(vec3<i32>(-2147483647i, _wgslsmith_add_i32(-arg_0.a.x, 2147483647i), 1i) | vec3<i32>(u_input.a.x, i32(-1i) * -17111i, u_input.a.x));
    global0 = 1u;
    return abs(~arg_0.b.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: i32) -> u32 {
    var var_0 = vec3<u32>(arg_0.a.x, abs(4294967295u), func_3(Struct_3(abs(u_input.a), arg_0), reverseBits(vec2<u32>(0u, u_input.b.x)))) & vec3<u32>(~(21657u << (arg_0.a.x % 32u)) ^ 1u, firstTrailingBit(arg_0.a.x), _wgslsmith_div_u32(max(arg_2.e, 1u), abs(1u)) | 1u);
    global0 = arg_0.a.x;
    var var_1 = Struct_3(vec4<i32>(_wgslsmith_mult_i32(-35497i, 1i), max(arg_3, arg_3), -1i, u_input.a.x), arg_0);
    let var_2 = arg_2.d;
    let var_3 = Struct_1(~(~arg_0.a));
    return countOneBits(var_2.a.a.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_2.x))))));
    global0 = arg_1.a.x;
    var var_1 = ~(~(~max(47564u, 72900u)));
    let var_2 = select(arg_0.yyw, select(!select(arg_0.yyw, !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false), arg_0.wxx, vec3<bool>(false, true, _wgslsmith_f_op_f32(-arg_2.x) > _wgslsmith_f_op_f32(max(var_0, var_0)))), any(arg_0.xz));
    var var_3 = _wgslsmith_clamp_vec2_u32(countOneBits(~vec2<u32>(reverseBits(arg_1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b.x), vec3<u32>(4294967295u, arg_1.a.x, arg_1.a.x)))), ~u_input.b.zx, min(vec2<u32>(arg_1.a.x, _wgslsmith_div_u32(37757u, 23927u)), vec2<u32>(func_2(Struct_1(u_input.b.yx), arg_2.yzw, Struct_4(false, arg_0, Struct_1(arg_1.a), Struct_2(Struct_1(u_input.b.wx)), 107789u), 0i), _wgslsmith_mod_u32(arg_1.a.x, u_input.b.x))) >> (u_input.b.xw % vec2<u32>(32u)));
    return Struct_4(var_2.x, vec4<bool>(all(!(!vec3<bool>(true, true, arg_0.x))), (arg_1.a.x == ~4294967295u) || (all(vec2<bool>(false, var_2.x)) | true), arg_0.x, !var_2.x), Struct_1(~firstTrailingBit(arg_1.a)), Struct_2(Struct_1(~vec2<u32>(0u, var_3.x))), ~0u);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = func_1(vec4<bool>(true, any(select(arg_1.b.xw, arg_1.b.ww, true)), !arg_1.b.x, arg_2.x), arg_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-366f, 1848f)), 1042f, _wgslsmith_f_op_f32(f32(-1f) * -1106f), 312f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1938f, 910f, -878f, -1433f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1953f, 641f, -1000f, -854f), vec4<f32>(-465f, 267f, 954f, -1372f), vec4<bool>(arg_0, true, arg_0, true))))))).d;
    var var_1 = select(arg_2.wwy, vec3<bool>(any(select(!vec4<bool>(arg_0, false, arg_1.b.x, true), select(arg_1.b, vec4<bool>(arg_1.b.x, false, false, arg_2.x), arg_2), any(arg_1.b.xy))), true, any(arg_2.zyz)), arg_1.b.yxw);
    let var_2 = Struct_3(-_wgslsmith_div_vec4_i32(-vec4<i32>(15874i, u_input.a.x, -7018i, -56995i), u_input.a >> (u_input.b % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)), var_0.a);
    let var_3 = ~(-var_2.a.x | _wgslsmith_div_i32(var_2.a.x, _wgslsmith_mod_i32(-2147483647i, u_input.a.x >> (u_input.b.x % 32u))));
    var_0 = Struct_2(Struct_1(~select(~var_0.a.a, abs(u_input.b.xz), vec2<bool>(true, arg_1.a))));
    return Struct_4(!select(_wgslsmith_add_i32(-17935i, 7596i) < reverseBits(u_input.a.x), min(u_input.b.x, 27326u) == 4294967295u, true), func_1(vec4<bool>(false, true, false || (false && arg_0), true), func_1(arg_2, func_1(!vec4<bool>(var_1.x, arg_1.a, false, arg_0), func_1(vec4<bool>(var_1.x, false, var_1.x, false), Struct_1(u_input.b.wy), vec4<f32>(-121f, -1093f, -526f, -235f)).d.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(762f, -842f, 162f, 1536f)))).d.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(705f, -1713f, -1000f, 1590f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, -215f, -1063f, 303f) - vec4<f32>(-1296f, -2648f, 786f, -196f)))).c, vec4<f32>(_wgslsmith_f_op_f32(max(-1405f, _wgslsmith_f_op_f32(step(-1104f, -1752f)))), 2095f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1025f + 1305f) * _wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-268f - -251f), _wgslsmith_div_f32(-1056f, 398f))))).b, func_1(arg_2, func_1(!(!vec4<bool>(false, true, arg_0, var_1.x)), Struct_1(var_0.a.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, 669f, -823f, 237f)) + vec4<f32>(1000f, -288f, 2284f, 856f))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, -152f, 809f, -1297f) - vec4<f32>(-881f, -923f, -1565f, 1334f)))).d.a, func_1(vec4<bool>(any(select(arg_2.zy, arg_1.b.zx, arg_0)), arg_0, !(4294967295u > var_0.a.a.x), any(vec2<bool>(false, false))), var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))).d, ~u_input.b.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_1 {
    global0 = abs(~(~(~u_input.b.x)));
    var var_0 = Struct_4(true, arg_1.b, Struct_1(~vec2<u32>(0u, ~64337u)), Struct_2(arg_1.d.a), ~(~(u_input.b.x & 52233u)));
    var_0 = Struct_4(u_input.a.x >= max(-17038i, 2147483647i), vec4<bool>(!arg_1.a, select(var_0.a, var_0.b.x & true, var_0.a) | !(0u < arg_1.c.a.x), all(arg_1.b.wwx), arg_1.b.x), var_0.c, Struct_2(Struct_1(vec2<u32>(u_input.b.x, arg_0.x) | arg_1.d.a.a)), ~firstTrailingBit(~0u));
    var var_1 = Struct_3(max(max(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -29040i), vec4<i32>(-44101i, u_input.a.x, u_input.a.x, u_input.a.x))), min(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, true), reverseBits(vec4<i32>(1273i, u_input.a.x, -21551i, -18108i)))) ^ countOneBits(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, select(vec4<i32>(-43404i, 67876i, 2147483647i, 25258i), u_input.a, var_0.b))), func_1(vec4<bool>(u_input.a.x >= ~(-1i), var_0.a, var_0.b.x, true), arg_1.d.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1659f, -1000f, 145f, -739f) - vec4<f32>(-332f, 694f, -1427f, 377f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-556f, -225f, -167f, -133f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, -1574f, 257f, -809f))))).d.a);
    let var_2 = func_1(select(vec4<bool>(!var_0.a, arg_1.b.x, !all(arg_1.b.xyx), any(!vec4<bool>(arg_1.a, true, var_0.a, true))), func_1(!(!arg_1.b), Struct_1(firstLeadingBit(var_1.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1021f, -673f, 1556f, -996f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2199f, -258f, -449f, -598f), vec4<f32>(-1332f, -875f, -332f, 639f), vec4<bool>(true, var_0.a, true, true))))).b, !var_0.b), Struct_1(var_0.c.a), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(-490f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(978f)) + _wgslsmith_f_op_f32(f32(-1f) * -205f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-379f)) - 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1876f, _wgslsmith_f_op_f32(-1148f + 1876f)), 372f))));
    return Struct_1(vec2<u32>(firstTrailingBit(~4294967295u >> (arg_0.x % 32u)), _wgslsmith_mod_u32(0u, ~_wgslsmith_clamp_u32(var_1.b.a.x, 17947u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1214f);
    var var_1 = func_5(reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 40673u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 15235u), u_input.b.x, u_input.b.x), (u_input.b.xzy & u_input.b.yxw) >> (u_input.b.ywy % vec3<u32>(32u)))), func_4(((6957u >= u_input.b.x) & false) || true, func_1(vec4<bool>(all(vec2<bool>(true, false)), true, true, true), Struct_1(~vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1572f, var_0, var_0), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1154f, var_0, 114f, -532f))), false))), vec4<bool>(true, true, true, true)));
    global0 = u_input.b.x;
    var var_2 = func_1(!select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), !func_4(false, Struct_4(false, vec4<bool>(false, true, false, true), Struct_1(u_input.b.wz), Struct_2(Struct_1(var_1.a)), 586u), vec4<bool>(false, false, false, false)).b, true), func_1(!vec4<bool>(any(vec3<bool>(false, false, false)), any(vec3<bool>(true, false, false)), -484f != var_0, var_0 >= 2338f), Struct_1(_wgslsmith_clamp_vec2_u32(u_input.b.ww, firstTrailingBit(vec2<u32>(29405u, var_1.a.x)), ~vec2<u32>(67469u, u_input.b.x))), vec4<f32>(1508f, var_0, _wgslsmith_f_op_f32(-1279f * -435f), _wgslsmith_f_op_f32(-var_0))).d.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(492f + var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -271f)), var_0) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, 281f, var_0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, 351f, var_0, var_0), vec4<f32>(var_0, var_0, var_0, 1245f)))))))));
    var_2 = Struct_4(false, vec4<bool>(false, select(true, !(!var_2.b.x), var_2.b.x), false, select(true, !var_2.b.x, any(var_2.b.wy))), var_2.d.a, var_2.d, abs(~4294967295u));
    global0 = ~(~_wgslsmith_mod_u32(17839u, abs(u_input.b.x)));
    var_2 = Struct_4(13474u <= var_2.d.a.a.x, !vec4<bool>(select(func_1(var_2.b, Struct_1(vec2<u32>(var_2.c.a.x, var_1.a.x)), vec4<f32>(var_0, var_0, var_0, -270f)).b.x, true, false), true, true, any(!var_2.b)), func_5(max(_wgslsmith_add_vec3_u32(vec3<u32>(42946u, var_2.e, 1u), vec3<u32>(u_input.b.x, 35331u, 4294967295u)) & vec3<u32>(0u, 6937u, var_1.a.x), select(u_input.b.wwz, u_input.b.xxy, var_2.b.x) ^ ~vec3<u32>(u_input.b.x, 21935u, 1u)), Struct_4(true, !func_1(vec4<bool>(var_2.a, false, var_2.a, false), var_2.c, vec4<f32>(1175f, var_0, var_0, 1058f)).b, Struct_1(~var_2.c.a), func_4(true, Struct_4(false, vec4<bool>(var_2.a, var_2.a, false, true), Struct_1(var_2.d.a.a), var_2.d, var_2.e), vec4<bool>(false, false, var_2.a, var_2.a)).d, ~(~17463u))), var_2.d, var_2.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(reverseBits(u_input.a.yyz), _wgslsmith_div_vec3_i32(~vec3<i32>(0i, 30526i, 5469i), u_input.a.zzz >> (vec3<u32>(1u, u_input.b.x, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_mult_vec4_i32(firstLeadingBit(reverseBits(-vec4<i32>(0i, 1i, 48018i, u_input.a.x))), abs(~u_input.a)), u_input.b.zyw ^ ~vec3<u32>(_wgslsmith_mult_u32(var_2.c.a.x, var_1.a.x), var_2.d.a.a.x, u_input.b.x), 0u, _wgslsmith_mod_i32(~4466i, 1i));
}

