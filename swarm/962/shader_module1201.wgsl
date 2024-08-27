struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(vec4<bool>((any(vec3<bool>(false, global0.b.c, true)) || global0.b.c) & global1.b.c, !any(select(vec2<bool>(global0.b.c, true), vec2<bool>(global1.b.c, global0.b.c), vec2<bool>(global1.b.c, global1.b.c))), true, global1.b.c), ~1i & (abs(global0.b.d.x) & abs(2147483647i)), global1.b.b, Struct_1(max(~_wgslsmith_dot_vec2_u32(u_input.b.wy, u_input.a.xy), abs(6433u)), global1.b.e.b), Struct_2(global0.b.e, Struct_1(1u, global0.b.e.b), !all(vec2<bool>(false, false)), -_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.d.x, -6510i, -2147483647i, global1.b.d.x), _wgslsmith_mod_vec4_i32(global0.b.d, vec4<i32>(-28352i, 1i, global0.b.d.x, global1.b.d.x))), global0.b.e));
    var var_1 = _wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))));
    let var_2 = Struct_1(abs(global1.b.b.a), vec3<u32>(1u, 0u | abs(global0.b.a.a), ~global0.b.b.a));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-548f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))) <= _wgslsmith_f_op_f32(f32(-1f) * -1983f), global1.b.c);
    let var_4 = !var_3;
    return -778f;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(select(_wgslsmith_mod_u32(58624u, 1u) | global0.b.b.a, u_input.a.x, true), ~(~u_input.a));
    var var_1 = arg_1.x;
    var var_2 = vec4<bool>(!arg_1.x, true, !(any(vec2<bool>(global1.b.c, false)) | !(!global0.b.c)), !(1u == reverseBits(~u_input.a.x)));
    var_1 = var_2.x;
    var var_3 = _wgslsmith_f_op_f32(func_3());
    return Struct_1(~(~0u), vec3<u32>(var_0.a, global0.b.a.a << (_wgslsmith_add_u32(1u << (1u % 32u), global1.b.a.b.x) % 32u), 0u));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), false)))) * 1f);
    global1 = arg_1;
    let var_1 = vec2<bool>(!global0.b.c, all(select(vec3<bool>(true, arg_1.b.c, false), vec3<bool>(false, global1.b.d.x < 1i, !global1.b.c), select(vec3<bool>(global0.b.c, arg_1.b.c, true), select(vec3<bool>(global0.b.c, false, false), vec3<bool>(false, arg_0, true), false), !vec3<bool>(global1.b.c, true, false)))));
    var var_2 = Struct_2(func_2(903f, vec3<bool>((global0.b.c || var_1.x) || false, u_input.b.x > (arg_1.b.b.b.x | global0.b.e.b.x), global1.b.c)), func_2(var_0, vec3<bool>(!any(vec4<bool>(true, true, global1.b.c, false)), arg_1.b.b.b.x < arg_1.b.a.b.x, false)), global1.b.c, ~arg_1.b.d, Struct_1(1u, ~_wgslsmith_clamp_vec3_u32(~global1.b.e.b, select(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(1u, global0.b.b.b.x, 0u), arg_0), ~vec3<u32>(global1.b.a.a, u_input.a.x, global0.b.b.b.x))));
    var var_3 = var_2.a;
    return arg_1.b.a;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.a.zy);
    let var_1 = Struct_2(func_4(select(!(!global1.b.c), all(vec4<bool>(global1.b.c, false, false, global0.b.c)), global0.b.c), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, global1.a.x)), -1837f, -362f), Struct_2(func_2(var_0.x, vec3<bool>(global0.b.c, false, global1.b.c)), global1.b.b, false, global1.b.d, Struct_1(global1.b.a.b.x, vec3<u32>(1u, 4294967295u, 4294967295u))))), func_2(_wgslsmith_f_op_f32(sign(var_0.x)), vec3<bool>(true, false, 1u <= ~u_input.a.x)), global1.b.c, _wgslsmith_div_vec4_i32(vec4<i32>(global0.b.d.x, global0.b.d.x, -8977i, global0.b.d.x), select(select(global1.b.d, global0.b.d, true), reverseBits(~vec4<i32>(global0.b.d.x, 16104i, global1.b.d.x, 2147483647i)), !vec4<bool>(global0.b.c, global0.b.c, global1.b.c, global1.b.c))), func_4(global1.b.c, Struct_3(vec3<f32>(122f, _wgslsmith_f_op_f32(f32(-1f) * -1164f), _wgslsmith_f_op_f32(1000f + global0.a.x)), Struct_2(Struct_1(17509u, u_input.b.xxz), Struct_1(4294967295u, vec3<u32>(10129u, 70113u, 1u)), global0.b.c, _wgslsmith_add_vec4_i32(global0.b.d, global0.b.d), func_2(global1.a.x, vec3<bool>(true, global0.b.c, global1.b.c))))));
    var var_2 = global1.b.a.b.x << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(59557u, 68319u) ^ vec2<u32>(u_input.a.x, 3065u), vec2<u32>(global1.b.a.b.x, u_input.b.x)), ~(~1u)), ~(global0.b.e.a & global0.b.b.a)) % 32u);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 467f, var_0.x) - _wgslsmith_div_vec3_f32(global0.a, vec3<f32>(-598f, -859f, 1000f))))), Struct_2(global1.b.e, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), select(select(vec3<bool>(true, global0.b.c, global0.b.c), vec3<bool>(global1.b.c, false, global1.b.c), vec3<bool>(true, true, false)), select(vec3<bool>(global0.b.c, global1.b.c, global0.b.c), vec3<bool>(true, global0.b.c, var_1.c), var_1.c), select(vec3<bool>(true, global1.b.c, global0.b.c), vec3<bool>(var_1.c, var_1.c, global0.b.c), vec3<bool>(global0.b.c, var_1.c, global1.b.c)))), false, ~(vec4<i32>(1i, var_1.d.x, global1.b.d.x, 0i) << (_wgslsmith_div_vec4_u32(vec4<u32>(global0.b.a.a, 46922u, global1.b.b.a, 1u), vec4<u32>(18517u, global1.b.b.a, 1u, u_input.a.x)) % vec4<u32>(32u))), Struct_1(~4294967295u, abs(_wgslsmith_add_vec3_u32(vec3<u32>(18076u, 4294967295u, 24957u), vec3<u32>(global0.b.e.a, global0.b.b.b.x, 0u))))));
    global1 = Struct_3(var_3.a, Struct_2(global0.b.e, var_3.b.b, global0.b.c, vec4<i32>(var_1.d.x | min(-2147483647i, -17027i), var_1.d.x, _wgslsmith_mult_i32(var_1.d.x << (4294967295u % 32u), i32(-1i) * -59268i), reverseBits(15806i)), var_3.b.b));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(-836f - global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.a.x, var_0.x))), _wgslsmith_f_op_f32(-global1.a.x)), Struct_2(func_4(all(!vec4<bool>(var_3.b.c, false, var_1.c, global0.b.c)), Struct_3(_wgslsmith_f_op_vec3_f32(ceil(global1.a)), Struct_2(Struct_1(62893u, vec3<u32>(0u, var_3.b.b.a, u_input.a.x)), Struct_1(u_input.b.x, u_input.a), global1.b.c, vec4<i32>(-1i, 26557i, 2147483647i, 2147483647i), Struct_1(var_1.a.b.x, u_input.a)))), global0.b.e, !(!(var_1.c | true)), ~select(-var_3.b.d, vec4<i32>(var_3.b.d.x, global0.b.d.x, var_3.b.d.x, -2147483647i), vec4<bool>(var_1.c, global0.b.c, false, false)), Struct_1(11060u, _wgslsmith_sub_vec3_u32(var_1.a.b, _wgslsmith_mult_vec3_u32(u_input.b.wyw, vec3<u32>(1u, u_input.a.x, 33530u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!select(!vec3<bool>(global0.b.c, global0.b.c, false), vec3<bool>(global1.b.c, true, global0.b.c), select(vec3<bool>(true, global1.b.c, global0.b.c), vec3<bool>(false, true, global1.b.c), global1.b.c)));
    global0 = func_1();
    let var_1 = Struct_2(func_4(214f > global1.a.x, Struct_3(vec3<f32>(func_1().a.x, _wgslsmith_f_op_f32(sign(-843f)), global0.a.x), Struct_2(func_1().b.a, func_1().b.a, var_0, -global1.b.d, global0.b.a))), global1.b.e, 1i <= ~(16471i ^ -global1.b.d.x), _wgslsmith_add_vec4_i32(max(abs(abs(vec4<i32>(global0.b.d.x, 25237i, 1i, global0.b.d.x))), firstTrailingBit(_wgslsmith_add_vec4_i32(global0.b.d, global1.b.d))), firstLeadingBit(~(-global1.b.d))), Struct_1(1u, func_4(global1.b.c, Struct_3(global0.a, Struct_2(Struct_1(global0.b.e.a, vec3<u32>(u_input.a.x, global1.b.b.a, 11763u)), global0.b.b, false, vec4<i32>(global0.b.d.x, 10680i, 25093i, 21958i), Struct_1(1u, global0.b.a.b)))).b | vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 11138u), u_input.b.x, func_2(552f, vec3<bool>(global1.b.c, global1.b.c, var_0)).b.x)));
    global0 = func_1();
    let var_2 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f + global1.a.x)), vec3<bool>(true || var_0, true, func_1().b.c)).a, _wgslsmith_add_vec3_u32(vec3<u32>(func_2(-1231f, vec3<bool>(false, var_1.c, var_1.c)).b.x, 0u, global0.b.a.a), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.e.b.x, 4294967295u), ~vec3<u32>(var_1.e.b.x, 1u, u_input.b.x)))), func_4(global0.b.c, func_1()), false, firstLeadingBit(-min(vec4<i32>(global1.b.d.x, var_1.d.x, 7323i, global1.b.d.x), ~vec4<i32>(0i, 2147483647i, global1.b.d.x, global0.b.d.x))), var_1.e);
    var var_3 = select(vec3<bool>(var_0, !select(false, !var_2.c, var_1.c), var_2.c && global1.b.c), select(vec3<bool>(var_2.c, global1.b.c, true), select(vec3<bool>(true, select(false, var_2.c, global0.b.c), var_0), select(vec3<bool>(var_1.c, true, true), vec3<bool>(true, var_0, false), var_1.c), !any(vec3<bool>(var_2.c, false, global1.b.c))), select(select(vec3<bool>(var_0, global0.b.c, var_2.c), select(vec3<bool>(global1.b.c, global0.b.c, var_0), vec3<bool>(global0.b.c, global1.b.c, global1.b.c), vec3<bool>(false, var_1.c, true)), vec3<bool>(true, false, false)), vec3<bool>(false, var_2.d.x < global1.b.d.x, select(true, false, true)), !select(vec3<bool>(global0.b.c, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, var_2.c)))), select(!vec3<bool>(func_1().b.c, var_2.c, !global0.b.c), !select(select(vec3<bool>(false, true, false), vec3<bool>(var_0, global0.b.c, var_1.c), global0.b.c), select(vec3<bool>(true, true, true), vec3<bool>(global1.b.c, global1.b.c, global0.b.c), vec3<bool>(global1.b.c, global1.b.c, global0.b.c)), var_2.c), vec3<bool>(true, all(!vec2<bool>(global1.b.c, true)), false)));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global1.a)), _wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(global1.a)), _wgslsmith_f_op_vec3_f32(-global0.a)))), select(vec3<bool>(false, true, !global0.b.c), select(select(vec3<bool>(true, var_0, global0.b.c), vec3<bool>(global1.b.c, false, var_0), global0.b.c), select(vec3<bool>(global1.b.c, true, true), vec3<bool>(var_2.c, var_1.c, false), false), global1.b.c), true))), var_1);
    let var_4 = !(!(!vec3<bool>(global0.b.c, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(139f, 349f, global1.a.x, global0.a.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(705f, global0.a.x, global1.a.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, global0.a.x, -211f, -322f), vec4<f32>(-1269f, global1.a.x, 1356f, -1121f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, -234f, global1.a.x, global1.a.x) * vec4<f32>(global0.a.x, -129f, global0.a.x, 2080f)))))), 1f, global1.a.zx, -_wgslsmith_div_vec2_i32(firstLeadingBit(global1.b.d.yw), var_1.d.xx));
}

