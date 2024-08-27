struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec3<i32>;

var<private> global1: vec4<f32>;

var<private> global2: array<f32, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-470f)), -1518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f - arg_0.x)), -234f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(2348u, 26u)], 1000f, -725f, global2[_wgslsmith_index_u32(65220u, 26u)]), vec4<f32>(arg_0.x, global1.x, -467f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, global1.x, arg_0.x, -1717f), vec4<f32>(540f, global1.x, 1035f, -597f), var_0))))))));
    var var_1 = arg_1;
    var var_2 = Struct_1(!(!(!(!vec4<bool>(false, arg_1.a.x, false, true)))));
    var var_3 = arg_1;
    return min(21230i, _wgslsmith_div_i32(global0.x, 2147483647i));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = i32(-1i) * -(u_input.a << (_wgslsmith_add_u32(arg_0, arg_0 << (arg_0 % 32u)) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(global1.xz + vec2<f32>(1367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1575f - _wgslsmith_div_f32(global1.x, -528f)) * _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_0, 26u)])))))));
    let var_2 = _wgslsmith_add_i32(reverseBits(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), global1.wy), Struct_1(vec4<bool>(true, false, true, false)), -6397i) | var_0), abs(func_3(global1.zw, Struct_1(vec4<bool>(false, true, true, true)), _wgslsmith_clamp_i32(1i, reverseBits(global0.x), -11544i << (arg_0 % 32u)))));
    let var_3 = Struct_1(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, false == all(vec4<bool>(true, true, false, true)), false));
    global0 = vec3<i32>(_wgslsmith_sub_i32(~(func_3(vec2<f32>(global1.x, -313f), var_3, 1i) | func_3(vec2<f32>(var_1.x, -140f), Struct_1(vec4<bool>(true, var_3.a.x, false, var_3.a.x)), u_input.a)), -9265i), max((i32(-1i) * -var_0) & ~var_0, firstLeadingBit(48242i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(35216u, 26u)], 635f) - global1.xz), Struct_1(vec4<bool>(false, true, var_3.a.x, true)), _wgslsmith_div_i32(-2108i, u_input.a)), _wgslsmith_div_i32(countOneBits(35913i), select(2147483647i, 17621i, var_3.a.x))), 53719i));
    return reverseBits(select(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0, 243i, var_2), _wgslsmith_clamp_vec3_i32(vec3<i32>(75822i, var_2, global0.x), vec3<i32>(var_0, 3147i, -1i), vec3<i32>(var_0, -2147483647i, -2147483647i)), vec3<i32>(-2147483647i, 47696i, var_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -40330i, var_2), -vec3<i32>(var_2, -2147483647i, -2147483647i), ~vec3<i32>(-8426i, var_2, 0i))), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.yz, global0.xz), vec2<i32>(u_input.a, u_input.a)), -48400i, -global0.x), select(vec3<bool>(false, false, global1.x >= -1446f), !vec3<bool>(false, var_3.a.x, true), !(!var_3.a.x))));
}

fn func_1() -> Struct_1 {
    global0 = select(~firstLeadingBit(vec3<i32>(~u_input.a, -2147483647i, global0.x)), _wgslsmith_mod_vec3_i32(max(reverseBits(vec3<i32>(2147483647i, global0.x, -13947i)) ^ abs(vec3<i32>(global0.x, -1i, 1i)), reverseBits(func_2(70001u))), select(firstLeadingBit(vec3<i32>(global0.x, global0.x, global0.x)), -vec3<i32>(global0.x, -2147483647i, 67802i), vec3<bool>(true, true, true)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(125376u, 33587u), vec2<u32>(75301u, 1u)), reverseBits(1u), 4294967295u) % vec3<u32>(32u))), vec3<bool>(true, true, true));
    var var_0 = reverseBits(_wgslsmith_clamp_i32(-16942i, -abs(global0.x), 31177i));
    var_0 = -6288i;
    var_0 = u_input.a;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.x)))), -1255f, -306f, global2[_wgslsmith_index_u32(4639u, 26u)]);
    return Struct_1(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), select(false, false, false)), select(vec4<bool>(any(vec2<bool>(true, false)), true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(global1.wx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(71198u, 26u)], 1686f))))))));
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(~1u, 40641u), var_1.x);
}

