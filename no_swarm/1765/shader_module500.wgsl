struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(57456u, 5789u, 13110u);

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(8665i, 1i), vec2<i32>(44790i, 0i), vec2<i32>(40027i, -15132i), vec2<i32>(2147483647i, 1i), vec2<i32>(17173i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-21466i, -1300i), vec2<i32>(11074i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(38783i, 1i), vec2<i32>(0i, 39818i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 30612i), vec2<i32>(-15902i, i32(-2147483648)), vec2<i32>(-17834i, -20815i), vec2<i32>(-19694i, -29166i), vec2<i32>(-28906i, -66589i), vec2<i32>(0i, i32(-2147483648)));

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(11293u, 0u, 3752u), vec3<f32>(117f, 876f, 114f), vec3<i32>(-28416i, 27873i, -17532i), true), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(31319u, 10606u, 4294967295u), vec3<f32>(523f, 217f, 412f), vec3<i32>(3845i, 2147483647i, 1i), true), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(0u, 15201u, 0u), vec3<f32>(-1345f, 226f, 1638f), vec3<i32>(1434i, -31594i, 21300i), false), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(0u, 114410u, 32983u), vec3<f32>(-1092f, -2052f, 1817f), vec3<i32>(-41286i, 1i, 2147483647i), false), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(34571u, 0u, 4294967295u), vec3<f32>(-1346f, 341f, -874f), vec3<i32>(i32(-2147483648), -4767i, 51840i), true), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(70199u, 23281u, 4294967295u), vec3<f32>(1098f, 339f, 205f), vec3<i32>(i32(-2147483648), 2147483647i, -1i), false), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(0u, 4294967295u, 1u), vec3<f32>(-1530f, 649f, -516f), vec3<i32>(1i, 645i, 57670i), true), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, 32595u, 4294967295u), vec3<f32>(397f, -1668f, -386f), vec3<i32>(18993i, 0i, 48714i), false), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 36071u, 4294967295u), vec3<f32>(199f, 1663f, 1172f), vec3<i32>(1i, 44676i, -11118i), false), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(1u, 15751u, 0u), vec3<f32>(-127f, -776f, 366f), vec3<i32>(2147483647i, 0i, -26556i), true), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 30533u, 0u), vec3<f32>(-239f, 1000f, 1146f), vec3<i32>(-15278i, -83914i, 31208i), false), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(76123u, 98390u, 4294967295u), vec3<f32>(-3366f, 110f, -538f), vec3<i32>(0i, -11009i, -16586i), true));

var<private> global4: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<u32>) -> bool {
    return false;
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<f32> {
    var var_0 = -(vec3<i32>(u_input.b, -2147483647i, 0i) & vec3<i32>(53952i, abs(-1i >> (arg_1 % 32u)), i32(-1i) * -34036i));
    global4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - arg_0))))));
    global0 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, arg_1, 53356u), vec3<u32>(arg_1, u_input.a.x, global0.x)), u_input.a.zxx);
    var var_1 = ~abs(_wgslsmith_mod_vec2_u32(select(vec2<u32>(arg_1, 11319u), ~global0.xz, vec2<bool>(true, true)), vec2<u32>(~global0.x, u_input.a.x & 1u)));
    var var_2 = func_1(firstTrailingBit(firstTrailingBit(reverseBits(u_input.a.zyw) << ((vec3<u32>(arg_1, 0u, global0.x) & u_input.a.zyw) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_div_f32(1509f, -1000f), _wgslsmith_f_op_f32(step(949f, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1002f, arg_0, arg_0)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    global4 = _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(-1649f - -669f));
    var var_0 = false;
    var var_1 = true;
    var var_2 = global3[_wgslsmith_index_u32(select(~(~firstLeadingBit(0u) << (arg_1.b.x % 32u)), global0.x, func_1(firstTrailingBit(~(vec3<u32>(arg_1.b.x, 4294967295u, 6004u) & vec3<u32>(arg_3.b.x, u_input.a.x, 11883u))))), 12u)];
    var var_3 = _wgslsmith_sub_vec2_u32(~(arg_0.b.xz ^ global0.yx), ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_3.b.x, 4294967295u)), reverseBits(abs(vec2<u32>(u_input.a.x, 0u)))));
    return _wgslsmith_f_op_f32(-arg_0.c.x);
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = !(!select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    global2 = false & (_wgslsmith_clamp_u32(1u >> (_wgslsmith_mod_u32(u_input.a.x, 45572u) % 32u), _wgslsmith_sub_u32(1u, u_input.a.x) | _wgslsmith_div_u32(u_input.a.x, global0.x), (u_input.a.x | 1u) ^ ~global0.x) > 4294967295u);
    var var_1 = 4294967295u;
    global0 = ~u_input.a.wxz;
    var_0 = vec2<bool>(false, true);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f + 233f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), -967f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-428f + 1007f) - 1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f + -771f) + 1f) + _wgslsmith_f_op_f32(ceil(-761f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_1(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false), u_input.a.zwx, _wgslsmith_div_vec3_f32(vec3<f32>(-1351f, 591f, 566f), vec3<f32>(-948f, -682f, 593f)), min(vec3<i32>(arg_0.x, 0i, arg_0.x), vec3<i32>(20523i, -85013i, arg_0.x)), true), global3[_wgslsmith_index_u32(76547u, 12u)], _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(1786f, u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, -296f, -200f) * vec3<f32>(480f, 921f, 1421f)))), global3[_wgslsmith_index_u32(41512u, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f * _wgslsmith_f_op_f32(abs(-354f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 12>();
    global1 = array<vec2<i32>, 18>();
    global3 = array<Struct_1, 12>();
    let var_0 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, any(vec3<bool>(true, true, true)), func_1(vec3<u32>(4294967295u, global0.x, 1u)), any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 17899u, global0.x) >> (~u_input.a.yzy % vec3<u32>(32u)), u_input.a.zwx), ~u_input.a.yxw), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 117f, -484f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, -363f, 1324f)) + vec3<f32>(653f, -1299f, 746f)), vec3<bool>(true, true, 2147483647i != u_input.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(930f, 501f, -775f))), _wgslsmith_f_op_vec3_f32(func_2(u_input.c)))))))), ~(~(~(-vec3<i32>(u_input.c.x, u_input.b, 63109i)))), any(vec2<bool>(true, true)));
    var var_1 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), select(vec4<u32>(79293u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 9321u, 24329u, 0u), true)), ~(var_0.b.x ^ 42663u)), u_input.c.x, -_wgslsmith_mult_vec3_i32(min(u_input.c, select(u_input.c, var_0.d, var_0.a.x)), vec3<i32>(reverseBits(1i), 1i, var_0.d.x)), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 24384u), var_0.b.x), reverseBits(global0.x), 27186u), vec3<u32>(~global0.x, reverseBits(0u), 37102u));
}

