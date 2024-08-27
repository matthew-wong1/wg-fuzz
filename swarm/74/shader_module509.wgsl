struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec3<f32> {
    var var_0 = 826f;
    var_0 = _wgslsmith_f_op_f32(-arg_1);
    global0 = array<bool, 15>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) * _wgslsmith_f_op_f32(step(980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(arg_1, -1543f))))) == 429f;
    global0 = array<bool, 15>();
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, arg_1, 815f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1448f, 1486f, -749f))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * arg_1))), -870f, -271f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 * -540f), arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) + arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1269f))))));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 2147483647i, -14246i), vec3<i32>(-44483i, 15112i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(-u_input.b.yzz, -u_input.b.wxw, firstLeadingBit(u_input.b.zxx))), arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 249f, arg_0)))))));
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(max(0u, ~0u), firstTrailingBit(4294967295u)), ~firstLeadingBit(~_wgslsmith_add_u32(49524u, 0u)));
    var var_2 = Struct_2(Struct_1(var_0.xx, vec4<bool>(any(vec2<bool>(false, true)), global0[_wgslsmith_index_u32(min(~1u, 1u), 15u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~14189u, 1u, ~0u), 15u)], true), u_input.a.xx >> (abs(~vec2<u32>(0u, 0u)) % vec2<u32>(32u)), select(vec3<bool>(true, true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true, true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 15u)], false), vec3<bool>(true, false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(72256u, 15u)], false)), false), any(!vec3<bool>(global0[_wgslsmith_index_u32(13600u, 15u)], false, global0[_wgslsmith_index_u32(27264u, 15u)]))), vec4<u32>(max(26779u, 905u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(106748u, 9561u)), 1u), 1u, ~1u)));
    let var_3 = Struct_2(var_2.a);
    var_1 = ~(~reverseBits(var_2.a.e.x));
    return select(~(~abs(42627u)), var_3.a.e.x, !(!(var_3.a.a.x == _wgslsmith_f_op_f32(floor(var_0.x)))));
}

fn func_1() -> vec2<f32> {
    var var_0 = !((func_2(-960f) <= 1u) & global0[_wgslsmith_index_u32(1u, 15u)]);
    var var_1 = u_input.b.x;
    var var_2 = 112264u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-190f, -325f)));
    let var_4 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(532f)), 1f), vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-586f - 2187f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-182f)))))), vec4<bool>(true, any(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(16546u, 15u)], true, true), vec3<bool>(false, false, false)))), true, true), u_input.a.zy, vec3<bool>(global0[_wgslsmith_index_u32(~(func_2(306f) ^ 53012u), 15u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(1u), 1u), 15u)], all(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(75118u, 15u)], global0[_wgslsmith_index_u32(21486u, 15u)]), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(true, true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(103517u, 15u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(14030u, 15u)], false), global0[_wgslsmith_index_u32(1u, 15u)])))), ~vec4<u32>(~92461u, countOneBits(~4294967295u), ~abs(0u), 83319u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(_wgslsmith_div_i32(-322i, u_input.a.x), var_4.c.x, u_input.b.x), _wgslsmith_f_op_f32(var_4.a.x - -588f))).zz)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(vec2<u32>(1u, 1u) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, -1639f)) - _wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-898f, -520f) + vec2<f32>(1827f, 774f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1861f, -638f))))))), vec4<bool>(true, global0[_wgslsmith_index_u32(min(1u, var_0.x), 15u)], !any(select(vec2<bool>(global0[_wgslsmith_index_u32(8623u, 15u)], false), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)]), false)), global0[_wgslsmith_index_u32(~(var_0.x >> (var_0.x % 32u)), 15u)] || false), vec2<i32>(-27930i, _wgslsmith_dot_vec3_i32(u_input.b.xzw ^ vec3<i32>(1i, u_input.b.x, -55148i), u_input.a)), vec3<bool>(!(true & global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 4294967295u), 15u)]), any(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_div_u32(1u, var_0.x))), 15u)]), ~abs(vec4<u32>(~39583u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 37344u), vec3<u32>(48444u, 11134u, 0u)), var_0.x, 0u)));
    var var_2 = 776f;
    var var_3 = Struct_2(var_1);
    var_3 = Struct_2(var_3.a);
    var var_4 = u_input.a.x;
    global0 = array<bool, 15>();
    var_4 = _wgslsmith_div_i32(~_wgslsmith_mod_i32(var_1.c.x, 0i), ~abs(var_3.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(u_input.b, ~u_input.b << ((var_1.e ^ _wgslsmith_clamp_vec4_u32(var_3.a.e, vec4<u32>(100450u, 0u, 19379u, 0u), var_3.a.e)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -514f), reverseBits(28478i));
}

