struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<u32, 17> = array<u32, 17>(1u, 1u, 4294967295u, 24267u, 16532u, 1u, 0u, 86180u, 18169u, 39572u, 18888u, 0u, 2308u, 25263u, 20689u, 61449u, 4294967295u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<f32> {
    let var_0 = ~global0.a;
    global0 = Struct_4(~(-2147483647i));
    var var_1 = vec3<bool>(true | select(true, all(!vec4<bool>(true, arg_0, arg_0, true)), true), false, false);
    var var_2 = _wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~max(~20172u, u_input.a), ~4294967295u), 17u)], 0u);
    var_1 = !(!select(!(!vec3<bool>(false, true, arg_0)), !select(vec3<bool>(false, var_1.x, true), vec3<bool>(true, true, false), vec3<bool>(arg_0, false, false)), select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(var_1.x, var_1.x, arg_0), vec3<bool>(true, var_1.x, arg_0))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1)), -1116f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1)))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(413f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1703f, 781f, 1661f), vec3<f32>(405f, -927f, 997f)))))), global0.a);
    global1 = array<u32, 17>();
    global0 = Struct_4(max(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -48363i, global0.a, global0.a), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, -9702i, -74307i, 0i), vec4<i32>(-1i, global0.a, global0.a, var_0.b)))), min(var_0.b, ~(~var_0.b))));
    var var_1 = firstTrailingBit(4294967295u) ^ 0u;
    let var_2 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a & global1[_wgslsmith_index_u32(u_input.a, 17u)], ~12357u, max(98369u, 18376u), 0u), select(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(38987u, 17u)], 1u, 0u), vec4<u32>(74225u, 0u, 35630u, u_input.a)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)) << (vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 28753u), ~1u, 17683u), vec3<u32>(15760u, min(global1[_wgslsmith_index_u32(4294967295u, 17u)], 65355u), reverseBits(11719u))), 1u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1u, 17u)]), 17u)], select(abs(u_input.a), reverseBits(2070u), 8020u > u_input.a), ~(global1[_wgslsmith_index_u32(0u, 17u)] ^ u_input.a))) % vec4<u32>(32u));
    return Struct_4(select(firstTrailingBit(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, 1431i, 2147483647i, global0.a), vec4<i32>(-6775i, -44469i, global0.a, var_0.b)), ~vec4<i32>(-1i, 0i, -1i, 12627i))), 0i, true));
}

fn func_1() -> u32 {
    global1 = array<u32, 17>();
    global0 = func_2();
    let var_0 = Struct_2(-1936f);
    var var_1 = Struct_3(~(u_input.a ^ ~(~0u)), min(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 885u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9091u, 17u)], 17u)], 21057u))), 17u)], ~4294967295u) >> (global1[_wgslsmith_index_u32(u_input.a, 17u)] % 32u));
    var_1 = Struct_3(u_input.a, ~(~(~_wgslsmith_add_u32(u_input.a, u_input.a))));
    return reverseBits(min(~(~4834u), firstLeadingBit(0u) << (_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(12792u, 17u)], var_1.a, 1u) % 32u))) << (global1[_wgslsmith_index_u32(1u, 17u)] % 32u);
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = any(vec3<bool>(false, true, !any(vec4<bool>(true, true, true, true))));
    return Struct_1(vec3<f32>(-955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-536f - 537f)))), -364f), _wgslsmith_sub_i32(39935i, global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_4(global1[_wgslsmith_index_u32(select(u_input.a, func_1(), true), 17u)] << ((_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], u_input.a), vec3<u32>(1u, u_input.a, u_input.a)) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 66289u, global1[_wgslsmith_index_u32(10508u, 17u)]), ~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 17u)], 4294967295u))) % 32u));
    var var_2 = !(!select(!vec3<bool>(true, false, var_0), vec3<bool>(var_0, !var_0, all(vec2<bool>(false, true))), var_0));
    let var_3 = Struct_3(0u, ~72933u);
    var var_4 = vec3<i32>(global0.a, -33242i, func_4(var_3.a).b);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-417f, -1547f, 1409f) - vec3<f32>(-1534f, var_1.a.x, -916f)), true))) - var_1.a), global0.a);
    var var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(475f, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2214f, -1184f, 343f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1953f, var_1.a.x, 1000f, var_1.a.x), vec4<f32>(-459f, 1078f, var_1.a.x, -540f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -340f, -413f), vec4<f32>(var_1.a.x, 976f, var_1.a.x, -1408f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 401f)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -1494f, var_1.a.x) * vec4<f32>(833f, -2011f, var_1.a.x, var_1.a.x))))))), var_0));
    var var_6 = vec3<i32>(~var_4.x, _wgslsmith_add_i32(var_4.x ^ _wgslsmith_sub_i32(abs(0i), ~68698i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, var_4.x, 26603i) << (vec4<u32>(4294967295u, 6536u, 0u, 8892u) % vec4<u32>(32u)), vec4<i32>(28888i, 1i, var_1.b, global0.a))), -1i);
    var var_7 = countOneBits(~(~min(vec4<u32>(var_3.a, u_input.a, 1u, 1u), ~vec4<u32>(u_input.a, 21432u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.b, 17u)], 17u)], 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_mult_i32(i32(-1i) * -func_4(0u).b, global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5.x))), var_1.a.x)), -(~(var_4.yz << (~vec2<u32>(var_3.a, u_input.a) % vec2<u32>(32u)))), var_4.x);
}

