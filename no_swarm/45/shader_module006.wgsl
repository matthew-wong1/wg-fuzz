struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: Struct_1 = Struct_1(true, vec3<bool>(false, false, false), vec4<i32>(-30654i, -1007i, 15961i, 0i), -669f, false);

var<private> global2: vec2<f32> = vec2<f32>(235f, -1000f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<vec3<u32>, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global1.d) * _wgslsmith_f_op_f32(step(global2.x, global1.d))), _wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(select(-1231f, global1.d, false)))) - vec2<f32>(1100f, _wgslsmith_div_f32(global2.x, 834f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, global1.d)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, -2699f)))), vec2<f32>(global1.d, 450f)));
    let var_1 = countOneBits(abs(abs(u_input.b.zzx)) >> (firstTrailingBit(abs(firstLeadingBit(global0[_wgslsmith_index_u32(30246u, 31u)]))) % vec3<u32>(32u)));
    let var_2 = ~u_input.a;
    global0 = array<vec3<u32>, 31>();
    return 1u;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = global1.a || false;
    let var_1 = max(vec4<u32>(arg_0, ~(~4294967295u), u_input.c, ~1u), firstTrailingBit(vec4<u32>(92u, 4294967295u, arg_0, 0u) << (vec4<u32>(0u, arg_0, 4294967295u, u_input.c) % vec4<u32>(32u))) << ((select(vec4<u32>(38083u, u_input.c, arg_0, 0u), vec4<u32>(5980u, u_input.a, 4294967295u, arg_0), vec4<bool>(var_0, false, true, var_0)) >> (vec4<u32>(u_input.c, u_input.a, u_input.a, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u))) | firstLeadingBit(select(~vec4<u32>(arg_0, 40713u, arg_0, 1u) | vec4<u32>(u_input.a, 39341u, 64560u, 15800u), select(vec4<u32>(9533u, 27813u, 26661u, 0u), vec4<u32>(arg_0, arg_0, 56854u, arg_0) << (vec4<u32>(arg_0, u_input.c, 0u, arg_0) % vec4<u32>(32u)), !global1.e), all(select(vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(true, true, false), global1.b))));
    global0 = array<vec3<u32>, 31>();
    let var_2 = vec3<i32>(1i, _wgslsmith_dot_vec2_i32(~u_input.d, u_input.d), 58708i);
    let var_3 = ~(~min(abs(_wgslsmith_div_vec2_u32(var_1.wx, var_1.wy)), abs(~vec2<u32>(25201u, 23909u))));
    return u_input.b.yyw;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = func_4(func_3(), _wgslsmith_mult_i32(24869i, -1i), Struct_3(!any(global1.b) && !(!arg_1.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1760f, global1.d, -900f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.d, global2.x, 216f), vec3<f32>(206f, -853f, -1000f)))))))));
    var var_1 = Struct_1(false, global1.b, vec4<i32>(var_0.x, abs(-14221i), ~33592i, _wgslsmith_dot_vec3_i32(select(~vec3<i32>(1i, 10567i, var_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.d.x, u_input.d.x), global1.c.www), vec3<bool>(global1.b.x, arg_1.x, arg_1.x)), vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.d.x), 2147483647i, _wgslsmith_div_i32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1159f + global1.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global2.x) + _wgslsmith_f_op_f32(global1.d + 241f)))))), !all(select(vec4<bool>(false, true, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, global1.b.x, true, arg_1.x), true)));
    return firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(40694u >> (arg_0 % 32u), firstLeadingBit(1702u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, ~u_input.c), vec2<u32>(~111946u, 14485u))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> vec3<bool> {
    global1 = Struct_1(true, global1.b, u_input.b, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), 10062u >= _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u) | (global0[_wgslsmith_index_u32(10904u, 31u)] >> (global0[_wgslsmith_index_u32(u_input.c, 31u)] % vec3<u32>(32u))), (vec3<u32>(u_input.c, u_input.c, u_input.a) ^ vec3<u32>(u_input.c, 0u, u_input.c)) << ((vec3<u32>(u_input.c, u_input.a, 0u) | global0[_wgslsmith_index_u32(1u, 31u)]) % vec3<u32>(32u))));
    let var_0 = vec2<bool>(1u >= u_input.a, all(vec3<bool>(arg_1.a, global1.e | (arg_1.a || global1.a), false)));
    return select(vec3<bool>(false, any(var_0), all(vec4<bool>(true, arg_1.a, true, all(vec4<bool>(arg_1.a, false, true, arg_1.a))))), global1.b, !all(!select(vec4<bool>(false, global1.a, false, true), vec4<bool>(false, var_0.x, true, true), true)));
}

fn func_1() -> vec3<u32> {
    let var_0 = 498f;
    global0 = array<vec3<u32>, 31>();
    global1 = Struct_1(true, func_5(vec2<i32>(~u_input.b.x, 33933i ^ global1.c.x) << (_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(995u, 10900u)), firstTrailingBit(vec2<u32>(u_input.c, 50459u)), func_2(4294967295u, global1.b.yy)) % vec2<u32>(32u)), Struct_3(false, vec3<f32>(-1454f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(ceil(1000f)))), global1.c.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1822f, global2.x, 731f)), vec4<f32>(global2.x, 1020f, 181f, -889f))))), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -188f) - _wgslsmith_f_op_f32(trunc(-128f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.x, -1155f))), 290f, true))), true);
    var var_1 = select(select(!(!select(vec4<bool>(global1.b.x, global1.e, global1.e, global1.a), vec4<bool>(true, false, global1.e, true), false)), vec4<bool>(global1.b.x, true, global1.a, true), true), select(vec4<bool>(true && (-1462f < global1.d), true || global1.e, (global1.b.x & global1.a) == true, global1.b.x), vec4<bool>(any(select(vec4<bool>(true, global1.b.x, false, true), vec4<bool>(global1.b.x, true, true, true), global1.e)), global1.a, global1.a, global1.a), true), vec4<bool>(true, global1.e, false, true));
    var var_2 = -2147483647i;
    return firstLeadingBit(select(global0[_wgslsmith_index_u32(abs(u_input.c), 31u)] << (~vec3<u32>(52551u, 12785u, 4253u) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(u_input.c, u_input.c), ~44728u), 31u)], !var_1.x) << (max(countOneBits(global0[_wgslsmith_index_u32(1u, 31u)]), abs(_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(51684u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], vec3<u32>(u_input.a, 41417u, 52343u)))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    let var_1 = Struct_2(_wgslsmith_sub_vec3_u32(func_1(), global0[_wgslsmith_index_u32(u_input.c, 31u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), global1.d, 212f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global2.x * global1.d), _wgslsmith_f_op_f32(step(global1.d, global2.x)), _wgslsmith_f_op_f32(859f - -522f), _wgslsmith_f_op_f32(-global1.d)))))));
    let var_2 = vec3<u32>(var_1.a.x, countOneBits(~func_1().x), var_0.x);
    global2 = _wgslsmith_f_op_vec2_f32(sign(var_1.b.xx));
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 1807f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))), vec4<f32>(536f, global2.x, _wgslsmith_f_op_f32(select(-1450f, _wgslsmith_f_op_f32(round(var_1.c.x)), true)), _wgslsmith_f_op_f32(-global2.x)));
}

