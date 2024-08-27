struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: u32 = 1u;

var<private> global2: Struct_3 = Struct_3(-443f, 0u, Struct_2(Struct_1(1u, true), Struct_1(1u, false), Struct_1(41870u, false), true), vec3<f32>(491f, -209f, 631f), vec3<u32>(0u, 61741u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    var var_0 = all(arg_0);
    global2 = Struct_3(_wgslsmith_f_op_f32(arg_2 * 309f), _wgslsmith_clamp_u32(1u, firstLeadingBit(abs(0u)) << (global2.c.a.a % 32u), _wgslsmith_sub_u32(global2.b, arg_1.x)), global2.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -450f, arg_2), abs(vec3<u32>(_wgslsmith_add_u32(~4294967295u, ~arg_1.x), countOneBits(reverseBits(1u)), ~(~global2.c.a.a))));
    var_0 = true;
    var var_1 = Struct_3(global2.a, ~_wgslsmith_add_u32(min(_wgslsmith_clamp_u32(0u, 0u, global2.c.a.a), ~0u), ~max(arg_1.x, arg_1.x)), Struct_2(Struct_1(arg_1.x, arg_0.x), Struct_1(~(~arg_1.x), arg_0.x), Struct_1(arg_1.x, !any(arg_0.wzx)), arg_3.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1263f, global2.d.x, _wgslsmith_f_op_f32(min(1258f, _wgslsmith_f_op_f32(trunc(1000f))))))), vec3<u32>(arg_1.x, reverseBits(~arg_1.x) ^ 28904u, _wgslsmith_dot_vec2_u32(vec2<u32>(9802u >> (global2.e.x % 32u), global2.e.x), arg_1)));
    global2 = Struct_3(-183f, 72855u, Struct_2(Struct_1(38782u, arg_3.x), global2.c.b, var_1.c.a, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.d))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_2, global2.a), var_1.d, arg_0.zyz)))), _wgslsmith_f_op_vec3_f32(-global2.d)))), ~var_1.e);
    return any(vec2<bool>(all(arg_0.xx), false));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    let var_0 = 23503u;
    global0 = array<i32, 13>();
    let var_1 = Struct_2(Struct_1(55494u, any(!(!vec3<bool>(arg_0.d, global2.c.b.b, false)))), arg_0.c, Struct_1(reverseBits(34008u), !func_3(select(vec4<bool>(false, global2.c.d, arg_0.c.b, arg_0.d), vec4<bool>(arg_0.b.b, true, global2.c.d, arg_0.d), vec4<bool>(true, true, false, arg_0.d)), global2.e.xy, _wgslsmith_f_op_f32(max(-1332f, global2.d.x)), select(vec2<bool>(global2.c.b.b, false), vec2<bool>(false, false), vec2<bool>(arg_0.d, false)))), _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(abs(1f))) != global2.d.x);
    let var_2 = _wgslsmith_div_u32(max(min(~39900u, global2.b), 0u), var_0);
    global2 = Struct_3(-1000f, 92896u, Struct_2(global2.c.c, Struct_1(firstTrailingBit(var_0), false), var_1.a, all(!(!vec2<bool>(arg_0.a.b, arg_0.d)))), global2.d, vec3<u32>(firstLeadingBit(select(arg_0.c.a >> (var_0 % 32u), _wgslsmith_dot_vec2_u32(global2.e.zz, global2.e.yz), false)), 32576u, ~(~min(73217u, 40379u))));
    return ~4294967295u >> (var_0 % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<i32, 13>();
    global1 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_2.a, _wgslsmith_mult_u32(1u, func_2(global2.c, vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 13u)], u_input.a, global0[_wgslsmith_index_u32(1u, 13u)]))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 83378u), vec2<u32>(1u, 16005u)), arg_2.a | ~arg_2.a), _wgslsmith_sub_vec4_u32(~min(vec4<u32>(global2.b, 113727u, arg_2.a, global2.b), vec4<u32>(21385u, global2.b, arg_2.a, arg_2.a)), vec4<u32>(68521u, ~global2.e.x, abs(1u), ~0u))));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a, 209f)))) + global2.a)));
    global2 = Struct_3(var_0, global2.b, global2.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global2.d)) - vec3<f32>(891f, 1862f, arg_1))))), ~abs(_wgslsmith_mod_vec3_u32(~global2.e, global2.e)));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(14067i, 2147483647i) & max(vec2<i32>(global0[_wgslsmith_index_u32(global2.c.b.a, 13u)], global0[_wgslsmith_index_u32(arg_2.a, 13u)]), vec2<i32>(u_input.a, u_input.a)), firstLeadingBit(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_2.a, 13u)]))), abs(~vec2<i32>(global0[_wgslsmith_index_u32(global2.b, 13u)], u_input.a))), firstLeadingBit(-16438i), 1i & (-1i << (~_wgslsmith_mult_u32(global2.b, arg_2.a) % 32u)), u_input.a);
    return Struct_1(global2.e.x, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    let var_0 = global2.c.b;
    global2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(999f, 449f)) * _wgslsmith_f_op_f32(sign(-1003f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), global2.d.x, arg_0.a == 87347u)))), ~33079u, global2.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(global2.d)))), ~min(vec3<u32>(arg_0.a, _wgslsmith_sub_u32(4294967295u, global2.e.x), _wgslsmith_mod_u32(1u, 4294967295u)), ~vec3<u32>(32250u, arg_0.a, 4294967295u)));
    let var_1 = !arg_1.xx;
    global1 = ~1u;
    global1 = _wgslsmith_add_u32(~(~(~firstTrailingBit(global2.c.a.a))), arg_0.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -1227f);
}

fn func_5(arg_0: f32) -> vec2<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_1(vec4<bool>(global2.c.d, global2.c.d, global2.c.c.b, global2.c.c.b), arg_0, Struct_1(global2.b, true)), select(vec3<bool>(global2.c.b.b, global2.c.d, global2.c.b.b), vec3<bool>(true, true, false), vec3<bool>(global2.c.a.b, global2.c.a.b, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.a * 1004f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(ceil(-1000f)), arg_0);
    var var_1 = vec4<bool>(all(select(vec4<bool>(!global2.c.b.b, true, global2.c.b.b, global2.a != -566f), vec4<bool>(u_input.a > global0[_wgslsmith_index_u32(global2.e.x, 13u)], true, global2.c.c.b, true & global2.c.b.b), (global0[_wgslsmith_index_u32(global2.c.b.a, 13u)] << (global2.e.x % 32u)) < -1i)), any(!vec4<bool>(any(vec4<bool>(true, true, true, true)), true == global2.c.d, false, 13468i <= global0[_wgslsmith_index_u32(global2.c.c.a, 13u)])), all(select(!select(vec2<bool>(false, true), vec2<bool>(global2.c.a.b, global2.c.c.b), vec2<bool>(true, global2.c.c.b)), !select(vec2<bool>(global2.c.d, false), vec2<bool>(false, global2.c.b.b), global2.c.d), vec2<bool>(global2.c.d, true))), func_1(!(!select(vec4<bool>(false, global2.c.d, false, global2.c.d), vec4<bool>(false, true, global2.c.b.b, global2.c.c.b), vec4<bool>(global2.c.b.b, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(func_4(global2.c.c, !vec3<bool>(global2.c.b.b, global2.c.a.b, false)))), global2.c.a).b);
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~(~global2.e ^ global2.e), firstTrailingBit(global2.e)), abs(abs(_wgslsmith_mult_vec3_u32(global2.e, global2.e >> (vec3<u32>(0u, global2.c.b.a, 2034u) % vec3<u32>(32u))))));
    var var_3 = var_0;
    var var_4 = global2.c.c;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(690f - 1f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_3.x))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    global0 = array<i32, 13>();
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1801f, arg_1.d.x, arg_1.c.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_div_f32(global2.a, 810f))))).x, 31813u, global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.d.x)), 1010f, _wgslsmith_f_op_f32(f32(-1f) * -1331f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global2.d, global2.d))))), global2.e);
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f - _wgslsmith_f_op_f32(990f + _wgslsmith_f_op_f32(-global2.d.x)))), ~abs(~_wgslsmith_mod_u32(arg_1.e.x, arg_1.e.x)), Struct_2(Struct_1(55647u, true), arg_1.c.c, Struct_1(~arg_1.c.b.a, all(!vec3<bool>(true, false, global2.c.c.b))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) + _wgslsmith_f_op_vec3_f32(global2.d - global2.d))))), ~_wgslsmith_sub_vec3_u32(arg_1.e, arg_1.e));
    global0 = array<i32, 13>();
    return Struct_1(~(~(~arg_1.c.b.a) ^ func_2(Struct_2(arg_1.c.a, arg_1.c.b, Struct_1(global2.b, false), false), vec4<i32>(6954i, -18578i, 1i, global0[_wgslsmith_index_u32(arg_1.c.b.a, 13u)]))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-499f)) * _wgslsmith_f_op_f32(-1385f * 325f)), _wgslsmith_f_op_f32(func_4(func_1(vec4<bool>(global2.c.d, global2.c.a.b, global2.c.a.b, true), -962f, Struct_1(1u, true)), vec3<bool>(global2.c.c.b, global2.c.a.b, false))))))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + global2.d.x), global2.c.b.a, global2.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2694f), 599f, _wgslsmith_f_op_f32(min(-576f, 1051f))) - _wgslsmith_f_op_vec3_f32(abs(global2.d))), vec3<u32>(34886u >> (_wgslsmith_mult_u32(global2.c.c.a, global2.e.x) % 32u), 30442u, ~(global2.c.a.a & 1u))));
    var var_1 = vec2<i32>(abs(~(i32(-1i) * -global0[_wgslsmith_index_u32(0u, 13u)])), _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -84376i), vec2<i32>(0i, global0[_wgslsmith_index_u32(var_0.a, 13u)])) ^ u_input.a, 2147483647i));
    var var_2 = global2.e.x;
    var var_3 = -181f;
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1141f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(global2.a - global2.d.x)))), countOneBits(firstTrailingBit(max(4294967295u, global2.c.c.a)) | global2.b), Struct_2(Struct_1(func_6(vec2<f32>(-544f, 518f), Struct_3(143f, global2.e.x, global2.c, global2.d, vec3<u32>(global2.c.b.a, var_0.a, 38826u))).a & global2.c.a.a, 8823u < global2.e.x), global2.c.c, Struct_1(var_0.a << (43642u % 32u), all(vec3<bool>(true, false, true))), false), vec3<f32>(global2.a, -284f, global2.d.x), ~vec3<u32>(36291u, 8543u, 4294967295u));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.d) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.d) - _wgslsmith_f_op_vec3_f32(select(global2.d, vec3<f32>(global2.a, -445f, global2.d.x), global2.c.c.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.d.x, -585f), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, -684f, global2.d.x)))) - global2.d);
    global2 = Struct_3(_wgslsmith_f_op_f32(-global2.a), global2.c.b.a, global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2401f, global2.a, -107f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, global2.d.x, var_4.x) * var_4))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4 + global2.d), var_4) - _wgslsmith_f_op_vec3_f32(-var_4))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, global2.c.b.a, 0u), vec3<u32>(var_0.a, 1u, global2.e.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.a, 1u, var_0.a), vec3<u32>(0u, 0u, 20245u), abs(global2.e)), abs(global2.e) << (~vec3<u32>(var_0.a, 1u, var_0.a) % vec3<u32>(32u))));
    var var_5 = ~vec4<i32>(global0[_wgslsmith_index_u32(~(4294967295u << (global2.b % 32u)), 13u)] << (var_0.a % 32u), ~(~(-global0[_wgslsmith_index_u32(0u, 13u)])), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_0.a, 13u)], 0i, u_input.a, global0[_wgslsmith_index_u32(24825u, 13u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], -20768i, u_input.a, var_1.x), vec4<i32>(global0[_wgslsmith_index_u32(17176u, 13u)], global0[_wgslsmith_index_u32(global2.e.x, 13u)], 9442i, u_input.a)), vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], -2147483647i, var_1.x, u_input.a)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b, global2.c.b.a), 13u)], -2147483647i, global0[_wgslsmith_index_u32(global2.b, 13u)] | var_1.x, countOneBits(u_input.a)) & vec4<i32>(_wgslsmith_mod_i32(var_5.x, var_1.x), _wgslsmith_mod_i32(29941i, -var_1.x), -abs(-2147483647i), -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_1(11730u, var_0.b), vec3<bool>(true, var_0.b, global2.c.d))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(274f * global2.d.x))), var_4.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-464f, var_4.x, global2.d.x, var_4.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, 501f, 2236f, var_4.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.d.x, var_4.x, -758f, global2.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(659f, -1000f, var_4.x, -956f) * vec4<f32>(var_4.x, -1000f, var_4.x, 504f))))));
}

