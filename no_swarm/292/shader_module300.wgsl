struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(4294967295u, 0u, 20298u, 64292u, 0u, 4294967295u, 1u, 70439u, 19405u, 1u, 4294967295u, 71166u, 14248u, 112637u, 78172u, 4294967295u, 1u, 0u, 20734u, 4294967295u, 73108u, 35704u, 4294967295u, 48284u, 2647u, 4294967295u, 46010u, 0u, 1u);

var<private> global1: vec3<u32> = vec3<u32>(15721u, 25591u, 16050u);

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(i32(-2147483648), vec3<i32>(-41069i, 73785i, 10648i), 1i, true, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec3<i32>(0i, 37501i, -49452i), -12622i, true, vec2<bool>(true, true)), Struct_1(-1i, vec3<i32>(i32(-2147483648), 2147483647i, -33707i), i32(-2147483648), false, vec2<bool>(false, true)), Struct_1(22933i, vec3<i32>(-1i, -1i, -27523i), 35039i, true, vec2<bool>(false, false)), Struct_1(6353i, vec3<i32>(-48175i, -36961i, -43263i), -17796i, false, vec2<bool>(false, false)), Struct_1(1i, vec3<i32>(31367i, 17337i, 2147483647i), -4735i, true, vec2<bool>(true, false)), Struct_1(2147483647i, vec3<i32>(0i, -1i, 2147483647i), i32(-2147483648), true, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec3<i32>(5521i, 2147483647i, 2147483647i), -1i, false, vec2<bool>(false, false)), Struct_1(28155i, vec3<i32>(-1i, 1i, 0i), 0i, true, vec2<bool>(false, true)), Struct_1(2147483647i, vec3<i32>(2147483647i, 1i, -56042i), -19960i, false, vec2<bool>(true, true)), Struct_1(-1i, vec3<i32>(-1i, -16160i, 1i), i32(-2147483648), false, vec2<bool>(false, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 578f, -877f, -147f), vec4<f32>(-823f, 566f, 461f, 281f)))))))));
    global0 = array<u32, 29>();
    let var_1 = firstLeadingBit(-1i);
    let var_2 = -vec4<i32>(1i, countOneBits(_wgslsmith_mult_i32(var_1, arg_1.c)), firstLeadingBit(1i) << (1u % 32u), ~abs(0i)) | (vec4<i32>(~firstLeadingBit(var_1), 0i, ~_wgslsmith_add_i32(arg_0.c, -25535i), 9756i) ^ (vec4<i32>(_wgslsmith_add_i32(-1i, 2147483647i), arg_0.a, _wgslsmith_clamp_i32(arg_0.c, 16638i, var_1), _wgslsmith_dot_vec2_i32(arg_1.b.yz, vec2<i32>(17281i, -26998i))) << (firstLeadingBit(abs(u_input.b)) % vec4<u32>(32u))));
    let var_3 = true;
    return u_input.b;
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = global0[_wgslsmith_index_u32(1u, 29u)];
    let var_1 = global2[_wgslsmith_index_u32(global1.x, 11u)];
    global2 = array<Struct_1, 11>();
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(var_1.b.yz, var_1.b.xx), var_1.b, var_1.a, true, !vec2<bool>(!(!var_1.e.x), true));
    let var_3 = ~(~_wgslsmith_dot_vec4_u32(max(func_3(global2[_wgslsmith_index_u32(global1.x, 11u)], var_2), vec4<u32>(global1.x, 0u, 19091u, global0[_wgslsmith_index_u32(71666u, 29u)])), ~vec4<u32>(0u, u_input.b.x, 38409u, 4294967295u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 660f, 1037f, arg_0.x) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> StorageBuffer {
    global0 = array<u32, 29>();
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    let var_0 = u_input.a;
    return StorageBuffer(arg_0.x, vec4<f32>(arg_1.x, arg_1.x, -590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1475f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, 506f, arg_1.x, -2063f), vec4<f32>(-496f, 1171f, arg_1.x, 1655f)))), _wgslsmith_f_op_vec4_f32(func_2(arg_1))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1745f, 2951f, 2269f, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 649f, -1297f) - vec4<f32>(957f, -917f, arg_1.x, 864f)) * vec4<f32>(588f, -557f, arg_1.x, -1188f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i, min(~(-firstTrailingBit(-1i)), _wgslsmith_mod_i32(max(-1i, countOneBits(-14822i)), 1i)), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(9972i, 7231i, 23168i), vec3<i32>(15058i, -2897i, 0i)) << (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, ~u_input.b.x), 29u)] % 32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(0i & (2147483647i >> (global0[_wgslsmith_index_u32(67841u, 29u)] % 32u)), select(_wgslsmith_add_i32(-21974i, -31362i), _wgslsmith_mult_i32(-1i, 1i), true)), -2147483647i));
    let x = u_input.a;
    s_output = func_1(var_0.zyy, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(982f, 2500f, -2148f), vec3<f32>(-1302f, 683f, 2102f), true)), vec3<f32>(366f, 1284f, 1000f))), vec3<f32>(-122f, _wgslsmith_f_op_f32(1131f + -1355f), _wgslsmith_div_f32(270f, -387f)))))));
}

