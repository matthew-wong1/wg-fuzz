struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false));

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    global1 = array<vec3<bool>, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global2.b)), arg_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-667f, arg_2.b) * vec2<f32>(arg_2.b, arg_1.b)))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(560f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, global2.b))), _wgslsmith_f_op_f32(max(512f, _wgslsmith_f_op_f32(f32(-1f) * -567f))))));
    let var_1 = select(-49226i, arg_0.x, 11494u >= min(u_input.a, 4294967295u));
    global1 = array<vec3<bool>, 28>();
    global2 = arg_2;
    return _wgslsmith_dot_vec2_i32(abs(~arg_0), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_1, 24349i), arg_0 >> (vec2<u32>(arg_3.x, 31773u) % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = max(-(vec4<i32>(~73790i, firstTrailingBit(2147483647i), ~(-1i), 1i) ^ (abs(vec4<i32>(39703i, 72484i, -20236i, 0i)) << (vec4<u32>(4294967295u, arg_0.d, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), ~vec4<i32>(338i, -70759i, _wgslsmith_sub_i32(func_3(vec2<i32>(1i, -1i), Struct_1(arg_0.a, arg_0.b, global2.c, 11334u), Struct_1(global1[_wgslsmith_index_u32(36409u, 28u)], arg_0.b, global2.d, 0u), u_input.b.xx), 75811i), _wgslsmith_add_i32(_wgslsmith_div_i32(16759i, 2147483647i), i32(-1i) * -3954i)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f - _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(f32(-1f) * -699f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-192f, -1273f, 953f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, -614f, global2.b), vec3<f32>(global2.b, -2294f, arg_0.b))), !select(vec3<bool>(global2.a.x, true, global2.a.x), vec3<bool>(arg_0.a.x, true, true), global2.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.b), -539f, -1000f))));
    let var_2 = ~reverseBits(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(43779u, global2.c, 0u), u_input.b.wxz)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, global2.b, -516f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-679f, arg_0.b, 1342f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2255f, var_3.x, var_1.x)) - var_3) - vec3<f32>(_wgslsmith_f_op_f32(round(-1283f)), _wgslsmith_f_op_f32(ceil(-412f)), _wgslsmith_f_op_f32(arg_0.b * var_3.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 - var_3), var_3) * vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.b)), 332f, -894f))), !arg_0.a));
    return arg_0;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = func_2(Struct_1(!vec3<bool>(false, true, global2.a.x), global2.b, ~(~firstLeadingBit(u_input.a)), 4294967295u));
    global1 = array<vec3<bool>, 28>();
    var var_1 = vec2<i32>(select(-abs(-8676i), 1i, any(var_0.a) || !(u_input.b.x >= 4294967295u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1890i, -37785i), vec2<i32>(-94042i, 1i)) << (var_0.d % 32u), 1i));
    var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, -2730i), vec2<i32>(var_1.x, var_1.x)), vec2<i32>(var_1.x, -14095i) >> (vec2<u32>(var_0.d, u_input.b.x) % vec2<u32>(32u)))), vec2<i32>(-(-2147483647i << (u_input.a % 32u)), -_wgslsmith_mult_i32(var_1.x, var_1.x))), -_wgslsmith_mod_vec2_i32(select(abs(vec2<i32>(-24626i, var_1.x)), -vec2<i32>(-2147483647i, var_1.x), vec2<bool>(global2.a.x, false)), vec2<i32>(-1i, abs(-2147483647i))));
    global0 = !global2.a.x;
    return ~(~abs(~(~var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~abs(~vec3<i32>(1i, -30019i, -21444i)));
    global2 = Struct_1(!global1[_wgslsmith_index_u32(~u_input.b.x, 28u)], _wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b * 1000f)))))), 1u, func_1(!vec4<bool>(true, global2.a.x, global2.a.x, select(global2.a.x, false, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -532f, -1735f, -338f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(544f, -2035f, 375f, -109f) + vec4<f32>(375f, global2.b, global2.b, global2.b))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(456f, global2.b, global2.a.x)), -637f, -491f, _wgslsmith_f_op_f32(-global2.b))))));
    global1 = array<vec3<bool>, 28>();
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_mod_vec2_i32(var_0.xy >> (vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(global2.c, _wgslsmith_clamp_u32(global2.d, 54983u, u_input.b.x), _wgslsmith_add_u32(u_input.a, 4294967295u))) % vec2<u32>(32u)), select(var_0.zx, vec2<i32>(var_0.x, var_0.x), vec2<bool>(false, any(select(vec3<bool>(true, false, false), global2.a, global2.a.x)))));
    var_1 = vec4<f32>(3015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1341f))) - var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2024f), global2.b, var_1.x == -317f))), 297f)), _wgslsmith_f_op_f32(1572f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b))) * global2.b)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, global2.c, ~countOneBits(u_input.b.zw));
}

