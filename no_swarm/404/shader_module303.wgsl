struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 18139i, -13519i);

var<private> global2: vec4<bool>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: u32 = 13301u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(~countOneBits(select(35327u, u_input.c.x, global3.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 1u), _wgslsmith_mod_u32(1u, 1u))), u_input.c.x);
    let var_1 = !select(select(select(!vec4<bool>(arg_0, false, true, global3.x), vec4<bool>(false, true, true, arg_0), any(vec3<bool>(arg_0, arg_0, false))), vec4<bool>(false, arg_0, true, arg_0 | global2.x), 53811i > firstLeadingBit(global1.x)), select(vec4<bool>(!global3.x, select(global3.x, arg_0, global2.x), true, global2.x), vec4<bool>(true, false, true, global2.x), select(select(vec4<bool>(true, global3.x, arg_0, global3.x), vec4<bool>(false, true, global3.x, global2.x), vec4<bool>(true, global2.x, true, global3.x)), select(vec4<bool>(false, global3.x, arg_0, arg_0), vec4<bool>(false, true, global2.x, true), vec4<bool>(global3.x, arg_0, arg_0, false)), true)), any(!vec4<bool>(global2.x, true, true, global3.x)));
    global2 = vec4<bool>(var_1.x, any(var_1), all(!vec3<bool>(global2.x, global1.x < u_input.b.x, var_1.x)), 17588u <= ~u_input.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(492f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(980f + -814f), -1381f)), _wgslsmith_f_op_f32(f32(-1f) * -1073f), false)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(-1233f * -1981f)))));
    return vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x), vec3<u32>(67626u, u_input.c.x, 4294967295u)), ~u_input.a.x & 14944u) << (~13893u % 32u), _wgslsmith_add_u32(reverseBits(_wgslsmith_div_u32(42566u, ~48220u)), countOneBits(1u)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool) -> vec3<i32> {
    var var_0 = reverseBits(vec4<u32>(~(59093u << (u_input.c.x % 32u)), ~u_input.a.x & ~10975u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 29509u), vec4<u32>(12186u, 0u, u_input.c.x, 22067u))), u_input.a.x)) | max(vec4<u32>(u_input.c.x, ~(~82120u), 1u, 1873u << (~u_input.a.x % 32u)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(22727u, u_input.c.x), 1u), ~4294967295u, ~(~u_input.c.x), 0u));
    let var_1 = func_3(true);
    global1 = vec3<i32>(~1i, abs(u_input.b.x), 31959i << (var_0.x % 32u));
    let var_2 = any(!global3.xyy);
    let var_3 = -1000f;
    return u_input.b.xyz;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec2<f32> {
    global1 = func_2(arg_0.x, 481f, global2.x);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1097f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.x)))))), true);
    return arg_0.yz;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(arg_1.x, arg_1.x, arg_0.x))), ~vec3<u32>(countOneBits(4294967295u) >> (~arg_1.x % 32u), 45799u, arg_1.x));
    global0 = array<Struct_1, 24>();
    let var_1 = false;
    global0 = array<Struct_1, 24>();
    global4 = abs(~1u);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, -244f, arg_2.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(559f, arg_2.x, 1971f, arg_2.x), arg_0.x)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) + arg_2.x), _wgslsmith_f_op_f32(-531f * _wgslsmith_f_op_f32(f32(-1f) * -1201f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), 801f, _wgslsmith_f_op_f32(arg_2.x * -735f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-396f, _wgslsmith_f_op_f32(ceil(arg_2.x)), arg_2.x))), select(global3.yyz, global2.wzy, false))), select(_wgslsmith_dot_vec4_i32(u_input.b, min(u_input.b, -u_input.b)), -_wgslsmith_add_i32(abs(global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.x, u_input.b.x), u_input.b.zyy)), select(global3.x, all(vec3<bool>(var_1, false, false)), any(!vec2<bool>(global2.x, global2.x)))), -vec4<i32>(u_input.b.x, 4718i, _wgslsmith_add_i32(i32(-1i) * -105251i, abs(1i)), 16805i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
    let var_1 = abs(u_input.b.x);
    global3 = vec4<bool>(false, global2.x, -_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(2147483647i, var_1)) > 1i, !(_wgslsmith_mod_i32(global1.x, 10890i) < -1i));
    let var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = func_4(~vec2<u32>(firstLeadingBit(u_input.c.x), u_input.a.x) | (u_input.a & u_input.c), reverseBits(u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -830f), vec2<f32>(-213f, var_0.a))) + _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, 1748f, var_0.a), vec4<f32>(var_0.a, -1199f, -187f, -766f), global3.x)), ~80164u))) - vec2<f32>(var_0.a, -2197f)));
}

