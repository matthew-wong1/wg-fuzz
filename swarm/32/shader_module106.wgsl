struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<u32>(50082u, 4294967295u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 23818u)), Struct_1(vec3<u32>(1u, 64991u, 4294967295u)));

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_1, 3>;

var<private> global3: array<i32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = 697f;
    var var_1 = global0[_wgslsmith_index_u32(arg_0, 3u)];
    let var_2 = !(!vec4<bool>(~4294967295u < arg_0, _wgslsmith_f_op_f32(select(arg_3.x, 405f, false)) >= arg_3.x, any(select(vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(true, arg_2, false, false), arg_2)), true));
    var_1 = Struct_1(~(_wgslsmith_div_vec3_u32(var_1.a, vec3<u32>(4294967295u, 97813u, arg_0)) & select(u_input.e.wxx, vec3<u32>(var_1.a.x, u_input.c, arg_1.x) ^ vec3<u32>(4294967295u, 31268u, 4294967295u), select(vec3<bool>(arg_2, false, true), var_2.yww, true))));
    let var_3 = -7602i;
    return vec3<bool>(_wgslsmith_mod_u32(u_input.b << (u_input.c % 32u), ~0u) > ~0u, false, false);
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = select(vec4<bool>(true && any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true, any(vec4<bool>(arg_0.x, arg_0.x, false, false)) != arg_0.x, true), !vec4<bool>(func_2(firstLeadingBit(u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 59647u, u_input.c), vec3<u32>(u_input.e.x, 0u, 1u)), arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1004f, -1000f, 680f))).x, !(!arg_0.x), select(arg_0.x, !arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, true))), true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a >> (u_input.b % 32u), 18u)];
    var_0 = !(!vec4<bool>(var_0.x, any(!vec4<bool>(true, false, true, arg_0.x)), any(var_0.yz), any(select(var_0.zx, vec2<bool>(true, var_0.x), arg_0))));
    var var_2 = vec3<u32>(u_input.e.x << (4388u % 32u), var_1.a.x, max(~u_input.b, ~u_input.d));
    var var_3 = Struct_1(var_1.a);
    return ~(~reverseBits(var_1.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    let var_0 = -1000f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, var_0, 523f, var_0)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-944f, -538f, var_0, var_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, 2505f, var_0, var_0))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(step(var_1.x, var_1.x))), _wgslsmith_f_op_f32(sign(-757f))))));
    var var_3 = arg_0;
    global1 = array<Struct_1, 18>();
    return select(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false))), func_2(arg_1.a.x, arg_1.a, 4294967295u >= arg_0.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, 1616f, var_0)))), func_2(_wgslsmith_dot_vec3_u32(var_3.a & vec3<u32>(arg_1.a.x, 4827u, var_3.a.x), countOneBits(arg_1.a)), reverseBits(firstLeadingBit(u_input.e.yzy)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 285f, var_1.x), var_1.zwy, true)))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), any(vec2<bool>(false, true))), true)), select(select(func_2(firstTrailingBit(u_input.b), ~var_3.a, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, var_0, var_1.x))), vec3<bool>(502f > var_0, false, var_1.x != -359f), true), vec3<bool>(select(all(vec2<bool>(false, true)), 50239u <= arg_0.a.x, all(vec2<bool>(false, false))), true, true), _wgslsmith_f_op_f32(ceil(977f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(419f)) + -161f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = 36582i;
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_1.a.x, 1u, arg_1.a.x), ~_wgslsmith_mod_vec3_u32(arg_1.a << (vec3<u32>(15875u, u_input.b, arg_1.a.x) % vec3<u32>(32u)), vec3<u32>(u_input.d, 48919u, arg_1.a.x)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 0u), vec2<u32>(u_input.d, 4441u)), u_input.d & u_input.e.x), 1u, _wgslsmith_div_u32(select(u_input.b, 1u, true), u_input.e.x))) >> ((vec3<u32>(~27997u, abs(max(arg_1.a.x, u_input.b)), _wgslsmith_mult_u32(u_input.c, u_input.c)) << (abs(_wgslsmith_add_vec3_u32(~arg_1.a, countOneBits(arg_1.a))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global1 = array<Struct_1, 18>();
    var var_2 = func_2(4294967295u, _wgslsmith_mod_vec3_u32(vec3<u32>(~3339u & abs(var_1.x), 32964u, ~(46544u >> (u_input.b % 32u))), vec3<u32>(~_wgslsmith_mult_u32(u_input.d, arg_1.a.x), ~var_1.x, ~0u)), true, vec3<f32>(1877f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) * -542f), arg_2), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-832f - arg_2))), _wgslsmith_f_op_f32(sign(arg_2)), false))));
    var var_3 = Struct_1(~u_input.e.yzz);
    return !(!func_4(Struct_1(func_3(vec2<bool>(var_2.x, true))), Struct_1(var_3.a), reverseBits(12249u << (arg_1.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(global3[_wgslsmith_index_u32(78071u, 31u)], global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(25777u, 31u)], 12268i))), ~(-vec4<i32>(global3[_wgslsmith_index_u32(0u, 31u)], 2147483647i, global3[_wgslsmith_index_u32(u_input.e.x, 31u)], global3[_wgslsmith_index_u32(u_input.a, 31u)]))), vec4<i32>(~global3[_wgslsmith_index_u32(~3587u, 31u)], _wgslsmith_sub_i32(5888i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.e.x, 31u)], global3[_wgslsmith_index_u32(u_input.c, 31u)])), global3[_wgslsmith_index_u32(select(17490u, 81598u, false), 31u)] << (35714u % 32u), countOneBits(global3[_wgslsmith_index_u32(4294967295u, 31u)] << (0u % 32u)))), global0[_wgslsmith_index_u32(~u_input.a, 3u)], -1000f);
    let var_1 = 1u < max(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 4294967295u), u_input.e.yz), min(min(vec2<u32>(u_input.b, u_input.a), u_input.e.zw), _wgslsmith_add_vec2_u32(u_input.e.xw, vec2<u32>(u_input.a, 10435u)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.e.xw, u_input.e.xy ^ vec2<u32>(11228u, u_input.b)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(24602u, 79417u), u_input.e.wz), firstLeadingBit(vec2<u32>(17355u, u_input.e.x)))));
    let var_2 = min(-64810i, firstTrailingBit(-(global3[_wgslsmith_index_u32(u_input.b, 31u)] << (68832u % 32u))) << (_wgslsmith_mult_u32(~u_input.c, 35253u) % 32u));
    let var_3 = Struct_1(abs(u_input.e.ywy));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(-491f - -277f)))));
    global1 = array<Struct_1, 18>();
    let var_5 = func_4(global2[_wgslsmith_index_u32(~(_wgslsmith_div_u32(~u_input.a, var_3.a.x << (var_3.a.x % 32u)) & firstTrailingBit(var_3.a.x)), 3u)], var_3, 17121u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a << (vec3<u32>(~_wgslsmith_mod_u32(u_input.c, 11721u), u_input.e.x, var_3.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1476f - -193f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(439f, var_4)))) + 536f), ~52722u);
}

