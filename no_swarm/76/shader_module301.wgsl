struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), 3835i);

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-16570i, i32(-2147483648), 2227i), vec3<i32>(1i, 13060i, 0i), vec3<i32>(-1990i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 30604i, 2147483647i), vec3<i32>(37404i, 36836i, 16453i), vec3<i32>(40472i, 64568i, 2297i), vec3<i32>(1i, 14931i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -8066i), vec3<i32>(-1i, i32(-2147483648), -20332i), vec3<i32>(49550i, -1i, -44719i), vec3<i32>(i32(-2147483648), -1i, 19190i), vec3<i32>(26218i, i32(-2147483648), 44223i), vec3<i32>(-34548i, -35074i, 16059i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -15736i), vec3<i32>(39783i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 59625i, -48344i), vec3<i32>(0i, -11813i, -20689i), vec3<i32>(-34371i, 1i, i32(-2147483648)), vec3<i32>(0i, 16212i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 0i, 1i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-9578i, 63430i, 2147483647i), vec3<i32>(9887i, i32(-2147483648), 0i), vec3<i32>(-19356i, i32(-2147483648), 0i), vec3<i32>(0i, -41183i, -1i), vec3<i32>(-1i, 30415i, -22313i));

var<private> global2: array<vec3<i32>, 25>;

var<private> global3: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1128f, -1616f, 1309f), vec3<f32>(290f, 537f, 391f), vec3<f32>(1119f, -876f, -1948f), vec3<f32>(240f, 481f, -1000f), vec3<f32>(157f, 730f, 215f), vec3<f32>(-604f, 1000f, -184f), vec3<f32>(-698f, 1000f, 345f), vec3<f32>(592f, -1040f, 207f), vec3<f32>(-558f, 479f, 790f), vec3<f32>(-1167f, -1000f, 450f), vec3<f32>(151f, -1150f, 479f), vec3<f32>(1759f, -1040f, 232f), vec3<f32>(1014f, 838f, 219f), vec3<f32>(-1000f, -478f, 1638f), vec3<f32>(-975f, 405f, 1040f), vec3<f32>(1804f, 869f, -468f), vec3<f32>(-114f, 1041f, 2860f), vec3<f32>(375f, 626f, 479f), vec3<f32>(-409f, -1210f, 1600f), vec3<f32>(-564f, -1000f, -1000f), vec3<f32>(1000f, -985f, -732f), vec3<f32>(-356f, 207f, -662f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(867f, -905f), vec2<f32>(-661f, 182f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -1015f)))), select(arg_2.b.x < 65104u, arg_2.a.x, arg_1.a.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(385f, -588f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(339f, -414f), vec2<f32>(-458f, -609f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(672f, 405f), vec2<f32>(1428f, 1509f), select(vec2<bool>(true, true), vec2<bool>(arg_1.a.x, arg_1.a.x), arg_2.a.yz))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(578f + 1016f), _wgslsmith_f_op_f32(-188f - 2178f)), vec2<f32>(-880f, _wgslsmith_div_f32(538f, 421f)))));
    var var_1 = Struct_1(arg_2.a, vec4<u32>(1u, arg_1.b.x, ~(~28020u), arg_0));
    let var_2 = _wgslsmith_mod_vec3_i32(~(~global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(var_1.b.x, 0u)), 28u)]), vec3<i32>(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_i32(u_input.c.x, -26724i))), -u_input.e, 1i));
    global1 = array<vec3<i32>, 28>();
    return abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(select(arg_2.b.x, 11570u, false), ~arg_2.b.x), countOneBits(~arg_1.b.xw)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = ~arg_1.x;
    var var_1 = u_input.c.x;
    global0 = global2[_wgslsmith_index_u32(~max(func_3(arg_1.x & 0u, Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u)), Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 22554u, 19456u, arg_1.x) << (vec4<u32>(4294967295u, 4294967295u, 7837u, arg_1.x) % vec4<u32>(32u)), vec4<u32>(35575u, 139640u, 6922u, 0u))), 25u)] ^ (vec3<i32>(~(-2147483647i), max(u_input.a.x, global0.x) & u_input.a.x, -_wgslsmith_mod_i32(-8507i, global0.x)) & _wgslsmith_mod_vec3_i32((u_input.d << (vec3<u32>(arg_1.x, arg_1.x, arg_1.x) % vec3<u32>(32u))) ^ global2[_wgslsmith_index_u32(arg_1.x, 25u)], max(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(12536u, arg_1.x), 25u)], ~vec3<i32>(u_input.a.x, 23488i, u_input.a.x))));
    var var_2 = ~(-46919i) & _wgslsmith_dot_vec2_i32(~u_input.c.xw, -u_input.a.zx);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(arg_1.x >> (0u % 32u)), 1u), 25u)];
    return _wgslsmith_f_op_f32(select(3055f, _wgslsmith_f_op_f32(-arg_0.x), any(select(vec4<bool>(true, any(vec2<bool>(false, false)), arg_0.x > arg_0.x, true), vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, all(vec2<bool>(false, true)), true)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, -434f, -229f, -224f)), firstLeadingBit(vec3<u32>(762u, 1u, 29986u)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1723f * 391f))))) - _wgslsmith_f_op_f32(-1f));
    var_0 = 700f;
    let var_1 = u_input.b;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-431f * -529f), -861f);
    var var_2 = global0.x << (0u % 32u);
    return select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, true)), true, true), true)), select(vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -1i, -24696i, global0.x), u_input.c) == -68644i, !(global0.x != u_input.e), true, abs(var_1.x) <= -global0.x), vec4<bool>(select(true, true, true), true, all(vec3<bool>(true, true, true)), false), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-563f, 1944f)))) != 1120f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 28>();
    let var_0 = Struct_1(func_1(), firstLeadingBit(vec4<u32>(abs(1u), 1u, _wgslsmith_mod_u32(56107u, 13116u), 1u)) >> (_wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(9663u, 4294967295u, 4294967295u, 78888u)), ~(~vec4<u32>(90818u, 16699u, 31943u, 0u)), vec4<u32>(1u, abs(4294967295u), 3799u, ~55924u)) % vec4<u32>(32u)));
    var var_1 = 3395i;
    let var_2 = Struct_1(var_0.a, vec4<u32>(~95003u, ~(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, var_0.b.x)), 4294967295u, ~var_0.b.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 2022f), vec2<f32>(-559f, 210f))), vec2<f32>(1656f, -483f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1642f, 423f)))))));
    let var_4 = u_input.a.x;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~select(32600u, 19135u, !var_0.a.x), 1u), var_3.x);
}

