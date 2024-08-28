struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = array<vec4<f32>, 30>();
    let var_0 = Struct_2(Struct_1(~abs(arg_1), select(select(vec4<bool>(true, true, arg_2.b.x, false), select(arg_2.b, arg_2.b, vec4<bool>(arg_2.b.x, true, arg_2.b.x, true)), vec4<bool>(true, arg_2.b.x, true, true)), vec4<bool>(!arg_2.b.x, arg_2.b.x || arg_2.b.x, !arg_2.b.x, arg_2.b.x), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.x, 340f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, arg_2.c.x) - arg_2.c))), _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, arg_0), min(u_input.d, 1i)) << (u_input.b % 32u), vec4<f32>(-1757f, 392f, arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x - -1424f)))), arg_2.c, 1u, arg_2);
    var var_1 = abs(~vec2<u32>(23741u, _wgslsmith_div_u32(4294967295u, arg_2.a)));
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    return true;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = -743f;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= _wgslsmith_f_op_f32(abs(var_0));
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    var var_2 = Struct_1(u_input.c.x << ((1u >> (u_input.b % 32u)) % 32u), vec4<bool>(true, func_3(u_input.d, countOneBits(_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(4294967295u, 2557u))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a.wz), select(vec4<bool>(true, var_1, false, var_1), vec4<bool>(false, var_1, false, var_1), true), vec2<f32>(var_0, var_0), 21546i << (1u % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(380f, arg_0, arg_0, 522f) * global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -238f)) <= var_0, all(!select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(true, true, var_1, false), var_1))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, -712f)))), ~(-2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1236f, _wgslsmith_f_op_f32(round(408f)), 1387f, 379f) + _wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(countOneBits(0u), 30u)]))));
    return Struct_1(_wgslsmith_clamp_u32(u_input.a.x, ~var_2.a, 21652u), select(var_2.b, !var_2.b, var_2.b.x), _wgslsmith_f_op_vec2_f32(min(var_2.e.yy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(627f, var_0) * vec2<f32>(var_0, arg_0))))))), -_wgslsmith_div_i32(u_input.d, -_wgslsmith_mod_i32(u_input.d, 1i)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.c.xy)), var_2.a >> (1u % 32u)), 30u)]);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.d;
    var var_1 = -select(~min(_wgslsmith_clamp_vec4_i32(vec4<i32>(15410i, -2147483647i, u_input.d, -44018i), vec4<i32>(var_0.d, var_0.d, -2147483647i, -1i), vec4<i32>(-36815i, arg_0.x, 7087i, arg_2.a.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, arg_2.a.d, arg_1.d, -2147483647i), vec4<i32>(u_input.d, arg_2.d.d, var_0.d, -2147483647i))), ~vec4<i32>(reverseBits(var_0.d), arg_1.d, _wgslsmith_mult_i32(var_0.d, var_0.d), arg_1.d), any(arg_1.b.xy));
    global0 = array<vec4<f32>, 30>();
    var var_2 = min(u_input.b, 55526u);
    var var_3 = _wgslsmith_f_op_f32(-var_0.c.x);
    return Struct_1(firstLeadingBit(~abs(1u)), vec4<bool>(var_0.b.x, true, var_0.b.x, arg_2.d.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-169f, 302f), vec2<f32>(arg_1.e.x, arg_1.c.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(641f, arg_1.c.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(arg_1.c, var_0.c)))), _wgslsmith_f_op_vec2_f32(-arg_2.d.e.zw))), -1i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.e.x, -694f))) * 226f), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1393f), 1f));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> vec2<bool> {
    var var_0 = func_4(vec3<i32>(abs(arg_0.d), _wgslsmith_clamp_i32(arg_0.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(-21169i, 2147483647i, arg_0.d, -2147483647i), vec4<i32>(-17785i, 0i, arg_0.d, -2147483647i)), -34409i << (u_input.c.x % 32u)), u_input.d), func_2(arg_0.c.x), Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-func_2(-1082f).e.wz), vec2<f32>(-1744f, _wgslsmith_f_op_f32(floor(-335f))))), 4294967295u, arg_0));
    var var_1 = select(!func_2(arg_0.c.x).b.ywz, select(!var_0.b.wzw, select(!func_4(vec3<i32>(0i, arg_0.d, 0i), arg_0, Struct_2(Struct_1(u_input.b, arg_0.b, vec2<f32>(-487f, arg_0.e.x), arg_0.d, vec4<f32>(arg_0.e.x, var_0.c.x, 740f, var_0.c.x)), vec2<f32>(var_0.e.x, arg_0.c.x), var_0.a, Struct_1(arg_0.a, vec4<bool>(false, false, true, arg_1.x), arg_0.e.wx, 0i, vec4<f32>(2025f, -394f, arg_0.e.x, var_0.e.x)))).b.wyx, vec3<bool>(all(vec4<bool>(arg_1.x, arg_1.x, arg_0.b.x, arg_0.b.x)), true, !arg_0.b.x), !var_0.b.x), true), vec3<bool>(arg_0.b.x, false, arg_0.b.x));
    var var_2 = var_1.x;
    global0 = array<vec4<f32>, 30>();
    var_0 = arg_0;
    return vec2<bool>(!(var_0.b.x == func_4(~vec3<i32>(18737i, arg_0.d, u_input.d), Struct_1(33612u, arg_0.b, vec2<f32>(var_0.c.x, var_0.e.x), -16603i, vec4<f32>(-330f, 899f, 630f, 1878f)), Struct_2(arg_0, vec2<f32>(var_0.c.x, -996f), 1u, Struct_1(u_input.b, var_0.b, arg_0.c, u_input.d, arg_0.e))).b.x), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    let var_0 = select(!func_1(Struct_1(u_input.c.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 430f)), countOneBits(u_input.d), vec4<f32>(184f, -302f, -1638f, 1291f)), vec2<bool>(all(vec4<bool>(true, true, false, false)), false), 4294967295u), !func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -997f), 1670f, true))).b.wz, func_2(144f).b.zw);
    var var_1 = -vec3<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-7661i, -50588i), var_0.x), firstTrailingBit(vec2<i32>(1i, -72797i))), 7220i), _wgslsmith_add_i32(max(-42760i, _wgslsmith_add_i32(-19828i, u_input.d)), 1i >> (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~func_4(vec3<i32>(4900i, var_1.x, u_input.d), func_4(vec3<i32>(28251i, -2147483647i, 39035i), Struct_1(u_input.c.x, vec4<bool>(false, var_0.x, false, true), vec2<f32>(1134f, -1440f), 40240i, global0[_wgslsmith_index_u32(0u, 30u)]), Struct_2(Struct_1(9384u, vec4<bool>(var_0.x, false, false, var_0.x), vec2<f32>(-296f, -1466f), u_input.d, global0[_wgslsmith_index_u32(u_input.b, 30u)]), vec2<f32>(-899f, 966f), 67788u, Struct_1(42402u, vec4<bool>(false, var_0.x, false, var_0.x), vec2<f32>(-1000f, 847f), var_1.x, vec4<f32>(1721f, -1058f, 762f, 2194f)))), Struct_2(Struct_1(u_input.b, vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec2<f32>(1000f, -1145f), var_1.x, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec2<f32>(2338f, -511f), u_input.c.x, Struct_1(2482u, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec2<f32>(1245f, 1974f), 2147483647i, vec4<f32>(364f, -279f, 1000f, -1577f)))).d, ~2147483647i, 2147483647i, _wgslsmith_add_i32(var_1.x, u_input.d)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 18203i, u_input.d), vec3<i32>(u_input.d, -2147483647i, 1i))), abs(vec3<i32>(-12162i, -36619i, -1i)), firstLeadingBit(~vec3<i32>(-2147483647i, -76117i, var_1.x))), ~_wgslsmith_add_vec3_i32(vec3<i32>(4938i, var_1.x, u_input.d), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -49969i, u_input.d), vec3<i32>(-19380i, -1i, u_input.d)))), countOneBits(-(~min(u_input.d, -2147483647i))));
}

