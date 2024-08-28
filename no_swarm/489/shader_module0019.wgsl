struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-375f, -19270i, vec4<bool>(false, true, true, true), -360f, 1006f), Struct_1(-1000f, 2147483647i, vec4<bool>(true, false, true, false), -1101f, -1604f), Struct_1(1194f, 2147483647i, vec4<bool>(false, true, false, true), -1000f, -570f), Struct_1(-275f, 1i, vec4<bool>(true, false, false, false), 1097f, 294f), Struct_1(-119f, -1i, vec4<bool>(false, false, true, false), 2179f, 906f), Struct_1(1045f, i32(-2147483648), vec4<bool>(true, false, false, false), 1279f, -511f), Struct_1(1083f, 0i, vec4<bool>(false, true, false, false), 233f, -961f), Struct_1(-1000f, -11432i, vec4<bool>(true, true, false, true), -1289f, 744f), Struct_1(2534f, 0i, vec4<bool>(false, false, true, false), 632f, 1229f), Struct_1(-144f, -15376i, vec4<bool>(true, true, false, false), 869f, 387f), Struct_1(-740f, -10919i, vec4<bool>(true, false, true, false), 312f, -946f), Struct_1(505f, 0i, vec4<bool>(false, false, false, false), 579f, -1304f), Struct_1(-950f, 1i, vec4<bool>(true, true, false, true), -1186f, 760f), Struct_1(-341f, 5575i, vec4<bool>(true, false, true, true), 497f, -688f), Struct_1(-1400f, 2147483647i, vec4<bool>(false, true, false, true), 704f, -2629f), Struct_1(437f, -29012i, vec4<bool>(false, true, true, true), -233f, -1989f), Struct_1(-590f, i32(-2147483648), vec4<bool>(false, false, false, false), -2517f, 683f), Struct_1(1609f, 1297i, vec4<bool>(true, true, true, false), 1000f, -1155f), Struct_1(-812f, 11065i, vec4<bool>(true, true, false, false), 1035f, 1340f), Struct_1(2533f, 124782i, vec4<bool>(false, false, false, true), 718f, -486f), Struct_1(427f, 0i, vec4<bool>(false, true, false, false), 593f, 753f), Struct_1(2049f, i32(-2147483648), vec4<bool>(false, false, false, true), -722f, -1000f), Struct_1(2042f, -12841i, vec4<bool>(true, true, false, true), 895f, 211f), Struct_1(-494f, 0i, vec4<bool>(false, false, true, false), 138f, 1000f), Struct_1(1016f, 1i, vec4<bool>(false, false, true, false), 1000f, -1776f), Struct_1(-1766f, -1i, vec4<bool>(true, false, true, true), 988f, 1071f), Struct_1(-356f, 1i, vec4<bool>(true, false, true, false), 2377f, -1344f), Struct_1(-396f, 32175i, vec4<bool>(true, false, false, true), 336f, 1369f));

var<private> global1: array<i32, 14>;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(398u, 61549u, 4294967295u), vec3<u32>(80061u, 4294967295u, 1u), vec3<u32>(94091u, 1u, 59517u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 44354u, 41041u), vec3<u32>(1u, 4294967295u, 13641u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 62398u), vec3<u32>(0u, 27772u, 109116u), vec3<u32>(0u, 56757u, 24869u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(75759u, 104335u, 1u), vec3<u32>(1u, 0u, 37139u), vec3<u32>(1u, 21010u, 4294967295u), vec3<u32>(1u, 32697u, 4294967295u), vec3<u32>(2298u, 51329u, 78124u));

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mult_i32(-26983i, max(2147483647i, reverseBits(_wgslsmith_sub_i32(select(global3.a.b, global3.a.b, arg_0.c.x), global3.a.b))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(-667f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1287f)), _wgslsmith_f_op_f32(-1997f + -302f), arg_0.c.x && (u_input.d.x < u_input.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.d, -1045f)) + arg_0.a));
    global2 = array<vec3<u32>, 16>();
    let var_2 = arg_0.a;
    global3 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(0u & u_input.d.x)), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 51067u), vec3<u32>(u_input.c, 1u, 1u))), ~1u), 28u)]);
    return arg_0.d;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    global3 = Struct_2(global3.a);
    let var_0 = min(abs(0u), ~u_input.b);
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(13924u), 28u)]);
    let var_2 = vec3<f32>(-507f, _wgslsmith_f_op_f32(func_3(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.e))), _wgslsmith_f_op_f32(arg_2.a - arg_0.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e))));
    global3 = var_1;
    return true;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_1(global3.a.a, arg_0, vec4<bool>(select(global3.a.c.x, all(vec2<bool>(arg_1, false)), global3.a.c.x), any(arg_2.a.c.yw), false, any(vec4<bool>(func_2(arg_2.a, arg_2.a.c.x, Struct_1(181f, u_input.a.x, vec4<bool>(global3.a.c.x, arg_1, true, arg_1), 308f, arg_2.a.e)), true, any(arg_2.a.c.zzw), !arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(arg_2.a.e, -1834f)));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(_wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], u_input.d)), abs(~vec3<u32>(1u, 0u, u_input.c)), global2[_wgslsmith_index_u32(~47395u, 16u)]) & vec3<u32>(u_input.c, u_input.b | ~u_input.b, 52370u), ~_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.d.x, 4294967295u, u_input.b) << (global2[_wgslsmith_index_u32(u_input.c, 16u)] % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(1u, 16u)] ^ vec3<u32>(u_input.b, u_input.d.x, 0u), ~u_input.d)));
    let var_2 = global3.a;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-160f)) + -1252f), -2147483647i, global3.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) * var_0.d) * var_0.a), 1557f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-113f, var_0.e)) - _wgslsmith_f_op_f32(step(758f, var_0.e)))), var_2.a)), 1i, vec4<bool>(all(!global3.a.c), arg_2.a.d >= _wgslsmith_f_op_f32(func_3(arg_2.a)), !select(any(vec4<bool>(true, false, false, false)), false, any(vec3<bool>(var_2.c.x, var_0.c.x, false))), any(select(select(vec2<bool>(false, global3.a.c.x), global3.a.c.zy, arg_1), !var_0.c.wz, !arg_1))), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_f_op_f32(sign(-1836f)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(func_1(-1i, true, Struct_2(global0[_wgslsmith_index_u32(13549u, 28u)])) & ~u_input.d.x), abs(_wgslsmith_dot_vec2_u32(~u_input.d.xy, u_input.d.xy))), 28u)]);
    let var_0 = global3.a.c.x;
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32((max(vec4<u32>(29074u, u_input.d.x, u_input.b, 0u), vec4<u32>(0u, u_input.b, u_input.c, u_input.d.x)) ^ (vec4<u32>(4294967295u, 4294967295u, u_input.c, 28438u) >> (vec4<u32>(1u, u_input.c, 4294967295u, 6759u) % vec4<u32>(32u)))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 13246u, u_input.c, u_input.b), vec4<u32>(u_input.c, 1u, u_input.d.x, 0u) ^ vec4<u32>(4294967295u, 4294967295u, 1u, u_input.c)) % vec4<u32>(32u)), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.d.x), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))))), 28u)];
    var var_2 = firstLeadingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, global3.a.b, global3.a.b, min(0i, 40418i)), select(max(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -2147483647i, -1i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, var_1.b, 1i)), ~vec4<i32>(u_input.a.x, 7706i, global1[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a.x), vec4<bool>(var_1.c.x, var_1.c.x, global3.a.c.x, global3.a.c.x))));
    global2 = array<vec3<u32>, 16>();
    let var_3 = _wgslsmith_div_vec3_i32(var_2.zxz, vec3<i32>(_wgslsmith_dot_vec3_i32(-var_2.zzz | vec3<i32>(0i, var_1.b, global3.a.b), vec3<i32>(-36976i, 2147483647i, _wgslsmith_sub_i32(global3.a.b, global3.a.b))), firstLeadingBit(var_2.x), max(select(_wgslsmith_sub_i32(-5797i, global1[_wgslsmith_index_u32(u_input.c, 14u)]), 0i, global3.a.c.x), -2147483647i)));
    var_1 = global0[_wgslsmith_index_u32(~u_input.c, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, vec2<f32>(_wgslsmith_f_op_f32(min(global3.a.a, _wgslsmith_f_op_f32(select(503f, var_1.e, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(var_1.e + var_1.d)) - global3.a.a)), _wgslsmith_clamp_i32(-749i, -1i, firstTrailingBit(1i)) | var_2.x);
}

