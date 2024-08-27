struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(3813i, vec4<u32>(4294967295u, 1u, 14927u, 1u), vec4<f32>(1529f, 1325f, -2342f, -363f), vec2<u32>(4294967295u, 53830u), Struct_2(vec2<i32>(-6370i, -34134i), vec2<i32>(-41919i, 1i))), vec3<i32>(15517i, -53332i, 2147483647i), 421f, Struct_1(3301u, vec4<i32>(5324i, 2147483647i, -11839i, i32(-2147483648))));

var<private> global1: f32 = 357f;

var<private> global2: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(25777u, 1u, 39123u), vec3<u32>(1u, 36249u, 34794u), vec3<u32>(10505u, 18193u, 17442u), vec3<u32>(1u, 29423u, 92111u), vec3<u32>(94704u, 0u, 0u), vec3<u32>(1u, 4294967295u, 38865u), vec3<u32>(40451u, 1u, 5757u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 5396u, 4294967295u), vec3<u32>(4294967295u, 0u, 17159u), vec3<u32>(19411u, 84311u, 28564u), vec3<u32>(0u, 45759u, 1u), vec3<u32>(18414u, 4294967295u, 56202u), vec3<u32>(1u, 4294967295u, 11852u), vec3<u32>(4294967295u, 1u, 39091u), vec3<u32>(103044u, 1u, 39370u), vec3<u32>(0u, 0u, 14710u), vec3<u32>(0u, 1u, 1u), vec3<u32>(69188u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 33379u), vec3<u32>(14556u, 129488u, 1u), vec3<u32>(4294967295u, 38697u, 5913u), vec3<u32>(4294967295u, 19080u, 0u), vec3<u32>(4294967295u, 0u, 61977u), vec3<u32>(1u, 26373u, 0u), vec3<u32>(27794u, 4294967295u, 0u));

var<private> global3: array<vec3<i32>, 19>;

var<private> global4: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    global4 = 0u;
    global2 = array<vec3<u32>, 27>();
    global1 = -1376f;
    global2 = array<vec3<u32>, 27>();
    let var_0 = global0.a.e;
    return Struct_2(-(-(var_0.b >> (vec2<u32>(82299u, 0u) % vec2<u32>(32u))) >> ((~u_input.d.zy ^ u_input.d.wz) % vec2<u32>(32u))), ~(-select(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a.a, -34306i), vec2<i32>(u_input.b, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.x, 2147483647i), vec2<i32>(var_0.b.x, -1833i), vec2<i32>(-27788i, var_0.b.x)), vec2<bool>(true, true))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = vec2<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), arg_3.a.x > 40884i), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))), !(757f < global0.c) || any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))));
    var var_1 = global0.a.b;
    global2 = array<vec3<u32>, 27>();
    let var_2 = vec4<i32>(_wgslsmith_div_i32(0i ^ (-2147483647i << (arg_2 % 32u)), -abs(2147483647i)) << ((select(0u, 1u, 0u >= u_input.c) | var_1.x) % 32u), ~1i, ~(~_wgslsmith_clamp_i32(arg_1.b.x & global0.b.x, ~global0.a.e.a.x, arg_3.a.x)), func_2().a.x);
    global0 = Struct_4(global0.a, ~vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.x, global0.a.a, -2455i) | global0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(-22166i, 0i, 0i), global3[_wgslsmith_index_u32(global0.d.a, 19u)])), arg_1.a.x), _wgslsmith_f_op_f32(round(992f)), Struct_1(_wgslsmith_clamp_u32(~(~85032u), 1u, ~(u_input.c ^ 4294967295u)), vec4<i32>(_wgslsmith_add_i32(~22246i, 1i), _wgslsmith_add_i32(-arg_3.b.x, 1i), _wgslsmith_add_i32(~var_2.x, -41529i << (1u % 32u)), _wgslsmith_dot_vec2_i32(var_2.yx, vec2<i32>(u_input.a, arg_1.a.x)) << (global0.d.a % 32u))));
    return _wgslsmith_mult_i32(10264i, global0.a.e.a.x | -9455i);
}

fn func_1() -> i32 {
    global4 = 4294967295u;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2841f - -496f), _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(trunc(-3070f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.c.x * global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * global0.a.c.x), any(vec4<bool>(true, false, false, true)) && any(vec3<bool>(false, true, false))))));
    global4 = ~1u;
    global4 = ~u_input.d.x;
    var var_0 = 722f;
    return ~reverseBits(~func_3(global0.d.a << (4294967295u % 32u), func_2(), _wgslsmith_sub_u32(0u, global0.d.a), Struct_2(vec2<i32>(3420i, u_input.b), global0.a.e.b)));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    global4 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.d.a, _wgslsmith_clamp_u32(arg_2.d.x, 29279u, 4294967295u), arg_2.d.x), max(vec3<u32>(~arg_0, arg_2.b.x, ~arg_0), u_input.d.zww)), global2[_wgslsmith_index_u32(~arg_0, 27u)]);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(4294967295u, abs(vec2<i32>(func_1(), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(14820i, -3135i), func_1(), func_2().b.x))), global0.a);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -158f);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))))), global0.c, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_0.c.x + global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c.x * _wgslsmith_f_op_f32(ceil(-444f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.a.c))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1370f, global0.a.c.x, var_0.c.x, -196f)), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -1379f)))));
    let var_2 = select((u_input.d.yyz ^ ~(~var_0.b.zww)) << (select(vec3<u32>(abs(4294967295u), var_0.d.x | 1u, ~var_0.d.x), vec3<u32>(_wgslsmith_mod_u32(u_input.c, 7187u), 4294967295u, min(66279u, var_0.b.x)), !all(vec3<bool>(true, true, true))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(abs(u_input.d.x << (var_0.d.x % 32u)), _wgslsmith_clamp_u32(0u, 12359u, u_input.c) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.a.b.x), u_input.d.zx) % 32u)), global0.d.a, 4294967295u), true);
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.x, ~(~1u), ~u_input.c, _wgslsmith_clamp_u32(abs(var_2.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a.d.x, 4294967295u, 17824u), vec4<u32>(u_input.c, 30634u, 4294967295u, 1u)) % 32u), (46967u | var_2.x) & ~global0.d.a, var_2.x)), global0.a.b >> (vec4<u32>(21465u, firstTrailingBit(var_2.x), _wgslsmith_mod_u32(select(var_2.x, 30120u, false), func_4(global0.d.a, var_0.e.a, Struct_3(2147483647i, var_0.b, var_0.c, vec2<u32>(u_input.c, var_2.x), global0.a.e)).b.x), 4294967295u) % vec4<u32>(32u)));
    global2 = array<vec3<u32>, 27>();
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), global0.c, _wgslsmith_f_op_f32(round(-696f)), -521f), vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x * -1630f), 1353f, var_1.x, 533f))));
    var_1 = var_0.c;
    let var_4 = global0.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.c.x), var_1.yx);
}

