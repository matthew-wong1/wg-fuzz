struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-1i, -23676i), vec2<i32>(49178i, -1i), vec2<i32>(24715i, 5379i), vec2<i32>(3632i, -1i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(Struct_2(countOneBits(min(vec4<i32>(-33007i, 24637i, arg_0, 0i), vec4<i32>(2147483647i, arg_0, -19923i, 0i)) & ~vec4<i32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1957f, -442f)), Struct_1(_wgslsmith_div_i32(2147483647i, 11655i) & _wgslsmith_dot_vec2_i32(vec2<i32>(85339i, -4334i), vec2<i32>(arg_0, 25920i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2075f, -1000f) + vec2<f32>(306f, 489f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1620f, 1615f) - vec2<f32>(-316f, 985f))), vec4<bool>(global0[_wgslsmith_index_u32(~var_0, 14u)], select(true, true, global0[_wgslsmith_index_u32(var_0, 14u)]), global0[_wgslsmith_index_u32(1u, 14u)], true))), Struct_1(firstLeadingBit(arg_0), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1775f, 349f)) + _wgslsmith_f_op_f32(-757f + -595f)), 374f), vec4<bool>(true, false, !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(44770u, var_0), 14u)], any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)])))), ~(-(~(vec2<i32>(-2565i, -11297i) << (vec2<u32>(u_input.b.x, 20799u) % vec2<u32>(32u))))), Struct_1(~arg_0, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(841f, 1000f), vec2<f32>(1221f, 783f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(303f)), _wgslsmith_f_op_f32(1000f + 987f)))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(93333u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), !vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))));
    let var_2 = Struct_2(vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.d.a, arg_0), var_1.a.a.wzz), i32(-1i) * -2147483647i, var_1.b.a), var_1.b.b, var_1.b);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.c.b.x), _wgslsmith_f_op_f32(-var_2.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.b.x))) * 1f)));
    global1 = array<vec2<i32>, 4>();
    return select(_wgslsmith_mult_i32(arg_0, var_2.a.x), 9763i, true);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> bool {
    global1 = array<vec2<i32>, 4>();
    var var_0 = Struct_1(~func_3(1i), arg_0.wx, !vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 14u)], _wgslsmith_f_op_f32(-arg_0.x) > 1862f, all(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false, false), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(41905u, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], arg_1, true, true))), !any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))));
    global0 = array<bool, 14>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.x))))), arg_1)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.b.x))))))));
    return ~var_0.a == 2147483647i;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = vec4<f32>(-1260f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_2), arg_1), -634f, arg_3.b.x);
    var var_1 = _wgslsmith_clamp_vec3_u32(u_input.b & firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 25356u, 6608u), u_input.b, u_input.b)), abs(select(~vec3<u32>(72643u, u_input.a.x, 67721u), u_input.b, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 14u)])), u_input.b);
    let var_2 = abs(-global1[_wgslsmith_index_u32(min(4237u, ~9710u), 4u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.x, 260f), -1164f, _wgslsmith_f_op_f32(-var_0.x), arg_1) - var_0), var_0));
    global1 = array<vec2<i32>, 4>();
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(2022f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f))), arg_1, 789f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_0.x), arg_3.b.x), arg_3.b.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(-580f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-630f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-226f - 1361f), 1000f))), 1f, 1f);
    var var_1 = true;
    let var_2 = u_input.b.x;
    var var_3 = select(!vec2<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(1u, 14u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(18005u, 14u)])) && all(vec4<bool>(global0[_wgslsmith_index_u32(var_2, 14u)], global0[_wgslsmith_index_u32(2457u, 14u)], true, false))), select(select(vec2<bool>(true, true), vec2<bool>(func_1(vec2<f32>(-804f, -1515f), var_0.x, 112f, Struct_1(-18997i, var_0.wx, vec4<bool>(true, global0[_wgslsmith_index_u32(var_2, 14u)], global0[_wgslsmith_index_u32(95940u, 14u)], true))), true), firstTrailingBit(7507u) != (u_input.b.x >> (26799u % 32u))), vec2<bool>(all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec3<bool>(false, false, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_2, 14u)]))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2 >> (u_input.a.x % 32u), ~59376u, var_2), 14u)]), all(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false)))), vec2<bool>(_wgslsmith_f_op_f32(exp2(var_0.x)) <= -1219f, true));
    global0 = array<bool, 14>();
    let var_4 = Struct_2(vec4<i32>(40645i, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(11397i, -9272i))), 0i, 2147483647i), var_0.yx, Struct_1(firstLeadingBit(21010i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx)), vec4<bool>(var_2 >= _wgslsmith_add_u32(1u, 37137u), -369f != _wgslsmith_f_op_f32(-var_0.x), true & (var_0.x >= var_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 14u)])));
    let var_5 = Struct_3(var_4, Struct_1(-8366i ^ func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.c.a, var_4.c.a), vec2<i32>(var_4.c.a, var_4.c.a))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(358f))), vec2<f32>(-1898f, _wgslsmith_f_op_f32(var_0.x + -584f))), !var_4.c.c), select(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], firstTrailingBit(~vec2<i32>(-46793i, var_4.a.x)), !select(vec2<bool>(true, true), var_4.c.c.xy, !var_4.c.c.yx)), var_4.c);
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1161f)))), 721f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.b, ~(~(vec3<u32>(u_input.b.x, var_2, var_2) >> (u_input.b % vec3<u32>(32u))))), 2147483647i);
}

