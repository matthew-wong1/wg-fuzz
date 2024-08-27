struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<u32, 12>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1709f)), _wgslsmith_f_op_f32(f32(-1f) * -595f))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(41448u, 12u)], global1[_wgslsmith_index_u32(arg_1.x, 12u)]), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], arg_1.x, 3798u), u_input.c)), vec4<u32>(~4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], _wgslsmith_dot_vec3_u32(arg_1, arg_1), arg_1.x)), min(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(38773u, 12u)]) << ((global1[_wgslsmith_index_u32(0u, 12u)] ^ 1u) % 32u), 12u)] & (global1[_wgslsmith_index_u32(max(arg_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), 12u)] & ~global1[_wgslsmith_index_u32(0u, 12u)]), ~_wgslsmith_div_u32(1u & u_input.d, firstTrailingBit(1u))), Struct_1(vec4<u32>(u_input.d, max(abs(39508u), ~27158u), 101625u, ~37538u << (abs(u_input.d) % 32u)), ~(u_input.a.yzz << (_wgslsmith_clamp_vec3_u32(u_input.c.wxz, u_input.c.xyx, arg_1) % vec3<u32>(32u))), vec2<u32>(0u, _wgslsmith_dot_vec2_u32(arg_1.zy, arg_1.yx)) >> (u_input.b.yx % vec2<u32>(32u))));
    let var_1 = 2147483647i;
    global1 = array<u32, 12>();
    let var_2 = vec4<u32>(reverseBits(arg_1.x), var_0.d.c.x, 1u, abs(27400u));
    let var_3 = Struct_4(Struct_2(u_input.a.xwz >> (vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x, 0u), global1[_wgslsmith_index_u32(47892u ^ u_input.d, 12u)], arg_1.x) % vec3<u32>(32u))), Struct_2(-reverseBits(u_input.a.yyw << (vec3<u32>(arg_1.x, 36300u, u_input.c.x) % vec3<u32>(32u)))));
    return ~var_2;
}

fn func_2() -> Struct_4 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global1 = array<u32, 12>();
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)], 12u)], u_input.c.x)) ^ 1u, ~47549u, ~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_clamp_u32(~0u, ~0u, 32366u)) & func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f * -572f)), u_input.c.zyw, vec2<i32>(u_input.a.x & 2147483647i, reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(-690f * 1886f)), max(~_wgslsmith_sub_vec3_i32(-u_input.a.zzy, firstTrailingBit(u_input.a.zzz)), firstTrailingBit(_wgslsmith_sub_vec3_i32(abs(u_input.a.zwx), ~u_input.a.yxx))), func_3(1f, ~select(reverseBits(u_input.c.wzw), ~vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 43744u), all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 6u)], false, global0[_wgslsmith_index_u32(4294967295u, 6u)], false))), abs(-min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, -2147483647i))), _wgslsmith_f_op_f32(max(1019f, -114f))).ww);
    let var_1 = _wgslsmith_clamp_i32(firstLeadingBit(-14048i), u_input.a.x, firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(-1i, abs(2147483647i)))));
    return Struct_4(Struct_2(u_input.a.zzx), Struct_2(var_0.b | vec3<i32>(_wgslsmith_mult_i32(var_0.b.x, 2147483647i), 0i, _wgslsmith_mod_i32(var_0.b.x, var_1))));
}

fn func_1() -> u32 {
    let var_0 = vec4<u32>(13582u, 79031u, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 4294967295u, 61508u, 0u) | vec4<u32>(15103u, global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 36387u), vec4<u32>(4294967295u, 53619u, 9580u, 0u)), _wgslsmith_sub_vec4_u32(~u_input.c, u_input.c)), 1u);
    let var_1 = func_2();
    var var_2 = vec4<bool>(true | !global0[_wgslsmith_index_u32(46674u | global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 6u)], false, global0[_wgslsmith_index_u32(1u, 6u)] & true, all(!vec3<bool>(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 12u)], 6u)], !global0[_wgslsmith_index_u32(var_0.x, 6u)], any(vec4<bool>(global0[_wgslsmith_index_u32(10555u, 6u)], true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 6u)])))));
    let var_3 = Struct_1(abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.c), abs(var_0 & vec4<u32>(global1[_wgslsmith_index_u32(1u, 12u)], 25087u, 34017u, 0u)))), vec3<i32>(~var_1.a.a.x, i32(-1i) * -77214i, -23141i), select(vec2<u32>(~1u, var_0.x | u_input.b.x), vec2<u32>(func_3(_wgslsmith_f_op_f32(1805f * 574f), vec3<u32>(0u, 32786u, 14485u), vec2<i32>(1i, var_1.b.a.x), -404f).x, global1[_wgslsmith_index_u32(12063u, 12u)]), any(var_2.zxx)));
    let var_4 = _wgslsmith_f_op_f32(trunc(-1269f));
    return 4294967295u | ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 12>();
    let var_0 = Struct_2(u_input.a.xzy);
    global0 = array<bool, 6>();
    var var_1 = Struct_1(u_input.c, u_input.a.wzx, vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 12u)], func_1()), u_input.c.ww), 12u)], 0u));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(914f)) + _wgslsmith_f_op_f32(f32(-1f) * -443f))))));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_1.c.x, 12u)], _wgslsmith_sub_u32(~(u_input.c.x << (u_input.c.x % 32u)) << (1u % 32u), var_1.a.x), ~vec4<i32>(u_input.a.x, firstLeadingBit(31624i), -1i, -var_3.x | 0i), vec2<i32>(52244i & (0i >> (global1[_wgslsmith_index_u32(0u, 12u)] % 32u)), u_input.a.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2609f))), -2379f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-664f, -318f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-105f, 1301f, 1093f, 465f), vec4<f32>(-851f, -1000f, -1189f, -1208f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-679f, -393f, 997f, -258f) + vec4<f32>(-1000f, -950f, -954f, 1292f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1693f, -679f, 582f, 827f), vec4<f32>(-1233f, 916f, -387f, -309f)))))))));
}

