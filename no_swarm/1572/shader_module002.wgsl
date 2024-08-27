struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-41150i, 4907i), vec2<i32>(0i, -10640i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-39994i, -1i), vec2<i32>(-1i, i32(-2147483648)));

var<private> global1: u32 = 35229u;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-arg_0, firstTrailingBit(-11525i), -2147483647i)), vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_0, 38594i), _wgslsmith_mod_vec3_i32(vec3<i32>(-33038i, 0i, arg_0), vec3<i32>(arg_0, arg_0, arg_0))), var_0), ~select(vec3<i32>(var_0, -9316i, -19396i) & vec3<i32>(2147483647i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-45346i, arg_0, 7711i), vec3<i32>(arg_0, 2147483647i, var_0), vec3<i32>(arg_0, arg_0, var_0)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = var_1;
    var_3 = -vec3<i32>(-2147483647i, _wgslsmith_sub_i32(var_1.x, ~arg_0), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 10632i, var_3.x, 40934i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_1.x, -4690i, 27061i), vec4<i32>(-1i, var_0, 2147483647i, var_1.x))), ~reverseBits(1841i)));
    return select(!vec4<bool>(all(!vec3<bool>(var_2.x, var_2.x, var_2.x)), select(var_2.x, var_2.x, !var_2.x), false, true), vec4<bool>(var_2.x, var_2.x, !var_2.x, any(vec4<bool>(false, var_2.x || var_2.x, var_2.x, all(var_2)))), select(!(!vec4<bool>(false, var_2.x, true, true)), !(!select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(var_2.x, true, false, true))), all(!(!vec4<bool>(false, var_2.x, true, var_2.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    return u_input.a.x | u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = arg_1.e;
    var var_1 = arg_1;
    var var_2 = arg_1.a;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.a.x, _wgslsmith_f_op_f32(-1000f - arg_1.e.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.b.a.x)), -188f), _wgslsmith_f_op_f32(arg_1.c - var_2.a.x)) - vec4<f32>(arg_0, -1612f, _wgslsmith_f_op_f32(-arg_1.a.a.x), arg_0)), vec4<u32>(_wgslsmith_clamp_u32(var_1.d.b.x, ~1u, ~26131u | ~arg_1.b.b.x), 0u, func_4(!func_3(-1i, var_1.d.a.yxz), 15423i), var_2.b.x), vec2<i32>(-20501i, -1i));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.wz + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-497f, -208f))))), vec2<f32>(-119f, var_0.a.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3.a.b;
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(min(arg_3.b.a.x, 694f)), arg_3)) + arg_3.e.a.yz)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.b.a.x, arg_3.c))), 146f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.e.a.x, arg_3.a.a.x))))))));
    global1 = ~max((_wgslsmith_add_u32(arg_3.b.b.x, 0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 16061u), vec3<u32>(arg_3.e.b.x, u_input.a.x, arg_3.a.b.x))) & arg_3.b.b.x, countOneBits(func_4(!vec4<bool>(true, false, arg_0.x, true), 2147483647i)));
    let var_3 = -47467i;
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = array<vec2<i32>, 5>();
    global1 = ~(~(~arg_2.d.b.x));
    return _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(-arg_0.a.x), func_1(select(vec2<bool>(u_input.a.x == 4294967295u, true), vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, true)), firstLeadingBit(-1i) & (-arg_0.c.x ^ 0i), abs(arg_1.b.c), arg_2))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, -1377f, 1884f)) - vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1000f - -2052f), _wgslsmith_f_op_f32(step(-1547f, 932f)), _wgslsmith_f_op_f32(f32(-1f) * -970f)))), true)), 0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -677f)), _wgslsmith_f_op_f32(func_5(Struct_1(vec4<f32>(421f, -463f, 536f, -1434f), vec4<u32>(21025u, 1u, 12992u, 37012u), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), Struct_2(Struct_1(vec4<f32>(-992f, 969f, 1250f, 645f), vec4<u32>(u_input.a.x, 41064u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), Struct_1(vec4<f32>(627f, -2906f, -1000f, -483f), vec4<u32>(u_input.a.x, 33054u, u_input.a.x, 4294967295u), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), 956f, Struct_1(vec4<f32>(-2247f, -2058f, -430f, 562f), vec4<u32>(u_input.a.x, u_input.a.x, 26994u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), Struct_1(vec4<f32>(1038f, -852f, -373f, -1090f), vec4<u32>(0u, 36762u, 1u, u_input.a.x), vec2<i32>(36805i, -10431i))), func_1(vec2<bool>(true, true), 26257i, vec2<i32>(-2147483647i, -2147483647i), Struct_2(Struct_1(vec4<f32>(491f, 787f, -489f, 1241f), vec4<u32>(1u, 0u, 35271u, u_input.a.x), global0[_wgslsmith_index_u32(55411u, 5u)]), Struct_1(vec4<f32>(1467f, -1432f, -569f, -1027f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), 1910f, Struct_1(vec4<f32>(-1887f, 772f, 333f, -128f), vec4<u32>(u_input.a.x, u_input.a.x, 41719u, 81560u), vec2<i32>(2147483647i, 1i)), Struct_1(vec4<f32>(-1274f, 735f, 513f, -512f), vec4<u32>(18720u, 4294967295u, 4294967295u, 60726u), vec2<i32>(21094i, 2147483647i)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(870f, 589f)), func_1(vec2<bool>(true, true), 17911i, vec2<i32>(1i, 2520i), Struct_2(Struct_1(vec4<f32>(1993f, 1010f, -668f, 470f), vec4<u32>(4294967295u, 14101u, 21192u, u_input.a.x), global0[_wgslsmith_index_u32(1u, 5u)]), Struct_1(vec4<f32>(-416f, -1053f, -951f, -1084f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), -797f, Struct_1(vec4<f32>(775f, -1683f, 467f, -2626f), vec4<u32>(45237u, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(41945u, 5u)]), Struct_1(vec4<f32>(-2153f, -1000f, 239f, 1000f), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec2<i32>(1i, 2147483647i)))).c)), _wgslsmith_f_op_f32(f32(-1f) * -176f)) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-855f * 146f))), 1000f, _wgslsmith_div_f32(-606f, _wgslsmith_f_op_f32(f32(-1f) * -1986f)), _wgslsmith_f_op_f32(f32(-1f) * -1149f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-589f, 1f, 397f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1297f, -1335f, 195f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(122f, -505f, -1495f), vec3<f32>(1531f, -329f, 2675f))))))));
}

