struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<bool, 4> = array<bool, 4>(true, false, false, false);

var<private> global2: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<bool, 4>();
    global2 = array<vec2<bool>, 1>();
    var var_0 = vec2<u32>(abs(1u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(max(u_input.d, 1u), max(13291u, u_input.c.x), firstTrailingBit(16697u)), u_input.d) << (~22421u % 32u));
    var_0 = firstTrailingBit(max(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.xx, u_input.c.wz ^ u_input.c.yz, ~u_input.c.yx), vec2<u32>(var_0.x, u_input.c.x), _wgslsmith_add_vec2_u32(select(vec2<u32>(0u, 64692u), vec2<u32>(u_input.d, 30387u), global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec2<u32>(3095u, var_0.x))), vec2<u32>(102684u, _wgslsmith_clamp_u32(52647u, 84312u, u_input.d) | u_input.e)));
    global0 = array<Struct_3, 4>();
    return -395f;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_2(Struct_1(~(~0u) == arg_0.b.x), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0.b.x, arg_1.x), 4u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(644f - _wgslsmith_f_op_f32(func_3())), arg_0.e)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(select(17925u, _wgslsmith_dot_vec4_u32(arg_0.b & u_input.c, arg_0.b), arg_0.a.a.a)), select(u_input.d, arg_1.x, arg_0.d.x), _wgslsmith_dot_vec4_u32(abs(arg_0.b), min(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 9174u, arg_0.b.x, arg_1.x), vec4<u32>(1u, 1u, 10995u, 38959u)), arg_0.b))), 4u)];
    let var_3 = arg_2.a;
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - arg_0.c)))) - _wgslsmith_f_op_f32(1652f + 2340f)) == _wgslsmith_f_op_f32(861f - 872f);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_1.c;
    let var_1 = arg_1.a;
    var var_2 = vec3<i32>(-(~(-(~u_input.b))), 43542i, ~_wgslsmith_sub_i32(select(u_input.a.x, u_input.b, var_1.b.a), abs(~u_input.b)));
    return _wgslsmith_sub_vec4_u32(select(vec4<u32>(countOneBits(~24440u), arg_2, ~(~arg_2), 1u << (1u % 32u)), vec4<u32>(abs(0u), _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(1u, 0u, 4294967295u, 0u)), arg_0.x, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(1u, arg_1.b.x, 33209u))), func_2(arg_1, arg_1.b.zy, arg_1.a)), vec4<u32>(23268u, 1u << (~(~u_input.c.x) % 32u), 16063u, ~select(firstTrailingBit(32752u), arg_2, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(16224u, 4u)];
    var var_1 = var_0.e;
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(847f, 121f, 1000f, -740f) + vec4<f32>(arg_3.x, arg_3.x, -171f, -215f))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.wy, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-847f, arg_3.x))), select(vec2<bool>(var_0.a.b.a, false), vec2<bool>(true, false), global1[_wgslsmith_index_u32(20971u, 4u)]))))))));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    global2 = array<vec2<bool>, 1>();
    let var_0 = func_4(-u_input.a.wx, func_4(countOneBits(vec2<i32>(-1i) * -vec2<i32>(u_input.b, arg_1)), arg_2.a, _wgslsmith_sub_vec4_u32(arg_2.b, vec4<u32>(0u & arg_2.b.x, u_input.d, _wgslsmith_clamp_u32(1u, u_input.c.x, u_input.e), arg_2.b.x ^ arg_2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-193f, arg_2.e, -1000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(205f, arg_2.e, 1096f))))))), (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, u_input.e, 1u) & vec4<u32>(1u, u_input.d, u_input.e, arg_2.b.x), reverseBits(arg_2.b)) << (vec4<u32>(~0u, 4294967295u, select(5442u, arg_2.b.x, arg_2.a.b.a), _wgslsmith_sub_u32(0u, 0u)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(u_input.c, arg_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(161f, 2129f, arg_2.e)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.e, 1203f, 402f), vec3<f32>(143f, -1340f, arg_2.c))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(256f, arg_2.e, arg_2.c)))) * vec3<f32>(arg_2.e, _wgslsmith_f_op_f32(sign(690f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.e + arg_2.e), _wgslsmith_f_op_f32(ceil(arg_2.e)))))));
    global1 = array<bool, 4>();
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1201f, arg_2.c, arg_0.a.a)))), arg_2.e)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-147f, arg_2.c, 326f), vec3<f32>(arg_2.c, 1302f, arg_2.e)))))));
    return arg_0.a;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.c.xy;
    let var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), ~select(countOneBits(u_input.c.xw), ~vec2<u32>(1u, 48972u), true), ~vec2<u32>(10315u, u_input.d));
    let var_2 = !select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_1.x, 4u)]), global1[_wgslsmith_index_u32(25229u, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 4u)], false, arg_0.a.a), vec3<bool>(false, true, true)), select(select(select(vec3<bool>(false, true, arg_0.a.a), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], false), arg_0.a.a), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 4u)], false, arg_0.a.a), vec3<bool>(false, arg_0.b.a, false), true), arg_0.a.a && global1[_wgslsmith_index_u32(24110u, 4u)]), !vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 4u)], false, false), select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.x, 4u)]), select(vec3<bool>(true, false, arg_0.b.a), vec3<bool>(false, true, false), arg_0.b.a), vec3<bool>(arg_0.a.a, false, arg_0.b.a))), arg_0.b.a);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -919f);
    var var_4 = Struct_3(func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(~u_input.a, ~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)), u_input.a.x >> (_wgslsmith_div_u32(var_1.x, 4294967295u) % 32u)), func_4(~u_input.a.zy, Struct_2(arg_0.a, Struct_1(arg_0.b.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, var_0.x, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 201u, 47786u, var_0.x), vec4<u32>(u_input.d, u_input.d, u_input.d, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, 550f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, arg_1.x, -343f)))), countOneBits(_wgslsmith_add_vec4_u32(u_input.c, ~vec4<u32>(var_0.x, var_0.x, 0u, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(-1400f, arg_1.x, arg_1.x), vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 4u)], false)))))), reverseBits(u_input.c), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1215f - _wgslsmith_div_f32(1929f, -662f)), 855f)), select(!vec4<bool>(u_input.d > 0u, !global1[_wgslsmith_index_u32(0u, 4u)], u_input.b == u_input.b, var_2.x), select(select(vec4<bool>(false, var_2.x, true, true), select(vec4<bool>(true, arg_0.a.a, arg_0.a.a, false), vec4<bool>(global1[_wgslsmith_index_u32(89628u, 4u)], false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(22998u, 4u)], true, true, var_2.x)), any(var_2.xx)), !select(vec4<bool>(global1[_wgslsmith_index_u32(7877u, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)], true, true), vec4<bool>(arg_0.a.a, false, global1[_wgslsmith_index_u32(var_1.x, 4u)], false), vec4<bool>(var_2.x, false, true, false)), !(global1[_wgslsmith_index_u32(1u, 4u)] && true)), vec4<bool>(arg_0.b.a == !arg_0.a.a, select(true && global1[_wgslsmith_index_u32(u_input.e, 4u)], select(false, false, false), true), var_2.x, false)), arg_1.x);
    return func_4(-_wgslsmith_mod_vec2_i32((vec2<i32>(u_input.b, 16075i) << (var_4.b.zy % vec2<u32>(32u))) | vec2<i32>(u_input.a.x, -29858i), vec2<i32>(abs(-80258i), ~u_input.a.x)), func_4(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, 0i) >> ((var_4.b.yw & vec2<u32>(var_0.x, 63054u)) % vec2<u32>(32u)), firstTrailingBit(u_input.a.zy)), Struct_2(Struct_1(var_4.d.x), func_4(select(u_input.a.xz, vec2<i32>(-37783i, -2147483647i), true), func_4(vec2<i32>(0i, u_input.a.x), Struct_2(var_4.a.b, arg_0.a), vec4<u32>(111428u, 48349u, var_1.x, 1u), vec3<f32>(-1679f, arg_1.x, arg_1.x)), vec4<u32>(30531u, var_0.x, 85991u, var_1.x), vec3<f32>(arg_1.x, 505f, 734f)).b), vec4<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_4.b.wwz), var_4.b.zzx), 1u, var_1.x, ~(var_4.b.x << (var_1.x % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-515f + arg_1.x), _wgslsmith_f_op_f32(705f - var_4.e), arg_1.x))), vec4<u32>(u_input.c.x, reverseBits(~0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, var_1.x, 26643u), vec4<u32>(0u, var_1.x, 1u, 13254u)), ~var_0.x), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(var_1.x, var_0.x) ^ var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(var_4.e + -742f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.c, 413f, var_4.c), vec3<f32>(arg_1.x, var_4.e, arg_1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(Struct_1(true), func_5(func_4(u_input.a.xy, Struct_2(Struct_1(global1[_wgslsmith_index_u32(38733u, 4u)]), Struct_1(global1[_wgslsmith_index_u32(1u, 4u)])), func_1(u_input.c.zyy, global0[_wgslsmith_index_u32(0u, 4u)], u_input.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1837f, -391f, 1491f) + vec3<f32>(179f, -2365f, 1000f))), -2147483647i << (_wgslsmith_add_u32(69594u, u_input.d) % 32u), Struct_3(func_4(u_input.a.wy, Struct_2(Struct_1(false), Struct_1(true)), vec4<u32>(u_input.d, u_input.c.x, 101466u, u_input.c.x), vec3<f32>(552f, 1685f, 731f)), u_input.c, _wgslsmith_f_op_f32(-203f - 242f), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 4u)], false, global1[_wgslsmith_index_u32(26764u, 4u)], global1[_wgslsmith_index_u32(70169u, 4u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], true, global1[_wgslsmith_index_u32(u_input.d, 4u)]), false), _wgslsmith_f_op_f32(f32(-1f) * -379f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-436f, 1010f), vec2<f32>(899f, 668f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1863f, 509f) * vec2<f32>(-1153f, -1256f)))), !select(global2[_wgslsmith_index_u32(64449u, 1u)], global2[_wgslsmith_index_u32(34078u, 1u)], false)))));
    global2 = array<vec2<bool>, 1>();
    global1 = array<bool, 4>();
    var var_1 = func_6(func_6(var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_div_f32(1031f, 1486f), 226f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2337f, -678f)) + 1103f))), _wgslsmith_f_op_f32(f32(-1f) * -140f))).b;
    var var_2 = var_0;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(func_1(vec3<u32>(4294967295u, ~u_input.d, ~103921u), global0[_wgslsmith_index_u32(34035u, 4u)], 16057u).wwz, countOneBits(vec3<u32>(min(24711u, 0u), ~106948u, ~56700u))), _wgslsmith_add_vec3_u32(u_input.c.zzw, u_input.c.wzz)), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b.xz, u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(610f, _wgslsmith_f_op_f32(var_3.c - var_3.c), _wgslsmith_f_op_f32(-var_3.c), 1002f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-458f, var_3.e)), var_3.e), var_3.c, -1941f, var_3.c));
}

