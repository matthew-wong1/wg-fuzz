struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-1280f, -550f, 1000f, 208f, -1181f, 998f, -539f, -1000f, 341f, -848f, -453f, -899f, 381f, 687f, 820f, -1445f, 865f, -951f, -541f);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-40221i, 1239f, 14689u, vec3<bool>(true, false, false), vec3<f32>(-618f, -2052f, 901f)), Struct_1(i32(-2147483648), -1217f, 53519u, vec3<bool>(false, true, false), vec3<f32>(-470f, 268f, 880f)), Struct_1(-18119i, -855f, 0u, vec3<bool>(true, false, true), vec3<f32>(127f, -762f, -1153f)), Struct_1(9919i, -802f, 4294967295u, vec3<bool>(true, true, false), vec3<f32>(-825f, -1000f, 870f)), Struct_1(88990i, 1256f, 0u, vec3<bool>(true, false, true), vec3<f32>(-963f, 1318f, 1640f)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_1(2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0, -471f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~u_input.b, 19u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 19u)] + global0[_wgslsmith_index_u32(9432u, 19u)]) * _wgslsmith_f_op_f32(sign(arg_0)))))), (_wgslsmith_dot_vec4_u32(~vec4<u32>(35204u, 60093u, 4294967295u, 69608u), ~vec4<u32>(arg_1, 0u, arg_2.x, u_input.b)) << (_wgslsmith_clamp_u32(abs(u_input.b), 7611u, reverseBits(arg_1)) % 32u)) & 1u, vec3<bool>(true, true, !(_wgslsmith_mod_i32(u_input.c.x, 1i) >= 0i)), vec3<f32>(-205f, _wgslsmith_f_op_f32(f32(-1f) * -1709f), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 19u)]));
    let var_1 = !vec3<bool>(var_0.d.x, var_0.d.x, true);
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    let var_2 = global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(~0u, ~var_0.c, abs(arg_1)), select(~55670u, var_0.c, false))), 5u)];
    return -2147483647i;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = 4294967295u;
    var var_1 = arg_0.d;
    var var_2 = firstTrailingBit(_wgslsmith_mult_i32(46172i ^ u_input.a.x, func_3(_wgslsmith_f_op_f32(-168f + 522f), ~_wgslsmith_mult_u32(arg_0.c, 61538u), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(var_0, 74173u)), vec2<u32>(1u, var_0)))));
    var var_3 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.a.zx) << (~var_0 % 32u), -_wgslsmith_div_i32(-2147483647i, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2186f) + _wgslsmith_f_op_f32(-arg_0.e.x)), ~4294967295u, vec3<bool>(true, all(!arg_0.d.yy), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.e.x, -802f, 319f))), _wgslsmith_f_op_vec3_f32(arg_0.e * vec3<f32>(arg_0.b, arg_0.b, 1159f)))))));
    let var_4 = arg_0;
    return vec2<bool>(false, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * arg_0.b)) < 482f));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.d.x;
    var var_1 = select(vec2<bool>(!(!(-1000f >= arg_0.b)), all(!vec2<bool>(arg_0.d.x, arg_0.d.x))), arg_0.d.zy, func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(52058u, 1u), vec2<u32>(93973u, 1u))), vec2<u32>(arg_0.c, arg_0.c)), 5u)]));
    var_0 = var_1.x;
    let var_2 = u_input.c.zyw;
    global0 = array<f32, 19>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, max(u_input.b | 0u, 1u)), 19u)]));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = firstLeadingBit(u_input.c.yy);
    var var_1 = arg_1.d.zz;
    var_1 = arg_1.d.zz;
    var var_2 = Struct_1(2147483647i, global0[_wgslsmith_index_u32(0u, 19u)], 4294967295u, !arg_1.d, arg_1.e);
    global0 = array<f32, 19>();
    return ~countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(61099u, arg_1.c, arg_2.x), vec3<u32>(arg_1.c, var_2.c, u_input.b)), countOneBits(~u_input.b), 21142u, ~3961u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(27407u, u_input.b, u_input.b, 47589u), firstTrailingBit(vec4<u32>(53806u, u_input.b, u_input.b, u_input.b))), ~abs(u_input.b), 40426u, 4294967295u)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-17391i, global0[_wgslsmith_index_u32(u_input.b, 19u)], 0u, vec3<bool>(false, true, false), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 1048f, 1460f))))), global1[_wgslsmith_index_u32(~(~(~4294967295u)), 5u)], vec2<u32>(30984u, ~_wgslsmith_sub_u32(4294967295u, u_input.b))));
    global0 = array<f32, 19>();
    var var_1 = 4294967295u;
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(36679u), var_0.x), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0.x), ~var_0.wy), _wgslsmith_dot_vec4_u32(select(var_0, var_0, false), _wgslsmith_div_vec4_u32(vec4<u32>(14521u, var_0.x, 1u, 26089u), var_0))), u_input.b);
    var var_2 = Struct_1((i32(-1i) * -2147483647i) ^ _wgslsmith_mod_i32(~(-27125i), u_input.c.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.x, u_input.b ^ ~var_0.x, 17103u), ~select(firstTrailingBit(var_0), vec4<u32>(var_0.x, var_0.x, var_0.x, 23450u), vec4<bool>(true, true, true, true))), 19u)], _wgslsmith_add_u32(1u, u_input.b & abs(~u_input.b)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, true)), true, 493f > global0[_wgslsmith_index_u32(15714u, 19u)])), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 19u)]))) * 1000f), -211f, 2974f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, max(-43406i, var_2.a)), -firstTrailingBit(max(vec2<i32>(-20564i, var_2.a), vec2<i32>(-13634i, -15205i)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-1664f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<f32>(global0[_wgslsmith_index_u32(~19665u, 19u)], var_2.e.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], var_2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.e.yy + vec2<f32>(321f, var_2.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-208f, 1158f) + var_2.e.yz)))))), abs(-2147483647i), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 0u, u_input.b, 19155u)), var_0 >> (vec4<u32>(var_2.c, 6715u, u_input.b, 1u) % vec4<u32>(32u))), _wgslsmith_add_u32(~45696u, _wgslsmith_clamp_u32(var_2.c, 0u, u_input.b)), var_2.c, func_4(_wgslsmith_f_op_f32(-var_2.e.x), Struct_1(var_2.a, global0[_wgslsmith_index_u32(var_2.c, 19u)], u_input.b, var_2.d, var_2.e), select(vec2<u32>(var_2.c, 0u), vec2<u32>(var_0.x, var_2.c), vec2<bool>(var_2.d.x, var_2.d.x))).x), vec4<u32>(1u, var_2.c << (91581u % 32u), ~_wgslsmith_clamp_u32(var_0.x, 4305u, u_input.b), _wgslsmith_clamp_u32(146790u, var_2.c, ~var_0.x)), vec4<u32>(6237u, _wgslsmith_clamp_u32(~1u, 1u << (var_2.c % 32u), reverseBits(3945u)), ~26859u, ~reverseBits(65124u))));
}

