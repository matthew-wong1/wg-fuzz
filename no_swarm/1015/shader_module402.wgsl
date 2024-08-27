struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-1000f, -690f, 1516f, -1057f);

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 34494i);

var<private> global2: Struct_2 = Struct_2(vec2<i32>(-35562i, 4043i), Struct_1(vec4<f32>(1000f, 1388f, 157f, -496f), vec2<u32>(7865u, 21945u)), true, Struct_1(vec4<f32>(-101f, 800f, 676f, 422f), vec2<u32>(4294967295u, 1u)));

var<private> global3: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(-599f, 1i, true, vec3<u32>(1u, 1u, 0u)), Struct_4(-389f, 6664i, false, vec3<u32>(29544u, 31486u, 90389u)), Struct_4(2955f, 0i, true, vec3<u32>(0u, 0u, 54588u)), Struct_4(-419f, 2147483647i, false, vec3<u32>(61639u, 24188u, 1u)), Struct_4(1174f, -19109i, true, vec3<u32>(4294967295u, 4294967295u, 49555u)), Struct_4(-486f, -46625i, true, vec3<u32>(0u, 4294967295u, 3317u)), Struct_4(757f, 0i, true, vec3<u32>(0u, 0u, 53350u)), Struct_4(-838f, 24002i, true, vec3<u32>(4294967295u, 14195u, 1u)), Struct_4(-1000f, -8051i, true, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_4(715f, -20142i, false, vec3<u32>(62404u, 0u, 113126u)), Struct_4(-682f, -54195i, false, vec3<u32>(0u, 21061u, 31918u)), Struct_4(1529f, -16617i, true, vec3<u32>(4294967295u, 28159u, 24674u)), Struct_4(752f, -4232i, false, vec3<u32>(4294967295u, 4294967295u, 26231u)), Struct_4(187f, i32(-2147483648), false, vec3<u32>(29401u, 0u, 4294967295u)), Struct_4(-215f, -26294i, false, vec3<u32>(0u, 4294967295u, 13261u)), Struct_4(400f, 2147483647i, true, vec3<u32>(1u, 21649u, 0u)), Struct_4(1493f, -58191i, true, vec3<u32>(0u, 103945u, 101973u)), Struct_4(587f, 0i, true, vec3<u32>(0u, 72897u, 1u)), Struct_4(-1828f, 0i, true, vec3<u32>(0u, 1u, 4294967295u)), Struct_4(1367f, 32387i, true, vec3<u32>(1u, 1u, 23161u)), Struct_4(1843f, -1i, false, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_4(-773f, -685i, true, vec3<u32>(0u, 1u, 30218u)), Struct_4(556f, 1213i, false, vec3<u32>(4294967295u, 21996u, 1u)), Struct_4(-1510f, 1i, true, vec3<u32>(1u, 4430u, 4294967295u)), Struct_4(340f, 600i, true, vec3<u32>(99778u, 35366u, 37235u)), Struct_4(-1090f, 2147483647i, true, vec3<u32>(19930u, 4294967295u, 5104u)), Struct_4(529f, 30494i, true, vec3<u32>(4294967295u, 1u, 56272u)), Struct_4(199f, 37799i, false, vec3<u32>(4294967295u, 71321u, 17091u)), Struct_4(-169f, -19829i, false, vec3<u32>(12836u, 1u, 40145u)), Struct_4(1000f, 2147483647i, true, vec3<u32>(29905u, 4294967295u, 1936u)), Struct_4(243f, 2147483647i, false, vec3<u32>(4294967295u, 1u, 343u)), Struct_4(557f, 0i, false, vec3<u32>(4294967295u, 1u, 59071u)));

var<private> global4: array<vec4<f32>, 9>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    var var_0 = global2.b.b.x;
    var_0 = arg_2.b.x;
    let var_1 = true;
    var_0 = global2.d.b.x;
    global2 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global2.a, _wgslsmith_mult_vec2_i32(global2.a, global2.a >> (vec2<u32>(global2.b.b.x, 1314u) % vec2<u32>(32u)))), _wgslsmith_add_vec2_i32(vec2<i32>(-36584i, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(global2.a.x, u_input.a), vec2<i32>(global1.x, arg_1.b))) ^ global2.a), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a))), ~vec2<u32>(countOneBits(global2.d.b.x), _wgslsmith_mod_u32(u_input.b, arg_1.d.x))), !(((24063i >> (arg_2.b.x % 32u)) & countOneBits(global2.a.x)) != max(u_input.a, 32805i)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(arg_2.a, vec4<f32>(global2.b.a.x, 564f, 965f, 2001f))))), arg_1.d.zy));
    return _wgslsmith_f_op_f32(-934f - arg_1.a);
}

fn func_2() -> vec2<f32> {
    let var_0 = global2.b;
    global3 = array<Struct_4, 32>();
    global3 = array<Struct_4, 32>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-435f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(true, global3[_wgslsmith_index_u32(var_0.b.x, 32u)], Struct_1(vec4<f32>(-1861f, global0[_wgslsmith_index_u32(0u, 4u)], var_0.a.x, global0[_wgslsmith_index_u32(global2.b.b.x, 4u)]), global2.d.b)))))))))));
    return _wgslsmith_f_op_vec2_f32(round(var_0.a.zw));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3(!(~(global2.b.b.x >> (17352u % 32u)) < firstTrailingBit(2227u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-599f, 781f), vec2<f32>(-261f, arg_0.x)) * arg_0)) + _wgslsmith_f_op_vec2_f32(-global2.b.a.yy)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * 428f), -173f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.b.a.xw, arg_0, global2.c)))))));
    var var_2 = Struct_5(global2.d.b.x);
    global2 = Struct_2(countOneBits(firstTrailingBit(vec2<i32>(22605i, global1.x)) << (vec2<u32>(~0u, _wgslsmith_sub_u32(global2.d.b.x, 86510u)) % vec2<u32>(32u))), global2.b, true, global2.b);
    let var_3 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(global1.x, global2.a.x), _wgslsmith_mod_i32(1i, global2.a.x)), -11451i, select(-1i, u_input.a, false), _wgslsmith_div_i32(1i, -9065i))), abs(vec4<i32>(~reverseBits(global2.a.x), abs(global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, 1i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, global1.x, global1.x, global2.a.x)), _wgslsmith_mod_i32(-u_input.a, _wgslsmith_mod_i32(global2.a.x, u_input.a)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-1097f + -906f), _wgslsmith_f_op_f32(step(-617f, global2.d.a.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 4u)])) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1546f, 234f, global0[_wgslsmith_index_u32(0u, 4u)], 831f)))) + global2.d.a), min(select(global2.b.b, global2.d.b | global2.b.b, all(vec2<bool>(false, global2.c))) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.d.b.x, 0u), global2.b.b), _wgslsmith_mod_vec2_u32(vec2<u32>(12204u, var_2.a), global2.b.b), ~vec2<u32>(1u, 8323u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.b, 43874u) ^ vec2<u32>(91638u, u_input.b)), vec2<u32>(var_2.a, u_input.b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    let var_0 = global2.d;
    global2 = arg_0;
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_2()), vec2<f32>(-148f, 1371f))))));
    global1 = arg_0.a | global2.a;
    global4 = array<vec4<f32>, 9>();
    return !(~(~(var_0.b.x ^ 0u)) > var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.b), 4u)] + global0[_wgslsmith_index_u32(u_input.b, 4u)]), global0[_wgslsmith_index_u32(4294967295u, 4u)]));
    var var_1 = vec3<bool>(global2.c, false, ((func_1(Struct_2(vec2<i32>(-7398i, global2.a.x), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(global2.b.b.x, 4u)], 988f, global0[_wgslsmith_index_u32(global2.b.b.x, 4u)], -1254f), global2.d.b), global2.c, global2.b), vec3<u32>(global2.b.b.x, u_input.b, global2.d.b.x)) != all(vec4<bool>(true, false, global2.c, global2.c))) & true) & global2.c);
    global2 = Struct_2(vec2<i32>(-(~0i), u_input.a), global2.b, false, global2.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b, 4u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 4u)])), global2.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 4u)]))), -1000f)));
    var var_3 = Struct_5(max(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.b), 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, firstLeadingBit(global2.d.b.x), ~4294967295u), vec3<u32>(28123u, ~u_input.b, u_input.b))));
    var var_4 = -6842i;
    let var_5 = global3[_wgslsmith_index_u32(var_3.a, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(709f - var_2.x), _wgslsmith_sub_u32(u_input.b, var_5.d.x), firstTrailingBit(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.a.xz + vec2<f32>(global2.d.a.x, global0[_wgslsmith_index_u32(u_input.b, 4u)])))).b.x), var_5.d.zx);
}

