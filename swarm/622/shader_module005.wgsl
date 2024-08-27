struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global1: Struct_1 = Struct_1(-55357i, vec3<bool>(true, false, true), vec2<bool>(false, true), vec3<u32>(23268u, 106923u, 1u), vec4<u32>(1u, 4294967295u, 2927u, 1u));

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-1i, false), Struct_2(22560i, true), Struct_2(-40080i, true), Struct_2(25724i, false), Struct_2(0i, false), Struct_2(28148i, true), Struct_2(-46142i, false), Struct_2(33719i, false), Struct_2(2099i, false), Struct_2(-59181i, false), Struct_2(1i, true), Struct_2(1i, true), Struct_2(1i, true), Struct_2(55992i, false), Struct_2(42420i, true), Struct_2(2147483647i, false), Struct_2(11453i, false), Struct_2(-1i, false), Struct_2(-1i, false), Struct_2(2147483647i, true), Struct_2(19446i, true), Struct_2(0i, false), Struct_2(36854i, false), Struct_2(29832i, false), Struct_2(-41544i, false), Struct_2(-48258i, false));

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    global1 = arg_1;
    let var_0 = Struct_2(~(-2147483647i), !(false & any(vec2<bool>(true, true))));
    var var_1 = !(!(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(25866i, 1i)), min(vec2<i32>(34485i, 2147483647i), vec2<i32>(1i, u_input.b))) >= -firstTrailingBit(var_0.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(866f, 1000f, 993f, 1401f), vec4<f32>(680f, -553f, 830f, -1140f))))))))));
    let var_3 = global1.d.zz;
    return abs(_wgslsmith_clamp_u32(global1.d.x, global1.e.x, 21005u));
}

fn func_2() -> vec4<i32> {
    var var_0 = -127f;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1099f + -967f), _wgslsmith_f_op_f32(1000f + -1176f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-897f)) + _wgslsmith_div_f32(1702f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(975f)) * -939f) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1974f, 225f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 392f, -969f)) - vec3<f32>(1f, _wgslsmith_div_f32(-843f, 271f), _wgslsmith_f_op_f32(max(-898f, -419f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global1.a >> (0u % 32u), u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b))), select(min(vec3<i32>(-45301i, u_input.b, global1.a), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1164i, -2147483647i), vec3<i32>(u_input.b, u_input.b, 2147483647i))), vec3<i32>(1i, global1.a ^ -12971i, -1i), select(vec3<bool>(global1.b.x, global1.c.x, global1.c.x), vec3<bool>(global1.c.x, global1.c.x, false), select(vec3<bool>(true, true, global1.c.x), vec3<bool>(global1.c.x, global1.c.x, false), global1.c.x)))), vec3<bool>(global1.b.x, global1.b.x, !(!(global1.c.x | global1.b.x))), !global1.c, min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.d.x, global1.e.x, 3363u), reverseBits(u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(17567u, 95412u, 0u), global1.e.zxx, vec3<u32>(u_input.a.x, 0u, 77009u))), ~u_input.c.xzz), u_input.c & ~vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 0u), u_input.a.x, func_3(global1.e, Struct_1(u_input.b, global1.b, vec2<bool>(global1.b.x, global1.b.x), vec3<u32>(global1.d.x, global1.e.x, 90926u), vec4<u32>(14921u, global1.d.x, 59735u, global1.e.x))), ~4294967295u));
    var_0 = _wgslsmith_f_op_f32(max(556f, var_1.x));
    return vec4<i32>(firstLeadingBit(~(-1i)), var_2.a, var_2.a, 0i);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    var var_0 = func_2();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2254f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-531f, 729f)), 272f, arg_0.b)));
    global0 = array<vec3<bool>, 7>();
    global2 = array<Struct_2, 26>();
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 26u)];
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1092i, !(!(!vec3<bool>(global1.b.x, true, global1.b.x))), vec2<bool>(~abs(u_input.a.x) >= ~abs(65417u), true), u_input.c.zzy, vec4<u32>(func_1(Struct_2(firstTrailingBit(u_input.b), global1.b.x), _wgslsmith_div_vec4_u32(u_input.c >> (vec4<u32>(u_input.c.x, global1.d.x, global1.d.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.d.x, global1.e.x, 120825u, 4294967295u), global1.e))), select(global1.e.x, 4294967295u, any(global1.b.yy)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global1.d, vec3<u32>(u_input.a.x, 4294967295u, 5621u)), vec3<u32>(0u, u_input.a.x, u_input.c.x)), global1.e.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-224f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1432f, 1028f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1077f, -1425f, var_0.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -310f)))));
    let var_2 = reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(-41524i, -55391i)), ~select(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(15917i, 0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(11424i, u_input.b), vec2<i32>(0i, var_0.a)), select(var_0.c, global1.c, true))));
    let var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_4 = Struct_1(~_wgslsmith_add_i32(var_3.a, firstLeadingBit(var_3.a)), vec3<bool>(true, !(!(!var_3.b)), !(!all(global1.b))), !var_0.c, global1.d, reverseBits(~vec4<u32>(_wgslsmith_mult_u32(29759u, var_0.d.x), ~u_input.c.x, 1u, _wgslsmith_mult_u32(45943u, global1.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1742f, 2434f, select(false, true, var_3.b) | true)), var_1.x), -325f);
}

