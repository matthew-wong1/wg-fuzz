struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(1554f, 1093f, 1000f, -847f), vec4<f32>(-1959f, 1608f, 651f, 1308f), vec4<f32>(-380f, -299f, -375f, -290f), vec4<f32>(-1619f, -1136f, 154f, 829f), vec4<f32>(-1681f, 795f, -524f, -1132f), vec4<f32>(-1000f, 1162f, -1621f, -1707f), vec4<f32>(142f, 454f, -600f, 2896f), vec4<f32>(-1721f, -280f, 261f, 915f), vec4<f32>(1000f, 784f, 151f, -218f), vec4<f32>(481f, 2480f, 1717f, -977f), vec4<f32>(-1362f, -848f, 1271f, 1737f), vec4<f32>(1204f, -1041f, -878f, -1701f), vec4<f32>(1248f, 1533f, 959f, 354f), vec4<f32>(-1569f, -1656f, -328f, 1000f), vec4<f32>(511f, -1000f, -334f, -360f), vec4<f32>(-1190f, 159f, 1850f, -146f), vec4<f32>(900f, 1000f, 729f, 2552f), vec4<f32>(-1569f, 1407f, 444f, 322f), vec4<f32>(-1000f, -781f, 1039f, -1000f), vec4<f32>(846f, -591f, 1404f, 1525f), vec4<f32>(-352f, -725f, -109f, 517f), vec4<f32>(226f, -1297f, 149f, 382f), vec4<f32>(335f, 624f, -1188f, -600f), vec4<f32>(1523f, -376f, -839f, -812f));

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> bool {
    global0 = array<u32, 3>();
    var var_0 = 17426i;
    return global1.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec4<u32>(~(~abs(_wgslsmith_add_u32(u_input.d.x, u_input.d.x))), ~1199u, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(select(global0[_wgslsmith_index_u32(248u ^ u_input.d.x, 3u)], _wgslsmith_dot_vec4_u32(vec4<u32>(15122u, 0u, 0u, 38218u), vec4<u32>(4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(22492u, 3u)], 0u)), true), 4294967295u)), (~_wgslsmith_sub_u32(58464u, 1u) >> (_wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 3u)] & 28269u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(25226u, u_input.c.x, u_input.c.x)), 3u)]) % 32u)) << (global0[_wgslsmith_index_u32(24310u, 3u)] % 32u));
    global0 = array<u32, 3>();
    let var_1 = u_input.b.zx;
    var var_2 = vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(0u, firstTrailingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(25983u, 3u)], 26093u))) >> ((var_0.x & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, var_0.x, var_0.x), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), var_0)) % 32u), global0[_wgslsmith_index_u32(max(67677u, 95947u), 3u)], u_input.d.x);
    return 0i;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> vec3<i32> {
    let var_0 = firstLeadingBit(~vec4<u32>(u_input.d.x, 4294967295u | (1u | global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), _wgslsmith_div_u32(19511u, 33251u) << (_wgslsmith_sub_u32(0u, u_input.d.x) % 32u), u_input.c.x));
    global2 = array<vec4<f32>, 24>();
    let var_1 = select(max(~vec4<u32>(764u, var_0.x, var_0.x, u_input.c.x), ~_wgslsmith_clamp_vec4_u32(var_0, var_0, var_0)), select(var_0, max(var_0, var_0), arg_0), arg_1 | any(select(global1.b.xyw, vec3<bool>(false, arg_1, global1.b.x), global1.b.wzw))) << (~(~(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 3u)], u_input.c.x, var_0.x, u_input.d.x)) | _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1514u, 3u)], 20986u, 18509u, 52102u), vec4<u32>(u_input.c.x, 53177u, global0[_wgslsmith_index_u32(20800u, 3u)], 50165u)), ~vec4<u32>(var_0.x, 33468u, 8218u, 11639u))) % vec4<u32>(32u));
    var var_2 = 73628u;
    let var_3 = ~5610u;
    return _wgslsmith_div_vec3_i32(global3.a, vec3<i32>(-6377i, 2147483647i, func_3(Struct_1(global1.b.ww, select(global1.b, vec4<bool>(true, false, true, false), true), _wgslsmith_div_f32(global1.c, global1.c), vec3<f32>(global1.c, -942f, global1.d.x), true), Struct_1(select(global1.b.xz, global1.a, global1.e), vec4<bool>(false, true, false, true), _wgslsmith_f_op_f32(sign(global1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, 2780f, -1042f)), false), (vec3<i32>(17880i, -31788i, global3.a.x) & vec3<i32>(u_input.a, -1i, 0i)) << (select(vec3<u32>(1u, 62227u, 0u), vec3<u32>(1u, var_3, 22077u), global1.b.xwx) % vec3<u32>(32u)), Struct_1(global1.a, global1.b, 538f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, global1.c, global1.d.x)), arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    let var_0 = Struct_1(select(vec2<bool>(global1.a.x, !func_1()), !vec2<bool>(any(vec2<bool>(global1.a.x, false)), all(vec4<bool>(true, global1.e, global1.a.x, true))), global1.a.x), vec4<bool>((true | global1.b.x) | global1.a.x, any(!(!global1.b)), false, global1.e), global1.d.x, vec3<f32>(491f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-401f)) + _wgslsmith_f_op_f32(trunc(504f))))), _wgslsmith_f_op_f32(abs(-1786f))), true);
    let var_1 = Struct_4(~func_2(any(select(vec3<bool>(var_0.e, true, global1.e), var_0.b.xyw, var_0.b.x)), (var_0.d.x != global1.d.x) && any(global1.b.yyy), var_0.b.x));
    global1 = var_0;
    global0 = array<u32, 3>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, 542f))), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c)))), false)));
    let var_3 = Struct_4(abs(-(~func_2(true, global1.e, false))));
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)), !global1.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1071f, 1493f)) * 511f), _wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(round(-168f)))))));
    global3 = Struct_4(firstLeadingBit(-_wgslsmith_mult_vec3_i32(firstTrailingBit(var_3.a), firstTrailingBit(vec3<i32>(-26092i, var_1.a.x, var_1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, vec3<i32>(-1i) * -global3.a, ~global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~9000u), 3u)]), 3u)]);
}

