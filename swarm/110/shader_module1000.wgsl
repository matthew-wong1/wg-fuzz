struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(1125u, vec3<i32>(i32(-2147483648), -38975i, -1i), Struct_1(false, -11394i, vec3<f32>(-754f, 526f, 433f), vec2<f32>(-272f, 398f), vec2<i32>(-1i, -20106i)), vec4<i32>(1i, -27098i, 1283i, 0i)), Struct_3(39685u, vec3<i32>(0i, i32(-2147483648), 28329i), Struct_1(false, -13018i, vec3<f32>(311f, -2218f, -935f), vec2<f32>(476f, 1000f), vec2<i32>(-38229i, 21152i)), vec4<i32>(0i, 2147483647i, -6648i, 14663i)), Struct_3(0u, vec3<i32>(-1i, i32(-2147483648), -1i), Struct_1(false, 41478i, vec3<f32>(-968f, 553f, 891f), vec2<f32>(731f, 2047f), vec2<i32>(53326i, -389i)), vec4<i32>(i32(-2147483648), 60923i, -9425i, -1i)), Struct_3(0u, vec3<i32>(19844i, 0i, 55985i), Struct_1(false, -1i, vec3<f32>(455f, -665f, -748f), vec2<f32>(-445f, -634f), vec2<i32>(i32(-2147483648), -1i)), vec4<i32>(1i, 43843i, 4138i, -38465i)), Struct_3(1u, vec3<i32>(58757i, -1757i, 23669i), Struct_1(true, 1i, vec3<f32>(-1147f, 1000f, 1000f), vec2<f32>(1346f, 268f), vec2<i32>(1i, i32(-2147483648))), vec4<i32>(-19770i, 2147483647i, 1i, -1i)), Struct_3(4294967295u, vec3<i32>(-1692i, -1i, 821i), Struct_1(true, -1i, vec3<f32>(416f, 612f, 195f), vec2<f32>(372f, -690f), vec2<i32>(-1i, -1i)), vec4<i32>(-1i, -341i, -20834i, 1i)), Struct_3(38581u, vec3<i32>(42931i, 14945i, -22926i), Struct_1(false, -42307i, vec3<f32>(1000f, 1262f, 604f), vec2<f32>(511f, -348f), vec2<i32>(-14775i, 1781i)), vec4<i32>(0i, 2147483647i, 56167i, -41345i)), Struct_3(48788u, vec3<i32>(40846i, -7898i, 1i), Struct_1(true, 1i, vec3<f32>(1488f, -402f, 770f), vec2<f32>(-1126f, 367f), vec2<i32>(-48201i, i32(-2147483648))), vec4<i32>(-1i, -14320i, -27327i, 2147483647i)), Struct_3(16485u, vec3<i32>(2147483647i, 29301i, 1i), Struct_1(true, -1i, vec3<f32>(289f, 104f, -656f), vec2<f32>(168f, -462f), vec2<i32>(-6279i, i32(-2147483648))), vec4<i32>(4071i, i32(-2147483648), 0i, -53569i)), Struct_3(51853u, vec3<i32>(-9260i, 1i, 2147483647i), Struct_1(true, i32(-2147483648), vec3<f32>(392f, 252f, 1047f), vec2<f32>(-416f, -1681f), vec2<i32>(51281i, -4529i)), vec4<i32>(1i, 0i, 0i, 49579i)), Struct_3(0u, vec3<i32>(-9973i, 1i, -10419i), Struct_1(true, 63415i, vec3<f32>(-1662f, 763f, 651f), vec2<f32>(362f, 859f), vec2<i32>(24574i, i32(-2147483648))), vec4<i32>(2147483647i, 0i, 13117i, -47772i)), Struct_3(102294u, vec3<i32>(i32(-2147483648), 3711i, i32(-2147483648)), Struct_1(false, 6321i, vec3<f32>(-483f, 919f, -1000f), vec2<f32>(-1000f, -1072f), vec2<i32>(31517i, 67716i)), vec4<i32>(1i, 2147483647i, 2147483647i, -26135i)), Struct_3(5608u, vec3<i32>(-38329i, -24477i, 1i), Struct_1(true, 1i, vec3<f32>(-964f, -1425f, -356f), vec2<f32>(-319f, -540f), vec2<i32>(1i, 7525i)), vec4<i32>(0i, 34831i, -86382i, 6909i)), Struct_3(0u, vec3<i32>(50754i, -5048i, -1142i), Struct_1(true, i32(-2147483648), vec3<f32>(-842f, 320f, -448f), vec2<f32>(1168f, 578f), vec2<i32>(35747i, -16603i)), vec4<i32>(2147483647i, 26867i, -1i, i32(-2147483648))), Struct_3(0u, vec3<i32>(-1i, -64643i, 2147483647i), Struct_1(true, -1i, vec3<f32>(-864f, -375f, -1000f), vec2<f32>(-1687f, -496f), vec2<i32>(-1i, -30868i)), vec4<i32>(-57932i, i32(-2147483648), i32(-2147483648), -1i)), Struct_3(4294967295u, vec3<i32>(1i, -44456i, i32(-2147483648)), Struct_1(true, 59506i, vec3<f32>(-1675f, 201f, 1667f), vec2<f32>(-1000f, -493f), vec2<i32>(-17044i, i32(-2147483648))), vec4<i32>(i32(-2147483648), 8285i, 2910i, i32(-2147483648))), Struct_3(57730u, vec3<i32>(i32(-2147483648), -1i, 1i), Struct_1(false, 3401i, vec3<f32>(234f, 1151f, -540f), vec2<f32>(852f, 116f), vec2<i32>(-39548i, -1i)), vec4<i32>(45219i, -32176i, 1477i, -17984i)), Struct_3(0u, vec3<i32>(2147483647i, 46507i, -1i), Struct_1(false, 11782i, vec3<f32>(-2488f, 477f, -2153f), vec2<f32>(125f, 790f), vec2<i32>(1i, 2147483647i)), vec4<i32>(0i, 0i, -1i, -1i)), Struct_3(34230u, vec3<i32>(2503i, 60133i, -48944i), Struct_1(false, i32(-2147483648), vec3<f32>(-261f, -105f, -259f), vec2<f32>(787f, -773f), vec2<i32>(7374i, -36314i)), vec4<i32>(58626i, 2147483647i, -1i, 2147483647i)), Struct_3(1u, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(false, 0i, vec3<f32>(-278f, 1009f, 913f), vec2<f32>(2255f, -1378f), vec2<i32>(0i, 2147483647i)), vec4<i32>(2147483647i, 24809i, 2147483647i, 7680i)), Struct_3(22371u, vec3<i32>(0i, 11514i, 1i), Struct_1(true, 419i, vec3<f32>(2249f, -560f, 790f), vec2<f32>(-475f, 225f), vec2<i32>(i32(-2147483648), 22651i)), vec4<i32>(-10794i, 89655i, 62658i, 34775i)), Struct_3(49775u, vec3<i32>(i32(-2147483648), 1i, -59023i), Struct_1(true, 10567i, vec3<f32>(-2114f, -162f, 940f), vec2<f32>(897f, -1720f), vec2<i32>(12172i, 2147483647i)), vec4<i32>(42077i, -3161i, i32(-2147483648), 45126i)), Struct_3(1u, vec3<i32>(21592i, -1i, -1i), Struct_1(true, -1i, vec3<f32>(-336f, -194f, 1089f), vec2<f32>(764f, -136f), vec2<i32>(0i, -15490i)), vec4<i32>(25040i, 20689i, -48034i, 0i)), Struct_3(79852u, vec3<i32>(1i, 5655i, 0i), Struct_1(true, 66005i, vec3<f32>(818f, -514f, 947f), vec2<f32>(-734f, 1873f), vec2<i32>(-29121i, -32465i)), vec4<i32>(16882i, 0i, -20054i, 0i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    var var_0 = -2147483647i;
    return (global0.b & _wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, u_input.a, u_input.a) << (vec3<u32>(1u, 56262u, global0.b) % vec3<u32>(32u)), ~vec3<u32>(global0.b, global0.b, u_input.a)))) < 3672u;
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.c.x) - _wgslsmith_f_op_f32(max(1285f, arg_3.c.d.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2)), -820f)), global1.x, _wgslsmith_f_op_f32(floor(617f))) - _wgslsmith_f_op_vec3_f32(-arg_3.c.c));
    global0 = Struct_2(vec2<bool>(false, true), arg_1.x & 13741u, global0.c, global0.c, _wgslsmith_clamp_i32(-10534i, countOneBits(u_input.b), _wgslsmith_mult_i32(firstTrailingBit(2147483647i), select(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(25679i, -15034i, 37616i, global0.c.b), vec4<i32>(0i, arg_3.c.b, 43161i, 6052i)), arg_3.d.a))));
    global0 = Struct_2(!global0.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(1u, global0.b), vec2<u32>(u_input.a, 0u) | vec2<u32>(arg_1.x, arg_0)), min(vec2<u32>(4294967295u, arg_3.b) >> (firstTrailingBit(arg_1) % vec2<u32>(32u)), vec2<u32>(4294967295u, ~arg_0))), Struct_1(!(!(arg_3.a.x & arg_3.a.x)), -min(-21191i & global0.e, min(global0.c.e.x, 70905i)), _wgslsmith_f_op_vec3_f32(min(arg_3.d.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2608f, global0.d.c.x, arg_2), global0.d.c)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(503f, global1.x))))), global0.c.e), arg_3.d, 17784i);
    global0 = Struct_2(vec2<bool>(true, true), ~(~_wgslsmith_clamp_u32(8917u, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b, 16315u, u_input.a), vec3<u32>(arg_1.x, arg_1.x, 58482u)))), Struct_1(any(select(vec4<bool>(true, arg_3.a.x, arg_3.a.x, arg_3.c.a), vec4<bool>(false, false, global0.d.a, global0.d.a), vec4<bool>(arg_3.d.a, false, arg_3.a.x, false))) & arg_3.a.x, abs(~global0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-560f, arg_2, 121f) * global0.d.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, global1.x, global0.c.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.c.x, -649f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.xz + vec2<f32>(1905f, global0.c.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1076f, global0.c.c.x) + arg_3.d.d), all(global0.a)))), ~vec2<i32>(-arg_3.e, ~(-23359i))), arg_3.d, -1i);
    global0 = arg_3;
    return ~arg_1;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(17531u, 24u)];
    let var_1 = select(!vec3<bool>(u_input.a >= (u_input.a & var_0.a), !(var_0.c.d.x >= 1031f), var_0.c.a), vec3<bool>(!arg_1.d.a != (~arg_1.c.e.x <= _wgslsmith_sub_i32(arg_2.b, arg_2.b)), true, !(true || any(vec4<bool>(false, true, arg_2.a, arg_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(338f, global1.x)) < 310f);
    var var_2 = func_3(16911u, firstLeadingBit(vec2<u32>(abs(arg_1.b), 33404u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.c.x, 1875f))), Struct_2(arg_1.a, global0.b, Struct_1(arg_1.a.x, arg_1.c.b, _wgslsmith_f_op_vec3_f32(-arg_1.d.c), global1.yy, arg_2.e << (vec2<u32>(global0.b, 30673u) % vec2<u32>(32u))), Struct_1(false, i32(-1i) * -2147483647i, vec3<f32>(arg_3.a, 1445f, arg_0.x), vec2<f32>(var_0.c.c.x, arg_3.a), -vec2<i32>(-4804i, arg_2.b)), -(i32(-1i) * -9628i))) & firstTrailingBit(select(vec2<u32>(2084u, countOneBits(0u)), ~(~vec2<u32>(u_input.a, 85521u)), !select(vec2<bool>(arg_1.c.a, var_0.c.a), arg_1.a, false)));
    return firstTrailingBit(abs(~(~var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(max(u_input.a, ~((u_input.a & 9092u) ^ 4294967295u)), ~abs(vec3<i32>(global0.c.b, -1i, 1i) | (vec3<i32>(20034i, 442i, u_input.b) << (vec3<u32>(4294967295u, 4805u, 58382u) % vec3<u32>(32u)))), Struct_1(func_1(), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 12188i, 1i, u_input.b), vec4<i32>(u_input.b, 14377i, -2310i, u_input.b)), ~vec4<i32>(global0.d.e.x, -18970i, global0.c.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global0.d.c, global0.d.c)))), _wgslsmith_f_op_vec2_f32(select(global1.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d.d.x, -1202f)))), vec2<bool>(global0.d.a, global0.d.a))), select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 3774i, global0.e, global0.e), vec4<i32>(u_input.b, -15759i, global0.e, u_input.b)), ~global0.c.b), ~global0.c.e, global0.a.x && !global0.d.a)), _wgslsmith_add_vec4_i32(~firstTrailingBit(vec4<i32>(14624i, global0.c.b, -1i, 1i)), vec4<i32>(-1i, countOneBits(-42609i), _wgslsmith_mult_i32(4882i, global0.c.b), ~(-2147483647i))) | vec4<i32>(~(-32104i) << (func_2(vec4<f32>(global0.c.c.x, global0.d.c.x, 619f, -1574f), Struct_2(vec2<bool>(false, global0.c.a), u_input.a, Struct_1(false, global0.c.e.x, global0.d.c, vec2<f32>(1003f, 1264f), global0.d.e), Struct_1(true, 22037i, global0.d.c, global1.xz, global0.d.e), global0.d.e.x), Struct_1(global0.d.a, 0i, global0.c.c, global0.d.c.yz, vec2<i32>(2147483647i, u_input.b)), Struct_4(-811f)) % 32u), abs(15930i), -60i, u_input.b));
    global1 = _wgslsmith_f_op_vec3_f32(floor(global0.c.c));
    var var_1 = ~abs(~var_0.b);
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(8306i, var_0.c.e.x), vec2<i32>(26128i, var_0.d.x));
    let var_3 = !global0.a;
    var var_4 = Struct_1(var_3.x, var_0.c.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, _wgslsmith_f_op_f32(global0.d.d.x - global0.d.d.x), _wgslsmith_f_op_f32(sign(global0.c.d.x)))) - global0.d.c), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 868f))), firstTrailingBit(_wgslsmith_sub_vec2_i32(abs(var_0.c.e), var_0.d.yw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, var_0.c.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2520f - global1.x) * _wgslsmith_f_op_f32(622f + -1701f))), global0.d.c.yz)), -4891i, vec3<u32>(~_wgslsmith_mult_u32(1u, 1u), global0.b, countOneBits(6928u)));
}

