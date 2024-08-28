struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 17>;

var<private> global2: u32;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = 1000f;
    global0 = (u_input.b ^ (firstTrailingBit(abs(arg_0.b)) ^ -21193i)) ^ -u_input.c.x;
    let var_1 = Struct_2(any(vec3<bool>(true, arg_0.c, true)), Struct_1(~87681u, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, ~u_input.c), firstLeadingBit(u_input.c)), true), vec4<u32>(~_wgslsmith_mult_u32(abs(u_input.a.x), ~arg_0.a), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x | 3414u, ~arg_0.a), ~39387u), 20989u, 1u));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(~firstTrailingBit(vec4<i32>(-10472i, arg_0.b, arg_0.b, -1i))), vec4<i32>(~(i32(-1i) * -1i), ~firstTrailingBit(2147483647i), _wgslsmith_add_i32(~(-21542i), abs(-1i)), arg_0.b)), var_1.b.b, var_1.b.b, -u_input.b);
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(sign(1000f));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = (arg_1.x & max(_wgslsmith_dot_vec2_i32(arg_1.ww, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, 0i), arg_1.xz, arg_1.zw)), ~(28768i & arg_1.x))) <= _wgslsmith_div_i32(3736i, ~(-7218i));
    var_0 = false;
    var var_1 = arg_0.x;
    let var_2 = Struct_2(arg_0.x == abs(~(~24192u)), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 73221u), arg_2), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(79515u, u_input.a.x, u_input.a.x, arg_2.x))) & u_input.a.x, abs(-2147483647i) >> ((~42645u & arg_0.x) % 32u), global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<u32>(arg_2.x, ~4294967295u, 1u, u_input.a.x ^ arg_2.x));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(910f)), -708f, _wgslsmith_f_op_f32(991f - -536f), -1632f))) * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)), 1630f, -523f)), vec4<f32>(_wgslsmith_div_f32(519f, _wgslsmith_f_op_f32(func_3(var_2.b))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-272f + _wgslsmith_f_op_f32(-600f * _wgslsmith_f_op_f32(abs(-1781f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2200f + _wgslsmith_f_op_f32(f32(-1f) * -595f)) - _wgslsmith_f_op_f32(floor(-355f)))));
    return -2320f;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    global2 = u_input.a.x;
    let var_0 = _wgslsmith_f_op_f32(func_2(vec3<u32>(~(_wgslsmith_mod_u32(1u, arg_1.x) & 35991u), _wgslsmith_div_u32(u_input.a.x, ~0u), ~u_input.a.x), ~countOneBits(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, u_input.c.x, arg_3.b, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 18766i, -1i, -2147483647i), vec4<i32>(arg_3.b, 39215i, arg_3.b, 19882i)))), arg_1));
    return vec3<bool>(all(!vec2<bool>(arg_3.c, false)), true, global1[_wgslsmith_index_u32(4294967295u, 17u)]);
}

fn func_1() -> Struct_1 {
    let var_0 = !func_4(-2082f, vec2<u32>(11156u, abs(u_input.a.x)) ^ ~(vec2<u32>(70239u, 1u) & vec2<u32>(u_input.a.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(u_input.a.ywy, vec4<i32>(-22941i, u_input.c.x, u_input.b, u_input.b), u_input.a.zx))))), Struct_1(abs(~u_input.a.x), u_input.c.x, true || global1[_wgslsmith_index_u32(~u_input.a.x, 17u)]));
    let var_1 = Struct_1(u_input.a.x, -35247i, -2147483647i == firstLeadingBit(-u_input.b));
    global1 = array<bool, 17>();
    var var_2 = var_0.yz;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1083f)), _wgslsmith_f_op_f32(641f - 468f)), _wgslsmith_f_op_f32(-988f * _wgslsmith_f_op_f32(func_2(u_input.a.zyw, vec4<i32>(u_input.c.x, var_1.b, 15820i, -6652i), vec2<u32>(0u, 1u)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-183f, -691f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(520f)), 144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-612f, 346f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false, func_1(), ~vec4<u32>(u_input.a.x, max(u_input.a.x << (u_input.a.x % 32u), ~4294967295u), ~firstLeadingBit(23185u), firstTrailingBit(~u_input.a.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(557f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1086f, 184f)), 805f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-338f, -884f)) - _wgslsmith_f_op_f32(760f * 267f)))), _wgslsmith_f_op_f32(func_2(select(u_input.a.xww, vec3<u32>(~u_input.a.x, u_input.a.x, abs(12244u)), select(vec3<bool>(var_0.b.c, false, var_0.b.c), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b.a, 17u)], false), var_0.b.c)), firstLeadingBit(vec4<i32>(~var_0.b.b, -22191i, -u_input.c.x, var_0.b.b)), var_0.c.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1181f))));
    var var_2 = var_1.x;
    let var_3 = var_0;
    global4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, firstLeadingBit(vec2<i32>(u_input.b, ~var_3.b.b) | -_wgslsmith_add_vec2_i32(u_input.c, u_input.c)), ~1u);
}

