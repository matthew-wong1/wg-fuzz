struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = 0u;
    global0 = array<Struct_1, 9>();
    return u_input.d & u_input.e;
}

fn func_3() -> vec4<f32> {
    var var_0 = u_input.d;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1013f, 291f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1096f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-611f + -237f)))))), 271f);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(var_1.yyz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1387f) - var_1.x), 399f, -521f)));
    var_0 = 1u;
    let var_3 = Struct_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(func_1(vec4<u32>(u_input.c, u_input.e, 5522u, u_input.b), Struct_2(global0[_wgslsmith_index_u32(13958u, 9u)], var_1, var_1, vec2<f32>(var_1.x, var_1.x), vec4<i32>(u_input.a.x, u_input.a.x, 507i, u_input.a.x)), vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-609f, var_1.x, var_2.x) * vec3<f32>(-2095f, -1418f, 333f))), 9u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_div_vec4_f32(var_1, vec4<f32>(var_2.x, -1129f, var_1.x, 125f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, var_1.x, var_1.x, 1084f) * _wgslsmith_f_op_vec4_f32(sign(var_1))), _wgslsmith_f_op_vec2_f32(-var_2.xx), -(~vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -2174f)))), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -975f, var_2.x, 308f) * vec4<f32>(-146f, -741f, -489f, 496f)))), var_1, _wgslsmith_f_op_vec2_f32(var_1.ww + _wgslsmith_f_op_vec2_f32(trunc(var_2.xz))), vec4<i32>(-41618i, i32(-1i) * -50438i, u_input.a.x, -14884i)), firstTrailingBit(~u_input.a.x)), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, -3759i, -1i), -vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)));
    return vec4<f32>(-2001f, var_3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(max(-1562f, -1746f))))), -1069f);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_div_i32(~(~(-2147483647i)), abs(u_input.a.x)), 5700i), ~1u);
    let var_1 = arg_1.a;
    let var_2 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_1.e.zxy, arg_3.xyz), -11492i) << (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.b, 4294967295u), vec2<u32>(var_1.b, 25708u)), reverseBits(vec2<u32>(var_0.b, 4294967295u))) % vec2<u32>(32u)), ~(~(1u << (arg_2.a.a.b % 32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_div_f32(-258f, arg_2.b)) * 695f), -754f, _wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b))), arg_1.b.xy, arg_1.e);
    var var_3 = var_2;
    let var_4 = arg_2;
    return Struct_2(Struct_1(abs(vec2<i32>(arg_3.x, -2147483647i)), arg_1.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.c.x, var_4.c.c.x, arg_2.a.d.x, 585f) + _wgslsmith_f_op_vec4_f32(-arg_2.c.c)))), _wgslsmith_f_op_vec4_f32(func_3()), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f * -820f))), 1235f), vec4<i32>(1i, var_3.e.x, arg_0.x, -1i));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~vec3<u32>(~13652u, u_input.c, select(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 53211u, 43783u, 1u), vec4<u32>(0u, arg_3.c.a.b, 15177u, 43314u)), Struct_2(Struct_1(arg_3.c.e.wy, arg_1.a.b), arg_1.b, arg_1.c, arg_3.a.b.xw, arg_0.a.e), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-arg_0.a.b.xww)), ~(~u_input.b), !all(vec3<bool>(arg_2, arg_2, arg_2))));
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_3.c.e.zwz, _wgslsmith_sub_vec3_i32(reverseBits(arg_0.a.e.zyz), vec3<i32>(arg_3.d >> (0u % 32u), arg_0.c.e.x, -arg_0.c.e.x))));
    let var_2 = func_2(select(abs(_wgslsmith_add_vec4_i32(arg_0.c.e, arg_0.c.e)) >> (vec4<u32>(65141u, func_2(arg_1.e, Struct_2(Struct_1(arg_1.a.a, 4294967295u), vec4<f32>(-779f, arg_0.a.d.x, -627f, arg_1.b.x), arg_3.a.b, vec2<f32>(arg_1.d.x, 416f), vec4<i32>(arg_1.a.a.x, -17268i, var_1.x, arg_1.e.x)), arg_3, vec4<i32>(-1i, u_input.a.x, -7714i, arg_3.c.a.a.x)).a.b, _wgslsmith_mult_u32(var_0.x, 98988u), arg_0.a.a.b) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(1i, 25556i) & -var_1.x, arg_3.d, -abs(arg_0.c.a.a.x), firstLeadingBit(-1i)), all(vec3<bool>(true, true, arg_2))), Struct_2(Struct_1(vec2<i32>(u_input.a.x, 1i), 4294967295u), arg_0.c.b, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_0.b, arg_1.b.x, arg_3.c.b.x), arg_3.c.c.xy, max(abs(-vec4<i32>(arg_1.e.x, arg_0.c.a.a.x, 33714i, -1i)), -reverseBits(vec4<i32>(-2147483647i, 1i, var_1.x, arg_1.a.a.x)))), arg_3, vec4<i32>(u_input.a.x >> (var_0.x % 32u), 2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.a.x, -1i), -arg_0.a.e), arg_0.d, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, -2147483647i, -19150i), vec3<i32>(var_1.x, -10980i, u_input.a.x)) << (0u % 32u), -14209i)));
    var var_3 = var_2.e.x;
    let var_4 = arg_2;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(u_input.a.x, u_input.a.x & (-21615i >> (u_input.c % 32u)), true);
    var_0 = 1i;
    var_0 = _wgslsmith_mod_i32(1i, -2147483647i) ^ u_input.a.x;
    let var_1 = ~50566i;
    var_0 = var_1;
    let var_2 = vec3<u32>(27790u >> (firstLeadingBit(u_input.b | _wgslsmith_div_u32(78279u, 20187u)) % 32u), ~20159u, (20730u << (abs(u_input.e >> (u_input.e % 32u)) % 32u)) >> ((~func_1(vec4<u32>(8281u, 0u, 52898u, u_input.b), Struct_2(global0[_wgslsmith_index_u32(53524u, 9u)], vec4<f32>(-1276f, 549f, 2086f, -1577f), vec4<f32>(457f, -995f, -564f, -775f), vec2<f32>(665f, 244f), vec4<i32>(0i, var_1, -63791i, u_input.a.x)), vec2<bool>(true, true), vec3<f32>(730f, -1121f, -1000f)) & u_input.e) % 32u));
    var var_3 = Struct_4(Struct_3(func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(52837u, 9u)], vec4<f32>(-247f, -1000f, -1775f, -507f), vec4<f32>(-546f, 491f, -1000f, -110f), vec2<f32>(-1623f, 153f), vec4<i32>(var_1, 2147483647i, 0i, u_input.a.x)), 1337f, Struct_2(global0[_wgslsmith_index_u32(u_input.e, 9u)], vec4<f32>(-247f, 317f, 455f, 1160f), vec4<f32>(2102f, -1038f, -1249f, 842f), vec2<f32>(776f, -1957f), vec4<i32>(var_1, -1i, var_1, -43202i)), 1i), Struct_2(Struct_1(u_input.a, u_input.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1076f, 1206f, -654f, 1365f))), vec4<f32>(1000f, -606f, 377f, -1237f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, 310f) * vec2<f32>(-635f, -3106f)), vec4<i32>(43415i, 6536i, -1i, -2147483647i)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_3(Struct_2(Struct_1(vec2<i32>(var_1, -24090i), 0u), vec4<f32>(1585f, 2453f, 533f, 1859f), vec4<f32>(895f, 171f, 884f, 380f), vec2<f32>(456f, 998f), vec4<i32>(var_1, 14753i, u_input.a.x, 36419i)), -3006f, func_2(vec4<i32>(1i, 2147483647i, -9764i, u_input.a.x), Struct_2(Struct_1(u_input.a, var_2.x), vec4<f32>(-697f, -837f, 1246f, 871f), vec4<f32>(-988f, 1000f, -174f, 225f), vec2<f32>(-999f, 1000f), vec4<i32>(var_1, -1i, var_1, var_1)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(18362u, 9u)], vec4<f32>(-982f, 1000f, 686f, -764f), vec4<f32>(765f, -1643f, 1784f, 1841f), vec2<f32>(-281f, 1223f), vec4<i32>(-13254i, var_1, -75986i, var_1)), -153f, Struct_2(Struct_1(u_input.a, u_input.e), vec4<f32>(-466f, 266f, 693f, 1000f), vec4<f32>(2235f, 614f, -887f, 199f), vec2<f32>(2243f, 818f), vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 0i)), 2147483647i), vec4<i32>(1i, -26063i, u_input.a.x, -1i)), select(u_input.a.x, var_1, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(sign(-1366f)))), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(21692i, -31172i), u_input.a), u_input.d), func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(60489u, 9u)], vec4<f32>(742f, 567f, 1013f, -2196f), vec4<f32>(1000f, 1192f, -655f, 265f), vec2<f32>(-1698f, -692f), vec4<i32>(-4137i, -2147483647i, -1i, 1i)), -1000f, Struct_2(Struct_1(u_input.a, u_input.d), vec4<f32>(502f, -995f, 870f, 1707f), vec4<f32>(727f, -675f, -944f, -215f), vec2<f32>(697f, 1357f), vec4<i32>(var_1, 19043i, var_1, u_input.a.x)), var_1), Struct_2(Struct_1(u_input.a, 8831u), vec4<f32>(574f, 403f, 1002f, -364f), vec4<f32>(2000f, 1074f, 2084f, -855f), vec2<f32>(949f, 341f), vec4<i32>(var_1, -2147483647i, var_1, -2147483647i)), true, Struct_3(Struct_2(Struct_1(u_input.a, 68933u), vec4<f32>(1414f, 1000f, 1496f, -284f), vec4<f32>(401f, 266f, 129f, -149f), vec2<f32>(-1000f, 1000f), vec4<i32>(-1i, u_input.a.x, 55320i, u_input.a.x)), -1125f, Struct_2(Struct_1(vec2<i32>(15769i, 6580i), 42888u), vec4<f32>(2095f, -400f, -1000f, -373f), vec4<f32>(-879f, 385f, -945f, -263f), vec2<f32>(1000f, -287f), vec4<i32>(0i, 15759i, 0i, -56692i)), 0i)).c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-571f, 133f, 207f, -2771f))))), vec2<f32>(_wgslsmith_f_op_f32(-1603f - 465f), func_2(vec4<i32>(var_1, var_1, 2147483647i, var_1), Struct_2(global0[_wgslsmith_index_u32(var_2.x, 9u)], vec4<f32>(-1178f, -369f, -1024f, -1281f), vec4<f32>(274f, 1108f, -1296f, -636f), vec2<f32>(1000f, -505f), vec4<i32>(var_1, -1i, -10966i, 0i)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.c, 9u)], vec4<f32>(463f, 1065f, 434f, 471f), vec4<f32>(-598f, 801f, -410f, 1159f), vec2<f32>(130f, 329f), vec4<i32>(-2147483647i, 12744i, -1i, var_1)), 1331f, Struct_2(Struct_1(u_input.a, var_2.x), vec4<f32>(1159f, -490f, -481f, -1120f), vec4<f32>(1118f, -296f, -1000f, -350f), vec2<f32>(1078f, -1000f), vec4<i32>(var_1, -12659i, var_1, u_input.a.x)), var_1), vec4<i32>(-7105i, -1i, var_1, var_1)).b.x), vec4<i32>(i32(-1i) * -18151i, _wgslsmith_div_i32(70565i, var_1), -661i, ~u_input.a.x)), 53438i), select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-18481i, 2147483647i, -43122i, var_1) >> (vec4<u32>(var_2.x, u_input.c, var_2.x, var_2.x) % vec4<u32>(32u)), func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.a.x, -52231i), var_2.x), vec4<f32>(494f, -310f, -1514f, -350f), vec4<f32>(187f, -1101f, -217f, 113f), vec2<f32>(1450f, -1000f), vec4<i32>(0i, var_1, var_1, u_input.a.x)), 1725f, Struct_2(global0[_wgslsmith_index_u32(var_2.x, 9u)], vec4<f32>(-1838f, 2299f, -255f, 162f), vec4<f32>(157f, -692f, -650f, 818f), vec2<f32>(426f, 350f), vec4<i32>(var_1, u_input.a.x, -1i, var_1)), u_input.a.x), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 9u)], vec4<f32>(1176f, 1000f, 438f, 1000f), vec4<f32>(383f, 543f, 1047f, 1060f), vec2<f32>(-2620f, 930f), vec4<i32>(u_input.a.x, var_1, u_input.a.x, 0i)), false, Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 9u)], vec4<f32>(996f, -1907f, 1245f, -829f), vec4<f32>(-1488f, -757f, 189f, -1000f), vec2<f32>(-1000f, 1000f), vec4<i32>(-1i, -1i, var_1, 54998i)), -627f, Struct_2(Struct_1(vec2<i32>(-2147483647i, 2147483647i), var_2.x), vec4<f32>(-1149f, -762f, 1000f, -1628f), vec4<f32>(1423f, -1666f, -634f, 1183f), vec2<f32>(-230f, -579f), vec4<i32>(u_input.a.x, 16671i, 2147483647i, u_input.a.x)), var_1)).e), vec4<i32>(var_1, u_input.a.x, var_1, var_1), any(vec2<bool>(true, true))));
    var var_4 = i32(-1i) * -var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3.b, _wgslsmith_add_vec4_i32(-var_3.b | min(vec4<i32>(1i, var_3.b.x, var_1, -1i), var_3.a.a.e), firstLeadingBit(abs(vec4<i32>(104i, var_1, var_3.a.d, 35459i))))), var_2.x, vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u | u_input.d, ~var_3.a.c.a.b, 7584u), _wgslsmith_sub_vec3_u32(~vec3<u32>(23415u, var_3.a.c.a.b, 1u), _wgslsmith_mult_vec3_u32(var_2, vec3<u32>(var_2.x, 1u, u_input.e)))), var_2.x), select(_wgslsmith_sub_i32(_wgslsmith_add_i32(func_2(var_3.b, Struct_2(Struct_1(vec2<i32>(var_3.a.a.e.x, 13955i), u_input.c), vec4<f32>(var_3.a.a.b.x, var_3.a.c.c.x, -874f, var_3.a.a.b.x), vec4<f32>(-834f, var_3.a.c.d.x, var_3.a.b, var_3.a.c.d.x), vec2<f32>(-1107f, var_3.a.b), var_3.a.c.e), var_3.a, var_3.b).a.a.x, -var_1), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 13409i), vec3<i32>(-34102i, -2147483647i, 4306i)))), min(_wgslsmith_clamp_i32(-18996i, func_2(vec4<i32>(u_input.a.x, u_input.a.x, var_1, var_3.a.c.e.x), var_3.a.a, var_3.a, var_3.b).e.x, var_1), -17165i), !(!all(vec3<bool>(false, true, false)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.a.d.x - var_3.a.c.c.x) + _wgslsmith_f_op_f32(var_3.a.c.d.x - -886f)), 2562f, _wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a.b.x, var_3.a.c.d.x, -1431f)) + vec3<f32>(var_3.a.b, _wgslsmith_f_op_f32(-601f * -369f), _wgslsmith_f_op_f32(-var_3.a.c.b.x)))));
}

