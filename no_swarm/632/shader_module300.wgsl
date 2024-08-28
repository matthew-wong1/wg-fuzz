struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-21742i, 1i, 2147483647i), vec3<i32>(0i, -1i, -1i), vec3<i32>(16381i, -1208i, -39807i), vec3<i32>(2147483647i, 729i, 1i), vec3<i32>(0i, 2147483647i, -8023i), vec3<i32>(-3617i, 32841i, 4803i), vec3<i32>(17641i, 2147483647i, -6731i), vec3<i32>(-1i, -13204i, i32(-2147483648)), vec3<i32>(-36888i, 67034i, -35976i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-64193i, 0i, -11944i), vec3<i32>(-30548i, 4198i, -61215i), vec3<i32>(2147483647i, 17595i, 1988i), vec3<i32>(17178i, -1i, -4044i), vec3<i32>(-12476i, 25556i, -30702i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-31509i, 1i, 16373i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(-3541i, 0i, 1i), vec3<i32>(-10080i, i32(-2147483648), 0i), vec3<i32>(1i, 18527i, 2526i), vec3<i32>(-11646i, 0i, -1i));

var<private> global2: vec2<f32> = vec2<f32>(-334f, 1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = firstLeadingBit(firstTrailingBit(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 4294967295u) >> ((vec4<u32>(85457u, 0u, 4294967295u, u_input.a.x) >> (vec4<u32>(4294967295u, 57536u, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))) & ~(~min(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.a.x), vec4<u32>(u_input.a.x, 5496u, 11305u, u_input.c.x)));
    var var_1 = Struct_1(~u_input.a.x, vec2<bool>(true, true), !((true | any(vec4<bool>(true, false, true, true))) | true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(680f, _wgslsmith_f_op_f32(-1000f - global2.x), _wgslsmith_div_f32(-419f, global2.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -365f, -271f, global0.x))))), select(vec3<bool>(all(vec2<bool>(true, true)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true));
    var var_2 = _wgslsmith_f_op_f32(step(1972f, global0.x));
    let var_3 = Struct_1(26568u, select(var_1.b, !vec2<bool>(all(vec4<bool>(false, var_1.b.x, true, var_1.e.x)), var_1.c), all(var_1.e.zy)), !all(vec2<bool>(!var_1.c, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(-1482f, 1717f, 1993f, -286f)) + var_1.d), vec4<f32>(_wgslsmith_f_op_f32(abs(678f)), _wgslsmith_f_op_f32(-global0.x), 896f, global2.x)), !vec3<bool>(any(!vec4<bool>(var_1.c, true, var_1.c, true)), select(true, any(var_1.e), true), false));
    var var_4 = select(abs(u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b.yxx, vec3<i32>(_wgslsmith_add_i32(~2147483647i, 1i), u_input.b.x, _wgslsmith_add_i32(_wgslsmith_add_i32(-29239i, u_input.b.x), _wgslsmith_sub_i32(83959i, u_input.b.x)))), all(select(vec4<bool>(true && var_3.b.x, false, var_3.c, !var_3.b.x), !vec4<bool>(var_1.b.x, var_3.e.x, var_3.c, false), var_1.c)));
    return select(true, _wgslsmith_dot_vec3_i32(-global1[_wgslsmith_index_u32(u_input.c.x, 22u)], vec3<i32>(27921i, 2147483647i, u_input.b.x)) < abs(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), !(!any(vec3<bool>(var_3.e.x, var_3.b.x, false))));
}

fn func_2() -> bool {
    var var_0 = vec4<bool>(((u_input.c.x | u_input.a.x) <= abs(~4294967295u)) && (-1117f != _wgslsmith_f_op_f32(global2.x * -829f)), ((u_input.b.x & ~(-2147483647i)) << (firstLeadingBit(~u_input.c.x) % 32u)) >= ~((2147483647i >> (u_input.a.x % 32u)) | 2147483647i), any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, false)), select(false, false, true), u_input.a.x > 70917u, true))), func_3());
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f * global2.x))))), Struct_1(u_input.a.x, vec2<bool>(any(select(var_0.zxz, vec3<bool>(var_0.x, false, var_0.x), var_0.wxx)), true), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-917f, 1267f, -2608f, global2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(993f, -667f, -261f, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, 543f, 2106f, 1139f))), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), !(!var_0.xzy)));
    global0 = var_1.b.d.yww;
    global1 = array<vec3<i32>, 22>();
    var var_2 = !all(!vec4<bool>(true, false, any(vec4<bool>(var_0.x, true, var_1.b.c, true)), true));
    return var_1.b.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(arg_0.x, vec2<bool>(func_2(), !all(select(vec2<bool>(arg_1.c, arg_1.b.x), vec2<bool>(arg_1.e.x, false), arg_1.b))), arg_1.e.x, _wgslsmith_f_op_vec4_f32(exp2(arg_1.d)), !(!vec3<bool>(!arg_1.b.x, arg_1.b.x, 1u != arg_1.a)));
    global0 = _wgslsmith_f_op_vec3_f32(max(var_0.d.zzz, arg_1.d.wyy));
    var var_1 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, _wgslsmith_clamp_u32(arg_0.x, u_input.a.x, 4294967295u), u_input.c.x)), arg_0);
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.d.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.yy))), vec2<bool>(var_0.c, all(vec3<bool>(!arg_1.c, var_0.e.x, arg_1.b.x || arg_1.c)))));
    var var_2 = firstTrailingBit(_wgslsmith_mult_vec3_u32(arg_0, ~(~vec3<u32>(arg_1.a, 0u, arg_0.x) | min(u_input.c, arg_0))));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-448f * -491f))), _wgslsmith_div_f32(-264f, global0.x)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a, Struct_1(firstLeadingBit(~(1u << (u_input.a.x % 32u))), vec2<bool>(true, true), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global0.x, -550f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1713f, global0.x, 1000f) + vec4<f32>(1145f, global0.x, 548f, global0.x)), vec4<bool>(true, true, true, true)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))));
    global0 = vec3<f32>(748f, var_0.b.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1213f, -1176f, var_0.b.e.x)))));
    var var_1 = func_1(u_input.a, var_0.b);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - global0.x), _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), -286f))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(global2.x)), 1454f));
    var var_4 = func_1(~(~reverseBits(vec3<u32>(39846u, u_input.a.x, 75532u))), func_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.a, 4294967295u, 22849u) & u_input.c, vec3<u32>(1u, 0u, 29348u)), select(vec3<u32>(0u, var_1.b.a, var_1.b.a) | u_input.c, max(vec3<u32>(var_0.b.a, u_input.a.x, var_0.b.a), vec3<u32>(var_1.b.a, var_0.b.a, 4294967295u)), var_0.b.b.x), !(!vec3<bool>(var_0.b.b.x, var_0.b.b.x, var_1.b.e.x))), func_1(~select(vec3<u32>(0u, 43003u, 28497u), u_input.c, var_1.b.e.x), func_1(u_input.a, func_1(u_input.c, Struct_1(0u, vec2<bool>(false, true), false, vec4<f32>(797f, var_0.b.d.x, 601f, 1000f), vec3<bool>(true, var_1.b.b.x, var_1.b.b.x))).b).b).b).b);
    var var_5 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.a.x * _wgslsmith_f_op_f32(-954f - -938f)))));
    var var_6 = func_1(vec3<u32>(1u, var_4.b.a | u_input.a.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(65260u, 1u, 4294967295u, 0u), vec4<u32>(var_4.b.a, 4294967295u, var_4.b.a, u_input.c.x)), u_input.c.x)) | (_wgslsmith_mod_vec3_u32(abs(u_input.c), u_input.a) | _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_1.b.a, 128515u, var_1.b.a)), ~u_input.c)), var_1.b).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_4.b.d.xxz + var_0.b.d.yxx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -679f, 121f))), var_4.b.d.zzz)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 650f, 1516f))))));
}

