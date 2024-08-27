struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: vec4<i32> = vec4<i32>(1i, -1482i, 3428i, i32(-2147483648));

var<private> global1: vec2<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    var var_0 = firstLeadingBit(max(1u, ~4294967295u));
    var var_1 = vec3<i32>(firstLeadingBit(-_wgslsmith_sub_i32(i32(-1i) * -89493i, ~global1.x)), 63145i, global0.x);
    var_1 = ~_wgslsmith_mod_vec3_i32(global0.zzy, max(_wgslsmith_add_vec3_i32(global0.yxy, global0.wxz), _wgslsmith_mult_vec3_i32(global0.xxy, vec3<i32>(-1i, var_1.x, -14230i)))) ^ vec3<i32>(arg_1, 1i, ~min(-34688i, var_1.x));
    global1 = var_1.xz;
    global1 = min(~var_1.zy, firstTrailingBit(firstTrailingBit(abs(var_1.zx))) << ((firstTrailingBit(abs(vec2<u32>(u_input.a, 4294967295u))) << ((~vec2<u32>(u_input.a, u_input.a) | vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return vec4<i32>(-31557i, arg_1, -(~(~var_1.x)), firstLeadingBit(_wgslsmith_div_i32(-5067i, global1.x >> (7112u % 32u)))) ^ _wgslsmith_mod_vec4_i32(countOneBits(countOneBits(vec4<i32>(5721i, -1i, 69314i, u_input.b))), -firstTrailingBit(~vec4<i32>(var_1.x, 2147483647i, arg_1, -1i)));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    global1 = global0.xz;
    global0 = vec4<i32>(arg_0, ~(-17677i), firstTrailingBit(_wgslsmith_dot_vec4_i32(~min(arg_1, arg_1), vec4<i32>(u_input.b, -2147483647i, 1i, global1.x) << ((vec4<u32>(u_input.a, 70523u, u_input.a, 21212u) | vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)) % vec4<u32>(32u)))), -667i);
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1859f, 1275f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(563f, -1412f) * vec2<f32>(902f, -492f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1611f, 826f)))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1184f, 972f)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 1000f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(446f, -1381f, 349f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, var_0.x, 1356f) - vec3<f32>(-198f, 3095f, -586f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-725f, -135f, 716f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 756f) - vec3<f32>(208f, 719f, -1000f))))));
    let var_2 = Struct_2(Struct_1(true, 1884f), _wgslsmith_mult_vec2_i32(-global0.xx, func_3(Struct_1(true, _wgslsmith_f_op_f32(-319f * var_1.x)), 82619i).ww), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-382f, var_1.x, 396f, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -221f, 2158f))))))), Struct_1((any(vec3<bool>(true, true, false)) | all(vec4<bool>(true, true, true, false))) == (all(vec4<bool>(true, true, true, false)) == (1000f <= var_0.x)), -375f));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-355f - -794f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) * _wgslsmith_f_op_f32(ceil(var_0.x)))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(global0.wy >> (countOneBits(vec2<u32>(u_input.a, 83706u)) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-7902i, global0.x)) | global0.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global0.x), vec2<i32>(u_input.b, -2147483647i)))), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-30841i, 1533i, 0i, global0.x), ~vec4<i32>(-31316i, u_input.b, global0.x, 0i)), countOneBits(~vec4<i32>(global1.x, u_input.b, global1.x, global1.x))));
    var var_0 = _wgslsmith_f_op_f32(func_4(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(reverseBits(-1i)), firstLeadingBit(firstLeadingBit(global0.x)), _wgslsmith_add_i32(-3218i, u_input.b), u_input.b), min(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global1.x, -3633i), global0.yyy), global1.x ^ global1.x, global1.x, u_input.b), func_3(Struct_1(arg_0, 1224f), ~0i)), -(~vec4<i32>(2147483647i, 2147483647i, 1i, 1i) >> (~vec4<u32>(u_input.a, 20410u, u_input.a, u_input.a) % vec4<u32>(32u))))));
    let var_1 = min(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(81000u, u_input.a, 0u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<u32>(0u, ~0u, u_input.a)), _wgslsmith_sub_vec3_u32(firstLeadingBit(min(vec3<u32>(4294967295u, 0u, 9525u), vec3<u32>(49142u, 0u, u_input.a)) & ~vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(u_input.a, 1u, ~26640u)));
    return Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = global0.x;
    var var_1 = arg_1.c.x;
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_f32(-func_2(!arg_1.b.x).b) != arg_1.c.x;
    let var_4 = arg_0;
    return arg_1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = !(func_5(func_2(true), Struct_3(u_input.a, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-533f, 610f), vec2<f32>(238f, -364f), false)), all(vec2<bool>(true, true)))) < 16182u);
    var var_1 = reverseBits(~vec4<i32>(firstLeadingBit(u_input.b), _wgslsmith_mod_i32(u_input.b, -10420i) & _wgslsmith_add_i32(global0.x, u_input.b), abs(global0.x), ~u_input.b));
    let var_2 = func_2(false);
    global0 = max(func_3(var_2, 1476i) & (~firstLeadingBit(vec4<i32>(1i, var_1.x, global1.x, global0.x)) >> (vec4<u32>(func_5(Struct_1(true, 2066f), Struct_3(1u, vec2<bool>(var_2.a, true), vec2<f32>(var_2.b, -414f), var_2.a)), _wgslsmith_mult_u32(14484u, u_input.a), ~44477u, 21172u) % vec4<u32>(32u))), -firstTrailingBit(select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1.x, global0.x, 0i), vec4<i32>(31790i, u_input.b, -44201i, global1.x)), -vec4<i32>(6425i, u_input.b, 70024i, var_1.x), true)));
    var_0 = !any(!select(select(vec3<bool>(false, var_2.a, false), vec3<bool>(true, true, true), vec3<bool>(false, var_2.a, var_2.a)), select(vec3<bool>(true, true, true), vec3<bool>(var_2.a, true, var_2.a), true), vec3<bool>(var_2.a, var_2.a, false)));
    return Struct_2(var_2, _wgslsmith_clamp_vec2_i32(global0.zy, ~(~select(vec2<i32>(6431i, 14586i), vec2<i32>(1747i, global1.x), true)), ~(-(vec2<i32>(21067i, 12186i) | var_1.yx))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -875f))))), func_2(false));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    global1 = global0.xw;
    global1 = vec2<i32>(max(1i, -969i), ~global0.x) & ~vec2<i32>(global0.x, global1.x);
    let var_0 = Struct_3(~(7803u << (0u % 32u)), vec2<bool>(select(func_1().a.a, true, !arg_3.b.x), !(arg_3.a == 1u)), vec2<f32>(319f, _wgslsmith_f_op_f32(func_4(1i, ~vec4<i32>(u_input.b, -1i, u_input.b, global0.x)))), true);
    var var_1 = vec3<u32>(var_0.a, ~arg_2, u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-var_0.c.x);
    return func_1();
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>) -> f32 {
    var var_0 = abs(max(select(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0, 27245u), vec2<u32>(29419u, 4294967295u)), ~(~vec2<u32>(arg_0, u_input.a)), select(vec2<bool>(arg_1.a.a, false), !vec2<bool>(true, arg_1.d.a), arg_1.a.a)), abs(vec2<u32>(arg_0, arg_0) << (vec2<u32>(30749u, arg_0) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(66771u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, arg_0)))));
    let var_1 = vec2<u32>(0u, 66034u);
    let var_2 = (select(0u, _wgslsmith_mod_u32(1u, 116384u >> (u_input.a % 32u)), !all(vec3<bool>(true, arg_1.a.a, false))) <= ~(~(~arg_0))) & arg_1.d.a;
    global0 = arg_2;
    var var_3 = Struct_3(4294967295u, !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, arg_1.a.a), vec2<bool>(false, var_2), vec2<bool>(true, arg_1.d.a)), !vec2<bool>(false, arg_1.d.a), arg_1.a.a), !(!vec2<bool>(var_2, false))), vec2<f32>(-1255f, func_6(Struct_2(func_2(arg_1.d.a), countOneBits(arg_2.wx), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b, 984f, arg_1.d.b, -158f) * arg_1.c), arg_1.a), func_2(all(vec2<bool>(var_2, arg_1.a.a))), var_1.x, Struct_3(~4294967295u, vec2<bool>(var_2, false), arg_1.c.xx, func_6(arg_1, Struct_1(var_2, arg_1.d.b), var_1.x, Struct_3(0u, vec2<bool>(true, true), arg_1.c.zw, arg_1.d.a)).a.a)).a.b), all(vec4<bool>(false, var_2, true, true)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) * var_3.c.x), 468f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -(~(-vec4<i32>(-52040i, -1i, global0.x, 1i)));
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(func_7(67926u, func_6(func_1(), func_1().a, u_input.a, Struct_3(~_wgslsmith_div_u32(var_0, 33906u), vec2<bool>(true, true), _wgslsmith_div_vec2_f32(vec2<f32>(178f, -1385f), vec2<f32>(745f, -1141f)), !select(false, false, false))), ~abs(vec4<i32>(0i, 2147483647i, 65201i, -36305i) << (countOneBits(vec4<u32>(var_0, 0u, var_0, 8759u)) % vec4<u32>(32u)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-261f)), -649f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(296f)) + _wgslsmith_f_op_f32(round(137f))), -1661f)) - 1f));
    let var_2 = func_6(Struct_2(Struct_1(true, -292f), reverseBits(select(vec2<i32>(25403i, -45585i), func_1().b, true)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -239f))), _wgslsmith_f_op_f32(-921f - _wgslsmith_f_op_f32(step(-617f, -766f))), _wgslsmith_f_op_f32(-1000f * 578f), -903f), func_1().a), Struct_1(any(vec2<bool>(func_6(Struct_2(Struct_1(false, -1000f), vec2<i32>(u_input.b, 44158i), vec4<f32>(-125f, 1000f, -1044f, 1034f), Struct_1(false, -1135f)), Struct_1(false, -1971f), 97348u, Struct_3(u_input.a, vec2<bool>(false, false), vec2<f32>(-380f, 410f), false)).a.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2(true).b)))), var_0, Struct_3(~(1u << (u_input.a % 32u)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(352f + 1014f), -662f))), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.ww))))) - var_2.c.zw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(select(~(~vec2<u32>(36947u, var_0)), vec2<u32>(1u, ~11722u), vec2<bool>(true, true)), abs(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)) >> (firstTrailingBit(vec2<u32>(1u, 134053u)) % vec2<u32>(32u)))));
}

