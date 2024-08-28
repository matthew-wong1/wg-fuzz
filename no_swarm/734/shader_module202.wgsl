struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: f32;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(-803f, 129f, vec3<f32>(-1931f, 830f, 509f)), -43328i, -1i), Struct_4(Struct_1(787f, 1231f, vec3<f32>(1000f, 933f, -1000f)), i32(-2147483648), 11877i), Struct_4(Struct_1(-472f, 1402f, vec3<f32>(-187f, -1331f, -1000f)), -38790i, 2147483647i), Struct_4(Struct_1(-469f, 737f, vec3<f32>(761f, 155f, 306f)), -29869i, 1i), Struct_4(Struct_1(-628f, -241f, vec3<f32>(1032f, 1000f, 713f)), -84195i, -13483i), Struct_4(Struct_1(680f, -711f, vec3<f32>(1384f, 910f, -430f)), 0i, 0i), Struct_4(Struct_1(251f, 201f, vec3<f32>(420f, -709f, -526f)), 1i, 4802i), Struct_4(Struct_1(-1304f, 855f, vec3<f32>(129f, -1249f, -800f)), -30853i, -1i), Struct_4(Struct_1(2122f, -164f, vec3<f32>(-1908f, 879f, -558f)), i32(-2147483648), 1i), Struct_4(Struct_1(-246f, 1430f, vec3<f32>(-126f, -1000f, 727f)), 32211i, 7127i), Struct_4(Struct_1(-128f, -205f, vec3<f32>(-246f, 1390f, -601f)), 1i, 38335i), Struct_4(Struct_1(1000f, -462f, vec3<f32>(-971f, -992f, 734f)), 1i, 2147483647i), Struct_4(Struct_1(265f, -2262f, vec3<f32>(887f, -475f, -249f)), 0i, -12792i), Struct_4(Struct_1(1000f, -461f, vec3<f32>(180f, -1927f, -138f)), 55167i, 30207i), Struct_4(Struct_1(1000f, 1000f, vec3<f32>(685f, 138f, -100f)), -86009i, 2099i), Struct_4(Struct_1(-2114f, -148f, vec3<f32>(911f, -960f, 138f)), 11169i, 19852i), Struct_4(Struct_1(312f, 362f, vec3<f32>(1281f, -1039f, 693f)), 75247i, -1i), Struct_4(Struct_1(-1765f, -1707f, vec3<f32>(-1867f, 123f, 156f)), -72752i, 574i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-36345i, i32(-1i) * -2147483647i, u_input.d, ~0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, -45686i), -vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.d), abs(vec4<i32>(1i, 9579i, 48160i, 0i))));
    var var_1 = vec2<i32>(var_0.x, ~u_input.d);
    global2 = array<Struct_4, 18>();
    var var_2 = max(u_input.c.x, 12289u);
    var_1 = vec2<i32>(_wgslsmith_sub_i32(var_1.x, var_0.x), min(-countOneBits(0i), -21373i)) | vec2<i32>(0i, ~38039i);
    return select(!(!select(true, true, true)), (firstLeadingBit(firstTrailingBit(-507i)) == -(-1i & var_1.x)) | (2147483647i < abs(var_1.x)), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = arg_2;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f + var_0.a.b) - _wgslsmith_f_op_f32(arg_2.a.b + -2228f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(arg_2.a.c)))) + var_0.a.c)));
    var var_2 = global2[_wgslsmith_index_u32(0u, 18u)];
    let var_3 = Struct_5(global2[_wgslsmith_index_u32(1u, 18u)], !vec2<bool>(all(vec4<bool>(false, false, arg_1, arg_1)) && true, arg_1));
    var var_4 = Struct_2(vec4<bool>(var_3.b.x, select(func_3(), arg_1, arg_1 && func_3()), true, arg_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.c), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.a, vec4<u32>(u_input.b, 57231u, 57077u, 30277u)), firstTrailingBit(vec4<u32>(4294967295u, 32421u, 58980u, 0u)))), u_input.b));
    return select(select(var_4.a.wxz, vec3<bool>(var_4.a.x, var_4.a.x, !(-1127f < arg_2.a.b)), select(true, false, !(!var_4.a.x))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, !select(true, false, arg_1), (u_input.a.x >= u_input.a.x) || (var_4.a.x && arg_1)), var_3.b.x));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(true, true, false, true)))), select(select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), 1u > u_input.a.x), !func_2(vec2<f32>(-415f, 779f), true, Struct_4(Struct_1(-2754f, 399f, vec3<f32>(-299f, -253f, 1111f)), u_input.d, u_input.d)), vec3<bool>(true, true, u_input.d < 0i)), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), max(u_input.d | u_input.d, max(u_input.d, u_input.d)) < ((u_input.d & u_input.d) << (u_input.a.x % 32u))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(632f, -916f), vec2<f32>(-580f, 262f), vec2<bool>(true, false))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1183f, -245f), vec2<f32>(-896f, 100f)))) * vec2<f32>(_wgslsmith_f_op_f32(1662f + -514f), -1531f)), true, global2[_wgslsmith_index_u32(u_input.b, 18u)]));
    global1 = _wgslsmith_f_op_f32(step(2947f, -1613f));
    let var_1 = select(!(!(!select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), select(!select(!vec4<bool>(true, var_0.x, var_0.x, true), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, false, false, var_0.x), vec4<bool>(false, false, var_0.x, true)), var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, var_0.x, false, true)), true), !vec4<bool>(true, true, var_0.x, var_0.x), !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, true, false), var_0.x)), !vec4<bool>(true, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), false, false)), true);
    let var_2 = ~_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.c), vec4<u32>(5432u, u_input.c.x, 17186u, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.b, u_input.b, 1u)), _wgslsmith_add_u32(u_input.b, ~(~u_input.a.x)));
    var var_3 = Struct_2(select(var_1, select(var_1, var_1, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-703f, -404f)), !var_0.x, global2[_wgslsmith_index_u32(countOneBits(u_input.c.x), 18u)]).x), any(var_0.yx)), _wgslsmith_clamp_u32(~u_input.c.x, 0u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2 << (u_input.c.x % 32u), 78268u), 0u << (var_2 % 32u), firstLeadingBit(81834u) >> ((1u | var_2) % 32u))));
    return Struct_1(1619f, 1307f, vec3<f32>(_wgslsmith_div_f32(-265f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-561f * -1055f), _wgslsmith_f_op_f32(-1000f + 134f))), 805f, -459f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec2<i32>(-1i) * -vec2<i32>(u_input.d, abs(u_input.d))) & ~vec2<i32>(u_input.d, 46139i);
    var var_1 = false;
    let var_2 = ~_wgslsmith_mod_u32(38594u, select(u_input.c.x, 58699u << (u_input.e % 32u), true));
    var var_3 = func_1();
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, ~firstLeadingBit(1u)), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.zx, u_input.d);
}

