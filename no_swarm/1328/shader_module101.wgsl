struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 39502u, 1u, 26980u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    global0 = min(min(firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4880u, u_input.a), global2.c.wx), min(vec2<u32>(4294967295u, global2.c.x), vec2<u32>(global0.x, 0u)))), vec2<u32>(~(92679u & global2.c.x), firstTrailingBit(5626u))), ~global2.c.xy);
    global2 = Struct_1(select(select(global2.a, vec4<bool>(all(vec2<bool>(global2.b.x, global2.a.x)), global2.b.x, any(global2.b.zx), global2.a.x), global2.a), global2.a, !global2.a), !(!vec3<bool>(all(global2.a), !global2.b.x, global2.b.x)), vec4<u32>(~min(~46100u, abs(10424u)), abs(min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.c.x, 0u), vec3<u32>(62384u, global0.x, global2.c.x)), 10549u)), u_input.c, global2.c.x));
    global0 = ~global2.c.wy;
    var var_0 = Struct_5(select(1i, firstTrailingBit(-28907i), true), any(select(select(vec2<bool>(global2.a.x, true), !global2.b.yx, global2.b.yx), select(!global2.b.zz, select(vec2<bool>(false, global2.b.x), global2.b.yx, true), !global2.b.yx), !select(global2.a.xx, vec2<bool>(global2.a.x, global2.b.x), vec2<bool>(global2.a.x, true)))), 103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(960f - 1231f) * 1470f)) - -1523f), 2912i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-864f)), 566f)));
    return countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(33092u, ~u_input.b, _wgslsmith_mult_u32(global2.c.x, 1u)), ~(~u_input.d)), abs(vec2<u32>(1u, 1u))));
}

fn func_2() -> Struct_2 {
    global0 = func_3();
    let var_0 = -1i;
    var var_1 = min(min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 26205i), vec2<i32>(var_0, var_0) ^ vec2<i32>(var_0, var_0)), ~2147483647i, -2147483647i, 50427i), vec4<i32>(-2147483647i, (-8300i ^ var_0) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 73797u, global0.x, global0.x), vec4<u32>(4294967295u, u_input.b, 1u, 0u)) % 32u), abs(_wgslsmith_sub_i32(var_0, 10398i)), ~_wgslsmith_add_i32(-11486i, 33169i))), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0, 1i, var_0, var_0), vec4<i32>(0i, 1i, var_0, abs(var_0))) & _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, var_0, var_0, var_0), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(8096i, var_0, var_0, -33585i), vec4<i32>(-1i, -2147483647i, var_0, var_0)))));
    let var_2 = global2.b;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f + 292f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(844f * 247f), 1427f))))), Struct_2(Struct_1(!vec4<bool>(true, var_2.x, true, var_2.x), !vec3<bool>(true, global2.a.x, global2.a.x), vec4<u32>(~u_input.b, 4294967295u, 0u, _wgslsmith_div_u32(66686u, global0.x))), 1142f, Struct_1(!vec4<bool>(global2.a.x, false, global2.b.x, true), vec3<bool>(var_2.x, true, !var_2.x), global2.c), _wgslsmith_dot_vec2_u32(global2.c.zx, ~global2.c.zy)), -367f, vec2<f32>(-1000f, 1f), ~global2.c.x);
    return Struct_2(var_3.b.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_3.b.b)), _wgslsmith_f_op_f32(1872f + var_3.b.b), false)))))), var_3.b.a, u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> u32 {
    global1 = _wgslsmith_mult_i32(-38718i, -45705i);
    global0 = func_2().a.c.xz;
    var var_0 = Struct_3(vec2<f32>(-164f, arg_0.b), arg_0, 1000f, vec2<f32>(-185f, _wgslsmith_div_f32(arg_0.b, func_2().b)), _wgslsmith_div_u32(~func_3().x, func_3().x >> (~u_input.c % 32u)));
    global1 = _wgslsmith_div_i32(max(2147483647i, -4112i), max(-1i, -26431i));
    return select(~global0.x, reverseBits(52525u), !arg_0.c.b.x) & _wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.a >> (_wgslsmith_add_u32(arg_0.d, 107543u) % 32u), ~reverseBits(1u)), 52247u);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global0 = global2.c.yz;
    var var_0 = -1717f;
    global0 = vec2<u32>(max(~(~firstTrailingBit(149016u)), ~(~_wgslsmith_add_u32(global2.c.x, 1u))), arg_0.x);
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~global2.c.x, ~global2.c.x), ~(global2.c.wz ^ global2.c.yz)), _wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, 36687u), global2.c.xy), vec2<u32>(func_4(func_2(), -1820f), (u_input.b ^ 4294967295u) | global2.c.x)) & global2.c.wy;
    var var_2 = func_2();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(!(!vec4<bool>(true && global2.a.x, !global2.b.x, all(vec2<bool>(false, true)), !global2.b.x)), !(!global2.b), _wgslsmith_div_vec4_u32(vec4<u32>(abs(~global0.x), _wgslsmith_add_u32(abs(4294967295u), _wgslsmith_mult_u32(0u, global2.c.x)), _wgslsmith_sub_u32(~global2.c.x, func_1(vec3<u32>(global0.x, 7225u, global0.x))), ~global0.x), vec4<u32>(_wgslsmith_mult_u32(global0.x, ~92991u), ~1236u, global0.x, 1u)));
    global2 = Struct_1(vec4<bool>(!(!global2.a.x), !global2.a.x, global2.b.x, global2.a.x), !func_2().c.b, ~vec4<u32>(_wgslsmith_add_u32(101256u, _wgslsmith_div_u32(u_input.d, global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.c.x), vec2<u32>(4294967295u, u_input.d)) ^ ~0u, func_3().x, func_3().x));
    let var_0 = 4294967295u;
    let var_1 = func_2();
    let var_2 = Struct_4(var_1.c, var_1, Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1811f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) - vec2<f32>(-1866f, var_1.b))))), func_2(), 566f, vec2<f32>(355f, _wgslsmith_f_op_f32(559f * _wgslsmith_div_f32(var_1.b, -181f))), _wgslsmith_mod_u32(~(~global2.c.x), func_1(global2.c.xzy))));
    var var_3 = ~global2.c;
    global1 = abs(abs(firstLeadingBit(firstTrailingBit(1i))));
    let var_4 = !func_2().c.a.ywz;
    let var_5 = vec2<f32>(var_1.b, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.c.xxx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-548f, var_2.b.b, false)), _wgslsmith_f_op_f32(var_2.c.a.x - var_1.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_2().b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1104f, 706f), var_5))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1064f, var_2.b.b, var_5.x, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.b, var_2.b.b, var_1.b, var_1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1378f, 496f, -411f, 407f))))), 1126i);
}

