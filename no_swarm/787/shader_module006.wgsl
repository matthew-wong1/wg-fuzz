struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    let var_0 = -246f;
    let var_1 = Struct_3(Struct_2(arg_0.a.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.b.a.x, var_0, 1002f), vec3<f32>(arg_0.c.b.a.x, global0.x, var_0)))), ~arg_0.b.c, 34578u), _wgslsmith_mod_i32(1i, -2147483647i)), arg_0.a, arg_0.b);
    return arg_0.c.a;
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 18u)];
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(arg_1.c.b.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x))));
    var var_3 = 0u;
    global1 = array<bool, 18>();
    return func_2(var_1, -1006f);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec4<bool>(arg_0 > -669f, global1[_wgslsmith_index_u32(firstTrailingBit(78936u), 18u)] && global1[_wgslsmith_index_u32(33604u, 18u)], true && global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~61397u, arg_1.b.b.c) ^ reverseBits(4294967295u), 18u)], !global1[_wgslsmith_index_u32(u_input.b, 18u)]);
    var var_1 = Struct_3(Struct_2(func_3(_wgslsmith_clamp_i32(arg_1.c.b.b, u_input.d.x, u_input.d.x << (u_input.b % 32u)), arg_1, global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c.zyy, vec3<u32>(arg_1.c.b.c, u_input.a.x, arg_2.a.c)), 18u)]), arg_2.a, ~(-2147483647i)), arg_2, arg_1.b);
    var var_2 = var_1.a.b;
    let var_3 = 1000f;
    var var_4 = arg_2.a;
    return func_2(arg_1, _wgslsmith_f_op_f32(-var_4.a.x));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_2(func_4(-2154f, Struct_3(Struct_2(func_2(Struct_3(Struct_2(Struct_1(vec3<f32>(1278f, -405f, global0.x), u_input.d.x, 44315u), Struct_1(vec3<f32>(global0.x, arg_1, -165f), arg_0, u_input.b), u_input.d.x), Struct_2(Struct_1(vec3<f32>(global0.x, arg_1, -304f), -9517i, 22763u), Struct_1(vec3<f32>(588f, 620f, arg_1), 0i, u_input.c.x), -2147483647i), Struct_2(Struct_1(vec3<f32>(766f, 1006f, global0.x), arg_0, u_input.b), Struct_1(vec3<f32>(global0.x, -506f, arg_1), arg_0, u_input.a.x), u_input.d.x)), -211f), func_3(-79579i, Struct_3(Struct_2(Struct_1(vec3<f32>(467f, arg_1, -1171f), arg_0, u_input.c.x), Struct_1(vec3<f32>(-1880f, -942f, 256f), arg_0, 8852u), u_input.d.x), Struct_2(Struct_1(vec3<f32>(1510f, arg_1, -1353f), -2147483647i, 48626u), Struct_1(vec3<f32>(global0.x, global0.x, global0.x), -1i, 1u), u_input.d.x), Struct_2(Struct_1(vec3<f32>(1331f, arg_1, 921f), 0i, 20675u), Struct_1(vec3<f32>(-865f, arg_1, arg_1), -7943i, u_input.b), u_input.d.x)), global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), -u_input.d.x), Struct_2(func_3(0i, Struct_3(Struct_2(Struct_1(vec3<f32>(-1509f, 1000f, -295f), u_input.d.x, u_input.b), Struct_1(vec3<f32>(-499f, global0.x, 734f), u_input.d.x, u_input.a.x), -1i), Struct_2(Struct_1(vec3<f32>(-502f, 1223f, -1289f), arg_0, u_input.b), Struct_1(vec3<f32>(arg_1, arg_1, global0.x), arg_0, u_input.b), -16315i), Struct_2(Struct_1(vec3<f32>(137f, arg_1, global0.x), -1i, 1199u), Struct_1(vec3<f32>(global0.x, 2259f, global0.x), -2147483647i, u_input.c.x), u_input.d.x)), global1[_wgslsmith_index_u32(5659u, 18u)], false), Struct_1(vec3<f32>(arg_1, global0.x, 322f), 0i, 4294967295u), -arg_0), Struct_2(Struct_1(vec3<f32>(global0.x, arg_1, arg_1), arg_0, u_input.c.x), Struct_1(vec3<f32>(global0.x, 1210f, -529f), arg_0, 19603u), _wgslsmith_clamp_i32(u_input.d.x, 69652i, arg_0))), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1279f, -709f, 1662f), vec3<f32>(arg_1, global0.x, arg_1)), ~arg_0, ~4294967295u), func_3(-u_input.d.x, Struct_3(Struct_2(Struct_1(vec3<f32>(global0.x, 990f, -1048f), 32396i, u_input.a.x), Struct_1(vec3<f32>(global0.x, arg_1, -411f), -2147483647i, u_input.c.x), 2147483647i), Struct_2(Struct_1(vec3<f32>(-1367f, 1249f, global0.x), arg_0, u_input.a.x), Struct_1(vec3<f32>(-1129f, global0.x, -463f), -31506i, u_input.a.x), u_input.d.x), Struct_2(Struct_1(vec3<f32>(arg_1, global0.x, 1248f), 0i, 0u), Struct_1(vec3<f32>(global0.x, arg_1, arg_1), arg_0, u_input.c.x), arg_0)), true, false), min(u_input.d.x >> (43081u % 32u), min(-1i, arg_0)))), func_4(global0.x, Struct_3(Struct_2(Struct_1(vec3<f32>(476f, arg_1, arg_1), 35565i, 41685u), Struct_1(vec3<f32>(-701f, 983f, 807f), 2147483647i, 69626u), ~u_input.d.x), Struct_2(func_4(-1872f, Struct_3(Struct_2(Struct_1(vec3<f32>(-1145f, 119f, 313f), u_input.d.x, 8469u), Struct_1(vec3<f32>(693f, -994f, -1555f), -1i, 4294967295u), u_input.d.x), Struct_2(Struct_1(vec3<f32>(676f, 152f, global0.x), arg_0, 0u), Struct_1(vec3<f32>(global0.x, arg_1, arg_1), -2147483647i, u_input.c.x), u_input.d.x), Struct_2(Struct_1(vec3<f32>(-397f, 1317f, arg_1), 30521i, 0u), Struct_1(vec3<f32>(global0.x, 1422f, arg_1), 32940i, u_input.b), 33005i)), Struct_2(Struct_1(vec3<f32>(arg_1, 481f, arg_1), 46156i, u_input.a.x), Struct_1(vec3<f32>(global0.x, arg_1, -738f), arg_0, 117280u), u_input.d.x)), func_2(Struct_3(Struct_2(Struct_1(vec3<f32>(-934f, arg_1, arg_1), u_input.d.x, u_input.c.x), Struct_1(vec3<f32>(1269f, global0.x, 716f), u_input.d.x, 1u), u_input.d.x), Struct_2(Struct_1(vec3<f32>(arg_1, 1151f, 1000f), 49950i, 0u), Struct_1(vec3<f32>(global0.x, 309f, 378f), -47945i, u_input.b), arg_0), Struct_2(Struct_1(vec3<f32>(770f, -491f, 786f), 2147483647i, u_input.c.x), Struct_1(vec3<f32>(global0.x, arg_1, global0.x), arg_0, 64211u), arg_0)), -718f), arg_0), Struct_2(func_3(arg_0, Struct_3(Struct_2(Struct_1(vec3<f32>(global0.x, arg_1, arg_1), 22264i, u_input.b), Struct_1(vec3<f32>(-1360f, arg_1, 256f), 39185i, u_input.c.x), u_input.d.x), Struct_2(Struct_1(vec3<f32>(1000f, -906f, arg_1), -2147483647i, u_input.a.x), Struct_1(vec3<f32>(arg_1, global0.x, arg_1), 0i, u_input.a.x), arg_0), Struct_2(Struct_1(vec3<f32>(arg_1, arg_1, 373f), 44588i, 1153u), Struct_1(vec3<f32>(566f, -979f, 599f), arg_0, 82047u), 7844i)), global1[_wgslsmith_index_u32(u_input.b, 18u)], false), Struct_1(vec3<f32>(arg_1, arg_1, global0.x), u_input.d.x, 12149u), 0i << (1u % 32u))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global0.x, arg_1) - vec3<f32>(arg_1, arg_1, 1640f)), -6151i, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), Struct_1(vec3<f32>(global0.x, global0.x, global0.x), arg_0 >> (u_input.b % 32u), 1u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-67843i, -2147483647i), u_input.d.x))), arg_0);
    let var_1 = !(func_4(-1000f, Struct_3(Struct_2(var_0.b, var_0.b, -3288i), Struct_2(var_0.b, Struct_1(vec3<f32>(var_0.a.a.x, 119f, 1737f), -2147483647i, 4294967295u), var_0.a.b), var_0), var_0).b > 2147483647i);
    var var_2 = Struct_3(var_0, Struct_2(func_2(Struct_3(Struct_2(var_0.b, Struct_1(vec3<f32>(global0.x, global0.x, -795f), arg_0, 0u), 29044i), var_0, Struct_2(Struct_1(var_0.a.a, 11781i, 31091u), Struct_1(var_0.a.a, u_input.d.x, 0u), 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -599f)), var_0.b, arg_0), Struct_2(var_0.a, func_4(global0.x, Struct_3(Struct_2(Struct_1(vec3<f32>(-333f, -1618f, 1757f), -2147483647i, 0u), var_0.a, var_0.a.b), Struct_2(var_0.b, var_0.a, -50258i), Struct_2(Struct_1(var_0.a.a, arg_0, u_input.a.x), Struct_1(var_0.b.a, u_input.d.x, u_input.c.x), 2147483647i)), Struct_2(var_0.b, func_3(-2147483647i, Struct_3(var_0, Struct_2(Struct_1(var_0.a.a, u_input.d.x, u_input.b), Struct_1(vec3<f32>(global0.x, arg_1, var_0.a.a.x), var_0.a.b, 4294967295u), var_0.a.b), Struct_2(var_0.a, Struct_1(vec3<f32>(var_0.b.a.x, 202f, var_0.b.a.x), u_input.d.x, 2672u), arg_0)), false, var_1), u_input.d.x)), ~_wgslsmith_add_i32(u_input.d.x, u_input.d.x ^ var_0.c)));
    global1 = array<bool, 18>();
    var var_3 = Struct_3(Struct_2(Struct_1(var_0.b.a, var_2.a.c, var_0.b.c), var_0.a, -_wgslsmith_dot_vec2_i32(max(vec2<i32>(30515i, u_input.d.x), vec2<i32>(u_input.d.x, var_2.a.b.b)), ~vec2<i32>(-34565i, arg_0))), var_0, var_2.b);
    return Struct_3(var_3.c, Struct_2(var_0.a, var_0.a, -5682i), var_3.a);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1866f, _wgslsmith_f_op_f32(-arg_1.x), global1[_wgslsmith_index_u32(1u, 18u)])), 1318f, _wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(round(arg_0.b.b.a.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(587f)) + -335f), global0.x, arg_1.x)));
    var var_0 = max(_wgslsmith_mult_vec2_i32(reverseBits(u_input.d.xz), ~u_input.d.yx), firstTrailingBit(u_input.d.zz)) ^ u_input.d.zx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a.b.a, vec3<f32>(-1266f, -1800f, _wgslsmith_f_op_f32(arg_0.a.b.a.x + -1583f)))), 27175i, u_input.a.x);
    let var_2 = arg_0.b;
    var var_3 = func_1(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-28086i, 6644i, var_0.x)), u_input.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(204f + 848f), arg_0.c.b.a.x)), -1566f))).a;
    return func_1(arg_0.b.a.b, arg_1.x).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~u_input.c), ~abs(vec4<u32>(u_input.a.x, u_input.a.x, 13814u, 4294967295u))) ^ ~u_input.c.x, 0u);
    let var_1 = func_5(func_1(u_input.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.yy, _wgslsmith_f_op_vec2_f32(global0.zx + vec2<f32>(global0.x, 1391f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - global0.yz) + _wgslsmith_f_op_vec2_f32(global0.zz * vec2<f32>(global0.x, -569f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.b.a.x)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f * 512f) * _wgslsmith_div_f32(var_1.a.a.x, var_1.a.a.x)), _wgslsmith_f_op_f32(round(var_1.b.a.x))), vec4<f32>(1061f, 1144f, -1063f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(floor(global0.x)))), vec4<bool>(all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], false)), true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 18u)], true, false, global1[_wgslsmith_index_u32(2809u, 18u)])), true)))));
    let var_3 = Struct_3(func_1(-5523i, var_1.b.a.x).b, Struct_2(var_1.a, func_1(_wgslsmith_sub_i32(u_input.d.x, 0i) & 8094i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(295f - 607f), _wgslsmith_div_f32(var_1.b.a.x, var_1.b.a.x)))).b.b, var_1.a.b), Struct_2(func_1(54593i, _wgslsmith_f_op_f32(133f - _wgslsmith_f_op_f32(ceil(global0.x)))).b.b, func_3(abs(_wgslsmith_mult_i32(-2147483647i, var_1.a.b)), func_1(var_1.b.b, 692f), false, select(false, global1[_wgslsmith_index_u32(76097u, 18u)] == true, true)), _wgslsmith_clamp_i32(~u_input.d.x, u_input.d.x, func_1(var_1.b.b, -721f).c.c)));
    let var_4 = global1[_wgslsmith_index_u32(abs(66184u), 18u)];
    global1 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c << (~17966u % 32u), vec3<u32>(func_3(-_wgslsmith_sub_i32(var_3.c.b.b, var_1.a.b), func_1(~var_3.a.a.b, -1423f), global1[_wgslsmith_index_u32(var_1.a.c, 18u)], ~var_3.a.a.c > 54947u).c, 4294967295u, var_1.b.c), var_1.b.a.x, vec4<u32>(~var_1.a.c ^ 93650u, ~u_input.a.x, 1u, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f * func_5(Struct_3(Struct_2(Struct_1(vec3<f32>(var_3.c.a.a.x, -1000f, global0.x), -1i, 4199u), var_1.a, var_1.a.b), Struct_2(Struct_1(var_1.b.a, u_input.d.x, var_1.b.c), var_3.a.a, var_1.b.b), Struct_2(var_1.b, var_3.c.a, var_3.a.c)), global0.xy).a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(sign(989f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.b.a.x, var_2.x), global0.x)), _wgslsmith_f_op_f32(-var_1.a.a.x))));
}

