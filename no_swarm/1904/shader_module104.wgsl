struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-916f, 844f, -298f), vec3<f32>(1050f, -1378f, 1000f), vec3<f32>(-784f, -402f, 1300f), vec3<f32>(-1591f, -253f, 1186f), vec3<f32>(-861f, -712f, -1155f), vec3<f32>(-277f, 337f, -1023f), vec3<f32>(-1279f, 1196f, 628f), vec3<f32>(-870f, -325f, 1428f), vec3<f32>(-1000f, -1099f, 1000f), vec3<f32>(1467f, -1686f, 701f), vec3<f32>(-1379f, 1000f, -237f), vec3<f32>(-1494f, -1806f, -620f), vec3<f32>(-175f, -119f, -159f), vec3<f32>(2293f, -1147f, -414f), vec3<f32>(-1042f, -1147f, 1197f), vec3<f32>(-1108f, 2174f, -1218f), vec3<f32>(1657f, 1811f, -849f), vec3<f32>(279f, 573f, 256f), vec3<f32>(-279f, -483f, -1109f), vec3<f32>(623f, -526f, 230f), vec3<f32>(-138f, -556f, 813f));

var<private> global1: vec4<f32> = vec4<f32>(-1139f, 735f, 344f, -1123f);

var<private> global2: Struct_1 = Struct_1(4325i, vec4<f32>(441f, -413f, 643f, 1343f), 1u, vec3<u32>(53149u, 11840u, 4294967295u));

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), vec4<bool>((18013u ^ u_input.b) < ~_wgslsmith_mod_u32(4294967295u, u_input.b), false, true, true), !any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)));
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 818f)) + global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-866f - _wgslsmith_f_op_f32(select(global1.x, 2667f, var_0.x)))) + -898f), _wgslsmith_f_op_f32(global2.b.x * global1.x));
    let var_1 = ~(~(~(vec4<u32>(u_input.b, 36347u, 0u, global2.d.x) | vec4<u32>(global2.c, u_input.b, u_input.b, 0u)))) | vec4<u32>(_wgslsmith_add_u32(4294967295u, abs(max(14101u, global2.c))), abs((u_input.b >> (global2.c % 32u)) << (~u_input.b % 32u)), 1u, global2.d.x);
    global0 = array<vec3<f32>, 21>();
    var var_2 = select(~max(_wgslsmith_mod_vec4_u32(var_1, var_1), var_1), var_1 >> (firstTrailingBit(var_1) % vec4<u32>(32u)), vec4<bool>(var_0.x, var_0.x, any(!vec3<bool>(var_0.x, true, false)), select(true, false, all(var_0))));
    return global1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    global2 = Struct_1(21746i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(global1.x, global1.x, -1431f, 712f)))) * global2.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, _wgslsmith_f_op_f32(func_3(-30187i)), _wgslsmith_f_op_f32(1135f - global2.b.x), global2.b.x))), select(firstTrailingBit(abs(arg_0.x)), 1u, true) | 10567u, firstLeadingBit(countOneBits(vec3<u32>(51534u, 0u >> (global2.c % 32u), ~arg_0.x))));
    let var_0 = 1i;
    let var_1 = -countOneBits(0i) & _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, -1i, global2.a, u_input.a.x)), ~vec4<i32>(-2147483647i, 0i, var_0, 5028i)), -abs(u_input.a.x));
    let var_2 = global2.a;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1911f, _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(global1.x - 244f), true))), _wgslsmith_f_op_f32(-209f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.b.x, global1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(-1i))))), _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(global1.x + 734f));
    return 6594i;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global1 = global2.b;
    var var_0 = func_2(vec3<u32>(global2.c, 2642u, _wgslsmith_mult_u32(global2.c << (21851u % 32u), ~7434u)), arg_0.x) & u_input.a.x;
    global2 = global3[_wgslsmith_index_u32(u_input.b >> ((_wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, u_input.b), global2.d.xy, vec2<bool>(arg_0.x, arg_0.x)), ~firstTrailingBit(vec2<u32>(global2.d.x, 4294967295u))) ^ ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(117093u, global2.c), vec2<u32>(u_input.b, 13299u)), global2.d.yz)) % 32u), 18u)];
    return global2.a <= ~(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-24649i, 2147483647i, global2.a), abs(global2.a), countOneBits(-44727i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 18>();
    global2 = global3[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_0 = (_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global2.a, global2.a), vec2<i32>(u_input.c, global2.a)), vec2<i32>(_wgslsmith_sub_i32(global2.a, global2.a), _wgslsmith_mod_i32(33180i, 1i)), vec2<i32>(min(69135i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global2.a), u_input.a.wy))) | countOneBits(u_input.a.zx)) << (min(~global2.d.zz, global2.d.yy) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(vec4<u32>(0u, global2.d.x, 4294967295u, global2.d.x), vec4<u32>(1u, u_input.b, u_input.b, global2.d.x), vec4<bool>(false, false, true, false))) & select(vec4<u32>(4294967295u, min(50871u, 47394u), max(2428u, global2.d.x), firstLeadingBit(u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, global2.d.x), reverseBits(vec4<u32>(u_input.b, global2.d.x, 0u, 4294967295u))), select(func_1(vec4<bool>(true, false, false, true)), true, true)), _wgslsmith_clamp_u32(1u, 87704u, global2.d.x));
}

