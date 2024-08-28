struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_3,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 0u));

var<private> global1: bool = true;

var<private> global2: Struct_3 = Struct_3(vec3<i32>(2147483647i, -22668i, i32(-2147483648)), vec3<u32>(0u, 19560u, 4294967295u), Struct_2(Struct_1(vec2<u32>(24660u, 9350u))), Struct_1(vec2<u32>(21552u, 18113u)));

var<private> global3: array<vec3<f32>, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    return _wgslsmith_add_u32(~arg_0.c.c.a.a.x, 83920u);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))) + 1009f);
    let var_1 = _wgslsmith_add_vec2_u32(abs(select(_wgslsmith_mult_vec2_u32(~global2.d.a, abs(vec2<u32>(102314u, 1u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, global0.a.x), vec2<u32>(4294967295u, 0u)), true)), global0.a);
    global0 = Struct_1(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(~global0.a.x, 0u)), firstLeadingBit(_wgslsmith_clamp_vec2_u32(select(global0.a, vec2<u32>(0u, 1u), vec2<bool>(true, false)), _wgslsmith_sub_vec2_u32(var_1, global2.b.xz), vec2<u32>(1u, 488u)))));
    var var_2 = select(vec3<u32>(var_1.x, func_3(Struct_4(vec4<f32>(-900f, -998f, var_0, 3342f), vec3<bool>(false, false, true), Struct_3(u_input.c.wwy, global2.b, global2.c, global2.c.a), vec2<i32>(global2.a.x, 18379i), var_0), vec4<f32>(523f, var_0, var_0, -474f), u_input.c.x) >> (abs(var_1.x) % 32u), ~u_input.b) | global2.b, reverseBits(~global2.b), select(true, true, !(!(u_input.b == global0.a.x))));
    var var_3 = abs(global2.a.xy << (~firstTrailingBit(global2.b.yy) % vec2<u32>(32u)));
    return !(827f == _wgslsmith_f_op_f32(var_0 * -1593f));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = Struct_3(select(select(global2.a, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x, 2147483647i, -1i), vec3<i32>(u_input.c.x, global2.a.x, 4977i)), countOneBits(global2.a.x), 0i), func_2() | true), select(countOneBits(vec3<i32>(u_input.c.x, -1i, global2.a.x) ^ vec3<i32>(2147483647i, -1i, -2147483647i)), _wgslsmith_add_vec3_i32(global2.a, vec3<i32>(u_input.c.x, 2147483647i, u_input.d.x)) | vec3<i32>(-2147483647i, 32153i, global2.a.x), vec3<bool>(!arg_2, true, !arg_2)), !select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, arg_2, true), !vec3<bool>(arg_2, true, arg_2))), abs(vec3<u32>(~0u, _wgslsmith_mult_u32(~88185u, 0u), global0.a.x)), global2.c, global2.d);
    global2 = Struct_3(~countOneBits(vec3<i32>(select(var_1.a.x, 0i, arg_2), -1i, 1i)), global2.b, Struct_2(global2.d), Struct_1(_wgslsmith_div_vec2_u32(max(~global0.a, global2.c.a.a), global0.a)));
    let var_2 = global0.a;
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(-1000f, arg_0)), -1311f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1220f, -799f, var_0, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(629f, var_0, arg_1.x, 1282f) - vec4<f32>(-1934f, -676f, -1474f, var_0)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(780f, 230f, var_0, 134f)))), !(!vec4<bool>(true, arg_2, true, arg_2))))), !vec3<bool>(arg_2, false, arg_2), Struct_3(~(-vec3<i32>(global2.a.x, -43312i, -60065i)), vec3<u32>(firstLeadingBit(~5011u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.a.a.x, 10014u), abs(global0.a)), var_1.b.x), Struct_2(var_1.c.a), var_1.d), vec2<i32>(~var_1.a.x, _wgslsmith_mod_i32(firstTrailingBit(-global2.a.x), ~u_input.d.x | u_input.d.x)), var_0);
    return ~(~abs(vec3<u32>(_wgslsmith_mult_u32(global2.c.a.a.x, 0u), _wgslsmith_div_u32(var_2.x, 19461u), _wgslsmith_sub_u32(var_3.c.b.x, var_3.c.d.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.x, reverseBits(abs(50702i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d.x), vec2<i32>(30916i, 0i) << (global2.c.a.a % vec2<u32>(32u))), global2.a.x));
    var var_1 = _wgslsmith_mult_vec3_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(410f))), global3[_wgslsmith_index_u32(4294967295u, 26u)], true), global2.b);
    var var_2 = _wgslsmith_add_vec2_u32(global0.a, var_1.zx);
    global2 = Struct_3(select(u_input.d, vec3<i32>(i32(-1i) * -u_input.d.x, -var_0.x, -1i), vec3<bool>(true, true, true)), ~func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f + 1000f)), vec3<f32>(1f, 1f, 1f), true), Struct_2(global2.c.a), global2.c.a);
    global3 = array<vec3<f32>, 26>();
    global2 = Struct_3(global2.a, ~(~vec3<u32>(1u, var_2.x, 84442u) & vec3<u32>(firstLeadingBit(u_input.b), 1u, ~1u)), Struct_2(global2.d), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, 0u), vec2<u32>(global0.a.x, var_2.x), vec2<u32>(1u, global0.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, global0.a.x)), vec2<u32>(var_2.x, var_1.x)) << (~(~var_1.yy) % vec2<u32>(32u))));
    let var_3 = abs(firstLeadingBit(-reverseBits(vec2<i32>(var_0.x, 40695i))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 263f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1027f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(276f + 814f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412f + 648f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(268f + 1000f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1228f - -430f) * _wgslsmith_div_f32(-1065f, -770f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-497f, -394f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-948f, 894f, 210f, 167f) - vec4<f32>(-2083f, 623f, 1677f, 1445f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-223f, -246f, 1608f, 2450f), vec4<f32>(107f, 493f, -155f, -1068f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-418f, -907f, -823f, -579f) + vec4<f32>(1919f, -969f, 1763f, -1424f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-575f, 335f, 485f, -1174f) + vec4<f32>(980f, 377f, 1491f, -949f)), vec4<f32>(-697f, -279f, -957f, -1195f)), vec4<bool>(true, true, false, all(vec4<bool>(false, false, true, true)))))));
    var var_5 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, ~1u);
}

