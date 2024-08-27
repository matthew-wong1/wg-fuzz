struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32> = vec2<u32>(0u, 81181u);

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global1 = vec2<u32>(~(~(global2.b & min(0u, global2.b))), 39638u);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.x, 910f, global0.b.x, global0.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.x, -469f, global0.b.x, 1303f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1044f, 1000f, -1000f, global0.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(161f * global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f - global0.b.x)), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1576f)))));
    var var_1 = Struct_1(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.xwy, global0.b)))), var_0.xxz), !all(vec4<bool>(true, all(vec3<bool>(global2.a, global2.a, true)), true, 42678u <= u_input.a)));
    var var_2 = Struct_1(global0.a | var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, _wgslsmith_f_op_f32(f32(-1f) * -1576f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-254f * global0.b.x), _wgslsmith_f_op_f32(floor(var_1.b.x)), var_1.c)))), false);
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = Struct_3(Struct_1(-arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1005f - global0.b.x), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2605f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -1000f, 714f)))), false), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.wz, arg_2), min(vec2<i32>(-1i, -1i), global0.a)), max(_wgslsmith_div_i32(-24780i, u_input.c), _wgslsmith_mod_i32(arg_2.x, global0.a.x))), global0.b, global1.x <= u_input.a));
    global1 = vec2<u32>(arg_1.b, u_input.a);
    var var_1 = 0u;
    var_1 = 59260u;
    let var_2 = select(any(!vec4<bool>(arg_1.a, false, arg_0.x, arg_0.x)), select(true, !arg_3.x, arg_1.a), global2.a);
    return vec3<u32>(~0u, countOneBits(u_input.a), ~(~func_3()));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_4(vec4<u32>(_wgslsmith_sub_u32(63066u, 0u), abs(_wgslsmith_sub_u32(firstTrailingBit(79888u), u_input.a)), ~(~arg_0.x), _wgslsmith_mod_u32(countOneBits(global2.b) & 1u, arg_0.x)), select(select(vec3<bool>(global2.a, false, global2.a), select(vec3<bool>(global2.a, global0.c, global0.c), !vec3<bool>(false, global2.a, true), !vec3<bool>(global0.c, true, global2.a)), any(!vec3<bool>(true, global0.c, false))), !vec3<bool>(true, select(false, global2.a, true), all(vec2<bool>(global2.a, false))), !any(select(vec3<bool>(false, global0.c, global0.c), vec3<bool>(global0.c, global2.a, global0.c), vec3<bool>(true, true, true)))));
    global1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.zz, min(arg_0.yy >> (arg_0.xx % vec2<u32>(32u)), vec2<u32>(arg_0.x, 91314u))), arg_0.xx), var_0.a.wy);
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~var_0.a.zyy, var_0.a.xww), arg_0, ~func_2(!(!vec2<bool>(var_0.b.x, false)), Struct_2(true, _wgslsmith_mult_u32(1u, global1.x)), u_input.b.xy, vec2<bool>(any(vec2<bool>(false, true)), all(var_0.b.zy))));
    var var_2 = Struct_1(vec2<i32>(-max(u_input.c, _wgslsmith_dot_vec2_i32(global0.a, vec2<i32>(-1i, 67787i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(38374i, -2147483647i, -22742i), -u_input.b.xxw) & ~_wgslsmith_mod_i32(u_input.c, 2147483647i)), _wgslsmith_f_op_vec3_f32(-global0.b), any(vec4<bool>(!(!global2.a), true, !all(var_0.b), !global0.c)));
    let var_3 = vec4<bool>(any(vec2<bool>(global2.a, global0.c)), false, var_2.c, !((any(vec4<bool>(true, true, false, false)) & all(vec4<bool>(false, true, var_0.b.x, false))) | global2.a));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec3<bool>(all(vec2<bool>(all(vec3<bool>(global2.a, false, false)) | global0.c, global0.c)), true, select(global2.a, func_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(428u, u_input.a, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(6151u, global1.x, 1u), vec3<u32>(1u, global1.x, 41996u)), ~vec3<u32>(u_input.a, global2.b, u_input.a))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)) == global2.a));
    let var_2 = global0.a.x;
    let var_3 = Struct_3(Struct_1(vec2<i32>(-431i, ~u_input.b.x), global0.b, all(vec4<bool>(global0.c, false, global2.a, true)) || (3378u > ~global1.x)), Struct_1(_wgslsmith_clamp_vec2_i32(max(u_input.b.yx, vec2<i32>(18915i, global0.a.x)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(global0.a.x, 1i)), -(vec2<i32>(-1i, u_input.c) >> (vec2<u32>(78924u, global2.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(ceil(global0.b)), var_1.x & !(!global0.c)));
    global0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(max(-6949i, reverseBits(-2147483647i)), -22696i), u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-963f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-307f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1148f)) * 1f))), all(!vec3<bool>(false, true, global2.a)));
    global1 = ~(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(77131u, 50988u), vec2<u32>(1u, global2.b)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(71510u, 135645u), vec2<u32>(41873u, 15146u)) % vec2<u32>(32u)), firstTrailingBit(~vec2<u32>(18915u, 25869u))) & select(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 5275u), vec2<u32>(u_input.a, 27805u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0, var_0) | vec2<u32>(21959u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(27712u, 0u), vec2<u32>(var_0, 37432u))), select(var_1.xx, var_1.yz, 1u > global2.b)));
    global2 = Struct_2(true, ~0u >> (_wgslsmith_mult_u32(func_3(), 1u) % 32u));
    var var_4 = Struct_4(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 34236u, 1u, u_input.a), vec4<u32>(var_0, 9193u, 4294967295u, var_0)), ~vec4<u32>(global1.x, 1u, 1u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 0u), abs(vec4<u32>(4294967295u, 0u, var_0, 4294967295u))), ~(~vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u)))), vec3<bool>(global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), 1106f) < _wgslsmith_f_op_f32(1f + -328f), global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<i32>(reverseBits(~_wgslsmith_clamp_i32(2147483647i, global0.a.x, 0i)), u_input.b.x, firstTrailingBit(global0.a.x)));
}

