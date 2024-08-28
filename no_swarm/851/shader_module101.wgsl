struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 3>;

var<private> global3: array<bool, 15> = array<bool, 15>(true, true, true, true, true, false, true, true, false, true, false, true, false, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = false;
    global0 = array<u32, 17>();
    var var_1 = Struct_2(select(_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(32286u | global0[_wgslsmith_index_u32(arg_0, 17u)], ~global0[_wgslsmith_index_u32(4294967295u, 17u)])), 4294967295u, true));
    global3 = array<bool, 15>();
    var_0 = all(vec4<bool>(false, true, false, false));
    return ~arg_1.b;
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(select(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 51277u, 35065u, 0u), ~vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), all(vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], 17u)], 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12925u, 17u)], 15u)], false))), 15u)], true, !any(!vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 15u)], false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10559u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 15u)])), true), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 0u, global0[_wgslsmith_index_u32(20061u, 17u)], 73797u), select(vec4<u32>(10525u, 59237u, global0[_wgslsmith_index_u32(11595u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), vec4<u32>(4294967295u, 0u, 47411u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9947u, 17u)], 17u)], 15u)], true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49919u, 17u)], 17u)], 17u)], 17u)], 15u)])))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-840f, -366f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-630f, -937f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(451f)), -1562f), vec2<f32>(1f, 1f))));
    global0 = array<u32, 17>();
    var var_2 = Struct_3(0u, (reverseBits(_wgslsmith_mult_vec4_u32(var_0.b, var_0.b)) & (var_0.b >> (~var_0.b % vec4<u32>(32u)))) & (firstLeadingBit(var_0.b) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, 59904u, 1u, var_0.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 15989u, var_0.b.x, var_0.b.x), var_0.b)) % vec4<u32>(32u))));
    var var_3 = select(select(~_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 17u)]), var_2.b.x & 63539u, true), var_2.a, var_0.b.x < 4294967295u) >= 0u;
    return abs(var_0.b.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 3u)];
    global0 = array<u32, 17>();
    var var_1 = Struct_3(firstLeadingBit(_wgslsmith_sub_u32(85137u & global0[_wgslsmith_index_u32(arg_1.a, 17u)], ~arg_0.x)), vec4<u32>(5425u, _wgslsmith_mod_u32(_wgslsmith_div_u32(~6784u, _wgslsmith_clamp_u32(arg_1.a, var_0.b.x, global0[_wgslsmith_index_u32(arg_1.a, 17u)])), _wgslsmith_mult_u32(arg_0.x, ~4294967295u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a, 1u, 41768u), vec3<u32>(global0[_wgslsmith_index_u32(63430u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], var_0.b.x)), var_0.b.zxw), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~1u), 17u)], 17u)], reverseBits(min(global0[_wgslsmith_index_u32(19662u, 17u)], arg_1.a))), ~31900u));
    global0 = array<u32, 17>();
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(), firstLeadingBit(146u << (func_1(12935u ^ var_0.b.x, Struct_3(arg_1.a, arg_0)).x % 32u))), 3u)];
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 15>();
    let var_0 = ~vec3<i32>(global1.x << (func_2(func_1(4294967295u, Struct_3(9248u, vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], global0[_wgslsmith_index_u32(36970u, 17u)], global0[_wgslsmith_index_u32(3477u, 17u)]))), Struct_2(4294967295u), select(vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(869u, 17u)], 15u)], false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 15u)]), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 15u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53837u, 17u)], 17u)], 15u)], true), false)) % 32u), -1i, 21766i);
    var var_1 = ~select(_wgslsmith_add_vec3_u32(vec3<u32>(7469u, global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(~142627u, 17u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 0u, 1u) | vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32639u, 17u)], 17u)], 4294967295u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 0u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8382u, 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(84034u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13788u, 17u)], 17u)], 17u)], 17u)], 17u)]), vec3<u32>(4294967295u, 17599u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18813u, 17u)], 17u)], 17u)])))), vec3<u32>(74321u, func_3(), _wgslsmith_dot_vec4_u32(vec4<u32>(54700u, 17344u, 0u, 11759u), select(vec4<u32>(0u, 86379u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30491u, 17u)], 17u)], 17u)], 17u)], 4631u), vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(14216u, 17u)], 11761u), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 15u)])))), true);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1887f, -1560f, -172f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1028f, 1605f, -201f))))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f * 454f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -2060f)), _wgslsmith_f_op_f32(-var_2.x))), 163f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1000f, var_2.x)))), vec3<f32>(667f, _wgslsmith_f_op_f32(f32(-1f) * -1034f), var_3.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x) + vec3<f32>(var_3.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -877f, 1277f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 535f, var_2.x)), vec3<f32>(var_2.x, 1736f, var_3.x))))), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(~global1.x, 1i), -2147483647i));
}

