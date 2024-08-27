struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

var<private> global1: Struct_5 = Struct_5(753f, -172f);

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(1000f, 910f), vec2<f32>(1198f, -2074f), vec2<f32>(2496f, -327f), vec2<f32>(-1329f, -519f), vec2<f32>(878f, 964f), vec2<f32>(270f, -533f), vec2<f32>(1307f, -877f), vec2<f32>(1865f, 108f), vec2<f32>(748f, 986f), vec2<f32>(-409f, 384f), vec2<f32>(-1826f, 879f), vec2<f32>(-1937f, 954f), vec2<f32>(-128f, -1350f), vec2<f32>(-370f, 292f), vec2<f32>(1000f, 112f), vec2<f32>(577f, -704f), vec2<f32>(-606f, 1102f), vec2<f32>(-700f, -315f), vec2<f32>(-410f, -1000f), vec2<f32>(-189f, 644f), vec2<f32>(807f, 241f), vec2<f32>(-2205f, 416f), vec2<f32>(320f, -791f), vec2<f32>(836f, 1000f), vec2<f32>(-689f, -1000f), vec2<f32>(-105f, -189f), vec2<f32>(-1176f, 474f), vec2<f32>(1000f, -1118f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    let var_0 = arg_1;
    var var_1 = -1278f;
    var var_2 = Struct_3(-u_input.d);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2146f, global1.b, global1.b) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2000f, global1.b, 741f))))) - vec3<f32>(global1.a, -650f, -774f)), global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, ~(7924u >> (max(arg_0.x, 0u) % 32u))), 28u)], -1i);
    return ~_wgslsmith_mult_u32(reverseBits(~arg_0.x), 1u << (arg_0.x % 32u)) << (4294967295u % 32u);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    global2 = array<vec2<f32>, 28>();
    let var_0 = !select(select(select(!vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(true, arg_0, arg_0)), vec3<bool>(true, true, true), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0)), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, true)))), select(vec3<bool>(true, !arg_0, true), !vec3<bool>(arg_0, false, true), !vec3<bool>(arg_0, arg_0, false)), !(1284u <= func_3(vec4<u32>(2606u, 1u, 1u, 13035u), false)));
    return firstTrailingBit(firstLeadingBit(abs(i32(-1i) * -8040i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    global2 = array<vec2<f32>, 28>();
    var var_0 = ~min(-func_2(true, _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(38814u, 28u)], vec2<f32>(global1.a, global1.b))), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -2147483647i, arg_1) & -vec3<i32>(29464i, u_input.d.x, 24739i), vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, 0i, arg_1), i32(-1i) * -16290i, 2147483647i)));
    let var_1 = ~(-firstLeadingBit(arg_1)) << (~353u % 32u);
    let var_2 = Struct_3(-abs(select(select(u_input.a, u_input.a, true), vec2<i32>(u_input.c.x, -9634i), true)));
    var var_3 = vec3<i32>(countOneBits(~_wgslsmith_div_i32(i32(-1i) * -2147483647i, var_2.a.x)), 2147483647i, _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(var_1, 67992i)), abs(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 12591i), var_2.a)))));
    return abs(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -1i;
    var var_1 = vec4<u32>(77181u, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 1u), ~28668u), 4294967295u), _wgslsmith_add_u32(~121784u, ~(reverseBits(11339u) | func_1(vec3<bool>(false, true, true), -66716i))), _wgslsmith_dot_vec3_u32(vec3<u32>(16958u, 2393u, _wgslsmith_clamp_u32(24324u, ~1u, max(17550u, 24702u))), firstLeadingBit(select(vec3<u32>(4294967295u, 35846u, 4294967295u), vec3<u32>(4294967295u, 0u, 15725u), true) << (vec3<u32>(1u, 4294967295u, 78499u) % vec3<u32>(32u)))));
    let var_2 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))));
    let var_3 = any(!vec3<bool>(true, any(vec2<bool>(true, true)) & select(var_2, false, var_2), any(!vec4<bool>(var_2, var_2, var_2, var_2))));
    let var_4 = all(!select(vec2<bool>(!var_2, any(vec3<bool>(var_2, var_2, var_2))), !select(vec2<bool>(var_2, false), vec2<bool>(false, true), true), !vec2<bool>(var_2, var_3)));
    let var_5 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-105f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-200f, global1.b)))))), global1.b);
    var var_6 = -vec2<i32>(max(~2147483647i, -21188i), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 186f, -390f) * vec3<f32>(-1000f, 143f, var_5.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_5.b, var_5.b, global1.b), vec3<f32>(326f, -1000f, global1.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1567f, -1140f, -515f))))));
}

