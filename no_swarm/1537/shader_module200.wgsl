struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> vec2<u32> {
    var var_0 = firstTrailingBit(vec4<u32>(max(global1.x, 12753u), ~16869u, ~global1.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 80742u, global1.x, 63933u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 1u, 1u), vec4<u32>(56045u, 4294967295u, 14855u, global1.x))), 1u)));
    var var_1 = ~(-48581i);
    var var_2 = Struct_1(~4294967295u, _wgslsmith_clamp_u32(4294967295u, 81878u, ~(~4294967295u)) | _wgslsmith_dot_vec3_u32(var_0.xxw, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.e, 42342u), var_0.xyx)));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~(~var_0.x)), ~79603u, 1u >> (u_input.e % 32u), global1.x >> (var_0.x % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~abs(var_0.x), ~4294967295u, reverseBits(u_input.d) << (reverseBits(4006u) % 32u), 4294967295u), vec4<u32>(select(4294967295u, _wgslsmith_sub_u32(0u, u_input.d), false), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.zw, vec2<u32>(var_2.a, 0u)), _wgslsmith_mult_u32(1u, global1.x)), 4133u, 1u), reverseBits(~(~vec4<u32>(99653u, u_input.e, var_2.b, 50188u)))));
    var_2 = Struct_1(_wgslsmith_mult_u32(max(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.xyw), ~vec3<u32>(1u, var_0.x, var_0.x)), abs(var_2.a)), u_input.a), global1.x);
    return _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(25188u, var_2.b) ^ vec2<u32>(var_2.a, 4294967295u)), reverseBits(var_0.zy), abs(vec2<u32>(2178u, u_input.e))), var_0.xw) >> (~var_0.zz % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = u_input.b.yz;
    global1 = ~func_3(-var_0.x << (~62522u % 32u), max(abs(vec2<i32>(u_input.c, 24334i)), _wgslsmith_sub_vec2_i32(firstTrailingBit(var_0), ~vec2<i32>(-19653i, -2147483647i))), false);
    var var_1 = select(vec4<bool>(false, arg_1.e, arg_1.d.x, all(vec2<bool>(true, true))), select(arg_1.b, select(!select(arg_1.b, arg_1.b, arg_1.b.x), !(!arg_1.b), false), select(select(arg_1.b, !arg_1.b, !arg_1.b), !arg_1.b, true)), true);
    global0 = array<f32, 24>();
    let var_2 = !vec4<bool>(!(0i == firstTrailingBit(arg_1.a.x)), false, global0[_wgslsmith_index_u32(1u, 24u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 24u)])), true);
    return vec4<f32>(-211f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global1.x, 24u)], -1232f)), _wgslsmith_f_op_f32(abs(1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(204f))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-651f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), global0[_wgslsmith_index_u32(~1u, 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1311f * 622f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1277f, arg_1, arg_0.c, global0[_wgslsmith_index_u32(1u, 24u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 24u)], -1000f, -233f, 1000f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1647f, arg_1, arg_0.c, 1210f)), vec4<f32>(-1769f, global0[_wgslsmith_index_u32(global1.x, 24u)], arg_0.c, global0[_wgslsmith_index_u32(u_input.e, 24u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c, arg_1, global0[_wgslsmith_index_u32(u_input.e, 24u)], arg_0.c))))))), -max(u_input.b.x, u_input.b.x) != (-2147483647i & max(-90599i, arg_0.a.x))));
    global0 = array<f32, 24>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4777u, u_input.a), vec2<u32>(1u, 4294967295u)), vec2<u32>(u_input.a, 0u) & vec2<u32>(0u, global1.x)), arg_0)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, -541f, arg_0.c, global0[_wgslsmith_index_u32(global1.x, 24u)]))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c, global0[_wgslsmith_index_u32(62279u, 24u)], 1287f, -1173f))), select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, false), arg_0.b, false))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(207f, global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_1, 265f) * vec4<f32>(-715f, var_0.x, 1562f, 2388f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 278f, -292f, 991f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-2127f)), _wgslsmith_f_op_f32(-2490f * _wgslsmith_f_op_f32(arg_0.c + 200f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x, 24u)] - var_0.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zy + _wgslsmith_f_op_vec2_f32(ceil(var_0.wy))))));
    let var_2 = select(!vec3<bool>(true, false, !arg_0.b.x), !select(!select(arg_0.d, arg_0.b.xwy, arg_0.d), !arg_0.b.wxy, select(select(arg_0.b.ywz, arg_0.d, arg_0.b.xzw), !vec3<bool>(arg_0.e, false, true), arg_0.e)), arg_0.b.x);
    return 1i;
}

fn func_4(arg_0: i32) -> Struct_2 {
    global1 = vec2<u32>(global1.x, ~_wgslsmith_div_u32(u_input.e, 0u)) & ~vec2<u32>(func_3(i32(-1i) * -2147483647i, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 2147483647i), vec2<i32>(arg_0, u_input.b.x)), false).x, 0u);
    global0 = array<f32, 24>();
    let var_0 = abs(-vec4<i32>(-45549i, ~arg_0 | -u_input.b.x, _wgslsmith_dot_vec3_i32(max(vec3<i32>(5239i, arg_0, 28656i), u_input.b.xzy), ~vec3<i32>(arg_0, arg_0, u_input.b.x)), arg_0));
    var var_1 = global1.x;
    var_1 = 4294967295u;
    return Struct_2(vec4<i32>(var_0.x, firstLeadingBit(var_0.x), u_input.c, -1i), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), false), global0[_wgslsmith_index_u32(global1.x, 24u)], vec3<bool>(true, !(_wgslsmith_dot_vec2_i32(var_0.ww, u_input.b.wy) == u_input.c), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), false))), !(!all(vec3<bool>(true, false, false))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    global0 = array<f32, 24>();
    var var_0 = Struct_2(vec4<i32>(1i, -2147483647i, u_input.c, -_wgslsmith_mult_i32(u_input.b.x >> (19390u % 32u), max(u_input.c, u_input.b.x))), select(vec4<bool>(!arg_1.d.x, all(arg_0), true, all(!vec2<bool>(true, arg_1.b.x))), arg_0, !(u_input.a >= global1.x)), arg_1.c, !(!vec3<bool>(!arg_0.x, any(vec2<bool>(arg_0.x, false)), arg_0.x == false)), select(func_4(u_input.c).b.x, !(!arg_1.d.x), ~(i32(-1i) * -1i) != arg_1.a.x));
    global1 = vec2<u32>(u_input.a, ~(~(~(~16015u))));
    let var_1 = reverseBits(select(_wgslsmith_mult_i32(u_input.b.x, ~_wgslsmith_dot_vec3_i32(arg_1.a.xxx, var_0.a.yxx)), ~(-1472i), arg_1.d.x));
    global1 = vec2<u32>(60705u, ~22544u);
    return Struct_1(_wgslsmith_mult_u32(4294967295u, u_input.a), max(global1.x, 18004u & select(func_3(0i, u_input.b.xz, false).x, ~4294967295u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~abs(global1.x), _wgslsmith_sub_u32(4989u, abs(u_input.a & global1.x)));
    var var_1 = func_5(!select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, false), vec4<bool>(true, true, 949f < global0[_wgslsmith_index_u32(global1.x, 24u)], select(false, false, false)), any(vec4<bool>(true, false, true, true)) && true), func_4(max(max(func_1(Struct_2(u_input.b, vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(var_0.a, 24u)], vec3<bool>(true, true, true), true), 265f), max(-1i, u_input.c)), 0i)));
    var var_2 = Struct_1(countOneBits(0u), ~max(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, var_0.a, var_1.a, u_input.e), vec4<u32>(var_0.a, var_0.b, 0u, 39498u)), select(var_0.b, ~1u, true)));
    var var_3 = var_0;
    let var_4 = select(false, select(true, any(!func_4(0i).d), all(vec2<bool>(any(vec3<bool>(false, false, true)), true))), true);
    var var_5 = _wgslsmith_sub_i32(min(-1i, ~u_input.b.x), _wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec2_i32(-(~u_input.b.yx), abs(select(vec2<i32>(23347i, 2147483647i), vec2<i32>(5208i, u_input.b.x), var_4)))));
    var_2 = func_5(!(!(!(!vec4<bool>(var_4, true, false, true)))), func_4(u_input.c));
    let var_6 = ~(~vec3<u32>(global1.x << (func_3(u_input.b.x, u_input.b.wz, false).x % 32u), ~0u, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.b.x, u_input.c), 256f, min(0u, ~(~var_3.a)) ^ (var_6.x & max(var_2.a, firstTrailingBit(1u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, global0[_wgslsmith_index_u32(var_3.b, 24u)], 103f)) - vec3<f32>(global0[_wgslsmith_index_u32(12354u, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1435f, global0[_wgslsmith_index_u32(var_2.a, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<f32>(1423f, -483f, global0[_wgslsmith_index_u32(var_1.b, 24u)]))))))), _wgslsmith_add_i32(_wgslsmith_mult_i32(min(_wgslsmith_add_i32(1i, 2960i), -1i), countOneBits(u_input.b.x) >> (38899u % 32u)), func_4(u_input.c).a.x));
}

