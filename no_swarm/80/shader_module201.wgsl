struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 17> = array<f32, 17>(1141f, 1442f, 516f, 186f, -272f, 518f, 1555f, 120f, 816f, 1061f, -658f, -1005f, -863f, 424f, 581f, -603f, 932f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_1.d, 17u)])) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(719u), 17u)] - 666f)))));
    global0 = !arg_0;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1762f, 303f))) * global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, 1u), 17u)])));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(arg_1.d), 4108u, 4294967295u), arg_1.a), arg_0.zy, 2147483647i, ~abs(~4332u)), arg_1, vec3<u32>(~(~u_input.a.x), reverseBits(~4294967295u) >> ((~0u << (~u_input.a.x % 32u)) % 32u), _wgslsmith_mult_u32(~(~arg_1.a.x), abs(~arg_1.a.x))), vec3<u32>(u_input.a.x << (0u % 32u), max(18157u, arg_1.a.x), _wgslsmith_div_u32(countOneBits(arg_1.a.x), _wgslsmith_sub_u32(arg_1.d, u_input.a.x))) | max(reverseBits(arg_1.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(arg_1.a.x, 80486u, 4294967295u), arg_1.a) ^ ~vec3<u32>(arg_1.a.x, arg_1.d, u_input.a.x)));
    var var_2 = var_1.d.x;
    return _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~var_1.c.x), 0u << (arg_1.d % 32u), ~(~var_1.b.d)), 17u)]));
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f * _wgslsmith_f_op_f32(func_3(!vec4<bool>(global0.x, false, global0.x, arg_0.x), Struct_1(u_input.a.xzw | u_input.a.xxw, select(arg_0.yx, global0.xz, global0.wx), u_input.b.x, u_input.a.x)))) - global1[_wgslsmith_index_u32(u_input.a.x, 17u)]);
    let var_1 = !(!select(!(!vec4<bool>(global0.x, global0.x, false, false)), select(!vec4<bool>(arg_0.x, global0.x, arg_0.x, false), vec4<bool>(false, true, global0.x, true), select(vec4<bool>(false, arg_0.x, global0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x), global0.x)), arg_0.x));
    let var_2 = u_input.a.x;
    global1 = array<f32, 17>();
    var var_3 = ~(u_input.a.yww ^ _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zxw, ~vec3<u32>(var_2, u_input.a.x, 70264u)), _wgslsmith_clamp_vec3_u32(u_input.a.xzy, ~u_input.a.yyw, countOneBits(vec3<u32>(94148u, u_input.a.x, var_2)))));
    return vec4<bool>(all(!(!vec3<bool>(global0.x, global0.x, var_1.x))), -789f >= global1[_wgslsmith_index_u32(countOneBits(firstTrailingBit(firstTrailingBit(4294967295u))), 17u)], false, any(arg_0.zy));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    global0 = select(vec4<bool>(true, true | arg_0.x, any(global0.yzy), !any(func_2(arg_0))), select(vec4<bool>(!(arg_1.b.x && arg_1.b.x), arg_0.x, all(!vec4<bool>(false, true, global0.x, true)), !(arg_1.b.x != true)), func_2(vec3<bool>(!global0.x, arg_0.x, all(vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_0.x)))), !(!(!vec4<bool>(true, arg_0.x, arg_0.x, false)))), vec4<bool>(arg_1.c <= _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.c, u_input.b.x, 26555i, u_input.b.x), vec4<i32>(-1i, u_input.b.x, -1i, 9195i)), arg_1.c != -23988i, true, abs(_wgslsmith_mult_i32(arg_1.c, arg_1.c)) < 1i));
    var var_0 = countOneBits(u_input.b.x) >= ~(arg_1.c & 51438i);
    global0 = select(!select(vec4<bool>(arg_1.c != arg_1.c, false, global0.x, arg_1.c < -12786i), !(!vec4<bool>(false, true, global0.x, false)), !arg_1.b.x), func_2(!global0.zwy), true);
    global0 = !select(select(vec4<bool>(!global0.x, arg_1.c <= 63177i, arg_0.x, false), !func_2(vec3<bool>(arg_1.b.x, global0.x, true)), func_2(arg_0)), select(func_2(vec3<bool>(global0.x, false, false)), !(!vec4<bool>(arg_1.b.x, global0.x, true, true)), vec4<bool>(global0.x, false, !arg_1.b.x, !global0.x)), !(!(!arg_0.x)));
    global1 = array<f32, 17>();
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> f32 {
    global1 = array<f32, 17>();
    global1 = array<f32, 17>();
    let var_0 = arg_1;
    var var_1 = true && all(vec4<bool>(true, true, true, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1115f, -292f, -618f, global1[_wgslsmith_index_u32(arg_1.d, 17u)]) + vec4<f32>(229f, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(var_0.a.x, 17u)], global1[_wgslsmith_index_u32(98699u, 17u)])) * _wgslsmith_div_vec4_f32(vec4<f32>(340f, -1017f, 332f, global1[_wgslsmith_index_u32(0u, 17u)]), vec4<f32>(891f, -1413f, -491f, -1569f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2140f, global1[_wgslsmith_index_u32(var_0.d, 17u)], 457f, global1[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], -1358f, 358f, -291f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2358f, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(var_0.d, 17u)], global1[_wgslsmith_index_u32(43350u, 17u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(1u, 17u)], -522f, -1065f, 1054f), vec4<f32>(1000f, global1[_wgslsmith_index_u32(0u, 17u)], -527f, -104f), vec4<bool>(arg_0.x, true, false, arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 17u)], global1[_wgslsmith_index_u32(arg_1.d, 17u)], 335f, -1349f), vec4<f32>(global1[_wgslsmith_index_u32(var_0.a.x, 17u)], -447f, 338f, global1[_wgslsmith_index_u32(0u, 17u)])))))), vec4<bool>(all(global0.yzx), false, all(select(select(vec4<bool>(false, true, false, arg_1.b.x), vec4<bool>(false, false, var_0.b.x, true), vec4<bool>(true, arg_0.x, global0.x, global0.x)), !vec4<bool>(true, arg_0.x, global0.x, false), !vec4<bool>(false, arg_0.x, false, true))), arg_1.d <= _wgslsmith_clamp_u32(var_0.a.x, abs(93080u), arg_1.d & 56326u))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 17u)], _wgslsmith_f_op_f32(-1656f + global1[_wgslsmith_index_u32(arg_1.d, 17u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~max(1020u, var_0.d), 17u)]), firstLeadingBit(12501u) >= var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 17>();
    var var_0 = Struct_1(u_input.a.wxw, select(global0.yz, select(global0.xx, vec2<bool>(all(vec2<bool>(global0.x, global0.x)), true), true), !global0.x), 19954i, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~abs(u_input.a.x), ~_wgslsmith_sub_u32(19792u, u_input.a.x), u_input.a.x | 0u), ~96442u));
    let var_1 = _wgslsmith_f_op_f32(func_4(!vec2<bool>(!(-1995f > global1[_wgslsmith_index_u32(1u, 17u)]), func_1(vec3<bool>(false, false, false), Struct_1(vec3<u32>(34758u, u_input.a.x, 24529u), vec2<bool>(var_0.b.x, false), u_input.b.x, 26743u))), Struct_1(select(vec3<u32>(17552u, var_0.a.x, 21765u << (0u % 32u)), vec3<u32>(var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, 5879u), 4294967295u), !vec3<bool>(global0.x, var_0.b.x, true)), select(!(!vec2<bool>(false, var_0.b.x)), vec2<bool>(false, global0.x), !global0.x && true), var_0.c | -u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, reverseBits(0u))), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.b));
}

