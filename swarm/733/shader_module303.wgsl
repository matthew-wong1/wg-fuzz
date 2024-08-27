struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-23083i, -15504i, 62958i), vec3<i32>(i32(-2147483648), -23815i, 2147483647i), vec3<i32>(0i, 0i, 86856i), vec3<i32>(i32(-2147483648), -20101i, 1i), vec3<i32>(2147483647i, 10651i, 1i), vec3<i32>(1i, -31754i, i32(-2147483648)), vec3<i32>(40015i, -10810i, 1i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(0i, 19825i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -58118i), vec3<i32>(-29643i, 2147483647i, -99399i), vec3<i32>(-5689i, -14104i, 1i), vec3<i32>(11167i, -19103i, -1i), vec3<i32>(i32(-2147483648), -6454i, 1i), vec3<i32>(30938i, -56590i, 1i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(-18154i, i32(-2147483648), 41368i), vec3<i32>(1i, 13092i, 13273i), vec3<i32>(i32(-2147483648), i32(-2147483648), 53581i), vec3<i32>(i32(-2147483648), 2147483647i, 20466i), vec3<i32>(2147483647i, 0i, -70248i), vec3<i32>(2147483647i, 65723i, -15521i), vec3<i32>(i32(-2147483648), 2147483647i, -55023i), vec3<i32>(-13043i, -1i, -1i), vec3<i32>(13930i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -49136i), vec3<i32>(20345i, 0i, -1i));

var<private> global3: array<bool, 11> = array<bool, 11>(true, true, false, false, true, true, true, true, false, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = -2147483647i;
    return global0[_wgslsmith_index_u32(~38233u, 26u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~(-22879i);
    var var_1 = arg_2.x;
    var var_2 = -1579f;
    let var_3 = 2147483647i;
    var var_4 = Struct_3(~(~1u), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1318f, -1194f), vec2<f32>(1281f, 1125f)))), -firstLeadingBit(0i), Struct_1(min(-22694i, _wgslsmith_mult_i32(arg_3.a, var_3)), reverseBits(~1i), select(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], arg_3.c, true), 0u, ~_wgslsmith_add_i32(-37216i, -20153i)), _wgslsmith_mod_vec4_i32(firstTrailingBit(arg_1), max(countOneBits(arg_1), vec4<i32>(arg_1.x, -27424i, arg_1.x, arg_1.x) | arg_1)), arg_3.c));
    return var_4.b;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> u32 {
    global0 = array<vec4<bool>, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(2315f, 1184f)), _wgslsmith_f_op_f32(arg_1.b.a.x + arg_1.b.a.x), arg_1.b.a.x, _wgslsmith_f_op_f32(-arg_1.b.a.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-645f)), -1561f, 1436f, -406f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(350f, arg_1.b.a.x), arg_1.b.a.x, -1000f, arg_1.b.a.x)))));
    let var_1 = func_3(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.zy), i32(-1i) * -arg_1.b.b, Struct_1(0i, _wgslsmith_mult_i32(u_input.b, 1i), global3[_wgslsmith_index_u32(77498u, 11u)], 39471u, u_input.b), countOneBits(arg_1.b.d), global3[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_add_vec4_i32(-arg_1.b.d, select(-arg_1.b.d, arg_1.b.d, global0[_wgslsmith_index_u32(53378u, 26u)])), select(!(!(!vec4<bool>(arg_0, arg_1.b.c.c, false, true))), global0[_wgslsmith_index_u32(~(~(~u_input.a.x)), 26u)], select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], arg_0, arg_1.b.e, global3[_wgslsmith_index_u32(2224u, 11u)]), vec4<bool>(arg_1.b.e, arg_1.b.c.c, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 11u)], var_0.x <= -2167f), !arg_1.b.e)), arg_1.b.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.a)) - arg_1.b.a) - arg_1.b.a));
    global1 = 82380u;
    return var_1.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(abs(_wgslsmith_clamp_u32(reverseBits(func_1(false, Struct_3(u_input.a.x, Struct_2(vec2<f32>(1000f, 1000f), 5701i, Struct_1(-17027i, 3264i, true, u_input.a.x, -2147483647i), vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), global3[_wgslsmith_index_u32(0u, 11u)])))), firstTrailingBit(~u_input.a.x), ~firstLeadingBit(u_input.a.x))), reverseBits(_wgslsmith_clamp_u32(abs(~u_input.a.x), ~max(u_input.a.x, u_input.a.x), 14750u)));
    global2 = array<vec3<i32>, 28>();
    global1 = _wgslsmith_dot_vec2_u32(select(firstLeadingBit(~max(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xy)), vec2<u32>(var_0, ~10005u), !all(vec2<bool>(global3[_wgslsmith_index_u32(var_0, 11u)], true)) || false), vec2<u32>(~4294967295u, var_0));
    let var_1 = Struct_4(Struct_3(690u >> (1u % 32u), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1380f, -807f)), -u_input.b, func_3(select(vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.a.x, 11u)]), global0[_wgslsmith_index_u32(0u, 26u)], vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(var_0, 11u)], true, false)), vec4<i32>(2147483647i, u_input.b, u_input.b, 64540i), global0[_wgslsmith_index_u32(19309u, 26u)], func_3(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], global3[_wgslsmith_index_u32(u_input.a.x, 11u)], true), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], global3[_wgslsmith_index_u32(u_input.a.x, 11u)], global3[_wgslsmith_index_u32(u_input.a.x, 11u)], global3[_wgslsmith_index_u32(var_0, 11u)]), Struct_1(u_input.b, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 11u)], 6885u, 16082i)).c).c, -countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), global3[_wgslsmith_index_u32(14547u, 11u)])), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-416f + 610f), _wgslsmith_f_op_f32(step(125f, -1000f))))), 1000f), min(firstTrailingBit(u_input.a), abs(vec4<u32>(4294967295u, 18784u, u_input.a.x, 0u))) >> (u_input.a % vec4<u32>(32u)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~var_0), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~1u, u_input.a.x, var_0 & var_0, firstLeadingBit(u_input.a.x))), 20743u), 11u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.a.b.a.x, -204f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.a.x - 584f)), var_1.b.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-246f, -662f, -1369f, 233f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1178f, var_1.a.b.a.x, var_1.b.x, var_1.a.b.a.x))), global0[_wgslsmith_index_u32(34689u, 26u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-348f, -878f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.x)))), 1513f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -1210f))))), ~reverseBits(1i));
}

