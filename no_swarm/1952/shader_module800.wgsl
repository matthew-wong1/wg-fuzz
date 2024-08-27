struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 16> = array<f32, 16>(-111f, -1000f, 1293f, -781f, 781f, 254f, -790f, -997f, -1000f, -1524f, -356f, 163f, 1331f, 820f, -2539f, 194f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<f32> {
    global0 = !(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))) && true;
    var var_0 = select(vec2<bool>(!select(true, all(vec3<bool>(false, true, false)), false), true), !vec2<bool>(true, any(vec2<bool>(true, true))), true);
    let var_1 = vec2<bool>(var_0.x, false);
    global1 = array<f32, 16>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1128f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(28065u, 16u)])), _wgslsmith_f_op_f32(1000f * arg_0)))))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = !(!(arg_0.c.x <= _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, arg_0.d, -13036i, arg_0.d), abs(vec4<i32>(arg_0.d, arg_0.d, 1i, arg_0.d)))));
    let var_1 = vec2<u32>(~arg_0.b << (1u % 32u), u_input.a);
    var_0 = true & (all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true))) & all(vec2<bool>(true, any(vec4<bool>(true, true, false, false)))));
    let var_2 = vec3<i32>(arg_0.d, arg_0.c.x, ~abs(arg_0.d & select(arg_0.d, arg_0.c.x, true)));
    global0 = true;
    return ((-254f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_0.a) - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_1, 16u)], -1587f, false)))) || any(vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, false))))) && false;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_i32(1i, 0i);
    var var_1 = Struct_1(-(-firstTrailingBit(vec2<i32>(-47750i, var_0)) & firstLeadingBit(vec2<i32>(var_0, var_0))), -(~(-vec3<i32>(var_0, var_0, -29390i))), 1u, !func_3(Struct_2(global1[_wgslsmith_index_u32(~arg_0.x, 16u)], u_input.a, vec2<i32>(var_0, -22778i) << (arg_0.xy % vec2<u32>(32u)), -17215i), 68744u), -992f);
    let var_2 = _wgslsmith_add_u32(10724u, countOneBits(reverseBits(abs(~54826u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 16u)], -940f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, -358f)))))));
    let var_4 = true;
    return vec3<f32>(_wgslsmith_f_op_f32(-var_1.e), arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1f, arg_1))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = max(~(-1i), reverseBits(_wgslsmith_mult_i32(reverseBits(countOneBits(49898i)), 1i)));
    global0 = arg_1;
    global1 = array<f32, 16>();
    let var_1 = vec2<bool>(any(vec3<bool>(arg_1, true, all(vec4<bool>(arg_1, arg_1, arg_1, false)))) || true, arg_1);
    let var_2 = ~(~abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(0u, u_input.b.x, u_input.c), vec3<u32>(u_input.c, u_input.a, u_input.b.x))));
    return Struct_2(global1[_wgslsmith_index_u32(~31699u, 16u)], ~var_2.x, firstTrailingBit(vec2<i32>(-_wgslsmith_div_i32(var_0, var_0), countOneBits(35592i))), select(-783i, 4552i, !all(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(557f, u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 16u)], 406f, global1[_wgslsmith_index_u32(u_input.c, 16u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(211f, global1[_wgslsmith_index_u32(u_input.c, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]) * vec3<f32>(-633f, -452f, global1[_wgslsmith_index_u32(23943u, 16u)])))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1458f, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], -169f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)], 2084f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], -835f, global1[_wgslsmith_index_u32(1814u, 16u)]) + vec3<f32>(-1284f, 1049f, global1[_wgslsmith_index_u32(u_input.b.x, 16u)])), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(0u, 85126u, u_input.b.x), -1236f, 982f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1204f, global1[_wgslsmith_index_u32(1u, 16u)], -2732f) - vec3<f32>(1621f, global1[_wgslsmith_index_u32(0u, 16u)], 715f))))))), true);
    var var_1 = var_0;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(sign(var_1.a));
    let var_4 = vec3<bool>(_wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, 1u, 1u), vec3<u32>(14366u, 34394u, 59208u))), var_0.a, _wgslsmith_f_op_f32(max(1f, global1[_wgslsmith_index_u32(~var_0.b, 16u)])))).x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a + var_0.a)))), all(vec2<bool>(true, var_0.a > var_3)) != (all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))) == func_3(var_0, 22776u)), false);
    var var_5 = vec2<bool>(any(!vec4<bool>(false, false & var_4.x, var_4.x, var_4.x & false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~firstTrailingBit(2043u)) | _wgslsmith_dot_vec3_u32(min(vec3<u32>(5463u, u_input.c, 0u) >> (vec3<u32>(var_0.b, var_1.b, var_1.b) % vec3<u32>(32u)), vec3<u32>(var_0.b, u_input.a, var_0.b) >> (vec3<u32>(63662u, 1u, var_0.b) % vec3<u32>(32u))), vec3<u32>(1u, u_input.a, firstTrailingBit(var_0.b))), vec2<f32>(global1[_wgslsmith_index_u32(var_1.b, 16u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_1(-1000f, firstLeadingBit(u_input.b.x))).x, var_3))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1023f + -376f) * 741f) * var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) - var_1.a), -356f));
}

