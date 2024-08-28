struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(0i, -174f, vec4<i32>(2147483647i, i32(-2147483648), -2029i, 33371i)), Struct_1(0i, 1171f, vec4<i32>(1999i, -1690i, 21075i, 14076i))), Struct_2(Struct_1(0i, -562f, vec4<i32>(1i, 47271i, -23384i, 22958i)), Struct_1(-1i, 1688f, vec4<i32>(0i, -47702i, 47334i, 35463i))), Struct_2(Struct_1(2147483647i, -605f, vec4<i32>(0i, 1i, -1i, 9600i)), Struct_1(537i, 552f, vec4<i32>(28887i, 33014i, -7798i, 5968i))), Struct_2(Struct_1(-50491i, -769f, vec4<i32>(-65201i, 2147483647i, i32(-2147483648), 3314i)), Struct_1(i32(-2147483648), -112f, vec4<i32>(25524i, 2147483647i, i32(-2147483648), 0i))), Struct_2(Struct_1(1i, -372f, vec4<i32>(-1i, 43758i, -54016i, 2147483647i)), Struct_1(i32(-2147483648), 1610f, vec4<i32>(12065i, 1i, 41654i, -1i))), Struct_2(Struct_1(-2627i, -352f, vec4<i32>(2147483647i, i32(-2147483648), -12724i, -16523i)), Struct_1(i32(-2147483648), 787f, vec4<i32>(48311i, 16288i, -53324i, i32(-2147483648)))), Struct_2(Struct_1(-8575i, -1115f, vec4<i32>(1i, i32(-2147483648), -3820i, 14243i)), Struct_1(2147483647i, 828f, vec4<i32>(i32(-2147483648), -54672i, -1i, 1i))), Struct_2(Struct_1(-46310i, -651f, vec4<i32>(1i, -43390i, -44492i, 63803i)), Struct_1(i32(-2147483648), 369f, vec4<i32>(-5008i, 30614i, 0i, 0i))), Struct_2(Struct_1(39726i, -1000f, vec4<i32>(i32(-2147483648), 0i, 39503i, 20848i)), Struct_1(63017i, -1232f, vec4<i32>(-13714i, 2147483647i, 1i, 23748i))), Struct_2(Struct_1(8451i, -178f, vec4<i32>(-1i, 53472i, 2998i, -14388i)), Struct_1(-17683i, 432f, vec4<i32>(1i, 35315i, -1i, -10629i))), Struct_2(Struct_1(22080i, -378f, vec4<i32>(-1i, 52371i, -17833i, 54197i)), Struct_1(52351i, 1586f, vec4<i32>(-13555i, 910i, i32(-2147483648), -67647i))), Struct_2(Struct_1(18117i, 642f, vec4<i32>(2147483647i, 40840i, -52046i, 0i)), Struct_1(20735i, -971f, vec4<i32>(15712i, -12649i, 1i, 0i))), Struct_2(Struct_1(-14906i, 387f, vec4<i32>(14205i, 0i, 30853i, 9537i)), Struct_1(39286i, -1197f, vec4<i32>(18543i, 19898i, -55946i, 44521i))), Struct_2(Struct_1(-1i, -2240f, vec4<i32>(2147483647i, 7329i, 2147483647i, 2147483647i)), Struct_1(19196i, 183f, vec4<i32>(0i, 19400i, 14983i, 0i))), Struct_2(Struct_1(-12633i, -493f, vec4<i32>(-1i, -29048i, 1i, 11474i)), Struct_1(1i, -218f, vec4<i32>(73173i, 1i, 2147483647i, 15526i))), Struct_2(Struct_1(-1i, -638f, vec4<i32>(i32(-2147483648), 0i, -27585i, 7649i)), Struct_1(i32(-2147483648), 1480f, vec4<i32>(1i, 31283i, -3515i, -19528i))), Struct_2(Struct_1(1i, 1474f, vec4<i32>(-27078i, 10342i, 40675i, 2147483647i)), Struct_1(13042i, 1062f, vec4<i32>(i32(-2147483648), i32(-2147483648), 16191i, i32(-2147483648)))), Struct_2(Struct_1(51077i, -878f, vec4<i32>(-16841i, 2147483647i, -34896i, 2147483647i)), Struct_1(10799i, -2865f, vec4<i32>(-53887i, 16318i, -9780i, 25543i))), Struct_2(Struct_1(1i, 1335f, vec4<i32>(2147483647i, 1i, 2147483647i, -1i)), Struct_1(-1i, 505f, vec4<i32>(17035i, -27871i, 6538i, -19935i))), Struct_2(Struct_1(1i, -372f, vec4<i32>(-1i, -1i, 10489i, -7917i)), Struct_1(1i, -135f, vec4<i32>(13844i, 1i, -9270i, -22518i))), Struct_2(Struct_1(0i, 1561f, vec4<i32>(0i, 31505i, i32(-2147483648), 7564i)), Struct_1(18124i, 1268f, vec4<i32>(4886i, 872i, 0i, i32(-2147483648)))), Struct_2(Struct_1(-1i, 153f, vec4<i32>(0i, 33433i, 12402i, 75036i)), Struct_1(-34288i, -854f, vec4<i32>(-1i, 0i, 1i, -1i))), Struct_2(Struct_1(0i, -1355f, vec4<i32>(i32(-2147483648), -1i, 1i, -1i)), Struct_1(16622i, -168f, vec4<i32>(19808i, 1i, 33579i, 19800i))), Struct_2(Struct_1(i32(-2147483648), 152f, vec4<i32>(-1i, -1i, i32(-2147483648), 5035i)), Struct_1(-18011i, -1604f, vec4<i32>(i32(-2147483648), -5020i, 37843i, -19169i))), Struct_2(Struct_1(-1742i, 288f, vec4<i32>(2147483647i, 38484i, -28511i, 11507i)), Struct_1(17235i, 1184f, vec4<i32>(0i, -1i, 2147483647i, 45633i))), Struct_2(Struct_1(i32(-2147483648), 523f, vec4<i32>(27685i, -45926i, -1372i, 33888i)), Struct_1(i32(-2147483648), 1323f, vec4<i32>(-6858i, i32(-2147483648), 27802i, 5985i))), Struct_2(Struct_1(-6141i, -3170f, vec4<i32>(0i, 23020i, 2147483647i, 2147483647i)), Struct_1(-1i, -997f, vec4<i32>(45192i, 1i, -43661i, 1470i))), Struct_2(Struct_1(i32(-2147483648), -1352f, vec4<i32>(-12539i, 50803i, 53169i, -47515i)), Struct_1(16817i, 449f, vec4<i32>(-57447i, -7447i, 23676i, 22132i))), Struct_2(Struct_1(2147483647i, -655f, vec4<i32>(-27971i, 2147483647i, 49194i, 1i)), Struct_1(31851i, -302f, vec4<i32>(-1i, 2147483647i, -1533i, 1i))), Struct_2(Struct_1(i32(-2147483648), -1133f, vec4<i32>(20247i, -19003i, -1i, 2147483647i)), Struct_1(1i, -177f, vec4<i32>(i32(-2147483648), 26633i, 41775i, 2147483647i))));

var<private> global1: Struct_3 = Struct_3(vec4<u32>(3996u, 4294967295u, 61238u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, -181f, 168f)) + vec3<f32>(-563f, -817f, 915f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 1180f, 793f), _wgslsmith_div_vec3_f32(vec3<f32>(1839f, -788f, 778f), vec3<f32>(-571f, -904f, -1000f))))), vec3<f32>(-484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(965f)) - _wgslsmith_f_op_f32(trunc(135f))), 355f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, _wgslsmith_f_op_f32(sign(1985f)), _wgslsmith_f_op_f32(1005f - 1578f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))));
    global1 = Struct_3(global1.a);
    global1 = Struct_3(_wgslsmith_mult_vec4_u32(max(vec4<u32>(_wgslsmith_mult_u32(0u, 22994u), 11275u, _wgslsmith_div_u32(u_input.a.x, u_input.d.x), 1u), firstTrailingBit(vec4<u32>(global1.a.x, 8501u, 1u, 1u))), vec4<u32>(4294967295u, 1u, max(u_input.b.x, 1u), 1u) | vec4<u32>(54172u >> (global1.a.x % 32u), global1.a.x, 15527u, global1.a.x)));
    var var_1 = _wgslsmith_div_vec4_i32(abs(~(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 10001i, 2781i), vec4<i32>(-724i, u_input.c, 37340i, u_input.c)) << (~vec4<u32>(u_input.a.x, global1.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(~vec4<i32>(0i, 41469i, 0i, u_input.c)), vec4<i32>(-1i, u_input.c, u_input.c, ~u_input.c), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 20443i), vec2<i32>(u_input.c, u_input.c)), 28539i, ~u_input.c, u_input.c)), vec4<i32>(-(u_input.c << (4294967295u % 32u)), countOneBits(u_input.c) & select(22953i, u_input.c, true), abs(u_input.c & 12376i), countOneBits(abs(-15954i))), -_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), vec4<i32>(u_input.c, 13538i, u_input.c, -2147483647i)), vec4<i32>(-3813i, 2757i, -2147483647i, u_input.c) >> (global1.a % vec4<u32>(32u)))));
    return 50166i;
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_2, 30>();
    global1 = Struct_3(vec4<u32>(~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, u_input.b.x, 25496u), vec3<u32>(u_input.b.x, 18565u, 27031u))), 7474u, u_input.b.x, countOneBits(_wgslsmith_mult_u32(~global1.a.x, u_input.a.x))));
    var var_0 = Struct_1(21311i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(503f + -1000f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-635f + -360f)))))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(5210i, 41447i, u_input.c, u_input.c), vec4<i32>(1i, u_input.c, u_input.c, -69448i)), min(vec4<i32>(6014i, 2147483647i, -59784i, u_input.c), vec4<i32>(0i, u_input.c, u_input.c, 1i))), vec4<i32>(u_input.c, u_input.c, max(u_input.c, 20322i), _wgslsmith_sub_i32(u_input.c, u_input.c))), abs(~(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))));
    var_0 = Struct_1(~(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, 56103i), u_input.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b - -758f))), _wgslsmith_mod_vec4_i32(vec4<i32>(func_3(), select(-5854i, abs(u_input.c), true), var_0.a, -var_0.c.x), countOneBits(min(min(vec4<i32>(-9327i, var_0.a, u_input.c, var_0.a), vec4<i32>(-2147483647i, var_0.c.x, u_input.c, u_input.c)), firstLeadingBit(vec4<i32>(u_input.c, u_input.c, 8196i, -1i))))));
    var var_1 = ~(~(~abs(global1.a.wxy) | vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), ~27309u, u_input.b.x)));
    return Struct_4(Struct_1(var_0.c.x, _wgslsmith_f_op_f32(-var_0.b), vec4<i32>(_wgslsmith_mult_i32(1i, -u_input.c), -u_input.c, 63184i, var_0.c.x)), !(var_0.b == _wgslsmith_f_op_f32(f32(-1f) * -531f)), var_0.b, global0[_wgslsmith_index_u32(4294967295u, 30u)], ~select(u_input.a, abs(u_input.b << (vec3<u32>(41848u, 4424u, global1.a.x) % vec3<u32>(32u))), true | all(vec3<bool>(false, false, true))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_4 {
    return func_2();
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = arg_2.d;
    var var_1 = global0[_wgslsmith_index_u32(func_2().e.x, 30u)];
    return vec4<i32>(u_input.c | var_0.b.c.x, var_0.b.a, arg_2.d.b.a, arg_0.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1911f, 1000f, 226f) - vec3<f32>(1148f, 872f, 249f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-196f, 852f, -948f), vec3<f32>(-452f, 864f, -1000f), vec3<bool>(true, false, true))))), true))));
    let var_1 = vec2<i32>(u_input.c, ~34870i);
    let var_2 = !(!(false | all(vec2<bool>(false, true))));
    var var_3 = true;
    var var_4 = select(vec4<i32>(-1i, ~((i32(-1i) * -2147483647i) | reverseBits(u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(select(var_1.x, 19250i, true), ~u_input.c), (var_1 >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) << (countOneBits(global1.a.yx) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(~(vec2<i32>(var_1.x, 30710i) & vec2<i32>(var_1.x, u_input.c)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-26488i, var_1.x), vec2<i32>(-40832i, var_1.x))))), _wgslsmith_sub_vec4_i32(func_4(Struct_4(Struct_1(36779i, -1945f, vec4<i32>(var_1.x, -12489i, u_input.c, 1470i)), var_2, 2446f, Struct_2(Struct_1(u_input.c, 574f, vec4<i32>(u_input.c, 217i, -14302i, var_1.x)), Struct_1(2147483647i, 1154f, vec4<i32>(0i, var_1.x, -2147483647i, 4577i))), vec3<u32>(18857u, u_input.b.x, u_input.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -163f), func_1(0i, var_0.x)), vec4<i32>(11902i, -var_1.x, 17250i, -2147483647i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~77133u, u_input.b.x, abs(28772u)), firstTrailingBit(vec4<u32>(0u, u_input.b.x, 1u, u_input.a.x) >> (global1.a % vec4<u32>(32u)))) % vec4<u32>(32u)), any(!select(!vec4<bool>(false, var_2, false, false), select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(true, var_2, var_2, true), var_2), vec4<bool>(var_2, var_2, var_2, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

