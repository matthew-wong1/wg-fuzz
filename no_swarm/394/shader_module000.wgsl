struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, false, true, true, false, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: i32) -> bool {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    let var_0 = Struct_1(62741u, !select(!vec4<bool>(global0[_wgslsmith_index_u32(7109u, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true, global0[_wgslsmith_index_u32(4294967295u, 7u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(40139u, 7u)], true, true, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), global0[_wgslsmith_index_u32(countOneBits(u_input.a), 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(select(0u, 4294967295u, global0[_wgslsmith_index_u32(22439u, 7u)]), 7u)], -1138f != arg_1.x, all(vec4<bool>(global0[_wgslsmith_index_u32(5402u, 7u)], false, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), arg_2 <= u_input.c.x)), _wgslsmith_add_i32(~u_input.c.x, 28256i) <= u_input.c.x, select(!(!vec3<bool>(global0[_wgslsmith_index_u32(61646u, 7u)], true, false)), !select(!vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 7u)], true), false), !vec3<bool>(false, global0[_wgslsmith_index_u32(24519u, 7u)], false)), any(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], true, true, false)))), _wgslsmith_f_op_f32(step(1f, arg_1.x)));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = array<bool, 7>();
    let var_0 = arg_1.e;
    var var_1 = arg_0.e;
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    return Struct_1(arg_1.a, vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(363f, arg_2) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.e, arg_1.e)))), vec4<f32>(583f, _wgslsmith_f_op_f32(arg_1.e + -558f), -472f, 1261f), u_input.c.x), arg_0.d.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a, arg_1.a), 7u)], true), false, !(!(!select(vec3<bool>(arg_0.b.x, global0[_wgslsmith_index_u32(17256u, 7u)], arg_1.b.x), arg_0.b.zxz, arg_0.b.x))), 2061f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_1.a;
    global0 = array<bool, 7>();
    let var_1 = reverseBits(~4294967295u);
    var var_2 = _wgslsmith_div_vec3_i32(-vec3<i32>(abs(_wgslsmith_clamp_i32(u_input.c.x, 25266i, 1i)), -(u_input.c.x & u_input.c.x), -u_input.c.x), u_input.c);
    var var_3 = arg_2;
    return arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-121f)))))), func_2(Struct_1(~u_input.a << (u_input.a % 32u), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(48859u, 7u)], true), any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]))), true, vec3<bool>(true, any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(64383u, 7u)], true)), global0[_wgslsmith_index_u32(4294967295u, 7u)]), -632f), Struct_1(firstTrailingBit(4294967295u), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(29913u, 7u)], false)), global0[_wgslsmith_index_u32(u_input.a, 7u)] || global0[_wgslsmith_index_u32(u_input.b.x, 7u)], !global0[_wgslsmith_index_u32(58017u, 7u)], !global0[_wgslsmith_index_u32(u_input.a, 7u)]), true, select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), !vec3<bool>(global0[_wgslsmith_index_u32(71013u, 7u)], global0[_wgslsmith_index_u32(74807u, 7u)], true)), -1064f), 1f), Struct_1(~(u_input.b.x >> (u_input.b.x % 32u)), vec4<bool>(true || (global0[_wgslsmith_index_u32(1u, 7u)] | global0[_wgslsmith_index_u32(28753u, 7u)]), any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)])) == global0[_wgslsmith_index_u32(4294967295u >> (u_input.a % 32u), 7u)], true, true), true, vec3<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(20178u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)])), global0[_wgslsmith_index_u32(abs(1u), 7u)], global0[_wgslsmith_index_u32(~21849u, 7u)]), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1650f)));
    var var_2 = vec4<i32>(firstTrailingBit(max(~(~(-1i)), _wgslsmith_add_i32(var_0 ^ u_input.c.x, 32440i ^ u_input.c.x))), -_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(var_0), var_0, -1i), vec3<i32>(3407i, 1i, var_0) | vec3<i32>(var_0, var_0, var_0)), ~(~(-_wgslsmith_mult_i32(u_input.c.x, -1i))), u_input.c.x);
    let var_3 = ~(~(~max(min(1u, var_1.a), _wgslsmith_mod_u32(u_input.a, u_input.b.x))));
    global0 = array<bool, 7>();
    return func_2(var_1, var_1, _wgslsmith_f_op_f32(min(var_1.e, 1802f)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = var_0;
    global0 = array<bool, 7>();
    var var_2 = arg_2;
    var var_3 = func_1();
    return func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e) * 1044f), _wgslsmith_div_f32(623f, _wgslsmith_f_op_f32(arg_0 * arg_0))))), var_0, func_1(), 581f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(160f, func_1(), Struct_1(firstLeadingBit(countOneBits(81668u) | u_input.b.x), !func_4(-1015f, func_4(499f, Struct_1(50111u, vec4<bool>(false, global0[_wgslsmith_index_u32(2321u, 7u)], false, true), global0[_wgslsmith_index_u32(0u, 7u)], vec3<bool>(true, true, true), 251f), Struct_1(1u, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], true, true, true), global0[_wgslsmith_index_u32(u_input.a, 7u)], vec3<bool>(global0[_wgslsmith_index_u32(29228u, 7u)], false, global0[_wgslsmith_index_u32(u_input.a, 7u)]), -414f), -681f), Struct_1(u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, true, global0[_wgslsmith_index_u32(41929u, 7u)]), true, vec3<bool>(global0[_wgslsmith_index_u32(88894u, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true), -1803f), _wgslsmith_f_op_f32(1826f - -1976f)).b, false, !vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)] && false), _wgslsmith_f_op_f32(1000f - 455f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1f), -1795f), vec2<f32>(-153f, _wgslsmith_f_op_f32(min(func_1().e, _wgslsmith_f_op_f32(min(2097f, -1000f))))), vec2<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, 45346u), 7u)]))));
    var_0 = func_2(Struct_1(_wgslsmith_div_u32(19349u, u_input.b.x) << (_wgslsmith_div_u32(var_0.a, _wgslsmith_clamp_u32(75114u, 39396u, 0u)) % 32u), func_1().b, false, !var_0.b.yzy, _wgslsmith_f_op_f32(-func_4(var_0.e, Struct_1(var_0.a, vec4<bool>(true, var_0.d.x, var_0.d.x, false), true, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 7u)], false), -1000f), func_4(702f, Struct_1(u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], false, false, false), true, var_0.b.zyz, -1000f), Struct_1(66907u, vec4<bool>(true, true, var_0.b.x, var_0.c), false, var_0.b.yww, var_0.e), -2317f), _wgslsmith_f_op_f32(-var_0.e)).e)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f + func_5(var_0.e, Struct_1(u_input.a, var_0.b, false, var_0.d, 337f), Struct_1(var_0.a, vec4<bool>(var_0.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, true), false, var_0.d, -383f), vec2<f32>(-522f, var_0.e)).e))));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, ~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, u_input.b.x, var_0.a), vec3<u32>(u_input.a, 1u, var_0.a)), max(vec3<u32>(u_input.b.x, 4294967295u, u_input.a), vec3<u32>(u_input.b.x, 1u, 1u))), select(1u, var_0.a, global0[_wgslsmith_index_u32(57182u ^ var_0.a, 7u)]), select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), u_input.b), 0u, !global0[_wgslsmith_index_u32(19100u, 7u)])), ~(~(~vec3<u32>(var_0.a, u_input.b.x, u_input.b.x) >> ((vec3<u32>(0u, 3139u, 29752u) | vec3<u32>(u_input.b.x, 1u, 39363u)) % vec3<u32>(32u)))), u_input.b ^ (u_input.b ^ _wgslsmith_mod_vec2_u32(u_input.b, u_input.b)));
}

