struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: array<bool, 16>;

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-252f, -143f), vec2<f32>(1485f, -1334f), vec2<f32>(-1065f, -218f), vec2<f32>(-101f, 924f), vec2<f32>(-1175f, -470f), vec2<f32>(-238f, -1183f), vec2<f32>(1488f, 2292f), vec2<f32>(-1239f, 939f));

var<private> global3: array<u32, 9>;

var<private> global4: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    global1 = array<bool, 16>();
    global4 = u_input.d.yy;
    let var_0 = Struct_1(select(vec3<bool>(true, true, true), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)], true), !vec3<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11011u, 9u)], 16u)], true), vec3<bool>(!global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(arg_0, 16u)], global1[_wgslsmith_index_u32(1u, 16u)] | global1[_wgslsmith_index_u32(4294967295u, 16u)])), global1[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(global4.x >> (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 9u)], 11u)] << (global0[_wgslsmith_index_u32(global4.x, 11u)] % vec4<u32>(32u)), vec4<u32>(56277u, global4.x, u_input.d.x, global3[_wgslsmith_index_u32(global4.x, 9u)])), 9u)] % 32u), 8u)]), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global3[_wgslsmith_index_u32(0u, 9u)], 4294967295u)), u_input.b), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(-760f))), select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(global4.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(global4.x, 16u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)])), true), select(vec2<bool>(false, false), !vec2<bool>(global1[_wgslsmith_index_u32(global4.x, 16u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(26063u, 16u)]), false)), !global1[_wgslsmith_index_u32(~global4.x, 16u)]), vec2<bool>(all(!vec3<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 16u)], true)), any(select(vec3<bool>(global1[_wgslsmith_index_u32(141561u, 16u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 16u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 9u)], 16u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39430u, 9u)], 16u)], false)))), select(select(!vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0, 16u)]), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], true), true), global1[_wgslsmith_index_u32(global4.x, 16u)] && global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(~1u, 16u)]), global1[_wgslsmith_index_u32(~global4.x, 16u)])));
    global4 = select(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.b), firstLeadingBit(vec2<u32>(1u, 1u))), select(min(u_input.b, u_input.d.yz), _wgslsmith_sub_vec2_u32(u_input.d.zy, u_input.b), true)), _wgslsmith_add_vec2_u32(vec2<u32>(29191u, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global3[_wgslsmith_index_u32(arg_0, 9u)], global3[_wgslsmith_index_u32(1753u, 9u)], arg_0))), vec2<u32>(u_input.b.x, var_0.c))), firstTrailingBit(vec2<u32>(0u, global3[_wgslsmith_index_u32(arg_0, 9u)])), vec2<bool>(!any(!vec2<bool>(var_0.a.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)) != 727f));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.xwx - vec3<f32>(-870f, -275f, arg_1.x)), _wgslsmith_f_op_vec3_f32(arg_1.wyz + vec3<f32>(-374f, 1190f, arg_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -1000f, arg_1.x), arg_1.zyx)), !(!var_0.a))))), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(426f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.d.x, var_0.b.x, true)), _wgslsmith_f_op_f32(-arg_1.x)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-434f, _wgslsmith_f_op_f32(1052f - var_1.x)))))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(!vec3<bool>(global1[_wgslsmith_index_u32(~(4294967295u >> (arg_1 % 32u)), 16u)], !(48642i < u_input.c), any(select(vec4<bool>(global1[_wgslsmith_index_u32(19775u, 16u)], global1[_wgslsmith_index_u32(49157u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 16u)], global1[_wgslsmith_index_u32(arg_1, 16u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 9u)], 16u)], false)))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(3399u, 4294967295u, 68266u), vec3<u32>(1u, 0u, 21194u) & u_input.d), u_input.d ^ u_input.d), abs(~(~global4.x))), 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)] | 4294967295u, _wgslsmith_f_op_vec2_f32(sign(global2[_wgslsmith_index_u32(0u, 8u)])), vec2<bool>(true, true));
    var var_1 = ~max(~(~vec2<u32>(global4.x, 0u)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1), u_input.d.yz)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, 947f, -183f, 399f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, var_0.d.x, 251f, var_0.d.x)))));
    global0 = array<vec4<u32>, 11>();
    global3 = array<u32, 9>();
    return Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_2 << (arg_2 % 32u), ~arg_0), 8u)])), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, abs(vec2<u32>(1u, global4.x)) & u_input.d.zz, abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(var_1.x, u_input.d.x), u_input.d.zz))), countOneBits(abs(vec2<u32>(18321u, 0u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1487f, _wgslsmith_f_op_f32(var_2.x * var_0.d.x))), _wgslsmith_f_op_f32(func_3(reverseBits(~15602u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, -920f, var_0.d.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 215f, var_2.x, 1000f) + vec4<f32>(var_2.x, -291f, var_0.d.x, var_0.b.x)))))), !select(!var_0.e, var_0.a.zz, !vec2<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1, 9u)], 16u)])));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = vec2<u32>(global4.x, _wgslsmith_add_u32(42462u, u_input.b.x)) << (_wgslsmith_mod_vec2_u32(abs(min(u_input.d.yy << (vec2<u32>(6683u, 1u) % vec2<u32>(32u)), vec2<u32>(36216u, global3[_wgslsmith_index_u32(global4.x, 9u)]))), ~u_input.b) % vec2<u32>(32u));
    var var_1 = ~(~vec3<u32>(~50428u, u_input.b.x, 97924u) ^ vec3<u32>(max(~u_input.b.x, 4294967295u << (arg_0.c % 32u)), _wgslsmith_mod_u32(1u ^ arg_2.c, ~arg_2.c), max(0u, var_0.x) ^ ~4294967295u));
    return arg_0.c;
}

fn func_1() -> i32 {
    var var_0 = !(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(1u, firstLeadingBit(global3[_wgslsmith_index_u32(17507u, 9u)])), 10351u), 16u)]);
    global1 = array<bool, 16>();
    let var_1 = Struct_1(!vec3<bool>(global1[_wgslsmith_index_u32(func_4(func_2(u_input.b.x, u_input.d.x, global4.x), !vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 16u)], false, global1[_wgslsmith_index_u32(global4.x, 16u)], false), Struct_1(vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(0u, 8u)], global4.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 8u)], vec2<bool>(global1[_wgslsmith_index_u32(0u, 16u)], false))), 16u)], _wgslsmith_f_op_f32(-1435f + 221f) >= _wgslsmith_f_op_f32(floor(218f)), false), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), ~global3[_wgslsmith_index_u32(func_2(global4.x & global4.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20728u), vec2<u32>(1u, 58166u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 33336u), vec2<u32>(24140u, 22525u))).c ^ _wgslsmith_div_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 13434u), ~0u), 9u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25681u, 9u)], 8u)], !func_2(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 9u)], 11u)], vec4<u32>(global4.x, 50356u, u_input.b.x, 4126u) >> (vec4<u32>(33447u, 0u, global4.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 23897u, u_input.d.x, global4.x), max(global0[_wgslsmith_index_u32(1u, 11u)], vec4<u32>(u_input.d.x, global3[_wgslsmith_index_u32(global4.x, 9u)], 68300u, 1u))), 1u).e);
    let var_2 = func_2(~func_4(func_2(1u, ~23419u, 16991u), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 16u)], true, var_1.a.x), select(vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(true, false, false, false), true), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), func_2(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 9u)], 9u)], 1u)), ~1u, u_input.b.x);
    var var_3 = vec3<u32>(var_2.c, 4294967295u, ~1u) & (u_input.d & vec3<u32>(~_wgslsmith_clamp_u32(var_1.c, global4.x, 1u), global3[_wgslsmith_index_u32(4971u, 9u)], u_input.d.x));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1u, 16u)];
    let var_1 = ~(-vec2<i32>(func_1(), _wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -38533i, 1i)));
    let var_2 = u_input.d.zx;
    global2 = array<vec2<f32>, 8>();
    let var_3 = _wgslsmith_div_i32(var_1.x, u_input.a.x);
    var var_4 = !global1[_wgslsmith_index_u32(1u, 16u)];
    var var_5 = u_input.a;
    global3 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.x) & (u_input.a.x >> (abs(countOneBits(4294967295u)) % 32u)));
}

