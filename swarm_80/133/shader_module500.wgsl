struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-531f, 6901i, vec2<f32>(2349f, 547f), vec4<i32>(-1i, -64191i, -1i, -1i), vec4<bool>(false, true, true, false)), Struct_1(-1106f, 18934i, vec2<f32>(-1000f, 593f), vec4<i32>(i32(-2147483648), 902i, -62814i, 1i), vec4<bool>(true, true, false, false)), Struct_1(643f, 50377i, vec2<f32>(-1183f, -1349f), vec4<i32>(-4407i, 0i, 62323i, 2147483647i), vec4<bool>(true, true, false, true)), Struct_1(-1125f, 1i, vec2<f32>(-313f, 681f), vec4<i32>(-29588i, 749i, 1i, -1236i), vec4<bool>(true, false, true, true)), Struct_1(-449f, i32(-2147483648), vec2<f32>(802f, 954f), vec4<i32>(1i, -16390i, i32(-2147483648), 0i), vec4<bool>(false, true, false, false)), Struct_1(838f, -9576i, vec2<f32>(-916f, 279f), vec4<i32>(2147483647i, 49415i, 1i, -44727i), vec4<bool>(true, false, false, false)), Struct_1(-1000f, 2147483647i, vec2<f32>(-617f, 1000f), vec4<i32>(6106i, -10953i, i32(-2147483648), -15595i), vec4<bool>(false, true, false, false)), Struct_1(-630f, -1i, vec2<f32>(-1181f, 1000f), vec4<i32>(-27081i, i32(-2147483648), 97112i, 43132i), vec4<bool>(false, true, true, false)), Struct_1(294f, 65923i, vec2<f32>(-1697f, 575f), vec4<i32>(7787i, -5383i, 9084i, 1i), vec4<bool>(true, true, true, false)));

var<private> global1: Struct_2 = Struct_2(false);

var<private> global2: f32 = -1000f;

var<private> global3: u32 = 76877u;

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> bool {
    var var_0 = Struct_1(722f, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1i, -2147483647i), vec3<i32>(2147483647i, 47521i, u_input.a.x)), vec3<i32>(u_input.a.x, 30335i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(-6062i), _wgslsmith_div_i32(31250i, -1i), -1i), ~vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), -countOneBits(vec3<i32>(-23807i, 2147483647i, -1i)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1277f, 242f)), _wgslsmith_f_op_f32(ceil(-935f)))), _wgslsmith_f_op_f32(236f + _wgslsmith_f_op_f32(1283f + -1934f))), select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -17450i, 14916i, 28105i), vec4<i32>(u_input.a.x, 28312i, u_input.a.x, 0i)), _wgslsmith_sub_i32(1i, u_input.a.x), -11678i, reverseBits(u_input.a.x)), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(2147483647i, 55620i, 1i, u_input.a.x), -vec4<i32>(37471i, 19221i, 35619i, -87620i), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, global1.a, arg_1.x, global1.a), vec4<bool>(false, arg_0.x, global1.a, arg_0.x), true)) | firstLeadingBit(abs(vec4<i32>(u_input.a.x, -35489i, 674i, -14134i))), arg_0);
    var var_1 = _wgslsmith_f_op_f32(max(-214f, var_0.a));
    var var_2 = select(vec3<bool>(arg_0.x, false, arg_1.x), !arg_1, global1.a);
    global1 = Struct_2(all(!arg_1.yy));
    let var_3 = vec3<bool>(arg_0.x, all(var_2.xx), arg_1.x);
    return arg_0.x | (u_input.a.x > 39856i);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.a))));
    let var_1 = -vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(max(arg_3.d.wx, u_input.a), u_input.a & vec2<i32>(arg_3.d.x, arg_2.d.x))), _wgslsmith_mod_i32(arg_2.b >> ((u_input.b | 0u) % 32u), _wgslsmith_div_i32(-u_input.a.x, -52894i)));
    global3 = _wgslsmith_div_u32(firstTrailingBit(u_input.b), 1u);
    let var_2 = true;
    global0 = array<Struct_1, 9>();
    return select(select(vec3<bool>(func_3(!vec4<bool>(arg_3.e.x, arg_2.e.x, arg_0.a, true), arg_3.e.xyz), true, false), vec3<bool>(true, any(select(vec2<bool>(arg_0.a, true), arg_2.e.zy, arg_3.e.yw)), arg_1), false), !vec3<bool>(arg_2.e.x, select(true, true, false), any(!arg_2.e.zzz)), select(arg_2.e.yzw, select(vec3<bool>(all(arg_3.e.zyy), true, true), vec3<bool>(true, arg_3.e.x, var_2), select(vec3<bool>(var_2, false, global1.a), arg_3.e.xww, select(vec3<bool>(global1.a, true, global1.a), arg_3.e.xzw, arg_3.e.x))), !(_wgslsmith_add_i32(2147483647i, u_input.a.x) < -arg_3.b)));
}

fn func_1() -> vec3<u32> {
    global0 = array<Struct_1, 9>();
    let var_0 = select(select(vec3<bool>(global1.a, !(true || global1.a), true), vec3<bool>(global1.a, global1.a, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, global1.a), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(global1.a, true, global1.a)))), select(!(!vec3<bool>(true, global1.a, global1.a)), select(select(func_2(Struct_2(global1.a), global1.a, global4[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]), !vec3<bool>(global1.a, false, true), false), select(vec3<bool>(true, global1.a, true), select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, global1.a, false), false), true && global1.a), vec3<bool>(false, false || global1.a, false)), vec3<bool>(true, true, true)), !func_2(Struct_2(true), true, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, firstLeadingBit(0u)), 6u)], Struct_1(_wgslsmith_f_op_f32(-476f + -188f), i32(-1i) * -31068i, vec2<f32>(632f, 1000f), vec4<i32>(-2147483647i, 0i, -15046i, u_input.a.x) & vec4<i32>(1i, -1i, u_input.a.x, 2147483647i), select(vec4<bool>(false, global1.a, false, true), vec4<bool>(false, global1.a, global1.a, global1.a), global1.a))).x);
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(1u), 9u)];
    global0 = array<Struct_1, 9>();
    global2 = 203f;
    return vec3<u32>(u_input.b, abs(firstLeadingBit(~62058u)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1325f - 2073f) * _wgslsmith_f_op_f32(abs(548f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1183f);
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 93978u) & abs(vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b))), func_1()), _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 79474u, 1u, 0u), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), u_input.b), vec2<u32>(~39606u, 0u) & ~abs(vec2<u32>(u_input.b, u_input.b))), _wgslsmith_mod_i32(-34276i, _wgslsmith_clamp_i32(~u_input.a.x, u_input.a.x, reverseBits(u_input.a.x))) | 0i, firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 15283u, ~24370u, ~u_input.b), ~(~vec4<u32>(0u, u_input.b, u_input.b, 4294967295u)), firstTrailingBit(select(vec4<u32>(48085u, u_input.b, u_input.b, u_input.b), vec4<u32>(79094u, u_input.b, u_input.b, 2739u), true)))));
}

