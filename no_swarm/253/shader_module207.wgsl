struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_u32(~(~u_input.a | _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(0u, 4294967295u))), vec2<u32>(~countOneBits(6385u), ~(u_input.c & u_input.a.x))), Struct_1(firstLeadingBit(27566u), vec4<i32>(u_input.b.x, ~u_input.b.x, u_input.b.x, -abs(u_input.b.x))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(372f, 482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1012f, -1184f)) + -562f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1465f + -1652f))) - _wgslsmith_f_op_f32(sign(-722f))), 1432f));
    let var_1 = var_0.c.yx;
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    let var_2 = var_1.x < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 853f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * var_1.x)))));
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = ~(~firstTrailingBit(arg_1.d.b.a ^ arg_1.c.a) << ((18874u >> (u_input.a.x % 32u)) % 32u));
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_1 = select(vec2<bool>(!(reverseBits(arg_0) > 29736i), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, reverseBits(arg_1.b | 1u), 3347u, (arg_2 << (arg_3.a % 32u)) >> (~81272u % 32u)), ~firstTrailingBit(vec4<u32>(5627u, 1u, u_input.a.x, u_input.a.x)) << (select(vec4<u32>(arg_3.a, arg_3.a, 4294967295u, 2679u) & vec4<u32>(89580u, var_0, arg_2, 1u), vec4<u32>(4294967295u, arg_1.c.a, var_0, arg_2) ^ vec4<u32>(arg_2, 0u, 1u, arg_2), vec4<bool>(true, false, true, false)) % vec4<u32>(32u))), 26u)], vec2<bool>(~u_input.b.x != min(1i, countOneBits(25259i)), true));
    global0 = array<vec2<bool>, 26>();
    return _wgslsmith_dot_vec3_u32(select((vec3<u32>(var_0, arg_1.b, arg_2) | vec3<u32>(43212u, arg_2, 53691u)) ^ vec3<u32>(4294967295u, 10370u, 0u), ~firstLeadingBit(vec3<u32>(4294967295u, 4596u, arg_2)), vec3<bool>(true, var_1.x, true)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(64497u, 54469u, 4294967295u) >> (vec3<u32>(71112u, 12052u, arg_1.d.b.a) % vec3<u32>(32u))), abs(vec3<u32>(29257u, 90501u, 4294967295u)))) ^ (reverseBits(countOneBits(arg_1.c.a)) << (_wgslsmith_mult_u32(4294967295u, 0u) % 32u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<vec2<bool>, 26>();
    var var_0 = func_4(reverseBits(~(~u_input.b.x)), Struct_3(u_input.b.x ^ _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8909i, -2147483647i, -1i), vec3<i32>(48345i, 22378i, u_input.b.x)), -7768i), u_input.a.x, Struct_1(_wgslsmith_sub_u32(73159u, func_3(u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), -_wgslsmith_mod_vec4_i32(vec4<i32>(34420i, u_input.b.x, u_input.b.x, 38035i), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), Struct_2(u_input.a | u_input.a, Struct_1(min(u_input.c, u_input.c), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -57563i)), vec3<f32>(_wgslsmith_f_op_f32(-1340f * 2550f), -568f, 770f))), u_input.c, Struct_1(u_input.a.x >> (~u_input.c % 32u), select(vec4<i32>(u_input.b.x, -66581i, -u_input.b.x, ~1i), max(-vec4<i32>(-1i, 49104i, 2147483647i, u_input.b.x), -vec4<i32>(u_input.b.x, 0i, -5158i, 2147483647i)), !vec4<bool>(arg_0, arg_0, false, true))));
    var_0 = ~select(32252u, ~u_input.a.x, arg_0);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-807f, -305f)) + _wgslsmith_f_op_f32(max(-184f, 718f))) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(756f, 2835f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f) - _wgslsmith_div_f32(-111f, -377f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(476f - _wgslsmith_f_op_f32(1005f + -266f)), 442f)) + 1f), _wgslsmith_f_op_f32(-1300f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(f32(-1f) * -1302f)))));
    global0 = array<vec2<bool>, 26>();
    return Struct_1(_wgslsmith_mult_u32(countOneBits(~u_input.a.x), u_input.a.x), ~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -52622i, u_input.b.x, -2147483647i), vec4<i32>(-9557i, u_input.b.x, -40840i, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 20364i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i)) << (vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_2.x));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2105f)) - arg_2.x)) >= 1105f, func_2(all(select(select(vec3<bool>(arg_1.a, true, true), vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, false, false)), vec3<bool>(arg_1.a, false, true), !vec3<bool>(arg_1.a, true, true)))));
    var var_2 = _wgslsmith_mod_vec2_i32((~vec2<i32>(arg_1.b.b.x, 4918i) & vec2<i32>(-44770i, var_1.b.b.x)) ^ ~vec2<i32>(var_1.b.b.x, 0i), vec2<i32>(-countOneBits(arg_3.b.x), arg_3.b.x) | ~arg_1.b.b.yy);
    let var_3 = var_1.a;
    var_1 = Struct_5(any(select(!(!vec2<bool>(true, arg_1.a)), global0[_wgslsmith_index_u32(~68774u, 26u)], global0[_wgslsmith_index_u32(arg_1.b.a, 26u)])), arg_3);
    return 1u << (~_wgslsmith_mod_u32(50876u, var_1.b.a) % 32u);
}

fn func_5(arg_0: u32) -> Struct_5 {
    global0 = array<vec2<bool>, 26>();
    var var_0 = Struct_3(u_input.b.x, _wgslsmith_div_u32(arg_0, 1u), Struct_1(u_input.a.x, ~(~(-vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x)))), Struct_2(vec2<u32>(func_4(-1i, Struct_3(u_input.b.x, u_input.a.x, Struct_1(arg_0, vec4<i32>(u_input.b.x, u_input.b.x, -27085i, 1i)), Struct_2(u_input.a, Struct_1(0u, vec4<i32>(0i, u_input.b.x, u_input.b.x, -1i)), vec3<f32>(-1000f, 1332f, -688f))), max(arg_0, 77216u), func_2(true)), _wgslsmith_mod_u32(u_input.a.x, ~0u)), Struct_1(arg_0, ~select(vec4<i32>(1535i, 2147483647i, u_input.b.x, 23002i), vec4<i32>(-15755i, 44410i, 3379i, -9367i), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1890f, -735f, -1000f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-800f, -259f, -1722f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, -1000f, -1124f))))));
    let var_1 = 2147483647i;
    let var_2 = Struct_3(~(~(~var_1)) & var_0.a, var_0.b, func_2(true), var_0.d);
    var var_3 = var_2.d.c.x;
    return Struct_5(false, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_u32(~(_wgslsmith_add_u32(1u, u_input.a.x) ^ func_1(vec4<f32>(381f, 734f, 1592f, -1246f), Struct_5(true, Struct_1(u_input.c, vec4<i32>(-21382i, -32651i, 0i, 6333i))), vec4<f32>(1000f, 1346f, -210f, 303f), Struct_1(66064u, vec4<i32>(-1i, 0i, -2147483647i, 0i)))), 4294967295u));
    let var_1 = Struct_3(var_0.b.b.x, ~0u, var_0.b, Struct_2(~(~u_input.a), Struct_1(func_2(!var_0.a).a, vec4<i32>(-var_0.b.b.x, var_0.b.b.x, u_input.b.x, -u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(241f - 413f))), -1003f, 608f)));
    let var_2 = Struct_3(~var_1.d.b.b.x, 28246u, var_0.b, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a.x, 0u)), vec2<u32>(23124u, 18266u) | select(vec2<u32>(var_2.b, var_0.b.a), var_2.d.a, true)), min(_wgslsmith_div_vec2_u32(vec2<u32>(33498u, var_2.d.a.x), vec2<u32>(84663u, 65092u) << (vec2<u32>(6480u, var_0.b.a) % vec2<u32>(32u))), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(sign(588f)))) - var_1.d.c.x), firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.d.a.x, 1u), abs(vec3<u32>(var_2.c.a, var_2.c.a, 34929u)))), -(~var_1.d.b.b.www) << (vec3<u32>(_wgslsmith_sub_u32(1u, select(1u, var_2.d.b.a, true)), 0u, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.c.x, var_2.d.c.x, -844f, var_1.d.c.x)), Struct_5(var_0.a, Struct_1(1u, vec4<i32>(8859i, u_input.b.x, -1i, -1i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-442f, var_2.d.c.x, var_2.d.c.x, 809f))), Struct_1(4588u, var_0.b.b))) % vec3<u32>(32u)));
}

