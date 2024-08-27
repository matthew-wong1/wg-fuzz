struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<f32>(-304f, -1000f, 1024f, -2304f), vec3<u32>(24001u, 1704u, 0u), Struct_1(0i)), Struct_2(vec4<f32>(1511f, -977f, -640f, -996f), vec3<u32>(4294967295u, 1016u, 0u), Struct_1(2377i)), Struct_2(vec4<f32>(559f, 1259f, 1379f, 2647f), vec3<u32>(1u, 0u, 1u), Struct_1(1708i)), Struct_2(vec4<f32>(1091f, 1293f, 778f, -321f), vec3<u32>(0u, 40718u, 49358u), Struct_1(39175i)), Struct_2(vec4<f32>(898f, -1430f, -344f, 439f), vec3<u32>(0u, 74573u, 34991u), Struct_1(2147483647i)), Struct_2(vec4<f32>(247f, 438f, 827f, 1185f), vec3<u32>(77572u, 8455u, 7482u), Struct_1(25303i)), Struct_2(vec4<f32>(-113f, 1226f, 711f, 677f), vec3<u32>(0u, 58545u, 1u), Struct_1(-1i)), Struct_2(vec4<f32>(322f, 568f, 200f, -1000f), vec3<u32>(1u, 90279u, 4294967295u), Struct_1(i32(-2147483648))), Struct_2(vec4<f32>(287f, -549f, 1000f, 1344f), vec3<u32>(1u, 1u, 8043u), Struct_1(-1i)), Struct_2(vec4<f32>(-826f, 1989f, -590f, -753f), vec3<u32>(420u, 4294967295u, 38122u), Struct_1(0i)), Struct_2(vec4<f32>(-1377f, -1043f, -1000f, -710f), vec3<u32>(4294967295u, 2434u, 0u), Struct_1(92897i)), Struct_2(vec4<f32>(1217f, 1663f, -431f, -778f), vec3<u32>(0u, 0u, 1u), Struct_1(2147483647i)), Struct_2(vec4<f32>(-246f, -1803f, 147f, 1896f), vec3<u32>(1u, 21496u, 1u), Struct_1(-42558i)), Struct_2(vec4<f32>(-476f, -683f, -1462f, 373f), vec3<u32>(1u, 65665u, 4294967295u), Struct_1(32475i)), Struct_2(vec4<f32>(720f, -120f, 986f, 118f), vec3<u32>(4294967295u, 15069u, 4294967295u), Struct_1(0i)), Struct_2(vec4<f32>(1308f, 286f, -726f, 1052f), vec3<u32>(48723u, 55356u, 5374u), Struct_1(0i)), Struct_2(vec4<f32>(-333f, -148f, -1107f, 1048f), vec3<u32>(60270u, 5340u, 20171u), Struct_1(-301i)), Struct_2(vec4<f32>(694f, -1781f, -441f, 1753f), vec3<u32>(1u, 4294967295u, 1u), Struct_1(1i)), Struct_2(vec4<f32>(141f, -1803f, 552f, 1000f), vec3<u32>(53466u, 4294967295u, 19564u), Struct_1(-8369i)), Struct_2(vec4<f32>(-557f, 1193f, -620f, -609f), vec3<u32>(1u, 33960u, 40021u), Struct_1(-95121i)));

var<private> global2: array<i32, 8> = array<i32, 8>(1i, -3003i, 2147483647i, 2751i, 53280i, -12505i, -10718i, 46010i);

var<private> global3: Struct_1 = Struct_1(1i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    return global3.a;
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    global3 = Struct_1(i32(-1i) * -(-global2[_wgslsmith_index_u32(1u, 8u)] >> (~1u % 32u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f + arg_0.a.a.x));
    let var_1 = select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, true, true, true | all(vec4<bool>(false, false, false, false))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), false), vec4<bool>(true, true, true, true)), vec4<bool>(abs(~global2[_wgslsmith_index_u32(1u, 8u)]) >= (_wgslsmith_sub_i32(25346i, u_input.a) & -2147483647i), any(vec2<bool>(true, true)), true, 34247u < arg_0.a.b.x));
    let var_2 = Struct_2(arg_0.a.a, _wgslsmith_mult_vec3_u32(arg_0.a.b, ~arg_0.a.b), arg_0.a.c);
    global0 = var_2.c.a;
    return _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(var_2.b, _wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.x, arg_0.a.b.x, var_2.b.x), vec3<u32>(1u, var_2.b.x, 1u))), _wgslsmith_div_vec3_u32(max(~(~var_2.b), vec3<u32>(firstTrailingBit(4294967295u), var_2.b.x, ~1u)), ~vec3<u32>(var_2.b.x & 38195u, firstLeadingBit(1u), _wgslsmith_div_u32(arg_0.a.b.x, arg_0.a.b.x))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    global3 = arg_2.a.c;
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2.a.a), func_3(arg_2), Struct_1(global3.a));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_2.a.a.x, arg_1, arg_3))))), select(firstTrailingBit(abs(var_0.b)), firstTrailingBit(firstTrailingBit(arg_2.a.b)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~1u), 20u)];
    let var_2 = global1[_wgslsmith_index_u32(~(~var_1.b.x), 20u)];
    var var_3 = var_2.c;
    var var_4 = func_2(-(_wgslsmith_div_i32(1i, func_1(vec2<bool>(false, true))) << (~var_1.b.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -693f) - 865f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1344f)))) + 231f), Struct_3(global1[_wgslsmith_index_u32(60583u, 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-476f, 1134f)))) * var_1.a.x));
    var var_5 = any(select(vec3<bool>(!(var_3.a > -2147483647i), true, true), vec3<bool>(true, true, select(any(vec2<bool>(false, true)), true, false)), vec3<bool>(true, true, true)));
    var_3 = func_2(~1i, 112f, Struct_3(global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(max(var_4.a.b.x, var_4.a.b.x), ~9821u, abs(var_4.a.b.x))), 20u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1571f))))).a.c;
    var var_6 = global1[_wgslsmith_index_u32(4294967295u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(50254i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, func_1(vec2<bool>(false, false)), min(global2[_wgslsmith_index_u32(1u, 8u)], 3739i), ~u_input.a), vec4<i32>(global3.a, 1i, -21651i, global2[_wgslsmith_index_u32(~0u, 8u)]))), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_6.b.x, 72115u, 55849u), countOneBits(_wgslsmith_div_vec3_u32(var_6.b, var_2.b)) << (_wgslsmith_div_vec3_u32(abs(var_1.b), select(vec3<u32>(45779u, 39008u, 103434u), var_6.b, false)) % vec3<u32>(32u))), max(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_6.b.x, 27268u, var_2.b.x, 0u), countOneBits(vec4<u32>(7925u, 30730u, var_4.a.b.x, var_6.b.x))), abs(vec4<u32>(_wgslsmith_add_u32(18530u, var_2.b.x), ~var_6.b.x, _wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(8717u, var_2.b.x, 1u)), 25598u))), select(-vec2<i32>(min(0i, var_6.c.a), -16349i), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, var_4.a.c.a), vec2<i32>(var_1.c.a, 14054i), vec2<bool>(true, false)), vec2<i32>(var_4.a.c.a, -44438i)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-43544i, var_6.c.a), vec2<i32>(2790i, var_6.c.a)), _wgslsmith_div_vec2_i32(vec2<i32>(global3.a, -31511i), vec2<i32>(var_3.a, global2[_wgslsmith_index_u32(var_4.a.b.x, 8u)])))), !select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec3<bool>(true, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a.x, var_1.a.x))) + var_2.a.x), 559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(215f)))));
}

