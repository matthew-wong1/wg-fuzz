struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1290f, -1221f);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<vec3<u32>, 3>;

var<private> global3: Struct_1 = Struct_1(1030u, vec4<bool>(true, false, true, false), 0i);

var<private> global4: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(abs(-19674i), ~arg_0.x), ~(-abs(arg_0))), -(max(arg_0, arg_0 ^ vec2<i32>(-21595i, -35727i)) << (arg_3 % vec2<u32>(32u))));
    let var_1 = global0.x;
    var var_2 = vec3<u32>(~_wgslsmith_mult_u32(1u, ~global3.a), arg_3.x, 0u);
    var var_3 = arg_2;
    var var_4 = arg_2;
    return min(~select(arg_2.c, _wgslsmith_mod_i32(arg_2.c, 2147483647i), all(select(vec2<bool>(false, false), var_3.b.yw, vec2<bool>(arg_2.b.x, true)))), ~13946i);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> vec4<bool> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-12008i, _wgslsmith_div_i32(0i, arg_1)), -(~global3.c), _wgslsmith_dot_vec2_i32(vec2<i32>(22147i, global3.c) ^ vec2<i32>(-11764i, 2147483647i), vec2<i32>(arg_1, global3.c)), 39295i & func_3(vec2<i32>(-1i, arg_1), global3.b.x, Struct_1(1u, vec4<bool>(global3.b.x, global4.x, true, global4.x), 0i), u_input.b.yy)), -max(_wgslsmith_add_vec4_i32(vec4<i32>(34291i, 1i, 5116i, 30328i), vec4<i32>(-2147483647i, 0i, arg_1, arg_1)), vec4<i32>(-2147483647i, 16642i, global3.c, 0i))), _wgslsmith_clamp_i32(func_3(countOneBits(select(vec2<i32>(arg_0, global3.c), vec2<i32>(-4817i, -13899i), false)), true | global1.x, Struct_1(~u_input.a.x, select(vec4<bool>(true, true, global1.x, true), global3.b, global3.b), countOneBits(34155i)), ~vec2<u32>(global3.a, 1u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_1), vec2<i32>(-23864i, 34462i)), reverseBits(vec2<i32>(3540i, global3.c))), arg_0), 1i, ~(-firstLeadingBit(arg_1) >> ((4294967295u << (global3.a % 32u)) % 32u)));
    var var_1 = Struct_1(u_input.a.x, select(global3.b, vec4<bool>(true, !global4.x, all(global3.b.wz), all(!global3.b)), !any(select(vec4<bool>(true, false, true, false), global3.b, global3.b))), var_0.x);
    let var_2 = select(var_1.b.xzz, global4.xyz, true & global3.b.x);
    let var_3 = Struct_1(~23625u, !vec4<bool>(true, true, var_1.b.x, global3.b.x), _wgslsmith_dot_vec2_i32(abs(var_0.wy | vec2<i32>(-1i, var_1.c)), var_0.ww) | ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-51452i, var_0.x), _wgslsmith_clamp_vec2_i32(var_0.zz, var_0.ww, var_0.xw)));
    let var_4 = arg_1;
    return !(!(!global3.b));
}

fn func_1(arg_0: u32) -> Struct_1 {
    return Struct_1(min(_wgslsmith_mod_u32(36332u, ~(arg_0 & u_input.b.x)), ~112241u), !select(global3.b, func_2(global3.c, reverseBits(29723i), reverseBits(0u)), 1u == arg_0), -12865i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global3 = func_1(abs(~30021u));
    global4 = !arg_1.b;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, global0.x, -543f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, -2913f), vec3<f32>(-1509f, global0.x, global0.x))))))));
    var var_1 = arg_0.b.x;
    var var_2 = 2147483647i;
    return _wgslsmith_sub_u32(abs(0u), _wgslsmith_add_u32(u_input.b.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x - 904f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-526f, 1232f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1473f, global0.x))))))));
    var var_1 = true;
    let var_2 = 1i;
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(668f, -1582f), vec2<f32>(211f, 1100f)), vec2<f32>(1790f, var_0.x), global3.b.xx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 1276f), vec2<f32>(global0.x, -117f), global4.yx)))))));
    var var_3 = Struct_1(max(4294967295u, min(~select(6493u, 32899u, false), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 37719u, 58476u), vec4<u32>(0u, u_input.a.x, global3.a, 1u)), 0u))), select(select(!vec4<bool>(false, true, global4.x, true), !select(global3.b, global3.b, true), true), !(!(!vec4<bool>(false, global4.x, global4.x, global4.x))), global3.b), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-456f, -272f, 207f, global0.x), vec4<f32>(-311f, -2409f, var_0.x, 914f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-649f, -1816f, global0.x, 1510f) + vec4<f32>(1f, 1f, 1f, 1f))))), ~vec3<u32>(1u, _wgslsmith_clamp_u32(0u, var_3.a, ~var_3.a), func_4(Struct_1(global3.a, global3.b, var_2), func_1(global3.a))));
}

