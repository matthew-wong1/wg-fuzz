struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
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

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, i32(-2147483648), 2147483647i, 4947i), vec4<i32>(i32(-2147483648), 11053i, -4642i, 1i), vec4<i32>(-1i, 1i, -1i, -1i), vec4<i32>(-8165i, i32(-2147483648), i32(-2147483648), 20980i), vec4<i32>(i32(-2147483648), 0i, 59627i, i32(-2147483648)), vec4<i32>(32903i, i32(-2147483648), -22075i, -12777i), vec4<i32>(0i, -30855i, 0i, 48105i), vec4<i32>(-1i, 2147483647i, 4972i, -28248i), vec4<i32>(1i, 2243i, 0i, i32(-2147483648)), vec4<i32>(1i, -1i, -985i, 1i), vec4<i32>(2147483647i, -7048i, 2147483647i, 0i), vec4<i32>(2147483647i, -8208i, -15780i, 0i), vec4<i32>(28173i, -1i, 1i, 9205i), vec4<i32>(1i, 0i, 4535i, -4863i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 22729i, -678i, -41173i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -16651i), vec4<i32>(1i, 2147483647i, -20079i, 20383i), vec4<i32>(1i, 2147483647i, 2147483647i, 1i), vec4<i32>(0i, 0i, -1i, -699i), vec4<i32>(-1i, -45528i, 2147483647i, 2147483647i), vec4<i32>(-73608i, 1i, -1i, -78598i), vec4<i32>(-21794i, 2147483647i, 1i, 0i), vec4<i32>(23579i, -489i, 49165i, -1i), vec4<i32>(-8309i, 0i, 1i, 2147483647i), vec4<i32>(1i, -9737i, -11370i, -67490i));

var<private> global1: vec2<i32> = vec2<i32>(-1i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> i32 {
    global0 = array<vec4<i32>, 26>();
    let var_0 = Struct_2(Struct_1(1u));
    var var_1 = u_input.d & _wgslsmith_mod_i32(_wgslsmith_sub_i32(min(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1792u, 26u)], vec4<i32>(48407i, u_input.e, 49383i, global1.x))), ~1i), global1.x);
    global1 = ~u_input.c.zy;
    var var_2 = 311f;
    return min(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(19062u, 74738u), firstLeadingBit(131071u)), 26u)], firstLeadingBit(reverseBits(vec4<i32>(0i, 25432i, -3553i, -43917i)))), -14997i), global1.x);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1474f);
    global1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(-1i, u_input.b)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, 449f, var_0, var_0)), ~vec4<u32>(32992u, 20674u, 45710u, 1u), select(vec2<u32>(106909u, 4294967295u), vec2<u32>(38356u, 1u), false))), select(u_input.c.xz, u_input.c.xx, true)) | _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global1.x, global1.x), -func_2(vec4<f32>(var_0, -681f, var_0, var_0), vec4<u32>(0u, 0u, 4569u, 16983u), vec2<u32>(4294967295u, 132481u))), min(-firstLeadingBit(vec2<i32>(0i, global1.x)), vec2<i32>(max(-10608i, 0i), 912i)));
    let var_1 = -_wgslsmith_sub_i32(45214i, -(global1.x & -48696i));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(var_0)))))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 * var_0)));
    let var_3 = Struct_1(~33752u);
    return _wgslsmith_sub_u32(var_3.a, var_3.a);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(~24173u));
    global0 = array<vec4<i32>, 26>();
    let var_1 = Struct_2(var_0.a);
    var var_2 = !vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f * arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -1086f)) > _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(min(-405f, arg_0))), true);
    return ~(~(min(88335u, ~var_1.a.a) | var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~41076u, ~4294967295u, 1u >> (0u % 32u)), ~_wgslsmith_mult_u32(1u, 0u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1424f, -1361f, -1140f))))));
    global1 = vec2<i32>((reverseBits(global1.x) & abs(45990i)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, 4294967295u), vec3<u32>(var_0.a, var_0.a, var_0.a)) | ~var_0.a) % 32u), global1.x) & u_input.c.xy;
    var_0 = Struct_1(_wgslsmith_div_u32(~(var_0.a >> (4294967295u % 32u)), 4294967295u) << (max(func_1(), countOneBits(1u)) % 32u));
    var var_2 = Struct_1(4294967295u);
    global0 = array<vec4<i32>, 26>();
    var_2 = Struct_1(~func_3(-1398f));
    var var_3 = vec2<u32>(~select(~var_2.a, var_2.a, any(vec4<bool>(false, false, false, false)) | true), ~(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-55177i);
}

