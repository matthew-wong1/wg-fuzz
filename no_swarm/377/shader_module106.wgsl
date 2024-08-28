struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 187f;

var<private> global2: vec3<f32> = vec3<f32>(209f, 114f, -1290f);

var<private> global3: array<Struct_2, 22>;

var<private> global4: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec4<f32>(1480f, -1646f, 973f, 460f), vec2<i32>(1i, 29703i), i32(-2147483648), false, 52633u), Struct_2(vec4<f32>(-345f, 2096f, 499f, 1273f), vec2<i32>(0i, 0i), 20767i, false, 0u), Struct_2(vec4<f32>(-1678f, -272f, -1695f, 1718f), vec2<i32>(2147483647i, -4204i), -31540i, false, 47016u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> f32 {
    var var_0 = -vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c) >> (global0.d.yz % vec2<u32>(32u)), ~vec2<i32>(55801i, 39370i)), -1i), -u_input.e);
    let var_1 = Struct_1(-977f, vec4<bool>(!global0.b.x, global0.e.x, global0.b.x, false || global0.c), true, max(vec4<u32>(17644u, abs(~global0.d.x), countOneBits(_wgslsmith_clamp_u32(1u, global0.d.x, u_input.a)), global0.d.x), vec4<u32>(global0.d.x, global0.d.x, 100062u, ~0u)), vec2<bool>(global0.b.x || any(!global0.e), any(!vec4<bool>(global0.c, global0.e.x, global0.b.x, false))));
    var var_2 = !vec4<bool>(any(global0.b.yyw), true, true, !global0.e.x);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, -1692f, _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -818f, var_1.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, global2.x, global2.x), vec3<f32>(1276f, global2.x, 189f))))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-176f))))), global0.a, _wgslsmith_f_op_f32(-var_1.a)));
    let var_3 = global3[_wgslsmith_index_u32(~4725u, 22u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) * global2.x), _wgslsmith_f_op_f32(floor(-1425f)))) * _wgslsmith_f_op_f32(1121f * _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1552f, var_1.a)))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.wwy, _wgslsmith_f_op_vec3_f32(round(arg_0.a.yxw))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1056f, 1136f, global2.x) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a, 2206f, global0.a))))), _wgslsmith_f_op_vec3_f32(sign(arg_0.a.xzx)), global0.b.xwy)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_1())))), 910f, _wgslsmith_f_op_f32(-global0.a)));
    global0 = Struct_1(global2.x, vec4<bool>(all(!vec2<bool>(false, global0.e.x)), true, global0.c, true), all(vec3<bool>(arg_0.d, any(vec2<bool>(arg_0.d, false)), (global0.d.x << (1u % 32u)) != _wgslsmith_dot_vec3_u32(global0.d.xyw, global0.d.wxx))), ~vec4<u32>(select(arg_0.e, global0.d.x, global0.e.x & global0.e.x), global0.d.x ^ _wgslsmith_div_u32(arg_0.e, 1u), 0u, global0.d.x), !vec2<bool>(!global0.c & (true & global0.e.x), arg_0.d));
    var var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1165f)), -686f))), !(!select(vec4<bool>(arg_0.d, false, arg_0.d, false), global0.b, global0.b)), true, vec4<u32>(61220u, 0u, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(global0.d.yyw), max(vec3<u32>(arg_0.e, 44798u, 104861u), global0.d.yyz)), ~(~16567u) | _wgslsmith_mod_u32(firstLeadingBit(u_input.d), global0.d.x >> (12278u % 32u))), !global0.e);
    let var_2 = ~var_1.d.xx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-521f)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> Struct_2 {
    global4 = array<Struct_2, 3>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, global0.a, global2.x, 1489f))), -vec2<i32>(u_input.e, 18091i), 17665i, false, ~global0.d.x))), -1092f), select(global0.b, global0.b, !select(select(vec4<bool>(arg_1.x, true, false, false), global0.b, arg_1.x), !global0.b, vec4<bool>(arg_1.x, false, false, true))), true, ~vec4<u32>(global0.d.x, global0.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, global0.d.x, 4294967295u, arg_3), global0.d) | 653u, _wgslsmith_add_u32(abs(global0.d.x), _wgslsmith_mult_u32(arg_3, 7920u))), !global0.e);
    var var_1 = firstLeadingBit(vec3<u32>(51220u, var_0.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(59352u, var_0.d.x), _wgslsmith_sub_vec2_u32(global0.d.zx, vec2<u32>(17844u, 4294967295u))), ~(global0.d.yx ^ vec2<u32>(global0.d.x, arg_3)))));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global2.x)) - _wgslsmith_f_op_f32(-581f + 1460f)), var_0.a), vec4<bool>(true, true, all(!(!vec4<bool>(global0.c, false, false, global0.b.x))), all(var_0.b)), any(!(!(!global0.e))), ~vec4<u32>(arg_3, 4294967295u, firstTrailingBit(1u), 0u), select(arg_1, select(arg_1, global0.b.wz, true), arg_1.x));
    var var_2 = _wgslsmith_sub_u32(abs(35106u), _wgslsmith_mult_u32(~24864u, ~_wgslsmith_dot_vec2_u32(var_1.zz, ~var_1.xx)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 421f, -602f, -1689f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1836f, 1125f, global0.a, global2.x) - vec4<f32>(global2.x, var_0.a, -1931f, -1312f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(395f, 1026f, global2.x, var_0.a))))), vec2<i32>(-u_input.e, reverseBits(_wgslsmith_div_i32(2415i, u_input.e)) | select(firstTrailingBit(u_input.e), 0i, true)), abs(-_wgslsmith_mod_i32(min(u_input.e, u_input.c), ~0i)), var_0.e.x, abs(global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(497f, global0.b, true, global0.d << (reverseBits(global0.d) % vec4<u32>(32u)), global0.e);
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(-global2.x)), 2023f);
    let var_1 = func_2(all(vec3<bool>(global0.b.x, !var_0.b.x, all(!vec4<bool>(false, false, global0.b.x, false)))), global0.b.ww, true, u_input.d);
    let var_2 = var_0.a;
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~func_2(true, select(vec2<bool>(false, var_1.d), global0.e, global0.e), var_0.c, ~u_input.a).b, firstTrailingBit(firstTrailingBit(vec2<i32>(u_input.b, 0i)))), var_1.a.x);
}

