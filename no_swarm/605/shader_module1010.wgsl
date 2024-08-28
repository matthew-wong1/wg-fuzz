struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: array<i32, 11>;

var<private> global4: vec3<u32> = vec3<u32>(1121u, 1u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e));
    let var_1 = _wgslsmith_dot_vec2_i32(~min(firstLeadingBit(abs(vec2<i32>(global2.b, -1i))), vec2<i32>(0i, 38506i)), ~_wgslsmith_mult_vec2_i32(~select(vec2<i32>(481i, -67313i), vec2<i32>(global3[_wgslsmith_index_u32(global4.x, 11u)], -65443i), vec2<bool>(true, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(18347i, -2147483647i) | vec2<i32>(arg_0, -12977i), -vec2<i32>(-58220i, arg_0))));
    global3 = array<i32, 11>();
    var var_2 = Struct_2(any(vec3<bool>(true & (global2.c && false), true, global2.c)), reverseBits(vec4<u32>(firstLeadingBit(u_input.a), ~_wgslsmith_dot_vec2_u32(global2.d.wx, global2.d.zy), abs(0u), global2.d.x)), Struct_1(abs(9689i), 0i >> (abs(~global4.x) % 32u), any(!select(vec3<bool>(global2.c, true, global2.c), vec3<bool>(global2.c, false, false), global2.c)), select(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(20584u, global4.x, global4.x), global2.d.www)), ~global2.d, !(!vec4<bool>(false, true, true, global2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e * -396f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1375f * 339f))))), Struct_1(~reverseBits(var_1 | 15921i), ((arg_0 ^ 1517i) & _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(0u, 11u)])) << (~(global2.d.x >> (global2.d.x % 32u)) % 32u), !(!(u_input.a != 22814u)), ~vec4<u32>(global4.x, _wgslsmith_dot_vec2_u32(global4.xz, vec2<u32>(global4.x, global4.x)), 0u, ~12452u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e))));
    var var_3 = Struct_2(false, min(~(~vec4<u32>(14663u, var_2.d.d.x, 1u, 66932u)), ~_wgslsmith_clamp_vec4_u32(countOneBits(global2.d), firstTrailingBit(var_2.b), ~global2.d)), var_2.d, var_2.c);
    return abs(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, var_3.d.b, 2558i, -2147483647i) | vec4<i32>(7136i, 21333i, -2147483647i, 2147483647i), vec4<i32>(16162i, 14142i, var_1, var_3.d.b)), -abs(65421i), -19283i), -firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, global3[_wgslsmith_index_u32(var_3.d.d.x, 11u)], 452i), vec3<i32>(56500i, 2147483647i, global3[_wgslsmith_index_u32(global4.x, 11u)])))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(!global2.c, global2.d, Struct_1(2147483647i, select(i32(-1i) * -1i, 0i, global2.c | true), false, vec4<u32>(~0u, _wgslsmith_mod_u32(22761u, 26925u), 1u, min(4294967295u, _wgslsmith_mod_u32(1u, global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(618f)))), Struct_1(func_3(-global3[_wgslsmith_index_u32(366u, 11u)] ^ (-16560i & global2.b)), func_3(func_3(68385i)), false, abs(_wgslsmith_add_vec4_u32(global2.d, _wgslsmith_mult_vec4_u32(global2.d, global2.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-278f)), -925f))));
    let var_1 = -2307f;
    var var_2 = !select(!(!select(vec4<bool>(true, var_0.a, false, true), vec4<bool>(global2.c, true, true, false), vec4<bool>(true, false, var_0.a, false))), select(vec4<bool>(any(vec4<bool>(true, false, false, false)), !global2.c, false & var_0.a, global2.c | false), !(!vec4<bool>(true, false, false, global2.c)), select(any(vec4<bool>(global2.c, var_0.a, var_0.a, global2.c)), true, !global2.c)), vec4<bool>(!(var_0.c.b <= -9456i), global2.c, !(0u < var_0.b.x), var_0.c.c));
    let var_3 = firstTrailingBit(-2147483647i);
    let var_4 = select(vec3<bool>(~abs(var_0.d.a) > global2.b, all(!vec2<bool>(global2.c, true)), !(!(global4.x <= u_input.a))), var_2.yyx, !(!(!(!var_2.zzx))));
    return Struct_2(var_0.c.c, _wgslsmith_div_vec4_u32(var_0.d.d, firstTrailingBit(max(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), global2.d)) ^ _wgslsmith_mod_vec4_u32(abs(var_0.b), vec4<u32>(72356u, global4.x, var_0.b.x, 40565u))), Struct_1(-1i, 1i, !(!(var_4.x || false)), select(global2.d, vec4<u32>(global4.x, abs(var_0.b.x), _wgslsmith_div_u32(global2.d.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global2.d.x, 18186u, u_input.a), var_0.c.d)), !var_2.x), _wgslsmith_f_op_f32(round(var_1))), Struct_1(global3[_wgslsmith_index_u32(~4294967295u, 11u)] >> ((global4.x | (global2.d.x & u_input.a)) % 32u), global3[_wgslsmith_index_u32(global2.d.x, 11u)], !var_4.x, ~max(vec4<u32>(4294967295u, u_input.a, u_input.a, global2.d.x), ~vec4<u32>(global4.x, var_0.b.x, 0u, 0u)), -262f));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    global2 = Struct_1(~(i32(-1i) * -(~2147483647i)), -21119i, any(select(!(!vec2<bool>(true, arg_0)), vec2<bool>(true, arg_0), select(vec2<bool>(true, false), vec2<bool>(true, true), !vec2<bool>(true, global2.c)))), global2.d, -1000f);
    var var_0 = func_2();
    let var_1 = ~vec4<i32>(_wgslsmith_div_i32(-(~0i), reverseBits(abs(global2.b))), 3484i, global3[_wgslsmith_index_u32(1u | global2.d.x, 11u)], ~countOneBits(global3[_wgslsmith_index_u32(global4.x, 11u)] | global3[_wgslsmith_index_u32(0u, 11u)]));
    return select(global2.d.wzw, var_0.d.d.zzw, select(select(var_0.c.c, !var_0.c.c, true), true, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2.d.x;
    let var_1 = -1i;
    var var_2 = var_1;
    var_2 = _wgslsmith_sub_i32(2147483647i, global2.b);
    let var_3 = select(!(!(!global2.c)), global2.e <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-553f, global2.e)), _wgslsmith_f_op_f32(ceil(210f)))))), _wgslsmith_dot_vec3_u32(func_1(any(vec2<bool>(true, false))), global2.d.yyz) != 4294967295u);
    global0 = 29118i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, 303f, global2.e, -697f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e, global2.e, -171f, 784f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-238f, -1000f, global2.e, global2.e), vec4<f32>(global2.e, global2.e, global2.e, -718f))), !vec4<bool>(global2.c, false, true, global2.c)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1411f, 1818f, global2.e, 2089f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1681f, global2.e, 545f, global2.e) - vec4<f32>(global2.e, global2.e, global2.e, 550f)), true)))))), global4.xy);
}

