struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: vec2<i32>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 25>;

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global0 = array<vec4<bool>, 30>();
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.x, global4.x, -1000f, global4.x), vec4<f32>(866f, -985f, -580f, global4.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, global4.x, global4.x, 538f))), vec4<f32>(global4.x, _wgslsmith_div_f32(global4.x, global4.x), _wgslsmith_f_op_f32(global4.x * -726f), _wgslsmith_f_op_f32(-1158f * 1242f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, global4.x, 625f, global4.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-971f, -1000f, global4.x, global4.x))), global4.x >= global4.x)));
    let var_0 = !(!all(global0[_wgslsmith_index_u32(u_input.a, 30u)]));
    let var_1 = Struct_3(arg_0.x, global3[_wgslsmith_index_u32(~u_input.a, 25u)], global4.x);
    var var_2 = all(vec4<bool>(u_input.a >= ~0u, var_1.b.b, false, !var_1.b.b));
    return var_1.b.c.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(-1274f);
    let var_1 = _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, 1i), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(global1.x, 0i))), global1.x) <= global1.x;
    return _wgslsmith_f_op_f32(-global4.x);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = vec4<u32>(37300u, ~firstLeadingBit(firstLeadingBit(u_input.a) >> (~4294967295u % 32u)), ~u_input.a & u_input.a, u_input.a);
    global4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(-2147483647i, global1.x, -2147483647i, 11660i) & vec4<i32>(2147483647i, 1i, -24922i, global1.x))), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false), 4294967295u, _wgslsmith_f_op_vec2_f32(global4.xx * global4.zx), Struct_1(global4.x, false, global4.wx, global4.xw, arg_1)))), global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f + _wgslsmith_f_op_f32(-2631f - 1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global4.x))))), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1234f, arg_1, 2380f, arg_1))))))));
    let var_1 = Struct_3(~2920i, Struct_1(arg_1, true, vec2<f32>(arg_1, _wgslsmith_f_op_f32(select(338f, -105f, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.x, global4.x), global4.wz))), global4.yz), -215f), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2404f + _wgslsmith_f_op_f32(-global4.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.x - global4.x))))));
    global1 = -_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(global1.x, var_1.a), vec2<i32>(global1.x, global1.x), var_1.b.b), vec2<i32>(var_1.a, -1i)), abs(~vec2<i32>(var_1.a, var_1.a))), _wgslsmith_div_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -8080i), vec2<i32>(var_1.a, -1i)), ~vec2<i32>(global1.x, global1.x)));
    global0 = array<vec4<bool>, 30>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(abs(~u_input.a), 25u)];
    let var_1 = ~_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(~u_input.a, u_input.a));
    var var_2 = func_1(var_0.b, -1151f);
    var var_3 = false;
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), var_0.d.x), global4.x), false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1910f, var_2.c), global4.xx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global4.xx, vec2<f32>(-1302f, var_0.c.x)))), !select(func_1(false, var_2.b.a).b.b, any(vec2<bool>(false, true)), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.c) + vec2<f32>(var_2.b.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_2.b.d.x, 487f)), _wgslsmith_f_op_f32(max(914f, var_0.a)), !var_2.b.b)))), var_2.b.c.x);
    var var_4 = !vec3<bool>(true, false, var_2.b.b);
    var var_5 = true;
    let var_6 = Struct_1(var_2.c, true, _wgslsmith_f_op_vec2_f32(-func_1(var_2.b.b, var_0.e).b.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + 1664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1206f, 1523f))) + _wgslsmith_f_op_f32(-func_1(var_2.b.b, -1460f).b.a))), func_1(true, var_2.c).b.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, ~0u, ~var_1 | ~var_1) ^ select(abs(countOneBits(vec3<u32>(var_1, 1u, 0u))), vec3<u32>(u_input.a, 4294967295u, 0u) & _wgslsmith_mult_vec3_u32(vec3<u32>(21837u, var_1, var_1), vec3<u32>(u_input.a, 4192u, u_input.a)), all(select(vec2<bool>(var_4.x, var_2.b.b), var_4.yz, var_4.zz))));
}

