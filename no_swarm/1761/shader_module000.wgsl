struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-1819f, -1000f), vec2<f32>(-318f, 945f), vec2<f32>(-563f, -1000f), vec2<f32>(-650f, -1000f), vec2<f32>(266f, -1162f), vec2<f32>(-1614f, 983f), vec2<f32>(-503f, 838f), vec2<f32>(-1000f, 524f), vec2<f32>(684f, 1055f), vec2<f32>(1399f, 861f));

var<private> global1: array<Struct_5, 17>;

var<private> global2: array<Struct_5, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<f32>, 10>();
    let var_0 = 1i;
    global1 = array<Struct_5, 17>();
    global2 = array<Struct_5, 28>();
    global1 = array<Struct_5, 17>();
    return u_input.d;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(arg_3.b.b + arg_3.b.b);
    let var_1 = ~select(vec2<u32>(u_input.d, func_3(Struct_1(arg_2.a.c.x, arg_2.a.b, vec2<bool>(arg_1.c.a, arg_0), 33315i), Struct_1(arg_3.c.c.x, -1i, arg_3.c.c, -2147483647i))), select(vec2<u32>(~1u, firstTrailingBit(59206u)), vec2<u32>(u_input.d << (u_input.b.x % 32u), u_input.d), arg_3.b.d.a || true), arg_3.c.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.b, arg_1.b, arg_1.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, arg_1.b, arg_1.b) - vec3<f32>(2170f, arg_1.b, arg_3.b.b)) - vec3<f32>(arg_3.b.b, arg_1.b, arg_3.b.b)))))));
    var var_3 = Struct_4(Struct_1(false, ~(-3382i), !(!arg_2.a.c), i32(-1i) * -arg_2.a.b), !vec4<bool>(false, true, arg_1.c.c.x || select(arg_2.b.x, arg_2.b.x, false), arg_2.a.a));
    var var_4 = global1[_wgslsmith_index_u32(1u, 17u)];
    return arg_1;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = !all(arg_0.e.ywx) & !arg_0.d;
    global1 = array<Struct_5, 17>();
    global1 = array<Struct_5, 17>();
    var var_1 = ~abs(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 18186u)) << (vec4<u32>(u_input.b.x, ~4294967295u ^ ((4294967295u ^ u_input.b.x) ^ 0u), ~(u_input.d << (1u % 32u)), u_input.b.x >> (max(u_input.d, ~1u) % 32u)) % vec4<u32>(32u));
    global1 = array<Struct_5, 17>();
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.b.b)), arg_0.b.b))) != _wgslsmith_div_f32(arg_0.b.b, 1185f), Struct_2(func_2(var_0, arg_0.b, Struct_4(func_2(false, Struct_2(arg_0.b.c, arg_0.b.b, arg_0.b.d, arg_0.b.a), Struct_4(Struct_1(false, u_input.a, arg_0.c.c, 31990i), vec4<bool>(var_0, true, arg_0.b.a.c.x, false)), arg_0).d, !arg_0.e), Struct_3(false, arg_0.b, func_2(arg_0.d, arg_0.b, Struct_4(arg_0.b.d, vec4<bool>(var_0, true, true, false)), Struct_3(true, arg_0.b, Struct_1(arg_0.c.c.x, -58347i, arg_0.c.c, 1i), true, arg_0.e)).d, any(arg_0.e.wxz), vec4<bool>(arg_0.a, var_0, var_0, false))).c, 1f, arg_0.c, Struct_1(any(!arg_0.e), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-26465i, u_input.a), vec2<i32>(arg_0.c.b, arg_0.c.d)), u_input.c), select(!arg_0.c.c, select(vec2<bool>(false, var_0), arg_0.e.yz, true), arg_0.c.c), -2147483647i)), Struct_4(Struct_1(!(arg_0.b.b <= arg_0.b.b), u_input.c, func_2(select(arg_0.a, arg_0.a, false), func_2(var_0, arg_0.b, Struct_4(Struct_1(false, u_input.a, arg_0.c.c, arg_0.b.c.d), arg_0.e), Struct_3(arg_0.d, Struct_2(Struct_1(var_0, -2147483647i, arg_0.e.wz, arg_0.c.d), 560f, arg_0.b.d, arg_0.b.a), arg_0.c, var_0, vec4<bool>(arg_0.d, arg_0.b.a.c.x, true, arg_0.e.x))), Struct_4(Struct_1(var_0, 1i, arg_0.c.c, -14444i), arg_0.e), arg_0).c.c, 0i), vec4<bool>(all(vec4<bool>(true, arg_0.e.x, false, true)), arg_0.b.c.b <= _wgslsmith_add_i32(u_input.a, -1i), true || !var_0, arg_0.e.x)), arg_0).d;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(false, Struct_2(func_4(Struct_3(false, func_2(false, Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, false), u_input.c), -1779f, Struct_1(false, 8218i, vec2<bool>(true, true), -46959i), Struct_1(true, u_input.a, vec2<bool>(false, false), -45143i)), Struct_4(Struct_1(true, 1i, vec2<bool>(true, false), -1i), vec4<bool>(true, false, true, false)), Struct_3(true, Struct_2(Struct_1(true, 20882i, vec2<bool>(true, false), 1i), 342f, Struct_1(true, u_input.a, vec2<bool>(false, true), 0i), Struct_1(false, u_input.a, vec2<bool>(false, false), -1i)), Struct_1(true, u_input.c, vec2<bool>(false, false), u_input.a), false, vec4<bool>(false, true, false, true))), Struct_1(true, 13615i, vec2<bool>(true, true), 0i), true, vec4<bool>(true, true, true, true))), 1917f, Struct_1(false, u_input.a, vec2<bool>(false, any(vec3<bool>(false, true, false))), ~(5942i ^ u_input.a)), func_2(false, func_2(true, Struct_2(Struct_1(true, u_input.a, vec2<bool>(false, false), 0i), -1496f, Struct_1(false, 13691i, vec2<bool>(false, true), 2147483647i), Struct_1(false, u_input.a, vec2<bool>(true, false), u_input.a)), Struct_4(Struct_1(true, u_input.c, vec2<bool>(false, false), u_input.c), vec4<bool>(false, false, false, false)), Struct_3(true, Struct_2(Struct_1(true, -32366i, vec2<bool>(false, true), u_input.a), -608f, Struct_1(true, u_input.c, vec2<bool>(false, false), u_input.c), Struct_1(true, u_input.a, vec2<bool>(true, true), u_input.c)), Struct_1(true, -1i, vec2<bool>(true, true), 1i), true, vec4<bool>(true, false, true, true))), Struct_4(Struct_1(true, 43126i, vec2<bool>(true, false), -2147483647i), vec4<bool>(true, true, true, true)), Struct_3(true, func_2(true, Struct_2(Struct_1(false, 0i, vec2<bool>(false, true), u_input.c), 822f, Struct_1(true, u_input.c, vec2<bool>(false, false), u_input.a), Struct_1(true, u_input.c, vec2<bool>(false, false), u_input.c)), Struct_4(Struct_1(true, 17208i, vec2<bool>(true, false), -1609i), vec4<bool>(true, true, true, false)), Struct_3(false, Struct_2(Struct_1(true, 2147483647i, vec2<bool>(false, true), -8506i), -2671f, Struct_1(true, u_input.a, vec2<bool>(false, true), 3563i), Struct_1(false, u_input.a, vec2<bool>(false, true), -2147483647i)), Struct_1(true, -36569i, vec2<bool>(true, true), u_input.c), true, vec4<bool>(true, true, true, true))), Struct_1(true, -51954i, vec2<bool>(false, false), u_input.c), true, vec4<bool>(true, true, true, true))).a), Struct_1(-max(-1i, 17958i) >= -(u_input.a | 7222i), 0i, func_2(func_2(func_2(false, Struct_2(Struct_1(false, 1i, vec2<bool>(true, true), u_input.c), 269f, Struct_1(false, -62944i, vec2<bool>(true, false), u_input.c), Struct_1(true, -53265i, vec2<bool>(true, true), -2147483647i)), Struct_4(Struct_1(false, 47113i, vec2<bool>(false, true), -18587i), vec4<bool>(true, true, true, false)), Struct_3(false, Struct_2(Struct_1(false, 2147483647i, vec2<bool>(false, true), u_input.c), -1386f, Struct_1(true, -37109i, vec2<bool>(false, false), -1i), Struct_1(true, u_input.c, vec2<bool>(true, true), u_input.c)), Struct_1(false, u_input.c, vec2<bool>(true, true), u_input.a), false, vec4<bool>(false, false, true, true))).d.a, func_2(false, Struct_2(Struct_1(false, -13242i, vec2<bool>(true, false), u_input.a), -2785f, Struct_1(true, u_input.c, vec2<bool>(false, false), -1236i), Struct_1(false, -8660i, vec2<bool>(false, true), 12888i)), Struct_4(Struct_1(false, u_input.c, vec2<bool>(false, true), 1i), vec4<bool>(false, false, true, false)), Struct_3(true, Struct_2(Struct_1(true, -2147483647i, vec2<bool>(false, true), u_input.c), -137f, Struct_1(true, -1i, vec2<bool>(false, false), 5811i), Struct_1(true, u_input.a, vec2<bool>(true, true), u_input.c)), Struct_1(false, 50676i, vec2<bool>(false, false), u_input.a), true, vec4<bool>(false, true, true, true))), Struct_4(Struct_1(false, 1i, vec2<bool>(true, false), u_input.c), vec4<bool>(false, false, true, false)), Struct_3(false, Struct_2(Struct_1(true, u_input.c, vec2<bool>(false, true), u_input.a), -1000f, Struct_1(false, 82178i, vec2<bool>(true, false), u_input.c), Struct_1(false, -2147483647i, vec2<bool>(false, true), -38984i)), Struct_1(true, -2147483647i, vec2<bool>(true, true), 3392i), true, vec4<bool>(false, true, true, false))).a.a, Struct_2(Struct_1(false, u_input.c, vec2<bool>(false, false), u_input.a), func_2(false, Struct_2(Struct_1(false, u_input.c, vec2<bool>(false, false), 33387i), -491f, Struct_1(true, u_input.c, vec2<bool>(true, false), u_input.a), Struct_1(true, 2767i, vec2<bool>(true, true), 9243i)), Struct_4(Struct_1(false, u_input.c, vec2<bool>(true, false), 2147483647i), vec4<bool>(true, false, false, false)), Struct_3(false, Struct_2(Struct_1(true, u_input.c, vec2<bool>(false, false), u_input.a), 592f, Struct_1(true, u_input.c, vec2<bool>(false, false), 1i), Struct_1(false, -3060i, vec2<bool>(true, false), u_input.a)), Struct_1(true, u_input.a, vec2<bool>(false, true), -12315i), true, vec4<bool>(false, true, true, true))).b, func_2(true, Struct_2(Struct_1(true, -45049i, vec2<bool>(false, false), -21497i), 208f, Struct_1(true, u_input.c, vec2<bool>(true, false), -2147483647i), Struct_1(true, 1i, vec2<bool>(true, false), u_input.c)), Struct_4(Struct_1(true, -62782i, vec2<bool>(false, false), -27696i), vec4<bool>(true, true, false, false)), Struct_3(true, Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, true), u_input.c), -1941f, Struct_1(true, -21472i, vec2<bool>(true, true), -2147483647i), Struct_1(false, 1i, vec2<bool>(false, true), 10523i)), Struct_1(false, u_input.a, vec2<bool>(true, false), 52064i), false, vec4<bool>(false, false, true, true))).c, Struct_1(false, u_input.c, vec2<bool>(true, true), u_input.a)), Struct_4(func_4(Struct_3(true, Struct_2(Struct_1(true, -21483i, vec2<bool>(false, false), -2147483647i), -1000f, Struct_1(true, u_input.a, vec2<bool>(false, true), -1i), Struct_1(false, 0i, vec2<bool>(false, false), u_input.a)), Struct_1(true, u_input.a, vec2<bool>(false, false), u_input.a), true, vec4<bool>(true, false, false, true))), vec4<bool>(false, false, true, true)), Struct_3(true, func_2(true, Struct_2(Struct_1(false, u_input.c, vec2<bool>(false, false), u_input.c), -473f, Struct_1(true, -2147483647i, vec2<bool>(true, false), u_input.c), Struct_1(false, u_input.c, vec2<bool>(true, true), u_input.a)), Struct_4(Struct_1(true, 2147483647i, vec2<bool>(false, false), u_input.a), vec4<bool>(false, true, true, false)), Struct_3(false, Struct_2(Struct_1(false, 21721i, vec2<bool>(true, false), 1i), 1273f, Struct_1(false, u_input.a, vec2<bool>(false, false), u_input.a), Struct_1(false, -2147483647i, vec2<bool>(true, false), u_input.c)), Struct_1(true, u_input.a, vec2<bool>(false, false), u_input.c), true, vec4<bool>(true, true, false, false))), func_2(true, Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, true), u_input.c), -506f, Struct_1(false, u_input.c, vec2<bool>(false, true), 2147483647i), Struct_1(false, -25357i, vec2<bool>(true, true), u_input.a)), Struct_4(Struct_1(false, u_input.a, vec2<bool>(true, false), -2147483647i), vec4<bool>(true, true, true, true)), Struct_3(true, Struct_2(Struct_1(false, u_input.c, vec2<bool>(false, true), u_input.c), 1221f, Struct_1(false, u_input.c, vec2<bool>(true, false), u_input.a), Struct_1(false, -2147483647i, vec2<bool>(false, false), u_input.a)), Struct_1(true, 17790i, vec2<bool>(true, false), u_input.a), false, vec4<bool>(false, false, true, false))).c, true, vec4<bool>(true, true, true, true))).a.c, 464i), !any(func_2(true, Struct_2(Struct_1(false, u_input.a, vec2<bool>(true, true), 0i), 648f, Struct_1(false, 75368i, vec2<bool>(true, true), -2147483647i), Struct_1(false, u_input.c, vec2<bool>(true, false), -61838i)), Struct_4(Struct_1(true, 2147483647i, vec2<bool>(false, false), -1i), vec4<bool>(false, true, true, false)), Struct_3(true, Struct_2(Struct_1(false, -39190i, vec2<bool>(true, true), -26116i), 909f, Struct_1(false, -1i, vec2<bool>(false, true), u_input.c), Struct_1(true, -26727i, vec2<bool>(false, false), u_input.a)), Struct_1(true, 0i, vec2<bool>(false, false), u_input.c), true, vec4<bool>(true, true, false, false))).c.c), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1019f))) >= _wgslsmith_f_op_f32(-func_2(false, Struct_2(Struct_1(true, u_input.c, vec2<bool>(false, false), u_input.a), -330f, Struct_1(true, -2147483647i, vec2<bool>(false, true), u_input.c), Struct_1(true, 15719i, vec2<bool>(false, true), -1079i)), Struct_4(Struct_1(true, 0i, vec2<bool>(true, true), u_input.a), vec4<bool>(false, false, false, false)), Struct_3(false, Struct_2(Struct_1(false, u_input.c, vec2<bool>(false, true), u_input.a), -353f, Struct_1(false, -2147483647i, vec2<bool>(false, true), u_input.a), Struct_1(true, -2147483647i, vec2<bool>(true, false), u_input.c)), Struct_1(true, u_input.a, vec2<bool>(true, true), 1976i), true, vec4<bool>(false, true, false, true))).b), any(vec2<bool>(true, all(vec2<bool>(true, true)))), true, true));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), !vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(f32(-1f) * -465f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2381f * 2556f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(4294967295u, 10u)]))), vec2<f32>(_wgslsmith_f_op_f32(-427f + 740f), _wgslsmith_f_op_f32(ceil(-1318f)))) + global0[_wgslsmith_index_u32(54470u, 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a ^ -5035i, ~(-9696i), 38467i), _wgslsmith_mult_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(25683u, u_input.d, u_input.d, u_input.b.x), vec4<u32>(u_input.d, u_input.d, u_input.b.x, 1u)) ^ firstLeadingBit(u_input.d)) ^ 40212u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(606f, 2717f, _wgslsmith_f_op_f32(f32(-1f) * -1879f), var_1.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, 152f, -609f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -134f, var_1.x) - vec3<f32>(var_1.x, -1226f, -478f))))) + vec3<f32>(1046f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-729f, var_1.x)) * var_1.x))));
}

