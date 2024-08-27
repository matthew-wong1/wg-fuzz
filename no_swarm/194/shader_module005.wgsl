struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<vec4<i32>, 13>;

var<private> global3: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false));

var<private> global4: vec3<f32> = vec3<f32>(379f, -297f, 809f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global2 = array<vec4<i32>, 13>();
    var var_0 = ~select(vec3<i32>(u_input.c, ~u_input.d, -56683i), vec3<i32>(u_input.d, abs(~(-2147483647i)), -18448i), false);
    var_0 = vec3<i32>(1i, select(var_0.x, -1i, ~u_input.b == u_input.b), u_input.d);
    global1 = array<Struct_1, 15>();
    let var_1 = firstLeadingBit(u_input.a.x);
    return any(select(global3[_wgslsmith_index_u32(~var_1, 20u)], vec4<bool>(reverseBits(var_1) <= ~4294967295u, (var_0.x | -19323i) >= _wgslsmith_mult_i32(-37241i, var_0.x), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global4.x) <= -264f), false));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global4 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.x)), global4.x))), _wgslsmith_f_op_f32(f32(-1f) * -780f), global4.x)));
    let var_0 = Struct_2(!(!(!arg_0.e)), Struct_1(max(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, u_input.a.x, arg_1.a), vec4<u32>(arg_1.a, arg_3.a, arg_1.a, 21800u))), 4294967295u)), select(!select(arg_0.c, !arg_0.c, select(vec2<bool>(true, arg_0.a), arg_0.c, arg_0.a)), vec2<bool>(-664f >= _wgslsmith_f_op_f32(-global4.x), true), select(vec2<bool>(false, true), arg_0.c, !(global4.x == global4.x))), arg_3, !arg_0.a);
    var var_1 = Struct_2(any(!select(select(global3[_wgslsmith_index_u32(arg_2.a, 20u)], vec4<bool>(var_0.e, false, var_0.a, var_0.a), var_0.a), select(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(var_0.b.a, 20u)], global3[_wgslsmith_index_u32(var_0.b.a, 20u)]), false)), arg_1, arg_0.c, Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.xw, ~_wgslsmith_sub_vec2_u32(u_input.a.yw, vec2<u32>(arg_3.a, arg_1.a)))), (all(!arg_0.c) == (!var_0.c.x | var_0.c.x)) && func_3());
    global1 = array<Struct_1, 15>();
    return arg_3.a | 23549u;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = reverseBits(max(vec3<u32>(u_input.a.x, func_2(Struct_2(true, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<bool>(false, true), Struct_1(u_input.b), true), Struct_1(1u), arg_1, arg_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_1.a, 4294967295u), u_input.a), ~arg_1.a)), ~(~(~u_input.a.yww))));
    global3 = array<vec4<bool>, 20>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1032f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + global4.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(global4.x * 630f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x)))), _wgslsmith_f_op_f32(-1694f - _wgslsmith_f_op_f32(trunc(-897f))))));
    global2 = array<vec4<i32>, 13>();
    var var_2 = arg_1.a;
    return Struct_2(false, arg_1, select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>((u_input.b <= 4294967295u) || false, func_3()), select(vec2<bool>(true, u_input.b <= var_0.x), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, u_input.c >= 2147483647i))), global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x >> (31617u % 32u)), 15u)], all(select(vec4<bool>(true, true, true, all(vec3<bool>(true, false, false))), !(!global3[_wgslsmith_index_u32(5654u, 20u)]), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-_wgslsmith_div_i32(-1i, u_input.c), Struct_1(_wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<bool>(true, true, false))), _wgslsmith_div_vec3_u32(max(vec3<u32>(4294967295u, u_input.b, u_input.a.x), vec3<u32>(u_input.b, 28913u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(28691u, u_input.b, u_input.a.x), u_input.a.yyz)))));
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.x))), global4.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global4.x))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 113f, global4.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) * vec3<f32>(global4.x, 381f, global4.x)), vec3<bool>(all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.c.x)), false, var_0.a && var_0.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(sign(global4.x)), -859f)), select(!vec3<bool>(true, var_0.a, false), select(select(!vec3<bool>(var_0.e, false, var_0.e), !vec3<bool>(var_0.a, var_0.e, var_0.a), true), select(select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(true, var_0.c.x, var_0.a), vec3<bool>(false, var_0.a, true)), vec3<bool>(false, true, var_0.e), global4.x > global4.x), true), (_wgslsmith_clamp_i32(29405i, u_input.c, u_input.c) < ~u_input.d) && var_0.a)));
    var_0 = Struct_2(select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(527f * -479f)) != _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.x, global4.x))), var_0.a), var_0.d, var_0.c, func_1(2147483647i, Struct_1(func_2(func_1(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 15u)]), var_0.d, var_0.d, Struct_1(var_0.d.a)))).b, any(var_0.c));
    var var_3 = Struct_2(all(!vec4<bool>(!var_0.a, false, !var_0.c.x, var_0.c.x && var_0.c.x)), var_0.d, func_1(min(i32(-1i) * -23969i, u_input.d) ^ ~countOneBits(u_input.d), var_0.b).c, func_1(42414i, Struct_1(u_input.a.x)).d, ~(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.b.a, var_0.d.a, u_input.b, u_input.b)) >> ((u_input.b | 80129u) % 32u)) > _wgslsmith_clamp_u32(1u, min(u_input.a.x, _wgslsmith_sub_u32(var_0.d.a, u_input.a.x)), 0u));
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -u_input.c), ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 1485i), vec2<i32>(u_input.d, u_input.c)))), ~(-vec2<i32>(u_input.d, 50627i)) ^ -select(select(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(39755i, u_input.c), var_3.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(46474i, 72130i), vec2<i32>(2147483647i, -34305i), vec2<i32>(-1i, -27984i)), true));
    var_0 = func_1(-2147483647i, var_0.d);
    let var_4 = Struct_2(var_3.e, Struct_1(var_3.d.a), !(!func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 1i, -1i), vec3<i32>(u_input.d, 5306i, u_input.d)), global1[_wgslsmith_index_u32(~var_3.b.a, 15u)]).c), var_3.d, true);
    var_0 = func_1(u_input.d, Struct_1(~(~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_2.x)));
}

