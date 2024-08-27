struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false));

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<u32>(10451u, 46795u, 39154u), 222f, 102f, 623f), Struct_1(vec3<u32>(25370u, 37578u, 1u), -732f, -1531f, -585f), Struct_1(vec3<u32>(0u, 1u, 27169u), 965f, -665f, -266f), Struct_1(vec3<u32>(0u, 0u, 29071u), -1000f, -229f, 1000f), Struct_1(vec3<u32>(1u, 31056u, 4294967295u), 472f, 1446f, 955f), Struct_1(vec3<u32>(44152u, 101107u, 0u), 304f, -1870f, -333f), Struct_1(vec3<u32>(21352u, 0u, 4294967295u), -130f, 475f, 758f), Struct_1(vec3<u32>(42745u, 0u, 4294967295u), 338f, 1331f, 1273f), Struct_1(vec3<u32>(4294967295u, 38234u, 1937u), 196f, -379f, -131f), Struct_1(vec3<u32>(1u, 15726u, 1u), -371f, 698f, -596f), Struct_1(vec3<u32>(18905u, 57813u, 11290u), 690f, 982f, -523f), Struct_1(vec3<u32>(4294967295u, 41903u, 1u), 890f, 1000f, -354f), Struct_1(vec3<u32>(19972u, 1u, 18386u), -236f, 901f, -1701f), Struct_1(vec3<u32>(104806u, 5767u, 6500u), -796f, -1206f, 1966f), Struct_1(vec3<u32>(0u, 114486u, 4294967295u), 1000f, 265f, -620f), Struct_1(vec3<u32>(102068u, 4294967295u, 1u), 480f, -2422f, -141f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global0 = array<vec4<bool>, 27>();
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-_wgslsmith_div_i32(~1i, 9638i), 1i), _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, 1i, -8171i), vec3<i32>(-1i, -39325i, 1i), vec3<bool>(false, true, true)), -vec3<i32>(0i, 1i, 1i)), -select(_wgslsmith_sub_i32(0i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-14959i, 0i, -1905i, 2548i), vec4<i32>(6787i, 0i, 0i, 2147483647i)), 1271f != arg_0)));
    global0 = array<vec4<bool>, 27>();
    let var_1 = 220f;
    let var_2 = ~u_input.a.x;
    return -abs(select(~abs(vec2<i32>(-13627i, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 2147483647i) << (vec2<u32>(u_input.a.x, 13515u) % vec2<u32>(32u)), vec2<i32>(40442i, -21072i)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(461f - 1214f);
    global1 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_div_vec2_i32(~vec2<i32>(1i, abs(-2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, abs(-10737i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), func_3(-1000f))));
    var_0 = 1148f;
    let var_2 = true;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(round(-1279f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2227f + _wgslsmith_f_op_f32(floor(-2375f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1240f))))) - _wgslsmith_f_op_f32(f32(-1f) * -1475f))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(932f)) + _wgslsmith_f_op_f32(-1351f + -1004f)), -707f, 120f, _wgslsmith_f_op_f32(-1f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-703f + 459f), -992f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1444f, 217f, 1231f, 1068f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1594f, -1059f, -1372f, 1026f), vec4<f32>(-390f, -610f, -1000f, -536f))), vec4<bool>(false, true, 21416u != u_input.a.x, any(vec4<bool>(false, true, false, false))))))));
    var var_1 = _wgslsmith_f_op_f32(-1008f - _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 16u)];
    let var_3 = Struct_2(Struct_1(var_2.a, _wgslsmith_f_op_f32(step(1f, 1162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-899f, var_0.x)) - var_2.b)), abs(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(12622i, 2189i, -56025i)), vec3<i32>(35748i, firstLeadingBit(0i), -1i))));
    var var_4 = global1[_wgslsmith_index_u32(u_input.a.x, 16u)];
    return var_3;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_1.a.b;
    var var_1 = ~1u;
    let var_2 = 2147483647i;
    var var_3 = arg_0.x;
    var var_4 = -23330i;
    return func_1();
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(51812u, 1u), ~(~(~arg_0.a.a.x)), 55617u), arg_0.a.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -176f), -147f, true)))), 895f);
    var var_1 = Struct_2(arg_2, arg_0.b | vec3<i32>(select(_wgslsmith_mult_i32(arg_0.b.x, arg_0.b.x), ~(-2147483647i), true && arg_1), arg_3, 40448i));
    var var_2 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(func_2()), var_0.d, _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b, arg_2.d, arg_0.a.d)), Struct_2(arg_0.a, arg_0.b), ~1i, Struct_2(Struct_1(vec3<u32>(arg_0.a.a.x, 4294967295u, u_input.a.x), var_1.a.b, arg_0.a.d, 792f), vec3<i32>(0i, arg_0.b.x, var_1.b.x))).a.d)), var_1.b);
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-137f * 273f), 244f, _wgslsmith_f_op_f32(arg_0.a.c - var_0.c)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.b, arg_0.a.b, var_1.a.b))))))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, 210f, -1000f)), vec3<f32>(arg_0.a.c, -334f, var_1.a.b)))), Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 30311u, 1u), vec3<u32>(arg_2.a.x, 9561u, var_1.a.a.x)), _wgslsmith_f_op_f32(sign(var_2.a.b)), _wgslsmith_div_f32(973f, arg_2.b), _wgslsmith_f_op_f32(var_2.a.b + 560f)), vec3<i32>(_wgslsmith_dot_vec3_i32(var_2.b, vec3<i32>(2147483647i, 2147483647i, arg_3)), arg_0.b.x, -2147483647i)), 1304i, func_1()), _wgslsmith_clamp_i32(arg_0.b.x, ~var_1.b.x, var_2.b.x), arg_0).a;
    let var_3 = select(vec2<bool>(select(!any(global0[_wgslsmith_index_u32(4294967295u, 27u)]), true, any(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 27u)])), false), vec2<bool>(true, !(true && (var_0.d > var_0.c))), select(vec2<bool>(arg_1 && true, _wgslsmith_f_op_f32(-arg_0.a.d) < _wgslsmith_f_op_f32(floor(-1000f))), vec2<bool>(arg_1, 112441u <= (arg_2.a.x | 4294967295u)), !(!(!vec2<bool>(arg_1, true)))));
    return !select(!(!(!vec4<bool>(arg_1, false, false, var_3.x))), vec4<bool>(!arg_1 && !arg_1, var_3.x || false, !any(var_3), true), any(!select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(var_3.x, arg_1, false), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 16>();
    let var_0 = !func_5(func_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2304f, 683f, -304f), _wgslsmith_div_vec3_f32(vec3<f32>(-757f, -1025f, 2041f), vec3<f32>(-2591f, 1402f, -350f)))), func_1(), firstTrailingBit(15746i) | (i32(-1i) * -2147483647i), func_1()), true, Struct_1(~vec3<u32>(u_input.a.x, u_input.a.x, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(175f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1241f)), _wgslsmith_f_op_f32(min(-1099f, 172f))), ~_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(1i, -1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(401f, 1001f, -1000f), vec3<f32>(165f, -159f, 128f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-199f, -664f, -2001f), vec3<f32>(1912f, 904f, -320f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1421f, 957f, -553f), vec3<f32>(2377f, 1255f, 1297f))))))), vec3<f32>(1f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(1000f, -508f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f + 598f) + -925f))))));
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(-2147483647i, -2147483647i)), max(vec2<i32>(~(675i << (u_input.a.x % 32u)), i32(-1i) * -2147483647i), vec2<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27980i, -13053i, 0i, 0i), vec4<i32>(-1i, -2147483647i, 2147483647i, 0i))), -1i)), -max(reverseBits(vec2<i32>(-2147483647i, 7110i)), ~vec2<i32>(2147483647i, -24527i) >> (vec2<u32>(84646u, u_input.a.x) % vec2<u32>(32u))));
    global0 = array<vec4<bool>, 27>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.xxz) & (u_input.a.zzz & vec3<u32>(43335u, u_input.a.x, u_input.a.x)), func_4(vec3<f32>(1347f, 746f, var_1.x), func_1(), 16802i, func_1()).a.a)), 16u)];
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 6247i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(820f, 2007f, 1230f), vec3<f32>(-785f, var_3.b, var_3.c))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -741f, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(round(var_3.c)), var_4.a.d, _wgslsmith_f_op_f32(-var_3.d)), var_0.yyw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(138f, -646f, var_3.d), vec3<f32>(var_3.b, var_4.a.d, 925f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.a.b, var_3.d, -1306f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, -191f, var_4.a.c))))));
}

