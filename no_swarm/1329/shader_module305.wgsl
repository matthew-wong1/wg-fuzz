struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 1u);

var<private> global1: array<u32, 16>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = arg_2;
    let var_1 = -290f;
    var var_2 = arg_2.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(1456f)), _wgslsmith_f_op_f32(round(var_2.d)), _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(abs(var_2.e)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, var_1, var_1)), _wgslsmith_div_vec3_f32(vec3<f32>(823f, var_2.d, -968f), vec3<f32>(var_2.e, var_0.b.b.x, arg_2.b.b.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(127f, 1411f, var_0.b.b.x) * vec3<f32>(-1492f, var_0.b.b.x, var_0.b.b.x)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.e, 1623f, var_0.b.b.x), vec3<f32>(719f, -374f, -524f), arg_1))))))), !(!(!arg_2.a.yww))));
    var_2 = var_0.b;
    return vec4<bool>(any(vec2<bool>(var_0.a.x || true, any(select(vec2<bool>(arg_2.a.x, var_0.a.x), vec2<bool>(arg_2.a.x, var_0.a.x), false)))), arg_1.x, !(arg_2.b.c.x <= _wgslsmith_div_i32(-20151i, firstTrailingBit(2147483647i))), true);
}

fn func_2() -> Struct_3 {
    global1 = array<u32, 16>();
    let var_0 = Struct_2(func_3(max(47668i, -24747i), vec3<bool>(all(vec2<bool>(true, true)), true != all(vec4<bool>(true, false, true, true)), true), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(9040u, 42868u)), vec2<f32>(-1315f, 586f), vec4<i32>(1i, 2147483647i, -1i, -54744i), 523f, _wgslsmith_f_op_f32(ceil(1337f)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, 1i, 1i), vec4<i32>(1i, 0i, 1i, -1i), vec4<i32>(2147483647i, 10449i, -1i, -32262i)) & select(_wgslsmith_add_vec4_i32(vec4<i32>(9152i, 1319i, 2147483647i, -1i), vec4<i32>(1i, -1i, -2147483647i, 1i)), abs(vec4<i32>(-13812i, -2147483647i, 0i, 2147483647i)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)))), Struct_1(_wgslsmith_div_vec2_u32(global0.yy, u_input.a.xw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-472f, 432f))) + vec2<f32>(2244f, -1017f))), _wgslsmith_sub_vec4_i32(firstTrailingBit(min(vec4<i32>(-22201i, -1i, 18230i, -42875i), vec4<i32>(-26260i, -18022i, -51627i, -1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1162f, -291f) - _wgslsmith_f_op_f32(1158f - -1413f))), -2113f));
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(~select(u_input.a, vec4<u32>(0u, u_input.a.x, u_input.a.x, var_0.b.a.x), true), select(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(8246u, 16u)]), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, global0.x, global1[_wgslsmith_index_u32(0u, 16u)], 0u)), var_0.a.x)));
    global1 = array<u32, 16>();
    let var_2 = firstLeadingBit(1i) == select(1i, firstTrailingBit(i32(-1i) * -7317i) >> (~u_input.a.x % 32u), var_0.a.x);
    return Struct_3(Struct_1(vec2<u32>(4974u, 2864u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(236f)), _wgslsmith_f_op_f32(199f * -565f)), var_0.b.b)), var_0.b.c, -511f, 1162f));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.e);
    var var_1 = 906f;
    global1 = array<u32, 16>();
    let var_2 = Struct_3(func_2().a);
    var var_3 = _wgslsmith_div_i32(~(25389i | arg_3.a.c.x), 5071i);
    return var_2.a.b;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1053f + -1469f)), _wgslsmith_f_op_f32(f32(-1f) * -372f));
    var var_1 = Struct_3(Struct_1(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.a.x), global0.zx), ~u_input.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, -429f)) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(func_4(func_2(), vec2<bool>(true, true), func_2().a, Struct_3(Struct_1(u_input.a.xx, vec2<f32>(1000f, 739f), vec4<i32>(-2147483647i, 0i, 0i, 1i), 1146f, -833f))))), vec4<i32>(1i, _wgslsmith_sub_i32(~(-70055i), 1i), 2147483647i, _wgslsmith_mod_i32(min(494i, -47893i), ~0i)), 1400f, _wgslsmith_f_op_f32(select(-262f, -120f, true))));
    let var_2 = 0u;
    var var_3 = func_3(min(30784i, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.a.c.x, var_1.a.c.x), i32(-1i) * -78063i) << (~global0.x % 32u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, func_3(10953i, vec3<bool>(false, true, false), Struct_2(vec4<bool>(true, false, false, false), var_1.a), vec4<i32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, 4770i)).x), func_3(max(var_1.a.c.x, 46114i), func_3(42421i, vec3<bool>(false, false, false), Struct_2(vec4<bool>(true, true, true, false), var_1.a), vec4<i32>(43919i, var_1.a.c.x, 0i, var_1.a.c.x)).zzz, Struct_2(vec4<bool>(false, false, true, true), Struct_1(u_input.a.zx, vec2<f32>(-275f, 1941f), var_1.a.c, 1251f, 715f)), ~vec4<i32>(60364i, var_1.a.c.x, -2147483647i, -1i)).wxz), Struct_2(func_3(-var_1.a.c.x, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(u_input.a.yz, vec2<f32>(2008f, var_1.a.e), vec4<i32>(-2147483647i, -1i, -2147483647i, 0i), -1042f, var_1.a.e)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_1.a.c.x, -13061i, var_1.a.c.x, var_1.a.c.x)), _wgslsmith_mod_vec4_i32(var_1.a.c, vec4<i32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, var_1.a.c.x)))), var_1.a), var_1.a.c).yyy;
    var_0 = 875f;
    return max(min(vec2<u32>(u_input.a.x, (var_1.a.a.x ^ 4294967295u) & ~1u), ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], var_2), vec2<u32>(var_1.a.a.x, var_1.a.a.x)), abs(u_input.a.zw), max(vec2<u32>(95342u, 57892u), global0.yx))), global0.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 71362u, reverseBits(0u)), _wgslsmith_mult_vec3_u32(u_input.a.zxz, u_input.a.yzz)));
    var var_0 = Struct_1(u_input.a.xw ^ func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-325f * 2388f), -557f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1091f, 1519f) * vec2<f32>(372f, -863f)) - vec2<f32>(_wgslsmith_f_op_f32(947f - 482f), 1f))), vec4<i32>(reverseBits(_wgslsmith_div_i32(-22213i, 1i)) << (_wgslsmith_add_u32(firstTrailingBit(15199u), abs(global0.x)) % 32u), _wgslsmith_sub_i32(max(abs(1i), -2147483647i), -30788i), -1i, max(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -11488i), vec2<i32>(-1i, -2147483647i)), -5314i >> (global1[_wgslsmith_index_u32(35644u, 16u)] % 32u)), -min(-7338i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1338f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-871f + 1227f))))), 978f);
    let var_1 = Struct_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_div_vec2_u32(u_input.a.zz, ~(u_input.a.zw ^ vec2<u32>(4294967295u, 65717u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(-var_0.b), false))), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, reverseBits(var_0.c.x), _wgslsmith_add_i32(var_0.c.x, var_0.c.x), -var_0.c.x), ~max(var_0.c, vec4<i32>(-51813i, var_0.c.x, var_0.c.x, 1i))), var_0.d, var_0.e));
    global0 = ~u_input.a.wxx & select(select(u_input.a.xxx, min(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 16u)], var_0.a.x, 61260u), u_input.a.zww ^ u_input.a.wwx), !var_1.a.yww), _wgslsmith_add_vec3_u32(reverseBits(u_input.a.zzw), ~_wgslsmith_mod_vec3_u32(vec3<u32>(65581u, var_0.a.x, 4294967295u), vec3<u32>(40367u, 39129u, 4294967295u))), var_1.a.xzz);
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(199f, -2601f, -1869f, 1396f) - vec4<f32>(var_0.b.x, var_0.e, 1052f, var_2.d))))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(45444i, ~1i);
}

