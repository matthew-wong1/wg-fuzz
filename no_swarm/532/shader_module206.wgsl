struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: f32;

var<private> global2: array<vec4<bool>, 8>;

var<private> global3: vec3<bool>;

var<private> global4: array<u32, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<Struct_4, 12>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-430f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) + _wgslsmith_f_op_f32(sign(-940f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), -612f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1326f, 1000f, 156f, -286f), vec4<f32>(301f, -2573f, -690f, 1499f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1072f, -1917f, 1931f, -1000f) * vec4<f32>(-217f, 278f, -1000f, 954f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, -1821f, 2219f, -1000f)), select(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 8u)], global3.x))))));
    global4 = array<u32, 25>();
    var var_1 = ~19337u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-660f))));
    return -31825i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1592f * _wgslsmith_div_f32(arg_3, 358f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * 522f) * _wgslsmith_f_op_f32(step(-356f, arg_3))), _wgslsmith_div_f32(-917f, arg_3)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(722f + _wgslsmith_f_op_f32(arg_3 * arg_3)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-419f + arg_3))))));
    var var_0 = arg_3;
    var var_1 = Struct_1(~vec4<u32>(1u, ~(~u_input.a), ~(~4294967295u), arg_1.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, 1093f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-690f, arg_3, arg_3)))))));
    let var_2 = true;
    var var_3 = 30862i;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(41765i, func_3(), u_input.d.x, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(func_3(), ~(-46601i), _wgslsmith_mult_i32(u_input.e, 1i), -2147483647i) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(22491i, -2147483647i, u_input.d.x, 2147483647i), vec4<i32>(u_input.e, -2147483647i, -1i, u_input.e)), vec4<i32>(u_input.d.x, -22817i, u_input.e, u_input.d.x) << (var_1.a % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(~u_input.d.x), i32(-1i) * -2147483647i, 40247i, min(5375i, u_input.d.x) << (~u_input.b.x % 32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(-func_2(global2[_wgslsmith_index_u32(4294967295u, 8u)], vec4<u32>(134356u, 9761u, 17843u, global4[_wgslsmith_index_u32(30571u, 25u)]), vec3<bool>(global3.x, global3.x, false), -834f), u_input.e, func_2(vec4<bool>(true, false, global3.x, global3.x), vec4<u32>(u_input.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 63262u, 74470u), vec3<bool>(true, global3.x, global3.x), -1020f) << (firstLeadingBit(0u) % 32u), ~_wgslsmith_add_i32(0i, u_input.d.x)), firstTrailingBit(max(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -27763i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, u_input.e, 0i, u_input.d.x), vec4<i32>(2147483647i, 52227i, 2147483647i, u_input.e)))));
    global0 = array<Struct_4, 12>();
    let var_1 = ~reverseBits(u_input.b.x);
    global2 = array<vec4<bool>, 8>();
    let var_2 = select(select(global2[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(51411u, 1u)), 8u)], !global2[_wgslsmith_index_u32(select(var_1, ~4294967295u, any(vec3<bool>(false, global3.x, true))), 8u)], !(!select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, true, global3.x, false), global3.x))), select(vec4<bool>(true, global3.x, !select(false, global3.x, false), global3.x), global2[_wgslsmith_index_u32(~4294967295u, 8u)], 242f < _wgslsmith_f_op_f32(sign(-1000f))), !(!(!(!vec4<bool>(global3.x, false, false, true)))));
    return Struct_2(Struct_1(abs(vec4<u32>(firstTrailingBit(u_input.b.x), 0u << (var_1 % 32u), var_1, _wgslsmith_add_u32(19993u, 41917u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(max(1451f, _wgslsmith_f_op_f32(-1000f * 697f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f - -1000f)))), vec2<i32>(var_0.x, -72273i), Struct_1(countOneBits(min(vec4<u32>(global4[_wgslsmith_index_u32(49507u, 25u)], 5777u, 1u, 15352u) << (vec4<u32>(1u, var_1, 54995u, 1u) % vec4<u32>(32u)), ~vec4<u32>(global4[_wgslsmith_index_u32(4978u, 25u)], var_1, 48400u, 79651u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1554f, -1000f, 297f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2341f, 1000f, -944f) * vec3<f32>(548f, 1830f, 506f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-823f, 812f, -1424f), vec3<f32>(-732f, -853f, -621f), vec3<bool>(var_2.x, var_2.x, var_2.x))), vec3<f32>(-216f, -2441f, -2404f), all(vec3<bool>(false, global3.x, false)))))), Struct_1(vec4<u32>(1u, ~0u, var_1, 125654u) | (abs(vec4<u32>(u_input.b.x, 4294967295u, var_1, var_1)) | (vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a, 10270u, 1u) & vec4<u32>(0u, 0u, 22408u, 32435u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2099f, -1203f, 1f))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    return func_1().d;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    var var_0 = _wgslsmith_div_vec2_u32(~u_input.b.yz << (max(vec2<u32>(4294967295u, 58744u), _wgslsmith_add_vec2_u32(arg_1.a.yw ^ vec2<u32>(arg_2, 1u), abs(vec2<u32>(global4[_wgslsmith_index_u32(1u, 25u)], 30271u)))) % vec2<u32>(32u)), select(vec2<u32>(~(global4[_wgslsmith_index_u32(u_input.a, 25u)] & 4294967295u), 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.a.xy, vec2<u32>(1u, 66396u)), min(vec2<u32>(4294967295u, arg_1.a.x), arg_1.a.wx))), global3.yy));
    global0 = array<Struct_4, 12>();
    global2 = array<vec4<bool>, 8>();
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-330f, _wgslsmith_f_op_f32(sign(-837f)), global3.x | global3.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1909f + 630f)), -968f))));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_mod_i32(0i, u_input.d.x) >> ((8400u & u_input.b.x) % 32u), func_4(Struct_2(Struct_1(vec4<u32>(u_input.c, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 25u)], 88183u), vec3<f32>(1397f, 222f, -218f)), vec2<i32>(-28794i, 1i), Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(u_input.c, 25u)], global4[_wgslsmith_index_u32(0u, 25u)], 13598u, 0u), vec3<f32>(836f, -813f, 1575f)), Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a, global4[_wgslsmith_index_u32(48463u, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec3<f32>(-287f, 1207f, 631f))), ~global4[_wgslsmith_index_u32(4294967295u, 25u)], func_1()), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(~u_input.a, 25u)], 25u)], 25u)])))));
    let var_1 = Struct_2(Struct_1(~vec4<u32>(u_input.c, 71514u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(u_input.c, 25u)], u_input.b.x), 25u)], 25u)], ~27516u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2135f, 337f, 753f), vec3<f32>(-1449f, 108f, 1000f), vec3<bool>(false, global3.x, global3.x))))))), vec2<i32>(max(~(-15418i), _wgslsmith_mult_i32(abs(2147483647i), min(u_input.e, 1i))), ~firstTrailingBit(firstLeadingBit(u_input.e))), func_4(Struct_2(func_1().d, vec2<i32>(u_input.e, ~u_input.e), func_1().a, Struct_1(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], global4[_wgslsmith_index_u32(8837u, 25u)], u_input.a, 374u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-695f, 1000f, -752f) - vec3<f32>(-1709f, 900f, -1482f)))), u_input.c, func_1()), Struct_1(vec4<u32>(81759u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 25u)], 0u), u_input.b.yz), ~u_input.b.zx), _wgslsmith_dot_vec3_u32(~u_input.b, ~u_input.b), ~_wgslsmith_mult_u32(u_input.c, 18539u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-969f, -494f, -817f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, 1687f, -1000f)))) - vec3<f32>(608f, _wgslsmith_div_f32(-1674f, -299f), _wgslsmith_f_op_f32(-1291f + 1004f)))));
    global2 = array<vec4<bool>, 8>();
    let var_2 = Struct_3(firstTrailingBit(max(~var_1.c.a, vec4<u32>(abs(var_1.d.a.x), _wgslsmith_div_u32(1u, 64932u), ~u_input.a, var_1.c.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.d.b.x)), _wgslsmith_f_op_f32(-func_1().a.b.x))));
    var var_3 = u_input.a;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

