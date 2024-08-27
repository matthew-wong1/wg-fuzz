struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> f32 {
    global0 = 0i;
    var var_0 = Struct_2(global1.b.b.c, _wgslsmith_add_vec2_i32(vec2<i32>(~abs(u_input.a), u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(~1430i, u_input.a), global1.b.b.b)), Struct_1(_wgslsmith_f_op_f32(exp2(global1.a)), u_input.b, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.b.e.e, 6072i, 0i, -2147483647i), vec4<i32>(19105i, global1.b.b.c.e, -23569i, 0i)), vec4<i32>(31623i, global1.b.b.a.c, u_input.a, 1i)), 51792u, ~(~(-global1.b.b.a.e))), global1.b.b.c, Struct_1(-1002f, global1.d.x, _wgslsmith_add_i32(-_wgslsmith_sub_i32(u_input.a, global1.b.b.e.c), 2147483647i), _wgslsmith_mult_u32(9956u, ~(~global1.d.x)), abs(~u_input.a)));
    var var_1 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, global1.c), false), !select(vec2<bool>(false, global1.c), vec2<bool>(false, true), vec2<bool>(true, global1.c)), true & any(vec2<bool>(arg_0, true))), vec2<bool>(arg_0, !all(vec3<bool>(false, global1.c, arg_0))), vec2<bool>(arg_0 || true, global1.c)));
    var var_2 = select(4294967295u, u_input.b, all(!select(!vec4<bool>(false, global1.c, arg_0, false), select(vec4<bool>(global1.c, global1.c, arg_0, global1.c), vec4<bool>(true, arg_0, global1.c, arg_0), global1.c), all(vec3<bool>(true, false, true)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1202f + var_0.d.a))), min(81700u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.d, 21064u), global1.d.xx)), 1i, reverseBits(min(4294967295u, firstLeadingBit(18632u))), abs(_wgslsmith_add_i32(var_0.a.e, -42376i) >> (79225u % 32u))), vec2<i32>(min(abs(i32(-1i) * -1i), ~abs(9816i)), u_input.a), global1.b.b.e, var_0.c, Struct_1(global1.b.b.a.a, _wgslsmith_dot_vec2_u32(global1.d.xx | global1.d.yz, firstLeadingBit(vec2<u32>(u_input.b, var_0.a.d))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 33626i, global1.b.b.c.e), select(vec3<i32>(19629i, -2147483647i, 0i), vec3<i32>(global1.b.b.c.c, var_0.b.x, 1i), global1.c)), _wgslsmith_div_i32(u_input.a, 1i)), ~90963u, i32(-1i) * -25278i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1506f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.a)), var_0.d.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -549f)))))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global1 = Struct_5(_wgslsmith_f_op_f32(func_3(-2530f >= global1.b.b.e.a)), global1.b, global1.c, abs(~(global1.d | _wgslsmith_add_vec3_u32(vec3<u32>(global1.b.a.x, 4294967295u, global1.b.a.x), global1.d))));
    let var_0 = (~0u != u_input.b) && !any(!vec4<bool>(false, global1.c, global1.c, global1.c));
    global1 = Struct_5(global1.a, global1.b, any(select(vec4<bool>(var_0, all(vec4<bool>(var_0, global1.c, true, var_0)), true, var_0), vec4<bool>(var_0, global1.c, global1.c, select(var_0, var_0, false)), true)), vec3<u32>(~u_input.b, u_input.b, u_input.b));
    let var_1 = Struct_1(-268f, 1u, u_input.a, global1.b.a.x, -1i);
    global1 = Struct_5(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(1463f - -889f)), global1.b, false, arg_0);
    return any(!(!select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(var_0, true, true, global1.c), global1.c))) | (all(vec4<bool>(all(vec4<bool>(var_0, var_0, global1.c, true)), true, false, select(false, true, global1.c))) | true);
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<bool> {
    global1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.e.a))))), Struct_3(_wgslsmith_clamp_vec2_u32(global1.d.yx, vec2<u32>(_wgslsmith_mod_u32(u_input.b, 0u), ~global1.b.b.d.b), ~vec2<u32>(global1.b.b.d.b, 1u)), global1.b.b, (u_input.b | global1.d.x) << (~firstLeadingBit(u_input.b) % 32u)), select(any(!select(vec3<bool>(global1.c, false, global1.c), vec3<bool>(global1.c, true, false), vec3<bool>(false, false, true))), func_2(~global1.d), select(all(vec4<bool>(global1.c, true, true, global1.c)), all(vec3<bool>(global1.c, false, global1.c)), true)), global1.d);
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(~40231u << (_wgslsmith_add_u32(firstTrailingBit(global1.b.a.x), u_input.b) % 32u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, global1.b.a.x, global1.d.x, global1.b.a.x), abs(vec4<u32>(global1.b.b.c.d, global1.d.x, 4294967295u, global1.d.x)))), 46756u), _wgslsmith_div_u32((select(global1.b.a.x, global1.b.a.x, false) << (1u % 32u)) | 31046u, ~min(select(u_input.b, global1.b.c, global1.c), _wgslsmith_div_u32(u_input.b, global1.d.x))), min(1u, ~1u));
    let var_1 = var_0.yy;
    var var_2 = Struct_3(var_1, Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global1.c)))), reverseBits(_wgslsmith_sub_u32(u_input.b, 0u)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_1, arg_0, 29194i, global1.b.b.a.e)), vec4<i32>(1i, 1i, 1i, 1i)), ~(global1.b.a.x >> (u_input.b % 32u)), -2147483647i), global1.b.b.b, global1.b.b.c, global1.b.b.d, global1.b.b.a), _wgslsmith_div_u32(var_0.x >> (4294967295u % 32u), 1u));
    let var_3 = Struct_4(var_2.b.a, var_2.b.e, global1.c, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), global1.a, _wgslsmith_f_op_f32(sign(global1.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.a, var_2.b.e.a, var_2.b.e.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1387f, global1.a, global1.a))), global1.c)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.b.b.e.a, var_2.b.c.a) + vec3<f32>(var_2.b.e.a, global1.b.b.a.a, -1314f)))))));
    return vec3<bool>(var_3.d, true, !global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(abs(select(vec3<i32>(_wgslsmith_div_i32(u_input.a, -14168i), ~u_input.a, u_input.a), -_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b.b.e.e, global1.b.b.a.e, global1.b.b.b.x), vec3<i32>(u_input.a, -49134i, 2147483647i)), select(vec3<bool>(global1.c, false, true), func_1(global1.b.b.c.c, 34876i), vec3<bool>(global1.c, global1.c, global1.c)))), firstLeadingBit(-countOneBits(vec3<i32>(9984i, global1.b.b.e.c, 2147483647i))));
    var var_1 = _wgslsmith_clamp_i32(-20052i, ~var_0.x, firstLeadingBit(global1.b.b.b.x) & 2147483647i);
    var var_2 = Struct_2(global1.b.b.d, _wgslsmith_mult_vec2_i32(~global1.b.b.b, global1.b.b.b), global1.b.b.d, global1.b.b.a, Struct_1(1000f, _wgslsmith_div_u32((u_input.b | u_input.b) << (global1.d.x % 32u), select(u_input.b & u_input.b, ~4294967295u, true)), select(u_input.a, _wgslsmith_dot_vec2_i32(global1.b.b.b << (vec2<u32>(4294967295u, global1.b.a.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_0.zx, global1.b.b.b)), true), min(0u, 0u), _wgslsmith_div_i32(global1.b.b.b.x, -(global1.b.b.b.x ^ global1.b.b.a.c))));
    var var_3 = global1.b.b;
    var var_4 = _wgslsmith_f_op_f32(func_3(!all(select(!vec3<bool>(global1.c, global1.c, true), !vec3<bool>(global1.c, global1.c, true), global1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-595f, global1.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1066f, global1.a) * vec2<f32>(var_2.c.a, var_2.e.a)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-484f, var_2.d.a), vec2<f32>(290f, var_2.a.a)))))), _wgslsmith_clamp_vec3_u32(global1.d, ~global1.d, _wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.e.d, global1.d.x, global1.b.b.e.d), ~global1.d)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.e.a, 1236f, -268f, -126f)))))))), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.e.a - var_2.a.a), _wgslsmith_f_op_f32(600f * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a - var_3.e.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.b.c.a))))));
}

