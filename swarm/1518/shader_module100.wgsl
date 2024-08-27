struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11120u;

var<private> global1: array<f32, 21> = array<f32, 21>(-125f, -420f, 1000f, 1039f, -1298f, -1000f, -809f, -426f, -363f, -334f, 385f, -1728f, -1908f, 1028f, -592f, -259f, 185f, -686f, -335f, 711f, 1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> bool {
    let var_0 = Struct_3(~firstLeadingBit(_wgslsmith_div_vec4_i32(arg_1.b, arg_1.b) ^ arg_1.b));
    let var_1 = var_0.a.zw;
    global1 = array<f32, 21>();
    var var_2 = 1613u;
    var var_3 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.c.x, 4294967295u, 110766u, arg_1.c.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.c.x, arg_1.c.x, u_input.a.x, u_input.a.x), max(vec4<u32>(52762u, arg_1.c.x, 48485u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u)))) >> (abs(countOneBits(29899u)) % 32u));
    return select(false, false, true);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, _wgslsmith_f_op_f32(round(581f)), _wgslsmith_f_op_f32(143f * -512f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)] * -1041f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, 1021f, global1[_wgslsmith_index_u32(0u, 21u)], 136f)))), vec4<i32>(min(1i, -2147483647i), _wgslsmith_mult_i32(abs(-1i), 1i), reverseBits(23469i), 37302i), vec2<u32>(48945u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(257u, 0u, 1u, 47463u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2055f, global1[_wgslsmith_index_u32(19246u, 21u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 21u)], 1117f)))))));
    global1 = array<f32, 21>();
    let var_1 = Struct_3(~(~((var_0.b | var_0.b) << (vec4<u32>(22782u, 25199u, var_0.c.x, 35292u) % vec4<u32>(32u)))));
    let var_2 = 21935u;
    let var_3 = Struct_2(var_0.a, _wgslsmith_add_vec4_i32(select(-vec4<i32>(var_0.b.x, -2147483647i, var_0.b.x, 5749i), -_wgslsmith_add_vec4_i32(vec4<i32>(1i, 42864i, -21013i, var_0.b.x), var_0.b), _wgslsmith_f_op_f32(-var_0.a.x) == _wgslsmith_f_op_f32(-var_0.a.x)), vec4<i32>(~(i32(-1i) * -14856i), _wgslsmith_add_i32(var_0.b.x, 2173i) ^ 39666i, (var_0.b.x | var_0.b.x) & var_0.b.x, 0i >> ((u_input.a.x & 4294967295u) % 32u))), firstTrailingBit(abs(var_0.c)), vec2<f32>(var_0.d.x, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(42114u, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1546f + var_0.a.x) - _wgslsmith_f_op_f32(-765f - global1[_wgslsmith_index_u32(u_input.a.x, 21u)])))));
    return 1u;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_4 {
    global1 = array<f32, 21>();
    var var_0 = _wgslsmith_clamp_vec2_i32(arg_3.d, arg_3.a.yx >> (~(_wgslsmith_add_vec2_u32(arg_2.ww, vec2<u32>(0u, 35582u)) << (arg_2.xy % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~(-vec2<i32>(-1368i, arg_3.d.x)) & -arg_3.a.xz));
    global1 = array<f32, 21>();
    let var_1 = arg_3.a;
    let var_2 = vec3<i32>(-80640i, _wgslsmith_div_i32(82187i & arg_3.d.x, var_0.x ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_3.a, arg_3.a), arg_3.a.x, -2147483647i)), -firstTrailingBit(firstTrailingBit(abs(0i))));
    return Struct_4(0u, Struct_1(arg_3.a, arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(arg_1.x, 21u)], 210f)))), ~vec2<i32>(_wgslsmith_div_i32(var_2.x, 21515i), max(var_2.x, -2147483647i))), Struct_3(~(~min(vec4<i32>(-873i, var_0.x, var_1.x, arg_3.a.x), vec4<i32>(var_0.x, -4604i, var_0.x, 50013i)))), vec3<i32>(var_2.x | var_1.x, countOneBits(-6884i) ^ _wgslsmith_mod_i32(i32(-1i) * -1i, var_1.x), 14309i));
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> Struct_2 {
    let var_0 = func_4(select(vec2<bool>(_wgslsmith_mult_i32(arg_1.b.d.x, arg_1.b.a.x) < arg_1.c.a.x, arg_1.b.b), !select(!vec2<bool>(true, arg_1.b.b), select(vec2<bool>(true, arg_1.b.b), vec2<bool>(false, arg_0), false), !vec2<bool>(arg_0, true)), select(!vec2<bool>(arg_1.b.b, true), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 21u)] >= -1106f), select(vec2<bool>(true, arg_1.b.b), vec2<bool>(arg_0, arg_0), false))), _wgslsmith_mod_vec2_u32(vec2<u32>(6182u, ~u_input.a.x & u_input.a.x), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), u_input.a.zx), vec2<u32>(35287u, _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(40870u, arg_1.a))))), _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 4294967295u, arg_1.a, u_input.a.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, arg_1.a, u_input.a.x, arg_1.a), vec4<u32>(u_input.a.x, 4294967295u, arg_1.a, u_input.a.x))) & _wgslsmith_div_vec4_u32(vec4<u32>(36482u, ~u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, arg_1.a, u_input.a.x, 4294967295u)), func_4(select(vec2<bool>(any(vec2<bool>(arg_0, arg_0)), true), vec2<bool>(select(false, arg_0, arg_1.b.b), true), select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), arg_1.a != u_input.a.x)), u_input.a.xx, vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 30704u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 12040u, u_input.a.x), u_input.a, vec3<u32>(32518u, u_input.a.x, 1u))), ~u_input.a.x, _wgslsmith_mult_u32(arg_1.a, u_input.a.x) << ((u_input.a.x << (80098u % 32u)) % 32u)), func_4(!vec2<bool>(arg_0, arg_0), u_input.a.xz, vec4<u32>(~4294967295u, arg_1.a | arg_1.a, arg_1.a, 0u), func_4(vec2<bool>(false, arg_0), u_input.a.xz, ~vec4<u32>(4294967295u, u_input.a.x, arg_1.a, 77827u), Struct_1(arg_1.c.a.yxw, true, vec4<f32>(783f, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_1.b.c.x, global1[_wgslsmith_index_u32(4294967295u, 21u)]), arg_1.d.xx)).b).b).b).c;
    var var_1 = vec2<u32>(29440u, _wgslsmith_mult_u32(4294967295u, arg_1.a));
    var_1 = (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 0u), u_input.a.yz)), vec2<u32>(151137u, 1u)) << ((reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(84388u, arg_1.a), vec2<u32>(u_input.a.x, var_1.x))) & _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xx, u_input.a.zx), u_input.a.xy, _wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(1u, 4294967295u)))) % vec2<u32>(32u))) << ((_wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(278u, 4294967295u) >> (select(vec2<u32>(58398u, 50122u), vec2<u32>(0u, 1u), arg_1.b.b) % vec2<u32>(32u))) << (select(u_input.a.yx, ~max(u_input.a.yx, u_input.a.zz), true) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-361f, arg_1.b.c.x, _wgslsmith_f_op_f32(max(1364f, 1299f)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 21u)]))), arg_1.b.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.b.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-794f, 113f, global1[_wgslsmith_index_u32(31565u, 21u)], global1[_wgslsmith_index_u32(87348u, 21u)]) * vec4<f32>(373f, global1[_wgslsmith_index_u32(4294967295u, 21u)], 1115f, arg_1.b.c.x)))) * _wgslsmith_f_op_vec4_f32(arg_1.b.c + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.c.x, -925f, arg_1.b.c.x, -333f), arg_1.b.c))))) * vec4<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(arg_1.b.c.x * -830f), arg_1.b.c.x, -1767f));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.b.c), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, 14538i, var_0.a.x, 0i), var_0.a, abs(-arg_1.c.a)) & var_0.a, u_input.a.yz, arg_1.b.c.ww);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_2 {
    global1 = array<f32, 21>();
    let var_0 = func_5(any(vec2<bool>(true, true)), func_4(vec2<bool>(func_2(_wgslsmith_f_op_f32(-arg_3.x), Struct_2(vec4<f32>(arg_3.x, -979f, arg_3.x, 193f), arg_0.b, arg_1.zx, arg_3.xy), -arg_0.b.yyy, _wgslsmith_f_op_f32(-arg_0.a.x)), false), vec2<u32>(_wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x & 0u), 53329u), vec4<u32>(_wgslsmith_div_u32(reverseBits(5358u), 27658u), arg_0.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 40106u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.c.x, 4294967295u, 4294967295u)), _wgslsmith_mult_u32(60922u, arg_0.c.x), u_input.a.x), func_3(true)), Struct_1(arg_0.b.wyw, any(vec2<bool>(false, true)), vec4<f32>(arg_0.d.x, arg_3.x, -1632f, _wgslsmith_f_op_f32(f32(-1f) * -716f)), vec2<i32>(~0i, -31702i))));
    global0 = firstLeadingBit(arg_1.x);
    var var_1 = -abs(-abs(-arg_0.b.x));
    var var_2 = global1[_wgslsmith_index_u32(4130u, 21u)];
    return var_0;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = Struct_3(min(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -arg_2.b, _wgslsmith_clamp_vec4_i32(arg_2.b >> (vec4<u32>(u_input.a.x, arg_2.c.x, 0u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.b.x, arg_2.b.x, -35626i, arg_2.b.x), vec4<i32>(arg_2.b.x, arg_2.b.x, 1i, -1i)), -arg_2.b)), arg_2.b));
    global0 = 41729u;
    var_0 = func_4(!(!(!vec2<bool>(arg_0, false))), ~(~firstLeadingBit(~vec2<u32>(14886u, u_input.a.x))), _wgslsmith_mult_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 45219u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 39047u)), vec4<u32>(1u, u_input.a.x, arg_2.c.x, 30505u) >> (vec4<u32>(4294967295u, 43786u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_2.c.x, 47842u, 67967u), vec4<u32>(0u, 0u, u_input.a.x, 0u), vec4<u32>(22748u, arg_2.c.x, arg_2.c.x, u_input.a.x)), vec4<u32>(35272u, 0u, 4294967295u, u_input.a.x) & vec4<u32>(arg_2.c.x, 4294967295u, arg_2.c.x, 0u), abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u)))) << (reverseBits(vec4<u32>(17559u, u_input.a.x, arg_2.c.x, 1u)) % vec4<u32>(32u)), func_4(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0), vec2<bool>(true, false), vec2<bool>(arg_1, false)), arg_1 | arg_0), select(vec2<bool>(false, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(arg_0, false), vec2<bool>(false, false)), all(vec4<bool>(false, arg_0, true, arg_1)))), u_input.a.zx, ~(~(~vec4<u32>(0u, 1u, arg_2.c.x, arg_2.c.x))), func_4(!vec2<bool>(arg_0, arg_0), ~(~u_input.a.yy), max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c.x, 41580u, arg_2.c.x, u_input.a.x), vec4<u32>(arg_2.c.x, 4800u, u_input.a.x, arg_2.c.x)), abs(vec4<u32>(1u, 43277u, 61909u, u_input.a.x))), func_4(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_1), arg_0), min(vec2<u32>(23124u, arg_2.c.x), u_input.a.zz), ~vec4<u32>(26374u, 4294967295u, 14423u, u_input.a.x), Struct_1(var_0.a.wxy, true, arg_2.a, vec2<i32>(var_0.a.x, var_0.a.x))).b).b).b).c;
    global0 = u_input.a.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(857f, -267f)), -2351f, _wgslsmith_f_op_f32(arg_2.a.x - -395f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_2.a.wyy))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_2.a.zyx)) + vec3<f32>(-1750f, _wgslsmith_f_op_f32(abs(arg_2.a.x)), 433f)))));
}

fn func_7(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: f32) -> vec2<f32> {
    let var_0 = all(vec2<bool>(!all(vec4<bool>(true, true, true, true)), arg_1.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_6(all(select(select(vec2<bool>(var_0, arg_1.x), vec2<bool>(false, true), arg_1.x), vec2<bool>(false, false), false)), arg_1.x, func_5(all(!vec3<bool>(var_0, arg_1.x, true)), func_4(select(vec2<bool>(arg_1.x, var_0), vec2<bool>(false, var_0), arg_1), ~u_input.a.xz, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_4(vec2<bool>(false, var_0), u_input.a.xz, vec4<u32>(u_input.a.x, 14910u, u_input.a.x, 0u), Struct_1(vec3<i32>(31420i, 0i, arg_0), arg_1.x, vec4<f32>(1000f, arg_3, arg_2.x, arg_2.x), vec2<i32>(2147483647i, 31134i))).b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(330f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_2.x, var_0)), arg_2.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_2.x, -1313f)) + _wgslsmith_f_op_vec3_f32(floor(arg_2)))))));
    let var_2 = 96811u;
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a.zy & vec2<u32>(var_2, var_2), u_input.a.yy)), u_input.a.zy));
    let var_4 = _wgslsmith_mult_i32(1i, arg_0);
    return _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, 1200f), var_1.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_7(_wgslsmith_mult_i32((-1i & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(0i, -21106i))) << (25185u % 32u), reverseBits(0i)), !vec2<bool>(~u_input.a.x > _wgslsmith_sub_u32(4294967295u, 0u), all(vec4<bool>(false, true, true, true)) && true), _wgslsmith_f_op_vec3_f32(func_6(true, true, func_1(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(45150u, 21u)], -625f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 1352f)), ~vec4<i32>(524i, 9424i, -20470i, -2147483647i), select(vec2<u32>(u_input.a.x, 9763u), u_input.a.zy, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 50708u, 107606u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 28373u)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 16768i, 16768i), vec3<i32>(1i, 1i, 1i)), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 21u)]), global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 21u)], _wgslsmith_f_op_f32(select(1388f, 174f, true)), _wgslsmith_f_op_f32(f32(-1f) * -268f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2060u, 21u)])) * global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u) >> (select(13539u, u_input.a.x, true) % 32u), 21u)]))));
    let var_1 = false;
    var var_2 = func_4(select(select(vec2<bool>(false, var_1 || var_1), select(select(vec2<bool>(false, true), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(var_1, var_1), true), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), vec2<bool>(true, false)), vec2<bool>(var_1, true), !vec2<bool>(var_1, var_1))), select(!select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), vec2<bool>(false, var_1)), vec2<bool>(true, var_1), select(true, false, true) | var_1), var_1), ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 1u))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.a.x, 14819u, u_input.a.x, 27603u) | vec4<u32>(u_input.a.x, 49657u, 4294967295u, u_input.a.x), vec4<u32>(~u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x << (31464u % 32u)), select(vec4<bool>(false, var_1, false, true), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, false, false, var_1), true), select(vec4<bool>(false, false, false, var_1), vec4<bool>(true, false, var_1, var_1), true))), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 66580u) & vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(0u, u_input.a.x, 53753u, 0u)))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, _wgslsmith_mod_i32(-1i, 2147483647i)), countOneBits(~vec3<i32>(-2933i, -21081i, -36504i))), any(select(vec4<bool>(var_1, var_1, false, var_1), !vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, false, true, true), true))), vec4<f32>(func_1(func_5(var_1, Struct_4(1u, Struct_1(vec3<i32>(2147483647i, 31173i, 28602i), false, vec4<f32>(1794f, -1730f, var_0.x, var_0.x), vec2<i32>(-18554i, -22176i)), Struct_3(vec4<i32>(-22486i, -44147i, -82639i, -7854i)), vec3<i32>(-773i, -36524i, -20968i))), vec4<u32>(1u, 42300u, 0u, u_input.a.x), select(vec3<i32>(-1i, -1i, 30936i), vec3<i32>(2147483647i, 2147483647i, -37520i), var_1), func_5(true, Struct_4(u_input.a.x, Struct_1(vec3<i32>(1i, 0i, 2147483647i), var_1, vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], var_0.x, 327f, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<i32>(-1414i, -22486i)), Struct_3(vec4<i32>(-2147483647i, 0i, -11772i, -33685i)), vec3<i32>(-18840i, 44491i, -1i))).a).a.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -436f), global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), abs(select(vec2<i32>(-72i, 19093i), vec2<i32>(-1i, -2147483647i), false)) >> (~u_input.a.yz % vec2<u32>(32u)))).b;
    let var_3 = func_5(8815i <= _wgslsmith_add_i32(_wgslsmith_div_i32(func_4(vec2<bool>(var_2.b, var_2.b), u_input.a.yy, vec4<u32>(u_input.a.x, u_input.a.x, 11356u, u_input.a.x), Struct_1(var_2.a, var_1, var_2.c, vec2<i32>(1650i, var_2.a.x))).b.d.x, firstLeadingBit(var_2.d.x)), 0i), Struct_4(1u, func_4(!(!vec2<bool>(var_2.b, var_2.b)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, 0u)), vec2<u32>(u_input.a.x, u_input.a.x)), firstLeadingBit(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), func_4(vec2<bool>(true, true), vec2<u32>(32399u, 1u), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(var_2.a, var_2.b, var_2.c, vec2<i32>(1i, var_2.a.x))).b).b, func_4(!(!vec2<bool>(false, var_2.b)), vec2<u32>(60450u | u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 17001u) ^ ~vec4<u32>(u_input.a.x, 80697u, u_input.a.x, 24708u), Struct_1(~var_2.a, func_2(global1[_wgslsmith_index_u32(0u, 21u)], Struct_2(vec4<f32>(var_2.c.x, var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec4<i32>(var_2.d.x, var_2.a.x, 4264i, var_2.d.x), u_input.a.xz, vec2<f32>(global1[_wgslsmith_index_u32(103709u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), vec3<i32>(var_2.a.x, 0i, 1i), 584f), _wgslsmith_f_op_vec4_f32(round(var_2.c)), var_2.d)).c, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

