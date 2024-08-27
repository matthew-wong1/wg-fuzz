struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 25>;

var<private> global2: bool;

var<private> global3: vec4<f32>;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.a;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~1u ^ (0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(66031u, 68857u, 1u, 10643u)))), ~1u), 25u)];
    let var_2 = select(select(vec3<bool>(true, var_1.b > var_1.b, true), !(!(!vec3<bool>(true, var_1.a.x, false))), true), vec3<bool>(!(abs(u_input.a.x) == u_input.c), select(true, arg_3.c, any(select(vec3<bool>(false, true, arg_3.c), vec3<bool>(arg_3.c, arg_3.c, false), var_1.a.x))), arg_3.c), any(select(vec2<bool>(arg_3.c != true, arg_3.c), var_1.a, var_1.a)));
    global2 = select(arg_3.c, var_2.x, true);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-462f, 470f, var_1.a.x)), _wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.wy), _wgslsmith_f_op_vec2_f32(arg_2 - arg_0.zw))), vec2<bool>(!var_1.a.x, all(var_2.yz)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(3053f, arg_1.x), _wgslsmith_f_op_vec2_f32(arg_1.zz + global3.xw))))));
    return 1000f;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(func_3(vec4<f32>(arg_0.b, arg_1, arg_1, -184f), vec3<f32>(169f, -2867f, global3.x), global3.wy, arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -693f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(848f, _wgslsmith_f_op_f32(sign(arg_1)), -811f, global3.x))));
    let var_1 = abs(0i & arg_3);
    let var_2 = arg_0.c;
    let var_3 = _wgslsmith_clamp_i32(0i, 2147483647i, select(_wgslsmith_mod_i32(reverseBits(arg_3), 31750i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_3, arg_3, 0i, var_1)), reverseBits(-1i)), any(vec2<bool>(false, true)))) >> (0u % 32u);
    var var_4 = !select(vec4<bool>(all(!vec4<bool>(true, arg_0.c, true, false)), true, !any(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, arg_0.c, var_2, arg_0.c))), select(vec4<bool>(true, true, arg_0.b > 343f, arg_0.c), !vec4<bool>(true, true, arg_0.c, arg_0.c), true), false);
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 25u)];
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = func_2(Struct_2(u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_div_vec3_i32(max(min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x), firstTrailingBit(vec3<i32>(4194i, -10818i, -1i))), abs(u_input.b.zyw)), ~(vec3<i32>(u_input.a.x, -2147483647i, u_input.c) & ~u_input.b.zyx)), -3020i).a;
    let var_1 = _wgslsmith_sub_vec2_i32(-(~select(vec2<i32>(0i, 50553i), vec2<i32>(-11988i, u_input.a.x), !arg_0.a)), min(_wgslsmith_div_vec2_i32(abs(select(u_input.a.zz, u_input.a.yx, var_0.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-7439i, u_input.a.x), u_input.a.xx), _wgslsmith_sub_vec2_i32(u_input.a.xz, vec2<i32>(u_input.c, 14770i)))), _wgslsmith_mult_vec2_i32(min(-u_input.a.yx, max(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(-1i, u_input.b.x))), vec2<i32>(~(-40784i), 38580i ^ u_input.a.x))));
    let var_2 = var_1.x;
    let var_3 = var_0.x;
    let var_4 = Struct_2(select(u_input.a, ~max(~vec3<i32>(25841i, 2147483647i, var_2), u_input.a), false | (all(vec3<bool>(false, false, false)) || !arg_0.a.x)), _wgslsmith_f_op_f32(-global3.x), any(!vec3<bool>(true, any(var_0), false)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1341f, -357f)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global0 = 1i;
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(func_4(func_2(Struct_2(vec3<i32>(-45651i, 0i, 0i), 202f, true), _wgslsmith_f_op_f32(-arg_1.a.x), vec3<i32>(u_input.b.x, u_input.b.x, 26229i), reverseBits(1i)))), global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1593f, _wgslsmith_f_op_f32(select(1143f, 111f, true)))), _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, arg_0.a.x, arg_0.a.x) + vec4<f32>(-1354f, arg_0.a.x, arg_0.a.x, -1000f)) + vec4<f32>(arg_0.a.x, 1000f, 1396f, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, arg_1.a.x, 1245f, arg_1.a.x))) - vec4<f32>(277f, _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(-287f * global3.x), -1499f))));
    let var_0 = reverseBits(~u_input.a.xz) | ~select(~u_input.b.xy, u_input.b.ww, false);
    global4 = 1i;
    let var_1 = Struct_1(global3.yz);
    return select(vec4<bool>(!(1u < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 18487u, 0u))), arg_2 | arg_2, true, (all(vec4<bool>(true, false, false, arg_2)) || !arg_2) && true), vec4<bool>(var_0.x < _wgslsmith_dot_vec2_i32(-var_0, var_0), true, false, var_0.x <= -2147483647i), !select(all(vec4<bool>(true, true, arg_2, arg_2)), !any(vec3<bool>(arg_2, true, true)), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<bool>(u_input.c < -52185i, any(!func_1(Struct_1(vec2<f32>(global3.x, global3.x)), Struct_1(vec2<f32>(global3.x, global3.x)), true))), _wgslsmith_mult_u32(4294967295u, 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2146f, 342f, global3.x))), vec3<f32>(2242f, global3.x, global3.x)), vec3<f32>(637f, -1301f, _wgslsmith_f_op_f32(-global3.x)))))) - global3.xzz);
    let var_2 = ~(~max(-(~u_input.c), _wgslsmith_add_i32(u_input.c, ~0i)));
    let var_3 = global1[_wgslsmith_index_u32(var_0.b, 25u)];
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(ceil(1006f)))))) != var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(296f, global3.x, var_1.x)))) - global3.yxy)), vec3<u32>(var_0.b, ~1u, ~_wgslsmith_div_u32(var_3.b, ~var_0.b)), _wgslsmith_clamp_vec2_u32(max(firstTrailingBit(vec2<u32>(57332u, var_3.b)), vec2<u32>(var_0.b, 90479u)), max(vec2<u32>(1u, 1u), min(vec2<u32>(var_3.b, 4294967295u), vec2<u32>(4294967295u, 41457u))), ~min(vec2<u32>(0u, var_0.b), vec2<u32>(111809u, var_0.b))) | vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(1u, var_3.b)), reverseBits(var_0.b)));
}

