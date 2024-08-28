struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(Struct_3(vec3<f32>(-1979f, 853f, -1000f), Struct_1(1u, vec4<f32>(462f, 146f, -967f, -1274f), -1031f, 2147483647i), true)), Struct_5(Struct_3(vec3<f32>(-506f, -353f, -1114f), Struct_1(0u, vec4<f32>(-496f, -1435f, -1871f, 302f), -525f, 0i), false)), Struct_5(Struct_3(vec3<f32>(-796f, 1198f, 375f), Struct_1(61602u, vec4<f32>(616f, 606f, -1000f, 1000f), -2333f, -1i), false)), Struct_5(Struct_3(vec3<f32>(-493f, -661f, -433f), Struct_1(38586u, vec4<f32>(-529f, -631f, -240f, 580f), -785f, -54635i), true)), Struct_5(Struct_3(vec3<f32>(-174f, -1450f, -1437f), Struct_1(24398u, vec4<f32>(-670f, 352f, -501f, 1032f), 924f, 3390i), true)), Struct_5(Struct_3(vec3<f32>(-414f, 1211f, 1402f), Struct_1(52026u, vec4<f32>(1000f, -802f, 1474f, 1127f), 1017f, -35448i), true)), Struct_5(Struct_3(vec3<f32>(-802f, -525f, 2215f), Struct_1(40537u, vec4<f32>(-585f, 1524f, -786f, -759f), 790f, i32(-2147483648)), true)), Struct_5(Struct_3(vec3<f32>(274f, 325f, -548f), Struct_1(77074u, vec4<f32>(-304f, -172f, 189f, 1000f), -1041f, -63945i), false)), Struct_5(Struct_3(vec3<f32>(598f, -325f, -1724f), Struct_1(4294967295u, vec4<f32>(889f, -423f, -1057f, 1645f), -1000f, -48717i), true)), Struct_5(Struct_3(vec3<f32>(1367f, 636f, 407f), Struct_1(4294967295u, vec4<f32>(719f, -333f, 1005f, -1001f), 532f, 2147483647i), true)), Struct_5(Struct_3(vec3<f32>(-842f, 694f, 275f), Struct_1(0u, vec4<f32>(-248f, -1000f, -884f, 1370f), 365f, 33543i), false)), Struct_5(Struct_3(vec3<f32>(-687f, -463f, -153f), Struct_1(4294967295u, vec4<f32>(-521f, 1408f, 1000f, 1625f), 977f, 0i), true)), Struct_5(Struct_3(vec3<f32>(-921f, 1000f, -535f), Struct_1(0u, vec4<f32>(-1030f, -963f, -1177f, 163f), -1412f, 23659i), true)), Struct_5(Struct_3(vec3<f32>(-1270f, -897f, 1502f), Struct_1(83570u, vec4<f32>(1126f, 1598f, 1000f, -1534f), 1591f, -1656i), false)), Struct_5(Struct_3(vec3<f32>(1206f, -1984f, -922f), Struct_1(1u, vec4<f32>(-279f, 562f, 322f, -1069f), 995f, -33i), false)), Struct_5(Struct_3(vec3<f32>(1162f, 937f, 1942f), Struct_1(3624u, vec4<f32>(1213f, -1065f, -189f, 1830f), 1139f, -4582i), false)), Struct_5(Struct_3(vec3<f32>(-642f, 792f, 577f), Struct_1(24819u, vec4<f32>(-414f, 2074f, 1189f, -1193f), -1790f, -21406i), true)));

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, -1080f, 1266f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, -476f, 851f)))), global1[_wgslsmith_index_u32(1u, 4u)], ((u_input.a ^ 1480i) < 1i) != true));
    return vec3<f32>(491f, _wgslsmith_f_op_f32(-var_0.a.b.c), _wgslsmith_f_op_f32(-var_0.a.b.b.x));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.c)), arg_0.a.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.b.x + arg_0.a.a.x) - -951f))), arg_0.a.b, select((arg_0.a.c | arg_0.a.c) | (u_input.c.x > -19112i), false, arg_0.a.c) | !any(vec4<bool>(true, true, true, true)));
    let var_1 = vec3<u32>(var_0.b.a, ~u_input.d.x, _wgslsmith_mod_u32(max(_wgslsmith_sub_u32(var_0.b.a, min(30900u, 966u)), _wgslsmith_div_u32(1u, var_0.b.a)), 4294967295u));
    let var_2 = vec4<bool>(true, any(!vec2<bool>(true, var_0.c)), true, all(vec2<bool>(any(select(vec2<bool>(arg_0.a.c, false), vec2<bool>(var_0.c, arg_0.a.c), vec2<bool>(false, var_0.c))), !all(vec3<bool>(false, false, false)))));
    var var_3 = Struct_4(arg_0.a, vec4<i32>(var_0.b.d, max(~var_0.b.d, arg_0.a.b.d), -(~reverseBits(u_input.e)), i32(-1i) * -8472i), vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.a, 1u), u_input.b), 0u, 0u, ~var_1.x), _wgslsmith_clamp_vec4_u32(reverseBits(~(u_input.d & u_input.d)), min(vec4<u32>(~arg_0.a.b.a, 1u, 4294967295u, reverseBits(arg_0.a.b.a)), firstTrailingBit(max(u_input.d, u_input.d))), u_input.d), _wgslsmith_add_vec3_u32(~(var_1 << (var_1 % vec3<u32>(32u))), ~reverseBits(~vec3<u32>(64901u, var_1.x, var_1.x))));
    var var_4 = var_3.b.x;
    return arg_0.a.b.b;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(select(6570u, 31323u, false), u_input.d.x << (u_input.b.x % 32u), true), ~(~7738u), ~(1u & u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)) >> (vec4<u32>(u_input.b.x, ~(u_input.b.x >> (u_input.d.x % 32u)), 26033u, 31206u) % vec4<u32>(32u)), u_input.d);
    var_0 = _wgslsmith_mod_u32(~u_input.d.x, ~_wgslsmith_sub_u32(u_input.d.x, ~_wgslsmith_dot_vec3_u32(u_input.d.ywy, vec3<u32>(98084u, 0u, 1u))));
    var_0 = firstTrailingBit(u_input.b.x);
    let var_1 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), false)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.d.x)))), Struct_1(_wgslsmith_add_u32(~(~u_input.b.x), ~abs(67222u)), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(abs(~u_input.b.x), 17u)])), 544f, _wgslsmith_mult_i32(~(~u_input.a), u_input.c.x)), var_1);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.c, 1453f)) * _wgslsmith_f_op_f32(exp2(var_2.a.x))), -1303f, 408f), Struct_1(var_2.b.a, var_2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.x, -515f)) + var_2.b.b.x) - -1000f), -reverseBits(_wgslsmith_div_i32(0i, -15802i))), true | any(vec2<bool>(true, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global1 = array<Struct_1, 4>();
    var var_1 = Struct_5(func_1());
    global0 = array<Struct_5, 17>();
    let var_2 = Struct_2(var_1.a.b.d, vec3<f32>(734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.a.a.x)), _wgslsmith_f_op_f32(var_1.a.a.x - var_1.a.b.c), var_1.a.c))), _wgslsmith_f_op_f32(-var_1.a.b.c)), func_1().b, global1[_wgslsmith_index_u32(~1u, 4u)], _wgslsmith_dot_vec4_u32(abs(u_input.d), u_input.d));
    var var_3 = vec4<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.a.c, true, true), any(vec3<bool>(false, true, var_1.a.c)))), true, var_1.a.c, !(!(!(var_1.a.c & false))));
    var_3 = select(select(!(!vec4<bool>(true, var_3.x, var_3.x, true)), !vec4<bool>(func_1().c, false || var_3.x, !var_3.x, var_2.e != var_2.c.a), !select(vec4<bool>(true, var_3.x, var_1.a.c, var_1.a.c), !vec4<bool>(var_3.x, true, var_1.a.c, false), true)), !select(!vec4<bool>(var_1.a.c, var_3.x, var_3.x, true), vec4<bool>(!var_3.x, true, true, select(true, var_3.x, false)), any(select(vec4<bool>(false, true, true, var_3.x), vec4<bool>(var_1.a.c, true, true, var_3.x), vec4<bool>(true, false, var_3.x, var_3.x)))), !vec4<bool>(func_1().c, false, (var_1.a.c || true) & true, false));
    let var_4 = _wgslsmith_sub_vec3_i32(-(~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.a.b.d, var_1.a.b.d), vec3<i32>(var_2.a, var_2.c.d, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_2.c.d, -16457i), vec3<i32>(var_1.a.b.d, var_1.a.b.d, u_input.e), vec3<i32>(var_2.c.d, var_1.a.b.d, -2147483647i)))), max(-(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_1.a.b.d, var_2.a)), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(22211i, -36350i, -14110i), vec3<i32>(-16822i, var_1.a.b.d, var_2.d.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, u_input.d.zy, _wgslsmith_f_op_f32(-var_2.d.b.x));
}

