struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(12392i, 1u, vec3<f32>(-542f, -740f, -1000f)), Struct_1(34998i, 31543u, vec3<f32>(-293f, -1855f, -1000f)), Struct_1(-1i, 30764u, vec3<f32>(758f, 443f, -559f)), Struct_1(i32(-2147483648), 10350u, vec3<f32>(556f, -344f, -670f)), Struct_1(19501i, 0u, vec3<f32>(1041f, -130f, 676f)), Struct_1(-10916i, 6474u, vec3<f32>(-1000f, -517f, 134f)), Struct_1(-1i, 36102u, vec3<f32>(-1000f, 1000f, 1056f)), Struct_1(-1i, 4294967295u, vec3<f32>(1312f, 416f, -1281f)), Struct_1(1i, 22933u, vec3<f32>(-823f, -120f, -1309f)), Struct_1(-14773i, 35149u, vec3<f32>(-482f, -663f, -103f)), Struct_1(0i, 27508u, vec3<f32>(-1034f, -1240f, -997f)), Struct_1(1i, 41906u, vec3<f32>(-849f, 722f, 148f)), Struct_1(0i, 40760u, vec3<f32>(1000f, -326f, 534f)), Struct_1(i32(-2147483648), 1u, vec3<f32>(723f, -1111f, 309f)), Struct_1(-1i, 0u, vec3<f32>(1049f, 937f, -270f)), Struct_1(13019i, 55916u, vec3<f32>(2257f, -444f, 182f)), Struct_1(-1i, 74895u, vec3<f32>(823f, 288f, 892f)), Struct_1(1i, 4294967295u, vec3<f32>(898f, -820f, 1000f)), Struct_1(-54980i, 36160u, vec3<f32>(-548f, -721f, -1581f)), Struct_1(-1i, 4294967295u, vec3<f32>(-1108f, 1000f, 1077f)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(Struct_1(2147483647i, 1u, vec3<f32>(1682f, -2234f, 1685f)), vec4<u32>(2895u, 0u, 43285u, 1u), false), Struct_5(Struct_1(36214i, 0u, vec3<f32>(-1396f, -676f, -1000f)), vec4<u32>(0u, 50549u, 1u, 4294967295u), false), Struct_5(Struct_1(12128i, 1u, vec3<f32>(353f, 714f, 327f)), vec4<u32>(39837u, 12309u, 34137u, 4294967295u), false), Struct_5(Struct_1(-5370i, 4294967295u, vec3<f32>(840f, -250f, -603f)), vec4<u32>(4653u, 4294967295u, 4294967295u, 0u), false), Struct_5(Struct_1(-36538i, 4294967295u, vec3<f32>(971f, 1000f, -426f)), vec4<u32>(4294967295u, 9552u, 51638u, 0u), true), Struct_5(Struct_1(-1i, 41439u, vec3<f32>(-161f, -434f, 909f)), vec4<u32>(31330u, 6591u, 1u, 19463u), true), Struct_5(Struct_1(9575i, 18021u, vec3<f32>(683f, 570f, 1057f)), vec4<u32>(11744u, 33438u, 1u, 71784u), true), Struct_5(Struct_1(0i, 4294967295u, vec3<f32>(740f, 530f, -607f)), vec4<u32>(1u, 0u, 0u, 28508u), true), Struct_5(Struct_1(i32(-2147483648), 0u, vec3<f32>(-1000f, -388f, 793f)), vec4<u32>(1u, 0u, 1535u, 1u), true), Struct_5(Struct_1(46134i, 20206u, vec3<f32>(-1882f, 2656f, -468f)), vec4<u32>(0u, 17730u, 14768u, 59944u), false), Struct_5(Struct_1(37678i, 7337u, vec3<f32>(1433f, -972f, -158f)), vec4<u32>(52297u, 1u, 1u, 9796u), false), Struct_5(Struct_1(-66826i, 19392u, vec3<f32>(945f, 1000f, -232f)), vec4<u32>(28453u, 1u, 0u, 32612u), true), Struct_5(Struct_1(2147483647i, 0u, vec3<f32>(786f, -2029f, 1000f)), vec4<u32>(10600u, 1u, 23009u, 6418u), false), Struct_5(Struct_1(5008i, 4294967295u, vec3<f32>(-1257f, -322f, 1040f)), vec4<u32>(4294967295u, 0u, 4294967295u, 111222u), true), Struct_5(Struct_1(0i, 36534u, vec3<f32>(-1000f, -648f, 881f)), vec4<u32>(4294967295u, 0u, 16127u, 0u), false), Struct_5(Struct_1(i32(-2147483648), 10537u, vec3<f32>(-2315f, -233f, 1446f)), vec4<u32>(43326u, 39744u, 0u, 1u), false), Struct_5(Struct_1(-26053i, 52024u, vec3<f32>(744f, -208f, 2718f)), vec4<u32>(1u, 9220u, 0u, 16489u), true), Struct_5(Struct_1(-8190i, 77001u, vec3<f32>(1083f, -516f, 453f)), vec4<u32>(47246u, 4294967295u, 6299u, 4294967295u), true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = firstLeadingBit(min(~vec3<u32>(4294967295u, abs(4294967295u), _wgslsmith_div_u32(u_input.a.x, 22569u)), select(vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, global1.b), vec3<u32>(0u, 1u, u_input.a.x) ^ vec3<u32>(global1.b, 63679u, 35556u)), !(!vec3<bool>(false, arg_0.x, false)))));
    var_0 = countOneBits(~(abs(vec3<u32>(var_0.x, var_0.x, 4294967295u) >> (vec3<u32>(global1.b, var_0.x, var_0.x) % vec3<u32>(32u))) >> (~select(vec3<u32>(var_0.x, 41894u, u_input.a.x), vec3<u32>(u_input.a.x, 4085u, 0u), true) % vec3<u32>(32u))));
    let var_1 = arg_0.x;
    let var_2 = global0[_wgslsmith_index_u32(1u, 20u)];
    global2 = array<Struct_5, 18>();
    return -869f;
}

fn func_2() -> u32 {
    global2 = array<Struct_5, 18>();
    var var_0 = _wgslsmith_f_op_f32(func_3(vec2<bool>(false, global1.c.x <= 110f)));
    let var_1 = ~u_input.b;
    global2 = array<Struct_5, 18>();
    global2 = array<Struct_5, 18>();
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global1.b, 26865u, 4294967295u), min(vec4<u32>(17875u, global1.b, u_input.a.x, u_input.a.x), vec4<u32>(global1.b, 0u, global1.b, u_input.a.x))), max(0u, _wgslsmith_add_u32(4294967295u, u_input.a.x)), ~(~1u), firstLeadingBit(32324u)), _wgslsmith_sub_vec4_u32(vec4<u32>(max(~global1.b, 4294967295u), ~global1.b, select(~0u, u_input.a.x, true), global1.b | min(9033u, 1u)), firstTrailingBit(vec4<u32>(0u, 0u, 18641u, 72465u) & ~vec4<u32>(global1.b, 4294967295u, global1.b, 0u))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_2(u_input.a.x);
    global2 = array<Struct_5, 18>();
    var var_2 = ~vec4<u32>(1u, countOneBits(~(~var_1.a)), func_2(), max(var_1.a, global1.b));
    var var_3 = !all(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true)) == true;
    return _wgslsmith_f_op_f32(900f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1547f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-241f)), _wgslsmith_f_op_f32(-global1.c.x), all(vec4<bool>(true, false, true, true)))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(vec4<f32>(global1.c.x, -1178f, 1041f, global1.c.x)), global1.c)) - _wgslsmith_f_op_f32(-global1.c.x)), 187f), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.x + global1.c.x)))), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(max(~u_input.a << ((u_input.a ^ vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)), ~(vec2<u32>(u_input.a.x, global1.b) ^ u_input.a)), vec2<u32>(global1.b, u_input.a.x), ~u_input.a), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(max(u_input.a.x & 1u, global1.b << (global1.b % 32u)), abs(1u) << ((u_input.a.x >> (1u % 32u)) % 32u))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(~u_input.b, _wgslsmith_add_i32(u_input.b, -15582i))), vec2<i32>(-1i, abs(global1.a)) ^ vec2<i32>(-2147483647i, 1i)));
}

