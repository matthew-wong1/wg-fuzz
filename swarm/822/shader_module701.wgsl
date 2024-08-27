struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: array<bool, 25>;

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, true, true, false, false, true, true, true, true, false, false, false, false, true, true, false, true, true, true, true);

var<private> global3: array<f32, 20> = array<f32, 20>(2206f, 756f, -627f, -726f, -420f, 636f, -117f, -986f, -2232f, 692f, 1000f, 464f, -662f, 1203f, -439f, -307f, -289f, 286f, 1117f, -1344f);

var<private> global4: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = Struct_3(select(!(!(!arg_2.a)), select(vec3<bool>(1u > arg_1, arg_2.a.x || false, any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false, arg_2.a.x, false))), !vec3<bool>(global1[_wgslsmith_index_u32(28700u, 25u)], arg_0.a.x, global2[_wgslsmith_index_u32(22271u, 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(global4.c.x, 21u)], false, true)), arg_2.a));
    let var_1 = Struct_5(var_0.a.yx);
    var var_2 = !(!vec4<bool>(true, false, true, global4.a.b.x <= global4.a.b.x));
    let var_3 = var_0;
    global0 = array<vec3<i32>, 20>();
    return vec2<bool>(global4.a.b.x > -328f, false);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool) -> vec2<i32> {
    global2 = array<bool, 21>();
    var var_0 = select(vec4<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.d, u_input.d), 21u)], true, !(true || (-10534i < u_input.c)), !(!arg_1.x)), vec4<bool>(arg_0.a.x, !(!all(vec4<bool>(true, arg_1.x, true, true))), global2[_wgslsmith_index_u32(~(global4.b << (4294967295u % 32u)), 21u)], true), select(!(!vec4<bool>(false, arg_1.x, true, arg_2)), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, global2[_wgslsmith_index_u32(global4.b, 21u)], arg_2), global1[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(all(vec4<bool>(false, false, arg_2, arg_0.a.x)), !arg_2, true, true), global1[_wgslsmith_index_u32(abs(~48449u), 25u)]), select(select(select(vec4<bool>(arg_1.x, arg_0.a.x, true, false), vec4<bool>(true, false, arg_2, false), vec4<bool>(true, false, arg_0.a.x, arg_0.a.x)), select(vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(true, arg_2, false, true), global1[_wgslsmith_index_u32(143636u, 25u)]), select(vec4<bool>(false, arg_2, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(97692u, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(13440u, 25u)], true, true), false)), vec4<bool>(global2[_wgslsmith_index_u32(global4.a.a, 21u)], arg_2, false, global1[_wgslsmith_index_u32(select(u_input.d, u_input.d, false), 25u)]), select(!vec4<bool>(arg_2, global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(19221u, 21u)], arg_0.a.x), !vec4<bool>(true, true, arg_2, arg_1.x), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(global4.c.x, 25u)])))));
    var var_1 = global4.c;
    let var_2 = arg_0;
    var var_3 = vec2<bool>(func_2(Struct_4(!arg_0.a, ~var_1.x & ~42129u, -1i, ~(~vec4<u32>(4294967295u, global4.a.a, 10836u, global4.c.x))), var_1.x, Struct_4(vec3<bool>(false, true, arg_2), global4.a.a, abs(u_input.b.x), vec4<u32>(1u, _wgslsmith_mod_u32(21123u, 63649u), ~33617u, select(40656u, 11626u, arg_2)))).x, all(arg_1.xz));
    return _wgslsmith_mod_vec2_i32(countOneBits(-(vec2<i32>(u_input.a, -12869i) << (vec2<u32>(u_input.d, 5631u) % vec2<u32>(32u)))), ~(-vec2<i32>(-2147483647i, -1i) << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)))) << (min(vec2<u32>(countOneBits(1u), var_1.x), max(vec2<u32>(~global4.a.a, u_input.d), ~global4.c.yy ^ ~vec2<u32>(var_1.x, var_1.x))) % vec2<u32>(32u));
}

fn func_1(arg_0: i32, arg_1: f32) -> i32 {
    global0 = array<vec3<i32>, 20>();
    global1 = array<bool, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-310f, _wgslsmith_f_op_f32(1414f + global3[_wgslsmith_index_u32(4294967295u, 20u)])) - global4.a.b.xy) - global4.a.b.zy));
    var var_1 = vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 21u)], any(func_2(Struct_4(select(vec3<bool>(global2[_wgslsmith_index_u32(global4.b, 21u)], true, global1[_wgslsmith_index_u32(global4.b, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 25u)], true, false), global1[_wgslsmith_index_u32(1u, 25u)]), 0u, 7843i, vec4<u32>(global4.c.x, global4.a.a, u_input.d, global4.a.a)), 1u, Struct_4(vec3<bool>(global1[_wgslsmith_index_u32(40752u, 25u)], false, true), 15426u, -2147483647i, vec4<u32>(global4.a.a, u_input.d, 13716u, u_input.d)))));
    var var_2 = Struct_1(~firstTrailingBit(select(u_input.d, select(u_input.d, 35757u, global2[_wgslsmith_index_u32(4294967295u, 21u)]), false)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1304f)), global4.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f) - _wgslsmith_f_op_f32(step(var_0.x, var_0.x))) + _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(~u_input.d, 20u)])))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0 >> (global4.c.x % 32u), u_input.c), -select(vec2<i32>(arg_0, arg_0), func_3(Struct_3(vec3<bool>(var_1.x, var_1.x, var_1.x)), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 25u)], false, true), !global2[_wgslsmith_index_u32(20611u, 21u)]), var_1.x | var_1.x));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    global3 = array<f32, 20>();
    global1 = array<bool, 25>();
    global2 = array<bool, 21>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global4.c.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.a.a, global4.b, 23779u), global4.c))), ~u_input.d), 25u)];
    global1 = array<bool, 25>();
    return Struct_4(vec3<bool>(global2[_wgslsmith_index_u32(~global4.c.x, 21u)], any(vec2<bool>(!arg_2.a.x, global2[_wgslsmith_index_u32(0u, 21u)])), false), _wgslsmith_div_u32(37002u, ~reverseBits(u_input.d)), countOneBits(countOneBits(-4774i)) >> (min(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_3, u_input.d), arg_0), arg_3) % 32u), countOneBits(~vec4<u32>(u_input.d, arg_3, u_input.d, 48484u) >> (vec4<u32>(~1u, _wgslsmith_sub_u32(1u, global4.c.x), u_input.d, 19214u << (global4.a.a % 32u)) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_5(func_4(33386u, arg_0.c, Struct_3(vec3<bool>(true, false & arg_0.a.x, arg_0.a.x)), _wgslsmith_clamp_u32(~(~24208u), arg_0.d.x, arg_1.b)).a.yx);
    global3 = array<f32, 20>();
    global2 = array<bool, 21>();
    var var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 1u) >> (global4.c % vec3<u32>(32u)), select(vec3<u32>(max(3827u, 0u), _wgslsmith_add_u32(30639u, global4.a.a), u_input.d >> (1u % 32u)), ~arg_1.c, func_4(firstLeadingBit(u_input.d), -22107i >> (arg_0.b % 32u), Struct_3(arg_0.a), 6925u).a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global4.a.b)));
    return 666f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1371f, -253f, all(vec2<bool>(true, all(vec2<bool>(true, global2[_wgslsmith_index_u32(global4.b, 21u)])))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1391f);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_sub_u32(~u_input.d, 4294967295u), func_1(-3677i, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(22052u, 20u)], -113f))), Struct_3(select(vec3<bool>(global2[_wgslsmith_index_u32(global4.b, 21u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 21u)], false, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(global4.b, 21u)]))), _wgslsmith_div_u32(u_input.d, u_input.d) | u_input.d), Struct_2(Struct_1(global4.c.x, vec3<f32>(619f, 454f, -554f)), 4294967295u, global4.c ^ vec3<u32>(104007u, global4.c.x, u_input.d)))), global3[_wgslsmith_index_u32(~u_input.d, 20u)]);
    let var_2 = max(u_input.a, ~u_input.a) >> (~32828u % 32u);
    let var_3 = var_2;
    global3 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~max(_wgslsmith_clamp_u32(6727u, global4.a.a, u_input.d), ~global4.a.a), _wgslsmith_mult_u32(global4.b, ~2157u)), 2090f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.b.x, global3[_wgslsmith_index_u32(global4.c.x, 20u)], -203f, global4.a.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-global4.a.b.x), var_1.x, -1000f, var_1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global3[_wgslsmith_index_u32(38888u, 20u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1192f * 497f))))));
}

