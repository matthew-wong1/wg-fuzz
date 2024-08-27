struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-23939i, -650i, 0i, -4300i, -14761i, 24584i, -23640i, 2147483647i, 0i, -1i, 15333i, -1i, 1i, -1i, i32(-2147483648), i32(-2147483648), 50331i, 9452i, 1i, 1i, 6013i, 2147483647i, -34931i, -86113i, 1i, 38120i, i32(-2147483648), -31371i, -13520i, -61922i);

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -45456i), vec4<i32>(-8214i, 55495i, i32(-2147483648), 43410i), vec4<i32>(-1i, -1i, -1i, i32(-2147483648)), vec4<i32>(-58672i, 2147483647i, 18944i, 1i), vec4<i32>(-37406i, -55112i, 17472i, i32(-2147483648)), vec4<i32>(-14286i, 35904i, 1i, 2147483647i), vec4<i32>(22232i, -28452i, 1i, 12214i), vec4<i32>(-36475i, 56112i, -67305i, -107166i), vec4<i32>(1i, -23748i, i32(-2147483648), -26441i), vec4<i32>(-23507i, -11749i, i32(-2147483648), 35828i), vec4<i32>(-15490i, 0i, 0i, -44893i), vec4<i32>(19901i, -35159i, 4159i, 0i), vec4<i32>(0i, -28314i, 6555i, 2147483647i), vec4<i32>(4194i, 2147483647i, -7380i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 2278i, 9940i), vec4<i32>(16461i, 6734i, -1i, 472i), vec4<i32>(25519i, 2147483647i, 0i, 66854i), vec4<i32>(16549i, -1i, 1i, 1i), vec4<i32>(49441i, i32(-2147483648), -58476i, -32959i), vec4<i32>(i32(-2147483648), -11441i, 31873i, -1i), vec4<i32>(-24091i, -8470i, -22561i, -51230i), vec4<i32>(50741i, -2902i, -13236i, 11534i), vec4<i32>(-48339i, 8624i, 9289i, 5787i), vec4<i32>(0i, -877i, 35149i, 0i), vec4<i32>(0i, -10014i, 62774i, -1i), vec4<i32>(1i, 1i, -40890i, -31715i), vec4<i32>(0i, 2147483647i, 0i, 14336i), vec4<i32>(0i, -1i, 0i, -42329i), vec4<i32>(0i, 2147483647i, 2147483647i, -118982i), vec4<i32>(-1i, 29941i, 372i, 1i), vec4<i32>(-1i, 23542i, 12814i, i32(-2147483648)));

var<private> global2: array<Struct_3, 6>;

var<private> global3: bool = false;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0, 6u)];
    let var_1 = Struct_3(Struct_2(var_0.a.a, abs(-_wgslsmith_add_vec4_i32(vec4<i32>(-51456i, 12130i, 5545i, global0[_wgslsmith_index_u32(var_0.a.a, 30u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 30u)], 44513i, 2147483647i, var_0.a.c.b))), var_0.a.d, Struct_1(false, 1i), false != arg_1.a));
    global2 = array<Struct_3, 6>();
    let var_2 = u_input.c.yy;
    let var_3 = var_1.a;
    return max(_wgslsmith_dot_vec3_u32(u_input.c, u_input.a.zxy), 45973u);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>) -> i32 {
    let var_0 = arg_0.a.d;
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(func_3(_wgslsmith_div_u32(u_input.a.x, 6178u), var_0, 1091f), ~u_input.c.x) << (~(~_wgslsmith_mod_vec2_u32(u_input.a.wy, u_input.a.yz)) % vec2<u32>(32u)), u_input.a.wx);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(519f + _wgslsmith_f_op_f32(-393f + 301f)) + -448f) * 187f));
    var var_3 = arg_0.a;
    global3 = !arg_2.x;
    return 23882i;
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    var var_1 = vec4<i32>(_wgslsmith_add_i32(func_2(Struct_3(Struct_2(1u, vec4<i32>(2147483647i, 25694i, -1i, u_input.d.x), Struct_1(var_0, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), Struct_1(false, -7102i), var_0)), u_input.b, vec4<bool>(var_0, var_0, true, var_0)), 0i), _wgslsmith_mod_i32(u_input.d.x, ~reverseBits(global0[_wgslsmith_index_u32(5337u, 30u)])), ~8486i, _wgslsmith_clamp_i32(firstTrailingBit(global0[_wgslsmith_index_u32(6972u, 30u)]) | -global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a << (vec4<u32>(u_input.a.x, u_input.c.x, 0u, 76877u) % vec4<u32>(32u))), 30u)], _wgslsmith_mult_i32(func_2(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global0[_wgslsmith_index_u32(1u, 30u)], vec4<bool>(var_0, false, var_0, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(40850u, u_input.a.x), 30u)]))) ^ u_input.d;
    global3 = false;
    let var_2 = max(2653i, ~var_1.x);
    let var_3 = 54866u & u_input.c.x;
    return Struct_2(98616u, ~vec4<i32>(~u_input.b, max(-2147483647i, 40573i) ^ (var_1.x | 10850i), _wgslsmith_clamp_i32(15964i, countOneBits(u_input.d.x), firstLeadingBit(1i)), 16214i), Struct_1(true, 1i), Struct_1(var_0, 19610i), var_0);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = reverseBits(arg_3.a.d.b);
    global1 = array<vec4<i32>, 31>();
    let var_1 = _wgslsmith_mod_i32(~43765i, countOneBits(_wgslsmith_mod_i32(-func_2(Struct_3(arg_2), 30916i, vec4<bool>(true, arg_3.a.d.a, arg_2.d.a, arg_2.c.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(5011i, 34184i, -18920i, 921i), global1[_wgslsmith_index_u32(u_input.c.x, 31u)]) | arg_2.b.x)));
    global0 = array<i32, 30>();
    var var_2 = vec3<bool>(true, !arg_3.a.c.a, !any(select(vec4<bool>(arg_3.a.c.a, true, arg_3.a.c.a, false), vec4<bool>(arg_2.c.a, arg_2.d.a, arg_3.a.d.a, arg_3.a.c.a), arg_2.e && true)));
    return arg_3.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 31>();
    let var_0 = _wgslsmith_f_op_f32(-999f + _wgslsmith_f_op_f32(min(1111f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1241f + _wgslsmith_f_op_f32(840f + -105f)), -1571f))));
    global3 = !((select(_wgslsmith_mult_u32(0u, 25802u), 1u, true) >= _wgslsmith_dot_vec2_u32(~u_input.c.yy, _wgslsmith_div_vec2_u32(u_input.a.wz, u_input.a.yz))) & func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -1703f, var_0)), -12093i, func_1(), Struct_3(Struct_2(4294967295u, vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(22499u, 30u)], 62966i, 2147483647i), Struct_1(true, 0i), Struct_1(false, -55102i), true))));
    global0 = array<i32, 30>();
    var var_1 = func_1().c;
    global0 = array<i32, 30>();
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.c.yx, ~u_input.c.yz), _wgslsmith_add_vec4_i32(u_input.d, global1[_wgslsmith_index_u32(~u_input.a.x, 31u)]) | vec4<i32>(482i, reverseBits(-1i), u_input.d.x, var_1.b), Struct_1(true, u_input.d.x), Struct_1(true, -(i32(-1i) * -var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0))) >= _wgslsmith_f_op_f32(-var_0));
    let x = u_input.a;
    s_output = StorageBuffer(25499u, _wgslsmith_f_op_f32(var_0 * var_0), vec2<u32>(u_input.c.x, 4294967295u), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -2270f) - 1574f)))));
}

