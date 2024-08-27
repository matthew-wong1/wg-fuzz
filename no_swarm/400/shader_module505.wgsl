struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<i32, 2> = array<i32, 2>(41812i, 0i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = !vec2<bool>(!(u_input.c <= -u_input.c), true);
    let var_1 = Struct_3(Struct_2(~countOneBits(max(u_input.c, 8085i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b, -1320f, 638f, arg_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 918f, arg_0.c, -753f) + vec4<f32>(-547f, arg_0.b, 168f, -1171f)))), vec2<i32>(_wgslsmith_mod_i32(u_input.c, global1[_wgslsmith_index_u32(1u, 2u)]), 27961i) ^ abs(vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b + arg_0.c), -920f, _wgslsmith_f_op_f32(arg_0.c * 1000f), 1032f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, 1732f) * vec3<f32>(341f, 617f, arg_0.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_0.c) + vec3<f32>(-304f, -1000f, 423f)) + vec3<f32>(arg_0.b, arg_0.c, -612f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 672f) * vec2<f32>(arg_0.c, -300f)))) - vec2<f32>(1209f, _wgslsmith_f_op_f32(f32(-1f) * -1174f))));
    global0 = array<Struct_2, 10>();
    var var_2 = var_0.x;
    let var_3 = ~u_input.c;
    return global0[_wgslsmith_index_u32(abs(1u), 10u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global1 = array<i32, 2>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~arg_0.a, arg_0.a), vec4<u32>(~0u, 0u, countOneBits(21012u), u_input.a.x)), abs(vec4<u32>(~arg_0.d, ~935u, ~0u, arg_0.a.x & 28344u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, 132f))))), _wgslsmith_f_op_f32(min(726f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(round(arg_0.c)))))), 13387u ^ firstTrailingBit(u_input.b.x));
    let var_1 = _wgslsmith_div_vec3_i32(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, arg_1.a), reverseBits(vec3<i32>(-1990i, 1i, global1[_wgslsmith_index_u32(4294967295u, 2u)])))), _wgslsmith_clamp_vec3_i32(~select(vec3<i32>(2147483647i, -1i, 57771i) & vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.c), -vec3<i32>(18037i, 0i, 13725i), vec3<bool>(false, false, false)), min(max(vec3<i32>(arg_1.a, 0i, global1[_wgslsmith_index_u32(90470u, 2u)]) & vec3<i32>(0i, arg_1.a, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec3<i32>(-43341i, u_input.c, u_input.c) | vec3<i32>(11066i, 2147483647i, 14376i)), -vec3<i32>(-34490i, 13906i, -1i) << (_wgslsmith_mult_vec3_u32(u_input.b, arg_0.a.zxy) % vec3<u32>(32u))), (vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.c, 1i)) & (-vec3<i32>(arg_1.a, -14526i, arg_1.c.x) | vec3<i32>(14788i, u_input.c, 1i))));
    var var_2 = func_2(var_0);
    var var_3 = select(!select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(true, all(vec4<bool>(true, true, false, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, false), true)), select(!vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(all(vec2<bool>(true, true)), true), false), false);
    return 1000f;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    global0 = array<Struct_2, 10>();
    var var_0 = !vec4<bool>(false, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(arg_0, 2u)] & -2147483647i, -2147483647i) > select(-4623i << (arg_1.d % 32u), 23656i, any(vec4<bool>(false, false, true, false))), all(vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true)), false);
    var var_1 = true;
    let var_2 = _wgslsmith_sub_vec4_i32(firstLeadingBit(-(~(~vec4<i32>(global1[_wgslsmith_index_u32(arg_1.a.x, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(42568u, 2u)], u_input.c)))), firstLeadingBit(~(~vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(0u, 2u)], 11151i, global1[_wgslsmith_index_u32(0u, 2u)]))));
    global0 = array<Struct_2, 10>();
    return Struct_3(func_2(arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1, Struct_2(58358i, vec4<f32>(arg_1.b, 325f, arg_1.c, arg_1.b), vec2<i32>(u_input.c, u_input.c), vec4<f32>(arg_1.b, arg_1.b, arg_1.c, arg_1.c), vec3<f32>(arg_1.c, arg_1.b, -634f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 50166u, u_input.b.x, 29926u), vec4<u32>(u_input.a.x, u_input.a.x, 21363u, 0u))), vec4<u32>(~u_input.b.x, u_input.a.x, ~u_input.a.x, u_input.b.x)), abs(u_input.a.x) >> (~(u_input.b.x ^ u_input.a.x) % 32u)), Struct_1(vec4<u32>(firstTrailingBit(4294967295u), u_input.a.x >> (52325u % 32u), 4294967295u, ~u_input.b.x) << (min(vec4<u32>(10157u, 34227u, 4294967295u, u_input.a.x) ^ vec4<u32>(26784u, 0u, u_input.b.x, u_input.b.x), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 4542u, 0u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-987f + _wgslsmith_f_op_f32(ceil(1001f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1103f, _wgslsmith_f_op_f32(sign(746f))) - 1514f), 1u));
    var var_1 = vec4<bool>(true, !(_wgslsmith_f_op_f32(-1210f + _wgslsmith_f_op_f32(var_0.b.x - 1080f)) > _wgslsmith_f_op_f32(-974f - var_0.a.d.x)), any(vec2<bool>(true, (u_input.b.x | u_input.a.x) > _wgslsmith_clamp_u32(u_input.a.x, 34690u, 55316u))), false);
    var var_2 = ~u_input.a.x;
    let var_3 = ~select(vec3<i32>(var_0.a.c.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(17407u & u_input.b.x, 2u)], var_0.a.c.x), var_0.a.a), vec3<i32>(-func_2(Struct_1(vec4<u32>(1u, 4294967295u, 1u, u_input.b.x), var_0.b.x, var_0.b.x, 4294967295u)).c.x, countOneBits(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(5589u, 2u)], u_input.c)), var_0.a.a), true);
    var var_4 = 19963i;
    var var_5 = vec4<bool>(all(!vec4<bool>(true, all(var_1.wxw), true, !var_1.x)), _wgslsmith_f_op_f32(trunc(var_0.a.d.x)) < var_0.a.e.x, any(vec3<bool>(false, true, var_1.x)), true);
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.d, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_0.a.e.x), _wgslsmith_f_op_f32(select(-184f, 279f, false)), -269f, -985f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.d - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1348f, -1000f, 455f, var_0.a.e.x))), var_0.a.b, select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, true, var_5.x, var_1.x), var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1655f, 1492f, 1069f, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.d.x, var_0.a.e.x, 414f, var_0.a.d.x), var_0.a.b, vec4<bool>(var_1.x, var_5.x, true, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b);
}

