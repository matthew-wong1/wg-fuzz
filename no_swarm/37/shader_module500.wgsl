struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 762f;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(74483u, 4294967295u, 0u, 39058u), 2147483647i, 1u, vec2<f32>(551f, -697f), true);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<u32>(55214u, 34903u, 74917u, 8390u), 55010i, 43068u, vec2<f32>(144f, 747f), true), Struct_1(vec4<u32>(1u, 0u, 5879u, 33344u), 74082i, 11179u, vec2<f32>(-1297f, -1222f), false), Struct_1(vec4<u32>(11865u, 4294967295u, 13358u, 39178u), -1i, 0u, vec2<f32>(1539f, -467f), false));

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> f32 {
    global2 = array<Struct_1, 3>();
    let var_0 = select(vec4<bool>(false, false, 2147483647i != -global1.b, !all(vec3<bool>(true, true, true))), !(!vec4<bool>(!arg_0.e, any(vec4<bool>(arg_0.e, false, true, global1.e)), global1.e, arg_0.e)), select(vec4<bool>(!arg_0.e | true, !arg_0.e, !arg_0.e, arg_0.e), select(!vec4<bool>(false, arg_0.e, false, true), vec4<bool>(true, !arg_0.e, all(vec3<bool>(arg_0.e, true, true)), false), !vec4<bool>(arg_0.e, true, true, arg_0.e)), !vec4<bool>(false, arg_0.e, true, arg_0.e)));
    var var_1 = !vec4<bool>(true, arg_0.a.x < arg_0.c, all(!vec3<bool>(var_0.x, var_0.x, arg_0.e)), false);
    let var_2 = 1u;
    var var_3 = global1.b;
    return _wgslsmith_f_op_f32(exp2(arg_1));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> vec2<u32> {
    let var_0 = Struct_1(global1.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(global1.b, abs(1i)), select(~(-8053i), _wgslsmith_dot_vec2_i32(vec2<i32>(-377i, 0i), vec2<i32>(global3.x, u_input.b)), all(vec4<bool>(true, global1.e, false, arg_0.x)))), (-global3.x << (global1.a.x % 32u)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, global1.b) << (global1.a.xzx % vec3<u32>(32u)), abs(vec3<i32>(-2147483647i, -6106i, -14315i)))), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.d.x, global1.d.x)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.d.x)), 436f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, 309f) * global1.d)))), select(!global1.e, countOneBits(1u) == u_input.a, global1.b != ~u_input.b));
    let var_1 = Struct_1(abs(_wgslsmith_add_vec4_u32(max(vec4<u32>(0u, 29050u, 0u, 0u), var_0.a) & vec4<u32>(0u, global1.c, 28927u, 43849u), ~(~global1.a))), global1.b, 4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.d.x)), _wgslsmith_f_op_f32(-global1.d.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-375f, var_0.d.x) - var_0.d) - vec2<f32>(-731f, var_0.d.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(548f, var_0.d.x), global1.d, var_0.e))))), any(vec4<bool>(-32349i <= _wgslsmith_mod_i32(2147483647i, global1.b), global1.e, global1.c < 0u, var_0.e)));
    global2 = array<Struct_1, 3>();
    let var_2 = Struct_1(abs(var_0.a) << ((~reverseBits(global1.a) << (~vec4<u32>(u_input.a, global1.c, global1.c, 111256u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_i32(~(-global3.x), -var_0.b), ~28970u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-575f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, var_1.b, var_1.c, vec2<f32>(var_0.d.x, 1000f), false), var_0.d.x, var_1.a.x, var_0.a.wxw)), _wgslsmith_f_op_f32(-arg_1), true)))), !arg_0.x);
    var var_3 = 833f;
    return _wgslsmith_div_vec2_u32(var_2.a.wy, global1.a.xx);
}

fn func_2() -> u32 {
    global1 = Struct_1(reverseBits(global1.a), u_input.b & _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-64228i, -5787i, -2147483647i, -4493i)), reverseBits(vec4<i32>(u_input.b, -52866i, -2147483647i, 2147483647i))), -18120i, abs(~1i)), global1.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.d - global1.d))), vec2<f32>(global1.d.x, _wgslsmith_div_f32(global1.d.x, global1.d.x)), !(global1.d.x < global1.d.x))))), all(vec3<bool>(!global1.e, true, global1.e)));
    let var_0 = global2[_wgslsmith_index_u32(~firstTrailingBit(~_wgslsmith_div_u32(abs(u_input.a), u_input.a | u_input.a)), 3u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) + global1.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(sign(-245f))))))));
    var var_2 = global2[_wgslsmith_index_u32(34003u, 3u)];
    var var_3 = ~func_4(vec3<bool>(false, true, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(var_0.c, u_input.a, u_input.a, 0u), u_input.b, global1.c, vec2<f32>(-102f, -810f), false), -474f, u_input.a, var_0.a.xyy)), var_1.x))) | vec2<u32>(var_0.a.x, abs(u_input.a));
    return _wgslsmith_add_u32(_wgslsmith_div_u32(11281u, ~(~u_input.a ^ reverseBits(var_2.a.x))), countOneBits(4294967295u));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global2 = array<Struct_1, 3>();
    let var_0 = global1.b ^ u_input.b;
    let var_1 = vec2<bool>(!any(select(vec4<bool>(global1.e, global1.e, arg_0.x, false), vec4<bool>(true, arg_0.x, true, arg_0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, global1.e), vec4<bool>(false, true, false, global1.e)))), all(!arg_0));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(global1.c, _wgslsmith_mult_u32(func_2(), global1.a.x), ~u_input.a, (42098u ^ max(1u, u_input.a)) ^ global1.c), ~(~vec4<u32>(u_input.a, u_input.a, global1.c, ~global1.c)));
    let var_3 = _wgslsmith_add_vec4_i32(min(vec4<i32>(_wgslsmith_div_i32(~global3.x, min(-16279i, 0i)), -global3.x & var_0, global1.b, -46555i), abs(vec4<i32>(max(-1i, 54847i), -28106i, _wgslsmith_mult_i32(u_input.b, var_0), abs(u_input.b)))), -_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(global1.b, var_0, global3.x, var_0)), -(vec4<i32>(-2147483647i, -48449i, -42637i, var_0) | vec4<i32>(var_0, global3.x, -2147483647i, 1i)), vec4<i32>(global1.b, 52056i, min(var_0, -1i), ~1i)));
    return global2[_wgslsmith_index_u32(u_input.a, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!select(vec2<bool>(global1.e, global1.e), vec2<bool>(true, true), !global1.e)));
    var var_1 = -(~vec3<i32>(u_input.b, _wgslsmith_mod_i32(-42136i, global1.b), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b, 6525i), global3.xy), countOneBits(vec2<i32>(u_input.b, -2147483647i)))));
    global2 = array<Struct_1, 3>();
    var_1 = vec3<i32>(~(-2147483647i), u_input.b, -1i);
    global0 = -1053f;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, ~var_0.a.wzx << ((func_1(select(vec2<bool>(var_0.e, false), vec2<bool>(true, true), vec2<bool>(global1.e, global1.e))).a.ywx >> (abs(abs(vec3<u32>(45685u, u_input.a, u_input.a))) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, global1.d.x) - _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x))), 1363f));
}

