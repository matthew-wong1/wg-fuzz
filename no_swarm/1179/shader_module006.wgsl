struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-991f);

var<private> global1: array<bool, 32>;

var<private> global2: array<u32, 32> = array<u32, 32>(0u, 4294967295u, 11107u, 0u, 167u, 1u, 56234u, 70523u, 0u, 1u, 1u, 1u, 96709u, 1u, 1u, 4294967295u, 16405u, 1u, 1u, 0u, 0u, 1u, 46153u, 1u, 0u, 0u, 4294967295u, 28687u, 0u, 4294967295u, 0u, 19927u);

var<private> global3: array<vec4<f32>, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    let var_0 = -2147483647i ^ ~(-(1i << (u_input.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-372f, 134f) + vec2<f32>(991f, global0.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a, 1344f)))))));
    var var_2 = Struct_1(-837f);
    global2 = array<u32, 32>();
    let var_3 = _wgslsmith_f_op_f32(732f - _wgslsmith_f_op_f32(min(176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a)))))));
    return 295u;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    var var_0 = Struct_1(global0.a);
    let var_1 = vec2<u32>(~select(~arg_0, ~func_3(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(28527u, 32u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true), false), !select(false, false, global1[_wgslsmith_index_u32(0u, 32u)])), arg_1.x);
    global2 = array<u32, 32>();
    let var_2 = Struct_1(var_0.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) - var_2.a));
    return 24852i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 20617i;
    var var_1 = true;
    var var_2 = _wgslsmith_add_vec2_i32(select(abs(arg_0.yy), -vec2<i32>(16823i, arg_0.x << (1u % 32u)), select(!(!vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 32u)], false)), vec2<bool>(global1[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), 32u)], true), vec2<bool>(global1[_wgslsmith_index_u32(20035u, 32u)], all(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], true))))), arg_0.wy);
    var_0 = _wgslsmith_mod_i32(-2147483647i, -arg_0.x);
    var var_3 = arg_1;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) + global0.a), _wgslsmith_f_op_f32(step(-281f, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(round(487f)))))));
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(global0.a)));
    global2 = array<u32, 32>();
    var_0 = func_4(vec4<i32>(_wgslsmith_add_i32(func_2(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(65896u, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<u32>(10576u, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(-var_0.a)), -1i), 1i, ~(-1i), _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(1i, firstTrailingBit(-64319i)))), Struct_1(_wgslsmith_f_op_f32(-var_0.a)));
    return firstTrailingBit(~abs(vec2<u32>(104443u, _wgslsmith_dot_vec4_u32(vec4<u32>(27710u, 7811u, global2[_wgslsmith_index_u32(0u, 32u)], u_input.a.x), u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~u_input.a.yw, _wgslsmith_clamp_vec2_u32(~u_input.a.wy, u_input.a.yz, _wgslsmith_add_vec2_u32(func_1(), vec2<u32>(0u, global2[_wgslsmith_index_u32(8631u, 32u)]))) | func_1());
    global2 = array<u32, 32>();
    let var_1 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, -3320i), _wgslsmith_mult_i32(-2873i, ~(i32(-1i) * -4954i))), ~32488i, select(-943i, ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -51269i, -825i, 0i), vec4<i32>(-6383i, 1i, 2147483647i, -1i)), abs(-1i)), false), -2147483647i);
    let var_2 = func_4(~var_1, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(715f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a))))));
    var var_3 = vec3<i32>(-1i) * -var_1.wwy;
    let var_4 = -(min(46304i, max(countOneBits(var_3.x), firstLeadingBit(2147483647i))) & (_wgslsmith_add_i32(select(var_3.x, var_1.x, false), var_1.x) ^ _wgslsmith_mult_i32(-var_3.x, _wgslsmith_dot_vec2_i32(var_1.zz, vec2<i32>(var_1.x, 2147483647i)))));
    global2 = array<u32, 32>();
    var_3 = ~firstLeadingBit(var_1.xyw);
    let var_5 = any(!select(vec2<bool>(true, u_input.a.x != 16388u), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(30380u, 32u)])), true));
    let x = u_input.a;
    s_output = StorageBuffer(~41029u, ((~u_input.a.x | 4294967295u) >> (4294967295u % 32u)) >> (firstLeadingBit(1u) % 32u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), ~(u_input.a.wx >> (vec2<u32>(u_input.a.x, var_0) % vec2<u32>(32u))) | u_input.a.wz), -335f, reverseBits(~vec2<i32>(reverseBits(-32214i), -36881i)));
}

