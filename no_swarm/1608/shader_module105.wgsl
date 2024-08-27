struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i, vec3<u32>(103466u, 4294967295u, 19606u), Struct_1(42419u, 1u), Struct_1(44488u, 0u), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = -(~vec2<i32>(_wgslsmith_add_i32(-global0.a, ~1i), global0.a >> ((4294967295u | global0.b.x) % 32u)));
    global1 = array<Struct_1, 16>();
    var var_1 = vec3<bool>(arg_2.e.x, arg_1 && arg_3.e.x, arg_1);
    let var_2 = max(~select(vec4<u32>(6993u, 1u, 1u, u_input.a), ~vec4<u32>(698u, 18348u, 0u, u_input.a), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(var_1.x, false, arg_3.e.x, arg_2.e.x), arg_0.x)), vec4<u32>(~(~u_input.a), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.b, u_input.a, arg_3.b.x, 41328u), vec4<u32>(15745u, 103497u, 30864u, u_input.a) ^ vec4<u32>(arg_3.d.b, arg_2.c.a, arg_3.d.a, 1u)), ~_wgslsmith_clamp_u32(u_input.a, arg_3.d.b, arg_3.b.x))) & reverseBits(~(~vec4<u32>(16376u, 57975u, arg_3.d.a, 4294967295u)));
    return ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(u_input.b, _wgslsmith_clamp_i32(arg_2.a, global0.a, 530i))), _wgslsmith_clamp_vec2_i32(~var_0, vec2<i32>(u_input.b, i32(-1i) * -1i), max(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a, 14328i), vec2<i32>(global0.a, arg_2.a)), _wgslsmith_div_vec2_i32(var_0, vec2<i32>(var_0.x, arg_2.a)))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global1 = array<Struct_1, 16>();
    var var_0 = ~(~(~func_3(vec3<bool>(true, global0.e.x, true), true, Struct_2(arg_0, global0.b, global1[_wgslsmith_index_u32(u_input.a, 16u)], global0.d, vec2<bool>(global0.e.x, false)), Struct_2(-19831i, global0.b, Struct_1(global0.d.b, 2402u), Struct_1(0u, u_input.a), global0.e))));
    return Struct_2(u_input.b, global0.b, Struct_1(1u, _wgslsmith_mod_u32(u_input.a, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 4294967295u, 11233u, u_input.a), vec4<u32>(u_input.a, u_input.a, global0.c.b, u_input.a))))), Struct_1(~u_input.a, 9085u), global0.e);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    global0 = func_2(-(~func_3(!vec3<bool>(arg_0.e.x, global0.e.x, true), true, Struct_2(0i, vec3<u32>(u_input.a, arg_0.b.x, arg_0.d.a), Struct_1(global0.c.b, arg_0.c.a), global1[_wgslsmith_index_u32(arg_0.d.b, 16u)], global0.e), arg_0).x));
    var var_0 = arg_0;
    global1 = array<Struct_1, 16>();
    return func_2(-20261i).c;
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = select(!vec4<bool>(false, (arg_0.e.x == false) != true, !global0.e.x, any(vec2<bool>(arg_0.e.x, true))), vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(sign(-1000f)))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(727f * 335f), _wgslsmith_f_op_f32(-386f + 1503f))), !(_wgslsmith_f_op_f32(step(-1183f, -521f)) <= _wgslsmith_f_op_f32(max(-843f, 620f))), false, false), !vec4<bool>((u_input.b < arg_0.a) & !arg_0.e.x, any(select(vec3<bool>(true, true, false), vec3<bool>(global0.e.x, true, global0.e.x), vec3<bool>(arg_0.e.x, arg_0.e.x, false))), arg_1 != arg_0.d.a, 41078u < ~arg_0.b.x));
    global1 = array<Struct_1, 16>();
    var_0 = vec4<bool>(any(vec4<bool>(!(global0.e.x & false), !any(var_0.xy), select(!var_0.x, var_0.x || true, !global0.e.x), global0.e.x)), global0.e.x, true, !var_0.x);
    var var_1 = arg_0;
    global1 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(floor(-929f));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), 973f)), _wgslsmith_f_op_f32(func_5(Struct_2(1i >> (_wgslsmith_div_u32(u_input.a, global0.b.x) % 32u), ~vec3<u32>(4294967295u, global0.d.a, 0u), func_4(func_2(u_input.c), ~vec2<i32>(-1i, u_input.b)), global1[_wgslsmith_index_u32(countOneBits(global0.d.a), 16u)], !(!vec2<bool>(arg_0.x, global0.e.x))), _wgslsmith_dot_vec2_u32(~abs(global0.b.yx), vec2<u32>(abs(1595u), 1u)))));
    var var_1 = abs(-22543i);
    var_1 = u_input.b;
    var var_2 = i32(-1i) * -2147483647i;
    var var_3 = func_2(global0.a);
    return var_3.e.x;
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = 1u;
    let var_1 = arg_0;
    return func_2(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~_wgslsmith_mult_u32(4448u, abs(u_input.a)));
    let var_1 = func_6(-864f, select(select(select(select(vec4<bool>(global0.e.x, global0.e.x, false, global0.e.x), vec4<bool>(false, global0.e.x, true, false), vec4<bool>(false, false, global0.e.x, global0.e.x)), !vec4<bool>(global0.e.x, global0.e.x, false, global0.e.x), func_1(vec4<bool>(global0.e.x, true, global0.e.x, global0.e.x), u_input.b)), select(select(vec4<bool>(false, global0.e.x, true, global0.e.x), vec4<bool>(false, global0.e.x, false, false), global0.e.x), select(vec4<bool>(global0.e.x, global0.e.x, true, true), vec4<bool>(false, true, global0.e.x, true), vec4<bool>(global0.e.x, false, true, false)), vec4<bool>(true, true, true, true)), func_1(vec4<bool>(true, true, true, true), u_input.b)), vec4<bool>(10475i < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.a, u_input.c), vec3<i32>(u_input.b, -5499i, 11768i)), global0.e.x, global0.e.x, true), select(select(select(vec4<bool>(false, global0.e.x, false, global0.e.x), vec4<bool>(global0.e.x, global0.e.x, global0.e.x, global0.e.x), global0.e.x), vec4<bool>(false, true, true, global0.e.x), global0.e.x), !select(vec4<bool>(false, false, global0.e.x, global0.e.x), vec4<bool>(false, global0.e.x, global0.e.x, global0.e.x), global0.e.x), vec4<bool>(true, func_1(vec4<bool>(true, global0.e.x, false, global0.e.x), -1i), global0.e.x, true))), func_2(global0.a & firstLeadingBit(global0.a | global0.a)));
    global0 = func_6(654f, vec4<bool>(true, true, true, false), Struct_2(global0.a, (select(var_1.b, vec3<u32>(var_1.b.x, u_input.a, 52000u), vec3<bool>(false, var_1.e.x, true)) ^ global0.b) >> (_wgslsmith_sub_vec3_u32(firstTrailingBit(var_1.b), _wgslsmith_clamp_vec3_u32(var_1.b, global0.b, global0.b)) % vec3<u32>(32u)), var_1.d, global0.c, !var_1.e));
    let var_2 = func_2(-reverseBits(~30735i));
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, firstLeadingBit(firstLeadingBit(1i))), vec3<i32>(_wgslsmith_dot_vec3_i32(max(~vec3<i32>(24754i, 45756i, 117880i), vec3<i32>(u_input.b, u_input.c, global0.a)), -vec3<i32>(var_2.a, -9061i, -1i)), abs(var_2.a), var_1.a), vec3<i32>(22420i, func_2(select(firstTrailingBit(u_input.c), _wgslsmith_clamp_i32(2147483647i, var_2.a, 31787i), var_1.e.x & false)).a, global0.a));
    let var_4 = all(vec4<bool>(true, false, var_1.e.x, !global0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-203f + 775f))), _wgslsmith_f_op_f32(1000f + 1270f), _wgslsmith_f_op_f32(func_5(var_1, 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-305f, -1100f), -952f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(248f, 2830f, -1117f, 1697f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(f32(-1f) * -645f), 1645f, _wgslsmith_f_op_f32(f32(-1f) * -835f))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(func_2(-1i), _wgslsmith_clamp_u32(4294967295u, 1u, 1u)))))), vec3<i32>(_wgslsmith_div_i32(var_1.a, -func_6(-939f, vec4<bool>(false, false, true, var_4), var_2).a), ~var_2.a, var_2.a), countOneBits(_wgslsmith_sub_vec4_u32((vec4<u32>(0u, 51095u, global0.d.b, 1u) << (vec4<u32>(global0.d.a, var_2.c.a, u_input.a, u_input.a) % vec4<u32>(32u))) & ~vec4<u32>(1u, 16626u, 6891u, var_2.d.a), ~(vec4<u32>(u_input.a, 6549u, 4294967295u, global0.c.a) ^ vec4<u32>(8267u, var_2.b.x, 14818u, 12883u)))));
}

