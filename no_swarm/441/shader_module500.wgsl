struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1250f, 576f, 924f), vec3<f32>(669f, 913f, -1243f), vec3<f32>(-354f, -1205f, -423f), vec3<f32>(579f, -568f, -1108f), vec3<f32>(956f, -702f, -328f), vec3<f32>(-555f, -603f, -1052f), vec3<f32>(-559f, -1140f, -1202f), vec3<f32>(571f, -1445f, -802f));

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: vec2<u32>;

var<private> global3: array<i32, 29> = array<i32, 29>(44120i, -1i, -1i, 0i, 0i, 2147483647i, 4412i, 1i, -26912i, 1i, -1i, 55346i, 2147483647i, -57222i, 50367i, 12450i, -41626i, 8395i, i32(-2147483648), 7985i, 1i, i32(-2147483648), 1109i, 1i, -10161i, 12098i, 34537i, -50571i, 0i);

var<private> global4: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(0i, 52883i, -17706i, -2147483647i), select(firstLeadingBit(abs(vec4<i32>(0i, 0i, -2147483647i, global3[_wgslsmith_index_u32(global2.x, 29u)]) | u_input.a)), -vec4<i32>(-u_input.a.x, u_input.a.x, -38399i ^ global3[_wgslsmith_index_u32(global2.x, 29u)], global3[_wgslsmith_index_u32(global2.x, 29u)]), vec4<bool>(!all(vec2<bool>(false, false)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), true, !(-2147483647i < u_input.b.x))));
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    var var_1 = Struct_1(-(var_0.zyw >> (~vec3<u32>(global2.x, 71194u, global2.x) % vec3<u32>(32u))), var_0, -115f, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, 4294967295u), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 3053u))), ~firstTrailingBit(52791u)));
    return select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, all(global1[_wgslsmith_index_u32(14404u, 18u)])), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) || true, !(~var_1.d < reverseBits(1u))), !vec2<bool>(!(-2147483647i != u_input.b.x), !all(vec4<bool>(false, false, true, false))));
}

fn func_2() -> f32 {
    global4 = array<vec3<bool>, 29>();
    global1 = array<vec4<bool>, 18>();
    global4 = array<vec3<bool>, 29>();
    let var_0 = Struct_3(_wgslsmith_div_f32(-2054f, -486f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1470f) + _wgslsmith_f_op_f32(sign(1000f)))))), select(func_3(), !vec2<bool>(func_3().x, true), true), _wgslsmith_f_op_f32(trunc(-1251f)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -775f))), Struct_1(abs(vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 29u)], global3[_wgslsmith_index_u32(global2.x, 29u)], 23595i)), max(vec4<i32>(u_input.b.x, 2147483647i, -18714i, global3[_wgslsmith_index_u32(global2.x, 29u)]), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2218f))), ~_wgslsmith_mult_u32(global2.x, 4294967295u)), true));
    let var_1 = u_input.a.xyw;
    return 1339f;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(649f - -748f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f - arg_1.x) * -2296f)), false)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(~global3[_wgslsmith_index_u32(global2.x, 29u)], global3[_wgslsmith_index_u32(global2.x, 29u)], ~arg_2.x), arg_2), vec4<i32>(arg_2.x, arg_2.x, 3426i, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -1000f))))), 1u), (max(43716u, 1u) ^ global2.x) != firstLeadingBit(~55441u));
    var_0 = Struct_2(arg_1.x, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 20528i, arg_0.x), u_input.a.xyx), vec3<i32>(1i, -12075i, global3[_wgslsmith_index_u32(var_0.b.d, 29u)]))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b.x, 7661i, u_input.b.x, -18448i), arg_0, _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(24881i, var_0.b.b.x, arg_0.x, -20019i))), vec4<i32>(select(global3[_wgslsmith_index_u32(global2.x, 29u)], u_input.b.x, false), arg_2.x, arg_0.x, arg_2.x), ~(vec4<i32>(13730i, var_0.b.a.x, 6221i, -33355i) >> (vec4<u32>(global2.x, 32165u, 48650u, global2.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-arg_1.x), ~var_0.b.d), var_0.c);
    var var_1 = Struct_2(var_0.b.c, var_0.b, var_0.c);
    let var_2 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(func_2()));
    var_1 = Struct_2(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))))), var_1.b, any(vec2<bool>(true, true)));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~var_1.b.d, 21020u | global2.x), vec2<u32>(1u, var_1.b.d)), vec2<u32>(var_0.b.d, var_0.b.d ^ 58898u)) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.b.d, 15961u, var_0.b.d)) | ~vec3<u32>(4294967295u, 4294967295u, 584u), vec3<u32>(1067u, var_0.b.d | var_0.b.d, _wgslsmith_mod_u32(var_0.b.d, var_0.b.d))), global2.x << (_wgslsmith_mult_u32(16244u, var_1.b.d ^ 0u) % 32u)) % 32u);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> vec4<i32> {
    let var_0 = -32045i | firstLeadingBit(global3[_wgslsmith_index_u32(~(18569u << (1u % 32u)), 29u)]);
    global1 = array<vec4<bool>, 18>();
    let var_1 = vec2<u32>(func_4(vec4<i32>(var_0, -1i, -11389i, abs(~2661i)), vec4<f32>(-487f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(111f)), -1343f), u_input.a.wwz), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(544u, global2.x), reverseBits(global2.x)) | 0u);
    var var_2 = reverseBits(vec3<i32>(_wgslsmith_clamp_i32(select(55092i, 0i, true), 1i, arg_1.x), 1i, -reverseBits(23811i)) ^ u_input.a.wxy);
    let var_3 = Struct_5(Struct_4(5623u, Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(272f - 444f))), _wgslsmith_f_op_f32(step(-1076f, -612f)), !func_3(), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(_wgslsmith_f_op_f32(-528f - -1241f), Struct_1(vec3<i32>(arg_1.x, 5041i, var_2.x), vec4<i32>(arg_3, 0i, global3[_wgslsmith_index_u32(0u, 29u)], -28755i), -846f, global2.x), arg_0)), Struct_1(vec3<i32>(-2147483647i, 57088i, var_2.x), select(~vec4<i32>(-1i, u_input.b.x, arg_1.x, 17503i), vec4<i32>(42903i, 22574i, 1i, -2147483647i), all(global1[_wgslsmith_index_u32(15967u, 18u)])), _wgslsmith_f_op_f32(-1000f * -581f), _wgslsmith_mult_u32(select(1u, 15569u, false), ~global2.x)), true), !global4[_wgslsmith_index_u32(global2.x, 29u)]);
    return (~var_3.a.c.b << (vec4<u32>((global2.x | 60534u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4613u, 1u, 0u), vec3<u32>(global2.x, var_3.a.c.d, var_1.x)), max(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(5341u, var_3.a.c.d, 0u), vec3<u32>(384u, 32473u, 4294967295u))), var_1.x, func_4(vec4<i32>(var_0, arg_1.x, arg_3, 21342i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(863f, var_3.a.b.b, var_3.a.b.d, var_3.a.c.c), vec4<f32>(-970f, 449f, -595f, 580f), true)), firstTrailingBit(u_input.a.zzx))) % vec4<u32>(32u))) | vec4<i32>(-1i, max(~(-2147483647i), min(1i, var_3.a.c.b.x)) & 0i, _wgslsmith_mult_i32(1i, reverseBits(-2147483647i >> (global2.x % 32u))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false & any(vec2<bool>(true, true)), u_input.a.wzw, false, ~(~(u_input.a.x & 14767i))) << (max(vec4<u32>(global2.x, ~global2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, global2.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 39710u), vec2<u32>(global2.x, global2.x))), global2.x), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 1u), global2.x), 42490u, select(48428u, global2.x, func_3().x), 4294967295u)) % vec4<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(~var_0.yzy, -vec3<i32>(abs(u_input.b.x), -1i, var_0.x)), countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(46283u, 29u)] | -global3[_wgslsmith_index_u32(global2.x, 29u)], var_0.x, _wgslsmith_mod_i32(21236i, _wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(global3[_wgslsmith_index_u32(1u, 29u)], 3701i))), _wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(u_input.a.ww, u_input.b, u_input.a.xz)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(138f)))), max(~func_4(u_input.a, vec4<f32>(1807f, 816f, 716f, -313f), _wgslsmith_div_vec3_i32(u_input.a.wyy, var_0.xzz)), (~global2.x | global2.x) & global2.x));
    let var_2 = Struct_4(_wgslsmith_mod_u32(var_1.d, 48819u), Struct_3(_wgslsmith_f_op_f32(-var_1.c), var_1.c, vec2<bool>(true, true), var_1.c, Struct_2(_wgslsmith_f_op_f32(func_2()), var_1, true)), var_1, any(vec4<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), global1[_wgslsmith_index_u32(0u, 18u)])), any(vec2<bool>(false, false)), false, true)));
    var var_3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(50448u, 1u, select(var_2.b.e.b.d, global2.x, var_2.d) | ~var_1.d, ~var_2.c.d), vec4<u32>(86659u >> (var_1.d % 32u), 52279u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.a, var_1.d, 28066u), vec4<u32>(1u, 103606u, 17671u, 0u)), 1u), var_1.d));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.d, 0u, var_1.d, global2.x) & vec4<u32>(global2.x, var_2.b.e.b.d, 1488u, var_4.d), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.e.b.d, var_2.c.d, var_2.c.d, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u))), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global2.x, 4294967295u, 2947u), vec4<u32>(var_2.c.d, global2.x, global2.x, 1u), vec4<u32>(global2.x, 32229u, global2.x, var_2.c.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(50618u, var_1.d, global2.x, var_1.d), vec4<u32>(15183u, 4294967295u, var_2.c.d, var_1.d))))));
}

