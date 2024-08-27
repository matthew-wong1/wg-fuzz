struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: i32 = 1i;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_4(~u_input.a.yx, Struct_3(-522f, false == all(vec4<bool>(global2.x, false, global2.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1548f), Struct_1(!vec2<bool>(global2.x, false), u_input.b.x), u_input.e));
    let var_1 = vec4<bool>(all(vec4<bool>(u_input.b.x > 0u, !global2.x, false, 1f > var_0.b.c)), all(var_0.b.d.a), var_0.b.b, ~_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, var_0.b.e, var_0.a.x)) >= reverseBits(u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_0.b.a, var_0.b.c)), _wgslsmith_f_op_f32(-var_0.b.c)));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.c * _wgslsmith_f_op_f32(var_2.x * var_2.x))));
    var var_4 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b & max(vec4<u32>(4294967295u, var_0.b.d.b, 2079u, arg_0.x), vec4<u32>(1u, var_0.b.d.b, var_0.b.d.b, u_input.d.x)), ~vec4<u32>(44256u, 1u, 0u, 76094u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), ~vec4<u32>(4294967295u, u_input.b.x, u_input.c, var_0.b.d.b), firstLeadingBit(u_input.b)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.d.b, var_0.b.d.b, var_0.b.d.b, var_0.b.d.b), vec4<u32>(23776u, u_input.d.x, var_0.b.d.b, arg_0.x))))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.b.d.b, 1u, ~106874u, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(39478u, u_input.d.x, arg_0.x))), countOneBits(vec4<u32>(var_0.b.d.b, ~u_input.b.x, 13056u, ~u_input.c)), vec4<u32>(min(24267u, 17964u) & ~u_input.b.x, min(~8893u, 4294967295u), _wgslsmith_mult_u32(arg_0.x, ~arg_0.x), 1u)));
    return !vec2<bool>(false, var_1.x);
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<bool> {
    global1 = abs(u_input.e << (~(_wgslsmith_clamp_u32(arg_0, arg_1, u_input.b.x) ^ select(4294967295u, arg_1, global2.x)) % 32u));
    var var_0 = Struct_2(vec2<i32>(-43771i, u_input.e), Struct_1(select(vec2<bool>(true, all(vec4<bool>(global2.x, true, global2.x, false))), !select(vec2<bool>(true, true), vec2<bool>(global2.x, global2.x), true), !all(vec2<bool>(true, global2.x))), arg_1), select(select(vec2<bool>(true, global2.x), vec2<bool>(true, false), func_3(~vec3<u32>(1u, arg_0, arg_0))), !(!select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), vec2<bool>(true, global2.x))), func_3(u_input.b.zxz)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0, _wgslsmith_clamp_u32(9149u, reverseBits(arg_1), ~arg_0)), 82221u, select(1u, 61620u, !global2.x && true)));
    global1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, -vec4<i32>(u_input.a.x, var_0.a.x, var_0.a.x, var_0.a.x), -(~u_input.a)), vec4<i32>(~_wgslsmith_mult_i32(var_0.a.x, -95007i), 0i, max(u_input.e & u_input.a.x, var_0.a.x), (40178i ^ var_0.a.x) ^ -var_0.a.x)) | 0i;
    global1 = _wgslsmith_mod_i32(var_0.a.x, var_0.a.x);
    global0 = array<Struct_2, 24>();
    return !(!func_3(_wgslsmith_clamp_vec3_u32(u_input.b.www | u_input.b.zxx, vec3<u32>(u_input.c, 43642u, arg_0), u_input.b.zyz)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec2<bool> {
    global1 = u_input.e;
    let var_0 = vec2<f32>(-1270f, -609f);
    let var_1 = vec3<u32>(abs(~arg_1.x), u_input.d.x, 0u);
    let var_2 = ~_wgslsmith_mult_i32(u_input.e, (i32(-1i) * -1i) >> (~_wgslsmith_add_u32(arg_2.x, arg_1.x) % 32u));
    global2 = func_2(32920u, u_input.c);
    return vec2<bool>(all(select(!(!vec3<bool>(true, arg_0, true)), vec3<bool>(true, select(global2.x, arg_0, false), false), vec3<bool>(true, true, arg_0 | false))), (46648u | _wgslsmith_sub_u32(u_input.c, arg_2.x)) == ~0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 + arg_3))))))));
    global1 = u_input.e;
    let var_2 = Struct_4(var_0.a, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1161f), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1155f))))), Struct_1(arg_1.b.a, var_0.b.b), _wgslsmith_dot_vec3_i32(~u_input.a.yzy, _wgslsmith_div_vec3_i32(u_input.a.wyw, vec3<i32>(u_input.e, -17742i, arg_1.a.x)))));
    let var_3 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.x, 2123f)))))), -2164f, arg_3);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(i32(-1i) * -(u_input.e >> (u_input.c % 32u)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1f)), 2550f, global2.x));
    global1 = min(var_0, countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(min(-23657i, var_0), var_0), -2147483647i)));
    let var_2 = vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.b.wxx, ~countOneBits(u_input.b.wyy), vec3<u32>(4294967295u, abs(u_input.b.x), ~1u)), reverseBits(~select(u_input.b.yww, u_input.b.wzy, global2.x))));
    var var_3 = func_4(~var_2, Struct_2(select(-(vec2<i32>(1i, 2147483647i) << (vec2<u32>(var_2.x, 11069u) % vec2<u32>(32u))), select(u_input.a.wx, vec2<i32>(1i, u_input.e) | vec2<i32>(0i, var_0), global2.x & true), select(!vec2<bool>(global2.x, true), !vec2<bool>(global2.x, global2.x), !global2.x)), Struct_1(vec2<bool>(!global2.x, global2.x), _wgslsmith_mod_u32(u_input.b.x, var_2.x) >> (~1658u % 32u)), select(func_1(true, vec3<u32>(u_input.c, 2549u, 9161u) ^ u_input.b.wxw, vec2<u32>(u_input.d.x, 1u)), !(!vec2<bool>(global2.x, false)), vec2<bool>(func_1(true, u_input.b.zxz, vec2<u32>(var_2.x, var_2.x)).x, global2.x)), 0u), select(vec2<bool>(0i <= var_0, false), !select(select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, false), vec2<bool>(false, global2.x)), !vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -623f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1)))))));
    var var_4 = func_4(~u_input.b.xy, global0[_wgslsmith_index_u32(reverseBits(~min(var_2.x >> (u_input.c % 32u), 4294967295u << (var_2.x % 32u))), 24u)], func_4(~vec2<u32>(~var_3.b.d.b, var_2.x), Struct_2(u_input.a.yx << (vec2<u32>(u_input.b.x, var_2.x) % vec2<u32>(32u)), func_4(~vec2<u32>(var_2.x, var_3.b.d.b), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 30396u), 24u)], var_3.b.d.a, -218f).b.d, var_3.b.d.a, _wgslsmith_mod_u32(~1u, var_3.b.d.b)), select(var_3.b.d.a, var_3.b.d.a, func_4(u_input.b.xw, global0[_wgslsmith_index_u32(var_2.x ^ var_2.x, 24u)], func_4(u_input.d, global0[_wgslsmith_index_u32(var_3.b.d.b, 24u)], vec2<bool>(true, global2.x), -447f).b.d.a, _wgslsmith_f_op_f32(sign(906f))).b.d.a.x), _wgslsmith_div_f32(929f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.a * -1721f) + _wgslsmith_f_op_f32(select(735f, 490f, false))))).b.d.a, var_1).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.b.c), u_input.a.xy, u_input.d, 4294967295u);
}

