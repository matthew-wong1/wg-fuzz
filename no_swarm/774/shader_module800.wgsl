struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<bool, 12>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(4294967295u, 11808u, 0u, 32256u), 1i, vec2<f32>(-113f, 1463f), vec3<u32>(15648u, 15294u, 1u), -1i);

var<private> global3: vec4<bool>;

var<private> global4: array<bool, 22> = array<bool, 22>(false, true, true, true, false, false, true, false, true, false, true, true, true, true, false, true, false, true, true, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    global1 = array<bool, 12>();
    var var_0 = false;
    global1 = array<bool, 12>();
    let var_1 = u_input.a;
    global1 = array<bool, 12>();
    return min(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(u_input.a), ~17790u), firstTrailingBit(vec2<u32>(var_1, 0u))), _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_clamp_u32(24675u, global2.a.x, 4294967295u)), ~_wgslsmith_dot_vec2_u32(~global2.d.xx, abs(vec2<u32>(4294967295u, u_input.a)))), global2.d);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> vec4<u32> {
    var var_0 = ~u_input.b;
    let var_1 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(131469u), _wgslsmith_dot_vec3_u32(global2.a.wwy, global2.d), global2.d.x, 13524u), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, global2.a.x, 64537u, global2.a.x), vec4<u32>(global2.a.x, global2.d.x, 1u, global2.d.x))), countOneBits(-35001i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2.c), global2.c)), ~global2.d, 0i);
    let var_2 = !vec2<bool>(true, global4[_wgslsmith_index_u32(~u_input.b, 22u)]);
    var var_3 = Struct_1(firstTrailingBit(~vec4<u32>(global2.a.x, abs(var_1.d.x), ~15173u, ~u_input.a)), firstTrailingBit(~_wgslsmith_mult_i32(var_1.b, ~(-21733i))), global2.c, ~_wgslsmith_add_vec3_u32((vec3<u32>(global2.d.x, 0u, 13835u) | global2.d) & ~vec3<u32>(4294967295u, 6185u, 5854u), vec3<u32>(var_1.d.x, _wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(u_input.a, global2.d.x, 19119u)), var_1.d.x)), -(-(30607i ^ var_1.e) | -1154i));
    global2 = Struct_1(var_3.a, global2.b, global2.c, func_3(), -reverseBits(~59681i | var_1.b));
    return ~reverseBits((global2.a & vec4<u32>(var_1.d.x, 15137u, global2.d.x, global2.a.x)) >> (var_1.a % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1045f - arg_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-arg_0.c.x)), global2.c.x), global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.x)) + -196f))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), -2198f);
    let var_2 = global2.d.x;
    var var_3 = Struct_1(select(_wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(17299u, 5591u, global2.d.x, 23281u)), arg_0.a, func_2(select(global0.wwx, global3.zyz, global4[_wgslsmith_index_u32(global2.a.x, 22u)]), -501f)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 0u, arg_1, min(1u, 12646u)), vec4<u32>(4294967295u, 46973u, 16009u, arg_0.a.x) << (arg_0.a % vec4<u32>(32u))), !(any(vec2<bool>(true, false)) & (arg_0.c.x != var_0.x))), global2.b, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -480f))), arg_0.c.x), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.a, 31730u, u_input.b)), global2.a.xxx) & abs(arg_0.a.wzx), arg_0.d), ~_wgslsmith_sub_i32(-(global2.b & 10767i), arg_0.b));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))) + -1919f) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-649f, 1387f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(1035f * var_0.x))));
    return arg_0.a.zx;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = -1000f;
    return -_wgslsmith_add_i32((arg_2.e | abs(arg_2.b)) | ~(-60044i), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(global2.e & _wgslsmith_div_i32(global2.b, 28795i), -2147483647i, global2.b ^ (~firstTrailingBit(1i) & min(global2.e, _wgslsmith_sub_i32(global2.b, global2.b))), func_4(false, func_1(Struct_1(~global2.a, countOneBits(global2.b), _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, global2.c.x), global2.c), firstTrailingBit(global2.d), _wgslsmith_clamp_i32(-38560i, global2.e, -43241i)), min(global2.d.x, 24607u) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 71063u), vec2<u32>(u_input.b, u_input.b))), Struct_1(_wgslsmith_add_vec4_u32(select(global2.a, global2.a, false), ~global2.a), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.b, global2.b, 2531i), vec4<i32>(13730i, -5354i, global2.b, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(438f, global2.c.x), global2.c)), vec3<u32>(global2.d.x, u_input.b << (26262u % 32u), 0u), 27423i)));
    global3 = !(!vec4<bool>(any(vec4<bool>(global3.x, global1[_wgslsmith_index_u32(1801u, 12u)], false, global3.x)), global1[_wgslsmith_index_u32(~14767u << (global2.d.x % 32u), 12u)], ~u_input.a > ~u_input.b, any(vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 22u)], true, global3.x))));
    let var_1 = vec2<i32>(-reverseBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global2.e, 0i), -var_0.x)), var_0.x);
    var var_2 = Struct_1(~global2.a, var_0.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.c.x)), _wgslsmith_f_op_f32(step(global2.c.x, 1125f))), -206f))), ~global2.d, -36900i);
    var var_3 = Struct_1(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(global2.a, ~vec4<u32>(59055u, 64230u, u_input.a, 51791u)), var_2.a), -59016i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.c.x, global2.c.x)))))), ~(var_2.a.yyy ^ vec3<u32>(0u, 40158u, 4294967295u)), var_2.e);
    global0 = vec4<bool>(all(!vec4<bool>(!global3.x, global3.x, false, true)), all(!vec2<bool>(false, global0.x | global4[_wgslsmith_index_u32(var_2.a.x, 22u)])), false, global0.x);
    var var_4 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(54578u), 14740u, 1u, ~(~0u)), var_2.a), var_1.x, var_2.c, var_3.d & _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~67428u, _wgslsmith_mod_u32(0u, 2160u)), ~select(vec3<u32>(var_2.a.x, var_2.d.x, var_2.a.x), vec3<u32>(22995u, var_3.d.x, u_input.b), true)), -((2147483647i | -var_1.x) | global2.b));
    global0 = vec4<bool>(2147483647i <= var_4.b, var_3.c.x <= 1109f, global1[_wgslsmith_index_u32(u_input.b, 12u)] | global3.x, -var_1.x != countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.x, global2.e), var_0.xx)));
    var var_5 = _wgslsmith_mod_u32(var_4.d.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f - -1148f) + 744f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_4.c.x))))), vec2<u32>(var_2.a.x, 1u), _wgslsmith_f_op_f32(ceil(557f)), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.x << (_wgslsmith_sub_u32(var_4.a.x, var_2.d.x) % 32u), -38662i ^ var_3.b), countOneBits(~abs(var_3.b))));
}

