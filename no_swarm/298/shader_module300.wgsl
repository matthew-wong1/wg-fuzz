struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: array<bool, 11> = array<bool, 11>(true, true, true, false, true, false, false, false, true, false, false);

var<private> global2: array<f32, 16>;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, -354f, arg_3), vec3<f32>(arg_2.x, arg_2.x, arg_3)) * vec3<f32>(-833f, -1000f, -1870f)))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-229f, 146f)), global2[_wgslsmith_index_u32(1517u, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) + 617f))))));
    var var_1 = 2147483647i;
    global0 = array<vec3<f32>, 32>();
    let var_2 = select(!select(select(select(vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], false, global1[_wgslsmith_index_u32(89905u, 11u)], false), global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), !vec4<bool>(true, false, arg_1.x, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], true, true, arg_1.x)), select(select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false, true, false)), select(vec4<bool>(arg_1.x, false, true, global1[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global1[_wgslsmith_index_u32(41525u, 11u)], arg_1.x, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true), true), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(28944u, 11u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true, arg_1.x), arg_1.x)), !(!vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], arg_1.x, arg_1.x))), select(!vec4<bool>(!arg_1.x, all(arg_1.yz), true, true), !vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(u_input.c.x, 11u)] && global1[_wgslsmith_index_u32(u_input.c.x, 11u)], !arg_1.x, arg_1.x), vec4<bool>(!all(arg_1.zz), any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(23830u, 11u)], true)), global1[_wgslsmith_index_u32(24610u, 11u)], true)), select(vec4<bool>(!global1[_wgslsmith_index_u32(72165u, 11u)] && arg_1.x, arg_1.x, !(var_0.x > global2[_wgslsmith_index_u32(0u, 16u)]), arg_1.x), select(vec4<bool>(true, u_input.c.x == 7653u, !global1[_wgslsmith_index_u32(4991u, 11u)], true), vec4<bool>(arg_1.x && false, any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], true, global1[_wgslsmith_index_u32(26774u, 11u)])), !arg_1.x, !global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), any(select(arg_1.zy, vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.c.x, 11u)]))), all(vec3<bool>(true, arg_1.x || false, arg_1.x && global1[_wgslsmith_index_u32(u_input.c.x, 11u)]))));
    let var_3 = firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(73185u, u_input.c.x, 5488u, u_input.c.x)), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.c.x, 4916u, 9684u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), var_2.x), ~vec4<u32>(2908u, 56458u, u_input.c.x, u_input.c.x)), vec4<u32>(2985u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), abs(u_input.c.x), 0u << (0u % 32u)))));
    return arg_0.x;
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.c;
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, select(var_0.x, 33831u, global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), 1u), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(71022u, 1u, 4294967295u)))), 5u)];
    let var_2 = vec2<bool>(!(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 11066i, -48788i, 2147483647i), vec4<i32>(31865i, u_input.b, 0i, u_input.b))) >= func_3(vec4<i32>(-7431i, u_input.b, 37967i, u_input.a), vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), global0[_wgslsmith_index_u32(70089u, 32u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(47404u, 16u)]))), true);
    var var_3 = Struct_1(33934u);
    let var_4 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(~95878u, ~21151u, 31914u), _wgslsmith_clamp_vec3_u32(vec3<u32>(40520u, 73493u, var_0.x) >> (vec3<u32>(0u, 0u, var_1.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.c.x, var_1.a, u_input.c.x), abs(vec3<u32>(var_1.a, 4294967295u, var_3.a)))), vec3<u32>(~(~0u), 1u, ~34891u)), u_input.c);
    return Struct_3(vec3<f32>(global2[_wgslsmith_index_u32(reverseBits(~(~25037u)), 16u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-477f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(var_3.a, 16u)], 423f))) * global2[_wgslsmith_index_u32(1u >> (_wgslsmith_add_u32(var_4.x, 1u) % 32u), 16u)])), -vec2<i32>(-u_input.b, 2147483647i), abs(-(countOneBits(vec3<i32>(60094i, -2147483647i, u_input.b)) >> (~u_input.c % vec3<u32>(32u)))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 16u)] * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(32625u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)])))), global3[_wgslsmith_index_u32(1u, 5u)]);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    return func_2().e;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_0.a, 16u)], global2[_wgslsmith_index_u32(arg_0.a, 16u)])), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 557f), vec2<f32>(2155f, global2[_wgslsmith_index_u32(1u, 16u)])), !vec2<bool>(arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(55106u, 16u)] * global2[_wgslsmith_index_u32(arg_0.a, 16u)]), global2[_wgslsmith_index_u32(arg_0.a, 16u)])))));
    var var_2 = arg_0;
    global0 = array<vec3<f32>, 32>();
    let var_3 = u_input.c.xx;
    return arg_0;
}

fn func_1() -> vec4<f32> {
    global0 = array<vec3<f32>, 32>();
    let var_0 = u_input.b;
    let var_1 = func_5(func_4(func_2()), vec4<bool>(global1[_wgslsmith_index_u32(~(~(~0u)), 11u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(6874u, 16u)]), global2[_wgslsmith_index_u32(~u_input.c.x, 16u)]) != _wgslsmith_f_op_f32(floor(-1000f)), (func_2().a.x <= _wgslsmith_f_op_f32(f32(-1f) * -113f)) | (5070u <= reverseBits(u_input.c.x)), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x << (3372u % 32u), 11u)], !global1[_wgslsmith_index_u32(4294967295u, 11u)], true, !global1[_wgslsmith_index_u32(1u, 11u)]))));
    let var_2 = select(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 16u)] >= 439f, false), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global1[_wgslsmith_index_u32(93344u, 11u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.a, 11u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_1.a, 11u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.a, 11u)])), true), false), vec3<bool>(func_2().d != _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), u_input.b < ~1i, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, max(u_input.c.x, var_1.a)), 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true || !global1[_wgslsmith_index_u32(var_1.a, 11u)], false)), vec3<bool>(all(vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true, global1[_wgslsmith_index_u32(4294967295u, 11u)])), all(vec3<bool>(global1[_wgslsmith_index_u32(33506u, 11u)], false, false)), true)), max(u_input.c.x, u_input.c.x) >= ~u_input.c.x, true), vec3<bool>(true, !(_wgslsmith_clamp_u32(var_1.a, u_input.c.x, var_1.a) < _wgslsmith_div_u32(35343u, var_1.a)), any(select(select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a, 11u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(37115u, 11u)]), vec2<bool>(true, false)), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 11u)]), var_1.a >= var_1.a))));
    let var_3 = vec3<bool>(~var_0 != ~7795i, global1[_wgslsmith_index_u32(~(~firstLeadingBit(~64162u)), 11u)], -var_0 >= countOneBits((u_input.a >> (58218u % 32u)) ^ _wgslsmith_div_i32(u_input.b, -47884i)));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, global2[_wgslsmith_index_u32(23740u, 16u)], -418f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 16u)]), global2[_wgslsmith_index_u32(abs(u_input.c.x), 16u)])))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, global2[_wgslsmith_index_u32(var_1.a, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], -895f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1362f, global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(75869u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]) + vec4<f32>(1601f, global2[_wgslsmith_index_u32(var_1.a, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 233f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_1.a, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(var_1.a, 16u)]) + vec4<f32>(global2[_wgslsmith_index_u32(7456u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], -960f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-707f, 600f, global2[_wgslsmith_index_u32(var_1.a, 16u)], 250f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1059f, -512f, global2[_wgslsmith_index_u32(96511u, 16u)], 1000f) + vec4<f32>(1000f, 766f, -481f, -1662f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(77079u, 16u)], -330f, 997f, global2[_wgslsmith_index_u32(var_1.a, 16u)]))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 16>();
    global3 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1332f, global2[_wgslsmith_index_u32(15480u, 16u)], -1799f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 437f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)]) - vec4<f32>(-547f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 954f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(662f, 933f, 851f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], -675f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(func_1())))));
    var var_1 = vec4<bool>(all(!select(!vec2<bool>(true, global1[_wgslsmith_index_u32(4089u, 11u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 11u)]))), global1[_wgslsmith_index_u32(func_4(Struct_3(vec3<f32>(188f, var_0.x, var_0.x), vec2<i32>(u_input.a, 1i) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 23521i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i)), global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 5u)])).a | u_input.c.x, 11u)], false, global1[_wgslsmith_index_u32(u_input.c.x & abs(4294967295u), 11u)]);
    var var_2 = func_2();
    var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_3 = var_1.yw;
    let var_4 = -var_2.b.x;
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-737f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(266f)))))), _wgslsmith_f_op_f32(var_2.a.x - 1000f));
}

