struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<i32, 27> = array<i32, 27>(1i, -71576i, 1i, -14649i, -25288i, -25242i, -16824i, 3306i, -18931i, -1i, -3101i, 2147483647i, -47856i, 2147483647i, 15746i, 1i, 1i, -40936i, -55078i, -32201i, 2147483647i, -29529i, i32(-2147483648), i32(-2147483648), 1i, 1i, -35067i);

var<private> global1: array<u32, 13> = array<u32, 13>(0u, 7373u, 4294967295u, 0u, 52037u, 38595u, 1u, 29092u, 53935u, 4294967295u, 4294967295u, 1u, 0u);

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<f32>(1206f, 1741f), -902f, vec2<i32>(-56400i, -13699i)), Struct_1(vec2<f32>(-1013f, -199f), 1396f, vec2<i32>(55919i, 6236i)), Struct_1(vec2<f32>(1080f, 251f), -476f, vec2<i32>(1i, 14044i)), Struct_1(vec2<f32>(1074f, 247f), 828f, vec2<i32>(-7310i, 0i)), Struct_1(vec2<f32>(237f, -2798f), 2010f, vec2<i32>(-52462i, 1i)), Struct_1(vec2<f32>(-740f, -1000f), -844f, vec2<i32>(-20848i, i32(-2147483648))), Struct_1(vec2<f32>(-1000f, -1000f), 878f, vec2<i32>(-25853i, -1i)), Struct_1(vec2<f32>(1001f, -498f), 146f, vec2<i32>(-1i, 1i)), Struct_1(vec2<f32>(-747f, 606f), -840f, vec2<i32>(0i, 1i)), Struct_1(vec2<f32>(431f, -1000f), -1910f, vec2<i32>(1i, -9524i)), Struct_1(vec2<f32>(-336f, 1344f), -127f, vec2<i32>(1i, -22187i)));

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(-358f, -1561f), 485f, vec2<i32>(-11376i, 30000i)), Struct_1(vec2<f32>(1000f, 1847f), 119f, vec2<i32>(83114i, 0i)), Struct_1(vec2<f32>(-1636f, -1000f), 1000f, vec2<i32>(-18658i, 2147483647i)), Struct_1(vec2<f32>(-2288f, 227f), 162f, vec2<i32>(1i, 0i)), Struct_1(vec2<f32>(-1018f, -406f), -919f, vec2<i32>(-39728i, 29780i)), Struct_1(vec2<f32>(554f, 764f), 187f, vec2<i32>(-1i, -19659i)), Struct_1(vec2<f32>(1000f, 288f), -1622f, vec2<i32>(56044i, -1i)), Struct_1(vec2<f32>(-530f, -1662f), -989f, vec2<i32>(2147483647i, -19924i)), Struct_1(vec2<f32>(-759f, -2388f), -449f, vec2<i32>(27784i, 2147483647i)), Struct_1(vec2<f32>(-381f, 1000f), -1404f, vec2<i32>(-42298i, -10112i)), Struct_1(vec2<f32>(502f, 1115f), -717f, vec2<i32>(1i, -1i)), Struct_1(vec2<f32>(-1402f, -1417f), -499f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<f32>(393f, -175f), -227f, vec2<i32>(-5651i, 1i)), Struct_1(vec2<f32>(309f, 1000f), 787f, vec2<i32>(5569i, -11292i)), Struct_1(vec2<f32>(1200f, 1133f), -1000f, vec2<i32>(53926i, -28344i)), Struct_1(vec2<f32>(135f, 974f), 317f, vec2<i32>(8811i, 73643i)), Struct_1(vec2<f32>(192f, 329f), 111f, vec2<i32>(2082i, 2147483647i)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    let var_0 = select(vec3<bool>(false, (1i | u_input.b) >= _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-29018i, 25789i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], -1i), vec2<i32>(u_input.b, 4551i)), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(43968u, 27u)], 23283i), vec2<i32>(global0[_wgslsmith_index_u32(13902u, 27u)], u_input.b))), true), vec3<bool>(!(!any(vec2<bool>(true, true))), true, u_input.b >= ~(-1i)), all(vec3<bool>(any(vec2<bool>(true, true)), !any(vec2<bool>(false, false)), true)));
    global0 = array<i32, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2535f, -828f))), _wgslsmith_f_op_f32(-843f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-229f * -161f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1095f + -840f), _wgslsmith_f_op_f32(580f - -196f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1145f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) - -399f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f))), _wgslsmith_f_op_f32(f32(-1f) * -571f), -114f, _wgslsmith_f_op_f32(-170f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1022f)))))), !(!var_0.x) != var_0.x));
    global3 = array<Struct_1, 17>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))))));
    return ~firstTrailingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(-24224i, -3966i), vec2<i32>(41170i, u_input.b))) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(~u_input.c, vec2<u32>(~u_input.c.x, u_input.a))) % vec2<u32>(32u));
}

fn func_2() -> vec2<bool> {
    global1 = array<u32, 13>();
    global3 = array<Struct_1, 17>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-769f, -455f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(433f, _wgslsmith_f_op_f32(f32(-1f) * -677f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-328f, -1000f), 862f))), _wgslsmith_f_op_f32(step(1391f, 114f)))), min(~func_3(), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 0i, 1i), vec4<i32>(66408i, 14844i, -2147483647i, -22348i))), ~(~vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 27u)])))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 2674f, 1086f) - vec3<f32>(var_0.b, 609f, var_0.a.x)))))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(min(u_input.a, 0u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(106026u, 13u)], 13u)], 40714u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(15597u, 13u)]) ^ vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u, 59591u), countOneBits(vec3<u32>(4294967295u, 0u, 73527u)))), global1[_wgslsmith_index_u32(16423u, 13u)]) >> (global1[_wgslsmith_index_u32(~(u_input.c.x | abs(u_input.c.x)), 13u)] % 32u), 11u)];
    return select(vec2<bool>(true, true), vec2<bool>(var_0.c.x == u_input.b, !any(vec3<bool>(true, true, false))), true);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = ~_wgslsmith_div_i32(u_input.b, u_input.b);
    var var_1 = all(!func_2());
    var var_2 = global2[_wgslsmith_index_u32(arg_2, 11u)];
    var_1 = arg_0.x;
    global2 = array<Struct_1, 11>();
    return ~(-_wgslsmith_div_vec2_i32(func_3(), arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1442f, -454f, 1304f, -310f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(531f, 1615f, -1000f, -2326f), vec4<f32>(-1000f, 908f, 100f, -342f), false)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-291f, -238f, 797f, -1920f), vec4<f32>(-422f, -1090f, -245f, -1122f), vec4<bool>(false, true, false, false)))))))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.a), 80522u), 11u)];
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_3 = _wgslsmith_mult_i32(20461i, -17723i) == (_wgslsmith_dot_vec2_i32(func_1(vec4<bool>(false, false, false, true), Struct_1(vec2<f32>(var_1.a.x, -554f), var_0.x, var_1.c), u_input.c.x, vec2<u32>(4294967295u, u_input.a)), vec2<i32>(_wgslsmith_mod_i32(var_2.c.x, 3056i), var_2.c.x)) ^ _wgslsmith_dot_vec2_i32(var_1.c, vec2<i32>(global0[_wgslsmith_index_u32(~4294967295u, 27u)], global0[_wgslsmith_index_u32(68334u, 27u)] ^ u_input.b)));
    global1 = array<u32, 13>();
    var var_4 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~1u, 13u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(75368u, 13u)], 34477u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)]), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 0u))) | _wgslsmith_sub_u32(u_input.a, 4294967295u), 13u)], u_input.a), 13u)] | _wgslsmith_div_u32(u_input.a, 10632u), 11u)];
    let var_5 = (~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, u_input.c.x, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10606u, 13u)], 13u)], 13u)], 1u, 36665u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], u_input.c.x, 0u))) & select(abs(vec3<u32>(2831u, u_input.c.x, 1u)) << (~vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(15942u, 42670u, 4294967295u)), true)) >> (_wgslsmith_mod_vec3_u32(max(firstTrailingBit(vec3<u32>(25386u, 23912u, u_input.c.x)) & ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], 11340u), vec3<u32>(1u, u_input.c.x, u_input.a)), _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 32716u, u_input.c.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], 39813u, 6476u), vec3<u32>(4294967295u, 51767u, u_input.a) & vec3<u32>(global1[_wgslsmith_index_u32(0u, 13u)], u_input.c.x, u_input.c.x), vec3<u32>(20290u, u_input.c.x, global1[_wgslsmith_index_u32(45915u, 13u)])))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_2.c.x, 18653i, ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_5.x, 19192u), 27u)]), ~max(min(var_4.c.x, -17114i), _wgslsmith_sub_i32(u_input.b, 1i))));
}

