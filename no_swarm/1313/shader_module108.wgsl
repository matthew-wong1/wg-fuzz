struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-428f, 694f, -829f, 1793f, -1688f, -300f, -1465f, -114f, 303f, -796f, -2164f, 801f, -1436f);

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    let var_0 = global0[_wgslsmith_index_u32(~79630u, 13u)];
    let var_1 = _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-250i, 39631i), vec2<i32>(36110i, -27767i)) << (103182u % 32u)) << (4341u % 32u), -12985i);
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-506f, global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1030f), vec2<f32>(global1.x, 615f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -302f)) * vec2<f32>(-1415f, 376f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, 1091f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 13u)], 418f)))))), true))));
    return global1.x;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<f32, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1925f, global0[_wgslsmith_index_u32(arg_2.x, 13u)], global1.x) - vec3<f32>(global1.x, global1.x, global1.x)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-857f, -1367f, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(50239u, 13u)], global1.x, global1.x))))) + vec3<f32>(-1187f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_1.x, 13u)] * global0[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -566f))) * vec3<f32>(_wgslsmith_f_op_f32(func_3()), 1353f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1485f, -1123f), 1f)));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.x, 13u)]))), 263f))), _wgslsmith_f_op_vec2_f32(-var_0.xy));
    global0 = array<f32, 13>();
    let var_1 = Struct_1(abs(~0u) & arg_2.x, vec4<i32>(1i, 1i, 1i, 1i), select(select(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(true, true, true), vec3<bool>(arg_0, true, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), arg_0 || true), vec3<bool>(false, any(vec2<bool>(arg_0, arg_0)), arg_0), !select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, true, true))), select(select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), arg_0), vec3<bool>(true, false, arg_0), any(vec2<bool>(true, false))), vec3<bool>(all(vec3<bool>(arg_0, arg_0, arg_0)), any(vec2<bool>(true, arg_0)), all(vec3<bool>(arg_0, false, arg_0))), all(vec2<bool>(true, false))), arg_0), vec2<u32>(countOneBits(~u_input.a), 62430u), global1.x);
    return var_1;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, global0[_wgslsmith_index_u32(arg_0.d.x, 13u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-475f, -1000f) * vec2<f32>(arg_0.e, 580f))))), vec2<f32>(-2223f, global1.x))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2797f, global1.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1021f), -826f)))));
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1936f)), 925f), _wgslsmith_f_op_f32(-arg_0.e)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-852f, -930f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1147f, arg_0.e), vec2<f32>(arg_0.e, 829f)))))), vec2<f32>(_wgslsmith_f_op_f32(325f - _wgslsmith_f_op_f32(global1.x - 1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.e, arg_0.e))))), select(arg_0.c.xy, var_0.c.zz, arg_0.b.x < var_0.b.x))));
    global0 = array<f32, 13>();
    var var_1 = func_2(!arg_0.c.x, countOneBits(~vec4<u32>(56235u, _wgslsmith_mult_u32(56665u, 9609u), 49816u, _wgslsmith_sub_u32(39114u, arg_0.a))), vec4<u32>(2660u, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, var_0.a), _wgslsmith_clamp_u32(var_0.d.x, u_input.a, 25742u)), arg_0.d.x, 13240u));
    return _wgslsmith_mod_i32(~(-1i), -abs(abs(-51726i))) ^ _wgslsmith_div_i32(22542i, var_1.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 13u)];
    return func_4(func_2(false, abs(~vec4<u32>(69015u, 0u, arg_1.d.x, 2763u)) >> (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a, arg_1.d.x, 16359u, u_input.a), vec4<u32>(u_input.a, arg_1.d.x, u_input.a, arg_1.a), arg_0), firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, 32701u)), select(vec4<u32>(u_input.a, 19719u, 13966u, 68201u), vec4<u32>(u_input.a, 1u, arg_1.d.x, arg_1.a), arg_0)) % vec4<u32>(32u)), countOneBits(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(-756i, i32(-1i) * -12644i), -firstLeadingBit(23041i), _wgslsmith_div_i32(reverseBits(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(0i, 1i))) << (u_input.a % 32u)) & vec3<i32>(~(~_wgslsmith_mod_i32(48115i, -5809i)), ~firstLeadingBit(-2147483647i), -20125i);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global1.x)), global1.x)));
    global0 = array<f32, 13>();
    var var_1 = Struct_1(16292u, -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-664i, var_0.x, -19846i), var_0), ~0i), var_0.x, func_1(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), Struct_1(0u, vec4<i32>(-6168i, -1i, 17315i, var_0.x), vec3<bool>(true, true, false), vec2<u32>(u_input.a, u_input.a), -1464f)), -53954i), !(!vec3<bool>(select(false, true, false), true, any(vec3<bool>(true, false, true)))), ~(min(~vec2<u32>(13488u, 1u), ~vec2<u32>(u_input.a, 62646u)) ^ vec2<u32>(~u_input.a, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-637f, 1455f)) - _wgslsmith_f_op_f32(f32(-1f) * -1513f))));
    var var_2 = Struct_1(u_input.a, var_1.b, !(!select(!vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(var_1.c.x, true, false), select(var_1.c, var_1.c, vec3<bool>(var_1.c.x, false, var_1.c.x)))), vec2<u32>(_wgslsmith_mult_u32(39776u, 4454u), reverseBits(u_input.a)), global0[_wgslsmith_index_u32(var_1.a & _wgslsmith_div_u32(u_input.a, abs(~1u)), 13u)]);
    var var_3 = ~var_2.d.x;
    var_1 = Struct_1(var_2.a, vec4<i32>(~(-42026i), _wgslsmith_dot_vec4_i32(var_2.b, min(var_2.b, var_2.b)), -27892i & var_0.x, var_2.b.x), var_2.c, vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(var_2.a, 4294967295u), ~0u)) << (select(var_2.d, var_1.d, vec2<bool>(true || var_2.c.x, any(var_1.c.xx))) % vec2<u32>(32u)), var_1.e);
    let var_4 = select(vec4<bool>(var_1.c.x, var_2.c.x, true, any(!var_1.c)), select(!(!(!vec4<bool>(var_1.c.x, var_2.c.x, var_1.c.x, var_2.c.x))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1181f) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.d.x, 13u)] * 764f), !(!var_2.c.x), any(select(var_1.c.xz, var_2.c.zx, var_2.c.zz)), var_1.c.x), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), var_2.c.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(abs(var_2.b.x) | 2147483647i, 9484i), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-820f, -518f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1697f + 1128f), _wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-934f, -230f, var_2.e, var_1.e)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-207f, 266f, 978f, 1000f), vec4<f32>(var_2.e, 925f, 507f, global0[_wgslsmith_index_u32(74508u, 13u)]))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 924f, -967f, -180f)))), !(global1.x != global1.x)))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(68846u, 13u)], -335f, var_1.e)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(609f, var_2.e, 1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), abs(var_2.b.xxw << (abs(~vec3<u32>(1u, u_input.a, 22208u)) % vec3<u32>(32u))));
}

