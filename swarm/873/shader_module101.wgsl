struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(10771i, vec3<f32>(-600f, -1670f, 139f), vec2<bool>(true, false), vec4<i32>(50517i, -49102i, 23030i, i32(-2147483648))), Struct_1(10342i, vec3<f32>(-403f, -500f, 463f), vec2<bool>(true, true), vec4<i32>(-1i, 7292i, 70849i, 1i)), Struct_1(i32(-2147483648), vec3<f32>(275f, 1254f, -1468f), vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -61991i, 0i, 88560i)), Struct_1(1i, vec3<f32>(1056f, -1537f, 858f), vec2<bool>(true, true), vec4<i32>(1i, -12483i, 2147483647i, -21598i)), Struct_1(1i, vec3<f32>(953f, 1000f, -567f), vec2<bool>(true, false), vec4<i32>(-26607i, -25364i, 0i, 2147483647i)), Struct_1(-33084i, vec3<f32>(560f, 1207f, 1752f), vec2<bool>(false, false), vec4<i32>(0i, 8391i, -1i, i32(-2147483648))), Struct_1(-23012i, vec3<f32>(-1211f, -240f, -496f), vec2<bool>(true, true), vec4<i32>(41945i, -25772i, 0i, 2147483647i)), Struct_1(-16951i, vec3<f32>(-169f, -1369f, -1706f), vec2<bool>(false, true), vec4<i32>(41538i, 11080i, 2147483647i, 2147483647i)), Struct_1(9794i, vec3<f32>(-624f, 770f, -135f), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -16196i, -39727i, 0i)), Struct_1(-59299i, vec3<f32>(-540f, -152f, -710f), vec2<bool>(true, true), vec4<i32>(2147483647i, 996i, -1i, -27948i)), Struct_1(i32(-2147483648), vec3<f32>(-462f, -635f, 1379f), vec2<bool>(false, true), vec4<i32>(2147483647i, -43636i, 39091i, 11028i)), Struct_1(-12991i, vec3<f32>(723f, -2112f, 670f), vec2<bool>(true, false), vec4<i32>(-23397i, i32(-2147483648), 0i, -1i)), Struct_1(1i, vec3<f32>(-519f, -1728f, -678f), vec2<bool>(false, false), vec4<i32>(1i, -1i, -41176i, 1i)), Struct_1(0i, vec3<f32>(789f, 258f, -560f), vec2<bool>(false, false), vec4<i32>(2147483647i, -1364i, -27078i, 20162i)), Struct_1(-45746i, vec3<f32>(477f, -450f, 867f), vec2<bool>(false, false), vec4<i32>(-1i, -1i, -22518i, 372i)), Struct_1(-1i, vec3<f32>(597f, 634f, -488f), vec2<bool>(true, true), vec4<i32>(-8486i, 71489i, -37676i, 2147483647i)), Struct_1(-12767i, vec3<f32>(-625f, -652f, 512f), vec2<bool>(true, true), vec4<i32>(1901i, 2147483647i, -1i, 1i)), Struct_1(45983i, vec3<f32>(-762f, -587f, -285f), vec2<bool>(false, false), vec4<i32>(0i, 2147483647i, -4854i, 27812i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> vec4<bool> {
    var var_0 = ~select(vec3<u32>(arg_1.x, ~(arg_1.x & 0u), 2522u), ~firstTrailingBit(~vec3<u32>(83811u, u_input.a.x, u_input.a.x)), !(!(true & arg_2)));
    var_0 = ~arg_1;
    let var_1 = _wgslsmith_f_op_f32(-571f * arg_0);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(4294967295u), var_0.x), 18u)];
    global0 = array<Struct_1, 18>();
    return !select(select(!select(vec4<bool>(var_2.c.x, true, var_2.c.x, true), vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x), true), vec4<bool>(any(vec4<bool>(var_2.c.x, arg_2, arg_2, true)), arg_2 & var_2.c.x, true, select(var_2.c.x, arg_2, false)), !select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, arg_2), vec4<bool>(var_2.c.x, var_2.c.x, arg_2, true), vec4<bool>(false, true, arg_2, arg_2))), !vec4<bool>(arg_2, false, var_2.c.x, true), vec4<bool>(var_2.c.x, any(select(vec4<bool>(false, false, var_2.c.x, false), vec4<bool>(true, var_2.c.x, false, false), true)), true, all(!vec2<bool>(var_2.c.x, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), true, firstLeadingBit(u_input.a.x) != reverseBits(5307u), true), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), func_3(-418f, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), true, -1434i))));
    global0 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(257f)) * _wgslsmith_f_op_f32(ceil(1603f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(-534f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-188f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2045f, 453f, -376f) * vec3<f32>(1000f, 438f, -833f)))));
    let var_2 = (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))))) >= 604f) == true;
    global0 = array<Struct_1, 18>();
    return Struct_1(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(vec4<i32>(1i, -1i, 24280i, -34847i))), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(select(-150f, var_1.x, var_2)), var_1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(723f, -1000f, var_1.x) - vec3<f32>(_wgslsmith_f_op_f32(min(-1041f, -1528f)), _wgslsmith_f_op_f32(var_1.x * -1838f), _wgslsmith_div_f32(var_1.x, var_1.x)))), select(select(vec2<bool>(var_2 & false, var_2), !(!vec2<bool>(var_2, true)), var_2), vec2<bool>(true, var_2), select(vec2<bool>(var_2, var_2), !select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), vec2<bool>(false, false)), var_2)), abs(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -1i, -1i), vec4<i32>(0i, 5993i, 0i, 1i)), ~(-7537i), 1i, countOneBits(0i))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(u_input.a.x, 48768u, u_input.a.x)), vec3<u32>(65793u, abs(4294967295u), 1u))), _wgslsmith_add_u32(~112537u, 57642u) ^ _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(0u, u_input.a.x, 0u, 46338u)), vec4<u32>(43496u, 17481u, 10211u, 45510u) & (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 97688u) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 102907u) % vec4<u32>(32u)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 37535u))), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, abs(u_input.a.x)), ~(~reverseBits(u_input.a.x)), _wgslsmith_mult_u32(2285u, ~_wgslsmith_mod_u32(u_input.a.x, 0u))));
    var var_2 = abs(u_input.a);
    let var_3 = false;
    var_2 = ~u_input.a;
    let var_4 = 92495u;
    let var_5 = _wgslsmith_add_vec4_i32(~select(abs(vec4<i32>(-7722i, 0i, -3987i, var_0.a)), vec4<i32>(-1i) * -var_0.d, func_3(_wgslsmith_f_op_f32(-var_0.b.x), vec3<u32>(4134u, 10974u, 33949u) >> (vec3<u32>(0u, var_4, u_input.a.x) % vec3<u32>(32u)), var_3, ~var_0.a)), -(~(~var_0.d)));
    let var_6 = firstLeadingBit(~min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, var_2.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(50426u, 43460u, 0u), vec3<u32>(0u, 24251u, var_4))), vec3<u32>(53228u, 7392u, 16670u)));
    var_1 = _wgslsmith_sub_u32(u_input.a.x, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>((u_input.a.x | 67013u) & _wgslsmith_add_u32(var_6.x, var_4), 0u, var_4 ^ ~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_6, vec3<u32>(var_6.x, u_input.a.x, var_2.x)), _wgslsmith_mod_u32(6804u, 1823u), ~1u)), vec4<u32>(103339u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.x, var_2.x, 1u), 0u), var_4, _wgslsmith_mod_u32(reverseBits(0u), firstLeadingBit(var_4)))), var_6, min(~(~vec4<u32>(u_input.a.x, 596u, 19887u, var_2.x) ^ min(vec4<u32>(1u, 15391u, var_6.x, 44961u), vec4<u32>(1u, var_6.x, u_input.a.x, 61826u))), _wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_6.x, 1u, var_4, var_2.x), vec4<u32>(16929u, u_input.a.x, u_input.a.x, 101492u)), vec4<u32>(58431u, var_2.x, u_input.a.x, 4294967295u), var_3 & var_3), vec4<u32>(var_2.x, var_4, 1u, var_4) >> (vec4<u32>(var_6.x, 0u, u_input.a.x, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) - var_0.b.x)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.xy, vec2<f32>(1073f, 209f), var_0.c)), _wgslsmith_f_op_vec2_f32(-var_0.b.xz))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.x, 1000f), var_0.b.zz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-193f, _wgslsmith_f_op_f32(abs(520f)))), select(select(select(var_0.c, vec2<bool>(var_3, false), vec2<bool>(true, var_0.c.x)), select(vec2<bool>(var_3, false), var_0.c, false), var_0.c.x && true), vec2<bool>(var_0.c.x, 218f != var_0.b.x), !(var_2.x > 1u)))));
}

