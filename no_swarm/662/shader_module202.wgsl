struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<u32> = vec3<u32>(22144u, 13560u, 4294967295u);

var<private> global2: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = ~(~(~abs(20853u)));
    let var_1 = 2147483647i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(arg_0.x)), false != (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-34299i, var_1, u_input.b), u_input.b) < reverseBits(min(var_1, 54293i))), ~((abs(16853u) << ((u_input.c.x >> (32387u % 32u)) % 32u)) ^ (u_input.a << (0u % 32u))), vec4<bool>(true, -u_input.b < (_wgslsmith_div_i32(0i, var_1) << (global1.x % 32u)), select(617f != arg_0.x, false, all(vec4<bool>(true, true, true, true)) || (u_input.b == u_input.b)), false));
    let var_3 = arg_0.x;
    let var_4 = arg_0.yxw;
    return Struct_1(arg_0.x, true, var_2.c, var_2.d);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = select(func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_2.a.b.x, global0.x, -1770f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a, arg_2.a.b.x, 772f, arg_2.a.b.x) - vec4<f32>(arg_2.a.b.x, -210f, -2195f, -574f))))).d.yzx, vec3<bool>(!any(func_2(vec4<f32>(global0.x, arg_2.a.b.x, global0.x, 709f)).d), !all(vec3<bool>(true, false, arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1097f)) == _wgslsmith_f_op_f32(abs(arg_2.a.b.x))), !any(vec2<bool>(true, arg_1.a.c >= arg_1.a.c)));
    global1 = vec3<u32>(~68106u, ~countOneBits(~_wgslsmith_add_u32(arg_3.x, 1u)), ~(1u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 33055u, arg_1.a.c), firstLeadingBit(arg_3))));
    var var_1 = vec4<bool>(2147483647i <= abs(firstLeadingBit(0i) << (~u_input.d.x % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -522i, 2147483647i, u_input.e.x), vec4<i32>(-10707i, u_input.e.x, reverseBits(u_input.e.x), 23122i)) > 3788i, arg_1.a.b && any(select(select(var_0.xx, vec2<bool>(false, false), arg_1.a.d.yx), !arg_2.b.xz, select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), var_0.xz))), false);
    let var_2 = Struct_2(vec2<u32>(arg_1.a.c, global1.x), arg_2.a.b, vec2<u32>(~13957u, _wgslsmith_mod_u32(~arg_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.a.c.x, arg_2.a.a.x, 1u), vec4<u32>(35241u, u_input.a, global1.x, arg_1.a.c)))));
    var var_3 = arg_2.b.x;
    return arg_2.a.b.yy;
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = Struct_3(Struct_2(vec2<u32>(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(global1.x, global1.x)), u_input.d.x), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, global0.x), 1256f)), 1f, 1124f), global1.yx), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), any(vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.b, u_input.b, 1i) >> (vec4<u32>(4294967295u, var_1.a.a.x, 0u, u_input.a) % vec4<u32>(32u)), vec4<i32>(4294i, u_input.e.x, u_input.e.x, 1i)), Struct_4(func_2(vec4<f32>(450f, -598f, var_1.a.b.x, -820f))), var_1, firstLeadingBit(vec4<u32>(114853u, 30462u, 4294967295u, 1u)) << (~vec4<u32>(u_input.a, u_input.d.x, global1.x, global1.x) % vec4<u32>(32u)))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-561f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1038f, -588f))))), all(vec3<bool>(false, all(vec2<bool>(var_1.b.x, var_1.b.x)), func_2(vec4<f32>(1255f, global0.x, -2324f, global0.x)).d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(299f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1762f, _wgslsmith_f_op_vec2_f32(func_3(u_input.b, Struct_4(Struct_1(var_1.a.b.x, var_1.b.x, 4294967295u, vec4<bool>(false, var_1.b.x, var_1.b.x, true))), var_1, vec4<u32>(0u, var_1.a.a.x, 0u, var_1.a.c.x))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))))));
    var var_2 = !(!vec3<bool>(var_1.b.x, any(!vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x)), var_1.b.x));
    return Struct_2(vec2<u32>(select(58709u, 0u, true), 0u), var_1.a.b, vec2<u32>(reverseBits(u_input.d.x), 9718u & _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1.x, 8463u, 44397u, 26349u)), ~vec4<u32>(24671u, var_1.a.a.x, var_1.a.a.x, 1u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = u_input.e.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a, 868f, -758f), vec3<f32>(-523f, -1000f, arg_0.b.x)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(931f + arg_0.b.x), arg_2.a, _wgslsmith_f_op_f32(round(143f))), arg_3.b)) * _wgslsmith_f_op_vec3_f32(min(arg_3.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, 180f, 1703f))))));
    let var_2 = Struct_4(arg_1);
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(-(~_wgslsmith_add_i32(0i, 15794i)), _wgslsmith_add_i32(_wgslsmith_div_i32(abs(u_input.b), var_0), -21876i)), _wgslsmith_mod_i32(i32(-1i) * -abs(var_0), max(max(firstTrailingBit(var_0), var_0), _wgslsmith_sub_i32(-var_0, 1i))), -1i);
    var var_4 = true;
    return select(arg_2.d, arg_1.d, !arg_2.d.x);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    global2 = arg_2.d.x;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.x), (reverseBits(abs(u_input.b)) <= _wgslsmith_sub_i32(-21285i | u_input.e.x, ~(-6709i))) || all(arg_3.d.wxy), u_input.a, vec4<bool>(false, any(vec3<bool>(!arg_1.b, true, true)), true, true));
    var var_1 = max(global1.zz, ~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, global1.x), min(global1.zy, vec2<u32>(arg_1.c, var_0.c))), vec2<u32>(firstLeadingBit(1u), countOneBits(4294967295u))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 271f, global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.a, 1130f, 273f))))), vec3<f32>(-570f, _wgslsmith_f_op_f32(abs(387f)), _wgslsmith_f_op_f32(arg_3.a + global0.x)), select(vec3<bool>(var_0.b, func_4(Struct_2(vec2<u32>(1u, 1u), vec3<f32>(-1043f, 519f, arg_3.a), u_input.d), arg_3, arg_1, Struct_2(global1.yy, vec3<f32>(-1140f, arg_3.a, 444f), vec2<u32>(4294967295u, 6250u))).x, true), !select(var_0.d.zxx, vec3<bool>(true, arg_1.d.x, true), false), !(u_input.a < 26875u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -329f, arg_1.a) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1249f, -324f, var_0.a))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, -1000f, arg_1.a)), vec3<f32>(304f, 515f, -811f))))));
    var var_3 = _wgslsmith_clamp_vec4_u32(~(vec4<u32>(13039u, _wgslsmith_add_u32(25266u, 0u), global1.x | 4294967295u, arg_2.c) ^ abs(vec4<u32>(arg_3.c, 377u, arg_2.c, global1.x))), select(firstLeadingBit(min(select(vec4<u32>(global1.x, arg_3.c, 64569u, global1.x), vec4<u32>(arg_2.c, 8764u, 73627u, 4294967295u), arg_2.d), ~vec4<u32>(1u, arg_1.c, global1.x, 4294967295u))), ~(~vec4<u32>(0u, 1u, 4294967295u, var_1.x)) ^ ~(~vec4<u32>(4294967295u, u_input.a, 0u, var_1.x)), true), ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(6557u, 0u, 98769u, arg_1.c)), vec4<u32>(var_1.x, var_1.x >> (var_1.x % 32u), select(arg_2.c, arg_3.c, arg_2.d.x), 4294967295u)));
    return Struct_3(Struct_2(vec2<u32>(arg_1.c, 1u) & u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0.a, var_0.a)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-478f, 133f, 476f)))))), u_input.d), !vec3<bool>(true, any(!var_0.d), true && any(arg_1.d.zwx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.e.x, Struct_1(_wgslsmith_f_op_f32(max(660f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, global0.x))))), true == (-u_input.e.x == _wgslsmith_clamp_i32(-40917i, -16687i, u_input.e.x)), 4294967295u, func_4(func_1(), Struct_1(_wgslsmith_f_op_f32(abs(915f)), -30354i > u_input.e.x, u_input.a, vec4<bool>(true, true, true, true)), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1227f, -1215f, 1000f, -877f)))), func_1())), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, 419f, -1913f, 549f) - vec4<f32>(global0.x, -331f, 162f, 1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-812f, 1074f, 568f, global0.x), vec4<f32>(1000f, global0.x, 1000f, global0.x), vec4<bool>(false, true, false, false)))))), func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, -751f, global0.x, global0.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.a.b.yy)));
    let var_1 = true | func_4(func_5(_wgslsmith_add_i32(max(0i, 14554i), 0i), func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 549f, global0.x, -1548f)))), Struct_1(-1000f, true, _wgslsmith_div_u32(0u, u_input.d.x), vec4<bool>(true, var_0.b.x, true, var_0.b.x)), Struct_1(var_0.a.b.x, var_0.b.x | var_0.b.x, u_input.d.x << (0u % 32u), !vec4<bool>(false, false, var_0.b.x, var_0.b.x))).a, Struct_1(global0.x, var_0.b.x, global1.x, !select(vec4<bool>(true, true, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, true, true, var_0.b.x), vec4<bool>(true, true, var_0.b.x, false))), Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.e.x, u_input.e.x, u_input.b)) > _wgslsmith_add_i32(u_input.b, u_input.e.x), _wgslsmith_dot_vec2_u32(var_0.a.c, vec2<u32>(43551u, global1.x)), func_4(func_1(), Struct_1(-1651f, var_0.b.x, global1.x, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), Struct_1(-328f, var_0.b.x, global1.x, vec4<bool>(false, false, false, var_0.b.x)), func_1())), func_5(_wgslsmith_dot_vec4_i32(~vec4<i32>(8675i, u_input.e.x, u_input.e.x, 24630i), vec4<i32>(-2147483647i, u_input.e.x, u_input.b, u_input.b)), Struct_1(func_5(82912i, Struct_1(-1686f, var_0.b.x, var_0.a.c.x, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), Struct_1(global0.x, true, var_0.a.a.x, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), Struct_1(global0.x, false, u_input.c.x, vec4<bool>(var_0.b.x, true, false, var_0.b.x))).a.b.x, true, _wgslsmith_mult_u32(0u, u_input.d.x), select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), false)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1134f, 1658f, -685f, global0.x))), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(386f, -262f, global0.x, 403f), vec4<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, 1136f)))).a).x;
    var var_2 = Struct_3(var_0.a, select(vec3<bool>(var_1, !(global0.x <= var_0.a.b.x), !var_0.b.x), var_0.b, !var_1));
    let var_3 = true;
    var var_4 = !select(!(!func_4(Struct_2(u_input.d, var_0.a.b, var_0.a.a), Struct_1(global0.x, var_0.b.x, global1.x, vec4<bool>(true, var_3, var_2.b.x, var_2.b.x)), Struct_1(-907f, true, var_2.a.c.x, vec4<bool>(var_1, var_1, false, false)), Struct_2(global1.yz, var_2.a.b, vec2<u32>(4294967295u, 47047u)))), func_4(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(51570u, var_2.a.a.x)), var_0.a.b, ~vec2<u32>(u_input.a, 4294967295u)), func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(626f, var_2.a.b.x, global0.x, var_2.a.b.x), vec4<f32>(var_2.a.b.x, var_0.a.b.x, -662f, 1078f)))), func_2(vec4<f32>(-290f, -1991f, -142f, global0.x)), Struct_2(_wgslsmith_mod_vec2_u32(global1.zy, vec2<u32>(1u, 4294967295u)), vec3<f32>(-659f, -880f, var_0.a.b.x), firstLeadingBit(u_input.c))), select(!(!vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.b.x)), vec4<bool>(var_2.b.x, func_2(vec4<f32>(var_0.a.b.x, var_2.a.b.x, var_2.a.b.x, 1592f)).d.x, true, func_2(vec4<f32>(1474f, global0.x, 1399f, -214f)).b), (var_0.b.x && var_3) | (-727f >= var_2.a.b.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-870f, var_2.a.b.x) + vec2<f32>(548f, -231f)));
    global1 = ~(~abs(vec3<u32>(0u, ~var_0.a.c.x, ~global1.x)));
    var var_5 = _wgslsmith_mult_vec4_i32(~(-firstTrailingBit(~vec4<i32>(-2147483647i, -1679i, 52437i, 6933i))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.xy, min(u_input.e.xy, u_input.e.zy)), ~_wgslsmith_clamp_i32(u_input.e.x, 0i, -35651i), -_wgslsmith_clamp_i32(-29555i, 41581i, u_input.b), 29594i), vec4<i32>(abs(i32(-1i) * -2147483647i), abs(u_input.b), _wgslsmith_sub_i32(u_input.b, 2147483647i), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(abs(~28085u), min(u_input.c.x ^ global1.x, reverseBits(1u)), ~1u, 3160u), ~reverseBits(vec4<u32>(var_2.a.a.x, var_2.a.c.x, u_input.d.x, 4294967295u))), var_5.x, -1000f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x)), _wgslsmith_f_op_f32(exp2(var_0.a.b.x)), global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(select(-552f, var_2.a.b.x, var_2.b.x)), _wgslsmith_f_op_f32(-917f - -301f)))));
}

