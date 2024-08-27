struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<i32, 14>;

var<private> global1: f32;

var<private> global2: array<u32, 30>;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<u32>(69512u, 21647u, 1u, 786u)), Struct_2(vec4<u32>(4294967295u, 0u, 825u, 87517u)), Struct_2(vec4<u32>(25643u, 0u, 1u, 5172u)), Struct_2(vec4<u32>(4294967295u, 1u, 6508u, 4294967295u)), Struct_2(vec4<u32>(0u, 1u, 0u, 66364u)), Struct_2(vec4<u32>(1u, 54413u, 0u, 2311u)), Struct_2(vec4<u32>(1u, 57032u, 49452u, 0u)), Struct_2(vec4<u32>(42701u, 1u, 4294967295u, 1u)), Struct_2(vec4<u32>(0u, 31675u, 1u, 7386u)), Struct_2(vec4<u32>(39123u, 0u, 10413u, 2366u)), Struct_2(vec4<u32>(83637u, 39695u, 28321u, 0u)), Struct_2(vec4<u32>(1u, 46938u, 61422u, 1u)), Struct_2(vec4<u32>(1u, 74264u, 25588u, 4294967295u)), Struct_2(vec4<u32>(10139u, 1u, 1u, 54657u)), Struct_2(vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), Struct_2(vec4<u32>(48161u, 33528u, 4294967295u, 1u)));

var<private> global4: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<i32> {
    var var_0 = max(~(~(~firstLeadingBit(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)])))), vec2<u32>(~global2[_wgslsmith_index_u32(~reverseBits(1861u), 30u)], global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 30u)] % 32u), global2[_wgslsmith_index_u32(~92950u, 30u)]), 30u)]));
    global4 = Struct_4(vec3<bool>(!any(global4.a), !select(false, true, any(vec3<bool>(global4.a.x, global4.a.x, false))), global4.a.x));
    let var_1 = global3[_wgslsmith_index_u32(var_0.x, 16u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(208f)), 1f, -1000f, _wgslsmith_f_op_f32(sign(-908f))));
    var var_3 = 1230f;
    return u_input.a.yx;
}

fn func_2(arg_0: f32) -> f32 {
    global4 = Struct_4(global4.a);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -212f) + _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - arg_0)))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(25311u, 30u)], countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 30u)])), 14u)] & ~_wgslsmith_add_i32(-2147483647i, -global0[_wgslsmith_index_u32(38839u, 14u)]), 42988u);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(func_3(), _wgslsmith_sub_vec2_i32(u_input.a.xx, ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.ww))), u_input.a.x, _wgslsmith_mod_i32(min(16418i, -2147483647i), 1i));
    let var_2 = Struct_4(vec3<bool>(global4.a.x, !(global0[_wgslsmith_index_u32(var_0.c, 14u)] >= 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + arg_0), _wgslsmith_f_op_f32(566f + 818f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, 986f)) * _wgslsmith_f_op_f32(exp2(arg_0)))));
    global1 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -1004f);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(991f, 295f)), -841f) + -867f) + _wgslsmith_f_op_f32(floor(216f)))));
    let var_1 = u_input.a.x;
    global3 = array<Struct_2, 16>();
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * var_0), -741f)))), -103f), _wgslsmith_f_op_f32(min(1721f, 878f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, var_0, 170f, -570f) + vec4<f32>(915f, -1276f, 543f, var_0)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, _wgslsmith_f_op_f32(f32(-1f) * -1219f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(var_0))))));
    return -abs(_wgslsmith_clamp_vec4_i32(u_input.a ^ abs(u_input.a), u_input.a, ~u_input.a));
}

fn func_4(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32987u >> (min(0u, 1u) % 32u), 30u)], 30u)], ~global2[_wgslsmith_index_u32(~90280u, 30u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(3073u, 30u)], 30u)] | ~6020u), ~vec3<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24038u, 30u)], 30u)], 30u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], 50481u), vec2<u32>(global2[_wgslsmith_index_u32(35703u, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)])), 30u)], _wgslsmith_mult_u32(77544u, 1u))), 4294967295u), 16u)];
    global0 = array<i32, 14>();
    let var_1 = var_0.a.ywy;
    var var_2 = global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 30u)], 30u)], 16u)];
    var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, var_0.a.x)), ~vec2<u32>(0u, global2[_wgslsmith_index_u32(var_1.x, 30u)]), true), vec2<u32>(~10198u, ~13490u)), ~(~var_2.a.x)), ~56132u), 16u)];
    return Struct_4(global4.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 16>();
    let var_0 = func_4((func_1(select(vec2<bool>(global4.a.x, false), vec2<bool>(global4.a.x, true), vec2<bool>(true, true)), global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 1u, global4.a.x), 30u)]) | select(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-1i, 67230i, 0i, u_input.a.x)), vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10658u, 30u)], 14u)], -26064i, 2147483647i, u_input.a.x) >> (vec4<u32>(1u, 28981u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], 2788u) % vec4<u32>(32u)), !global4.a.x)) ^ _wgslsmith_add_vec4_i32(u_input.a, u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(806f)), -309f, _wgslsmith_f_op_f32(f32(-1f) * -1295f))));
    let var_2 = -2147483647i;
    let var_3 = func_1(vec2<bool>(global4.a.x, _wgslsmith_add_i32(u_input.a.x, func_3().x) > var_2), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(62614u, 30u)], ~1u, 1u), 34457u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(78813u, 30u)]), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22760u, 30u)], 30u)], 30u)], 30u)], 30u)], global2[_wgslsmith_index_u32(0u, 30u)]))), ~(~(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8588u, 30u)], 30u)], 30u)], 30u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64798u, 30u)], 30u)], 30u)])))), 30u)]);
    let var_4 = -var_3.zx;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 184f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_1.x, var_1.x))) * vec3<f32>(var_1.x, var_1.x, var_1.x)))) - vec3<f32>(-520f, _wgslsmith_f_op_f32(-2343f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) * _wgslsmith_f_op_f32(floor(607f)))), 246f));
    global3 = array<Struct_2, 16>();
    global3 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2, _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, 95301i))), var_3.x));
}

