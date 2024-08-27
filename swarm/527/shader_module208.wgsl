struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_3,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, false, false, false, false, false, true, false, true, true, true, true, false, false, true, false, false, true, true, false, true, false, false);

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 32>;

var<private> global3: array<vec2<i32>, 16>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_vec2_i32(abs((-vec2<i32>(arg_1.b.a.x, u_input.b) | (arg_1.b.a.yy | arg_1.b.a.xz)) >> (vec2<u32>(37464u, ~u_input.c.x) % vec2<u32>(32u))), ~max(-firstTrailingBit(vec2<i32>(u_input.b, 19346i)), arg_1.b.e.xx));
    global3 = array<vec2<i32>, 16>();
    global2 = array<f32, 32>();
    let var_1 = Struct_4(select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, arg_1.b.b), vec4<bool>(false, global1.x, arg_1.b.b, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, arg_1.a, global1.x)), !vec4<bool>(arg_1.a, true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], arg_1.a), !vec4<bool>(arg_1.b.b, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global1.x)), vec4<bool>(arg_1.b.b == global1.x, global1.x | global1.x, true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(43576u, 44815u), 25u)]), vec4<bool>(all(vec4<bool>(true, arg_1.a, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true)), global1.x, arg_1.a, false)), select(select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global1.x), vec4<bool>(arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 25u)], true, false), vec4<bool>(global1.x, global1.x, true, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global1.x, global1.x, true), vec4<bool>(arg_1.b.d.x, true, global0[_wgslsmith_index_u32(46756u, 25u)], true), true), !global1.x), select(vec4<bool>(global0[_wgslsmith_index_u32(53878u, 25u)], global1.x, true, global1.x), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], arg_1.b.d.x, false, false), global1.x || global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), select(select(vec4<bool>(global1.x, false, global0[_wgslsmith_index_u32(4294967295u, 25u)], true), vec4<bool>(false, true, true, true), arg_1.a), !vec4<bool>(false, arg_1.b.d.x, false, true), select(vec4<bool>(false, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false), vec4<bool>(arg_1.a, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, true), global1.x))), select(select(!vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true), !vec4<bool>(global1.x, arg_1.b.d.x, false, global1.x)), vec4<bool>(false, global1.x, !arg_1.a, false), select(!vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global1.x, global0[_wgslsmith_index_u32(45078u, 25u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(37205u, 25u)], arg_1.b.b, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], arg_1.a, false), false)))), Struct_3(arg_0.x, firstTrailingBit(select(var_0, vec2<i32>(-1i, var_0.x), vec2<bool>(arg_1.a, global0[_wgslsmith_index_u32(0u, 25u)])) << (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), 4294967295u, Struct_1(vec4<i32>(u_input.b ^ -18850i, 2147483647i, arg_1.b.e.x, _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(1u, 16u)], arg_1.b.e.yz)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(53105u, 1u), 25u)] == (false != global0[_wgslsmith_index_u32(0u, 25u)]), arg_1.b.c, !select(vec2<bool>(global1.x, arg_1.a), arg_1.b.d, arg_1.b.d), _wgslsmith_mod_vec4_i32(firstTrailingBit(arg_1.b.e), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_0.x, 0i, -2147483647i), arg_1.b.a))), 0u), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, -854f, global0[_wgslsmith_index_u32(u_input.c.x, 25u)])) - -1556f) * _wgslsmith_f_op_f32(f32(-1f) * -1214f)), min(_wgslsmith_mult_vec2_i32(vec2<i32>(-7081i, u_input.b), _wgslsmith_clamp_vec2_i32(var_0, arg_1.b.e.yw, global3[_wgslsmith_index_u32(82296u, 16u)])), _wgslsmith_mod_vec2_i32(firstLeadingBit(arg_1.b.e.zy), select(vec2<i32>(var_0.x, -31454i), arg_1.b.a.zw, vec2<bool>(false, global1.x)))), 1u, Struct_1(-arg_1.b.a, select(any(vec3<bool>(arg_1.b.b, false, global0[_wgslsmith_index_u32(1u, 25u)])), any(vec4<bool>(true, true, false, arg_1.a)), arg_1.a), _wgslsmith_dot_vec4_i32(arg_1.b.e & vec4<i32>(u_input.b, -1i, u_input.b, var_0.x), arg_1.b.e), !arg_1.b.d, vec4<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, arg_1.b.c), -u_input.b, ~var_0.x, -5260i)), select(~max(84412u, u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, ~47898u), true)), global1.x, Struct_3(arg_0.x, vec2<i32>(var_0.x, i32(-1i) * -1i), u_input.c.x & _wgslsmith_add_u32(firstTrailingBit(0u), ~u_input.a.x), Struct_1(select(vec4<i32>(var_0.x, -1i, u_input.b, var_0.x), vec4<i32>(-9585i, 35490i, u_input.b, var_0.x), vec4<bool>(false, false, true, false)), global1.x | (u_input.a.x < 4294967295u), max(_wgslsmith_add_i32(24317i, arg_1.b.e.x), -u_input.b), select(!vec2<bool>(true, arg_1.a), !global1.zx, select(global1.wz, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), arg_1.a)), arg_1.b.e), 5096u));
    var var_2 = any(vec4<bool>(false, -(-44871i >> (0u % 32u)) >= arg_1.b.c, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) <= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(15456u, 32u)] + _wgslsmith_f_op_f32(round(-1476f))), select((var_0.x ^ var_1.e.d.a.x) >= (var_0.x ^ u_input.b), arg_1.b.d.x, true)));
    return global0[_wgslsmith_index_u32(~max(~abs(14197u << (u_input.a.x % 32u)), 1u), 25u)];
}

fn func_4(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = Struct_2(false, Struct_1(-vec4<i32>(arg_0.c.b.x ^ arg_0.b.d.e.x, u_input.b, 1i, min(u_input.b, 1i)), true, firstLeadingBit(-21033i), vec2<bool>(true, true), vec4<i32>(abs(1i), -(u_input.b | 19004i), -min(1i, 128650i), firstTrailingBit(u_input.b))));
    global2 = array<f32, 32>();
    global3 = array<vec2<i32>, 16>();
    global2 = array<f32, 32>();
    let var_1 = arg_0.b.a;
    return arg_0.a;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global3 = array<vec2<i32>, 16>();
    global1 = !func_4(Struct_4(select(!vec4<bool>(global1.x, false, true, arg_0), select(vec4<bool>(arg_0, global1.x, global0[_wgslsmith_index_u32(16681u, 25u)], arg_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], arg_0, arg_0), global0[_wgslsmith_index_u32(108095u, 25u)]), !vec4<bool>(false, false, true, global1.x)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -6086i), vec2<i32>(u_input.b, u_input.b)), min(1u, 69620u), Struct_1(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), global0[_wgslsmith_index_u32(1u, 25u)], u_input.b, global1.wy, vec4<i32>(0i, 1i, u_input.b, u_input.b)), ~u_input.c.x), Struct_3(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 32u)] * -569f), global3[_wgslsmith_index_u32(16399u, 16u)], 63780u, Struct_1(vec4<i32>(0i, -40752i, u_input.b, -1i), global0[_wgslsmith_index_u32(29206u, 25u)], u_input.b, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true), vec4<i32>(u_input.b, 0i, 9023i, 1i)), 33176u ^ u_input.c.x), global1.x & func_3(vec4<f32>(343f, -850f, -1200f, global2[_wgslsmith_index_u32(0u, 32u)]), Struct_2(arg_0, Struct_1(vec4<i32>(u_input.b, 1i, u_input.b, 5222i), arg_0, 25713i, global1.xy, vec4<i32>(u_input.b, 0i, -2147483647i, -1i)))), Struct_3(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(49549u, 32u)], global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), countOneBits(vec2<i32>(u_input.b, 14742i)), u_input.a.x, Struct_1(vec4<i32>(59611i, -27019i, u_input.b, u_input.b), true, 56982i, vec2<bool>(global1.x, true), vec4<i32>(-28324i, u_input.b, 24730i, -63871i)), u_input.c.x ^ 0u)));
    var var_0 = ~u_input.b;
    let var_1 = u_input.a.x;
    var var_2 = ~u_input.a.ww >> ((vec2<u32>(~(~u_input.a.x), var_1) >> (_wgslsmith_div_vec2_u32(firstLeadingBit(abs(u_input.a.zy)), ~abs(u_input.a.xz)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f - 376f))))), select(reverseBits(global3[_wgslsmith_index_u32(~abs(4294967295u), 16u)]), global3[_wgslsmith_index_u32(u_input.a.x, 16u)], !(!select(vec2<bool>(global0[_wgslsmith_index_u32(35264u, 25u)], true), global1.xw, vec2<bool>(global1.x, global0[_wgslsmith_index_u32(var_1, 25u)])))), _wgslsmith_add_u32(firstLeadingBit(~74230u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1, u_input.a.x), u_input.a.xyy)), countOneBits(abs(1754u))), Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 50275i, 50201i, u_input.b), reverseBits(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b)))), false, 27620i, !global1.wx, ~vec4<i32>(1i, u_input.b, max(2147483647i, u_input.b), u_input.b)), 63297u);
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_4(vec4<bool>(!(!global0[_wgslsmith_index_u32(u_input.c.x, 25u)] || false), true, any(!(!global1.wxz)), -(~2147483647i) < (2493i << (u_input.a.x % 32u))), func_2(true), Struct_3(_wgslsmith_f_op_f32(sign(221f)), select(-(vec2<i32>(u_input.b, 4579i) ^ global3[_wgslsmith_index_u32(157487u, 16u)]), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -1i), _wgslsmith_mod_vec2_i32(global3[_wgslsmith_index_u32(4294967295u, 16u)], vec2<i32>(1i, 11874i))), vec2<bool>(all(global1.xww), global2[_wgslsmith_index_u32(u_input.a.x, 32u)] < 1000f)), 38156u, Struct_1(vec4<i32>(~1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 26197i), global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), 1i), false, _wgslsmith_sub_i32(1815i, u_input.b), global1.zy, abs(reverseBits(vec4<i32>(u_input.b, u_input.b, -21923i, 54641i)))), u_input.a.x), !global1.x | global1.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 32u)] * global2[_wgslsmith_index_u32(u_input.c.x, 32u)])) + global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), global3[_wgslsmith_index_u32(0u, 16u)], u_input.c.x, Struct_1(~countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i)), all(!vec4<bool>(true, global1.x, true, false)), _wgslsmith_dot_vec2_i32(firstLeadingBit(global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec2<i32>(1i, 2147483647i)), vec2<bool>(!global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 25u)]), _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, u_input.b, -2147483647i, -1i), vec4<i32>(u_input.b, -32231i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i))), u_input.c.x));
    global0 = array<bool, 25>();
    var var_1 = func_2(true);
    global3 = array<vec2<i32>, 16>();
    var_1 = Struct_3(1848f, min(vec2<i32>(1i, var_1.b.x), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), var_0.c.d.e.yx) >> (~vec2<u32>(4294967295u, 15470u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_0.e.d.e.zy, ~vec2<i32>(4417i, u_input.b)))), ~_wgslsmith_mod_u32(42782u, _wgslsmith_sub_u32(86725u >> (u_input.a.x % 32u), var_1.c ^ var_0.c.e)), func_2(true).d, 1u);
    return Struct_4(!(!var_0.a), func_2(false), var_0.c, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, var_1.c), _wgslsmith_add_u32(firstTrailingBit(var_0.e.c), firstLeadingBit(var_1.e))), 25u)], var_0.c);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_1.b;
    let var_1 = func_2(-abs(var_0.d.a.x) < _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -arg_2), select(vec2<i32>(arg_1.e.b.x, -1i), arg_1.e.b, true) & var_0.b)).d;
    var var_2 = Struct_1(func_2(var_0.d.b || all(vec2<bool>(var_0.d.b, arg_0))).d.e, _wgslsmith_f_op_f32(-var_0.a) >= var_0.a, u_input.b, arg_3.b.d, _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_3.b.e.x, var_1.c, -21350i & arg_3.b.e.x, abs(1522i)), firstTrailingBit(-arg_3.b.a)));
    global1 = !vec4<bool>(any(var_1.d), arg_1.c.a < -1263f, false, reverseBits(-2147483647i) != select(var_2.c, 1i, false & var_1.d.x));
    global2 = array<f32, 32>();
    return func_1().e;
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    global1 = !vec4<bool>(false, false, true, arg_0.d);
    let var_0 = arg_0.c.d;
    global2 = array<f32, 32>();
    var var_1 = 14176i;
    var_1 = _wgslsmith_dot_vec2_i32(~(~min(global3[_wgslsmith_index_u32(1u, 16u)], ~global3[_wgslsmith_index_u32(55662u, 16u)])), -(_wgslsmith_div_vec2_i32(-arg_0.e.b, select(var_0.e.xw, vec2<i32>(-3623i, 1i), arg_0.b.d.d)) << (u_input.c % vec2<u32>(32u))));
    return func_5(any(arg_0.c.d.d), func_1(), -30879i, Struct_2(global0[_wgslsmith_index_u32(4294967295u << (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.c, 73603u, 16892u, arg_0.c.c), u_input.a), arg_0.b.e) % 32u), 25u)], func_2(all(vec4<bool>(true, global1.x, global1.x, false))).d)).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(491f))))))), vec2<i32>(2147483647i, _wgslsmith_add_i32(u_input.b, ~87005i)), 1u, func_6(Struct_4(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true, global0[_wgslsmith_index_u32(4294967295u, 25u)], true)), func_5(global0[_wgslsmith_index_u32(38711u, 25u)] | true, func_1(), 1i, Struct_2(true, Struct_1(vec4<i32>(u_input.b, u_input.b, -22858i, -75155i), global1.x, u_input.b, global1.yz, vec4<i32>(1i, -2147483647i, 36282i, u_input.b)))), func_5(!global1.x, func_1(), _wgslsmith_mult_i32(-24939i, 13428i), Struct_2(global1.x, Struct_1(vec4<i32>(2147483647i, -1i, 5567i, -20577i), global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 23089i, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)))), global1.x, func_1().b)), u_input.c.x);
    var var_1 = u_input.a.x;
    global2 = array<f32, 32>();
    var_1 = ~(~4294967295u);
    var var_2 = Struct_4(select(!(!vec4<bool>(var_0.d.b, false, true, false)), func_1().a, select(func_4(Struct_4(vec4<bool>(false, global1.x, true, global1.x), var_0, var_0, global1.x, var_0)), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global1.x, !global0[_wgslsmith_index_u32(var_0.e, 25u)], var_0.d.c >= 0i), func_6(Struct_4(vec4<bool>(var_0.d.d.x, var_0.d.b, var_0.d.d.x, true), var_0, Struct_3(-126f, global3[_wgslsmith_index_u32(59988u, 16u)], 31656u, Struct_1(var_0.d.a, false, 21904i, global1.yy, vec4<i32>(u_input.b, -1406i, u_input.b, u_input.b)), 6220u), global0[_wgslsmith_index_u32(8034u, 25u)], Struct_3(global2[_wgslsmith_index_u32(40954u, 32u)], vec2<i32>(u_input.b, 0i), var_0.e, Struct_1(vec4<i32>(u_input.b, u_input.b, 7175i, u_input.b), true, 30728i, vec2<bool>(false, false), vec4<i32>(-2147483647i, -16072i, -30023i, var_0.b.x)), var_0.e))).b)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1329f, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1282f), 0u > var_0.e)) + global2[_wgslsmith_index_u32(~func_2(global0[_wgslsmith_index_u32(u_input.a.x, 25u)]).c, 32u)]), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, u_input.c.x), 16u)], 0u, func_1().e.d, firstTrailingBit(~u_input.a.x)), var_0, false, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a, var_0.a, 941f) - vec3<f32>(-745f, var_0.a, -280f))))) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(round(-1142f))), func_1().b.a, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_2.e.e, 32u)], var_0.a))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.e, 0u), u_input.c), ~22737u) >> (~(~var_2.b.c) % 32u), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.a.xzy, _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.a.zxy), vec3<u32>(var_2.b.e, 3264u, var_0.c)))), ~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.c, var_0.e), vec2<u32>(4294967295u, 0u)), var_0.e, _wgslsmith_add_u32(~var_2.b.e, _wgslsmith_mult_u32(0u, 13482u))));
}

