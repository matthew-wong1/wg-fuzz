struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(1i, 26786i, 16266i, 1i, 0i, -40576i, 27447i, 2147483647i, i32(-2147483648), -28450i, 63071i, -12743i, -1i, i32(-2147483648), 2147483647i, -1i, 1i, -13226i, 0i, -1i, 27062i, i32(-2147483648), -37016i, 41162i, 0i, 2147483647i, 0i, -1i, 4290i);

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(4421u, 48593u, 0u, 34842u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = u_input.d;
    var var_1 = all(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false), all(vec3<bool>(false, true, false))), vec2<bool>(all(vec4<bool>(false, false, false, false)), true), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(361f, 1606f))), -603f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1918f, -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1274f - -1080f)))));
    let var_3 = true;
    let var_4 = i32(-1i) * -48099i;
    return -266f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 29>();
    let var_0 = u_input.b;
    let var_1 = min(~vec3<u32>(countOneBits(u_input.d.x), firstTrailingBit(u_input.d.x), u_input.d.x) & ~_wgslsmith_clamp_vec3_u32(u_input.d.zzx << (vec3<u32>(53500u, 35112u, u_input.d.x) % vec3<u32>(32u)), abs(u_input.d.yxw), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 6812u, 13323u), vec3<u32>(u_input.d.x, u_input.d.x, 4997u))), ~u_input.d.zyx);
    var var_2 = vec2<f32>(-1676f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, vec3<u32>(126290u, var_1.x, 9658u), vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.d.x))) + _wgslsmith_f_op_f32(-693f * 1598f))))));
    global0 = array<i32, 29>();
    return Struct_1(vec4<u32>(var_1.x, countOneBits(abs(~var_1.x)), 138232u ^ _wgslsmith_add_u32(~var_1.x, var_1.x), 1u));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32) -> vec3<u32> {
    let var_0 = 0u;
    global0 = array<i32, 29>();
    global1 = array<vec4<u32>, 2>();
    let var_1 = Struct_5(func_2(true), u_input.b);
    var var_2 = ~u_input.d.x;
    return ~vec3<u32>(reverseBits(u_input.d.x), ~u_input.d.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(u_input.d.zzy, ~u_input.d.xyy);
    var_0 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d.yyw, vec3<u32>(~95721u, _wgslsmith_sub_u32(u_input.d.x, 1u), _wgslsmith_mult_u32(30134u, var_0.x)), ~countOneBits(vec3<u32>(0u, var_0.x, 4294967295u))), countOneBits(u_input.d.wxw));
    var_0 = min(~(vec3<u32>(4294967295u, ~28097u, firstTrailingBit(u_input.d.x)) >> (~u_input.d.yzw % vec3<u32>(32u))), func_1(u_input.b.x | _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x << (5811u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(-325f))));
    let var_1 = true;
    var var_2 = Struct_3(var_0.yy, _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.c, -69976i), vec3<i32>(0i, u_input.b.x, u_input.c)), u_input.a.wyz), select(false, true, var_1));
    var_2 = Struct_3(~var_2.a, countOneBits(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)] & global0[_wgslsmith_index_u32(62032u, 29u)], -1i, -1i ^ u_input.a.x)), !(!(!all(vec3<bool>(var_1, true, true)))));
    var_2 = Struct_3(~vec2<u32>(_wgslsmith_mult_u32(var_2.a.x, var_0.x), ~(~4294967295u)), max(countOneBits(~_wgslsmith_mod_vec3_i32(u_input.a.www, u_input.a.wzx)), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 13814u) & vec2<u32>(35058u, var_2.a.x), var_0.xy), 29u)], global0[_wgslsmith_index_u32(firstLeadingBit(abs(var_0.x)), 29u)], i32(-1i) * -15668i)), firstTrailingBit(i32(-1i) * -global0[_wgslsmith_index_u32(1u, 29u)]) != global0[_wgslsmith_index_u32(~0u, 29u)]);
    global0 = array<i32, 29>();
    var_2 = Struct_3(reverseBits(vec2<u32>(func_2(var_1).a.x, ~1u)), u_input.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x);
}

