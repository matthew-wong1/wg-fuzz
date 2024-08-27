struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<f32, 22> = array<f32, 22>(158f, -1186f, -1000f, 424f, -208f, -800f, -186f, 1495f, 670f, 2307f, 183f, 172f, -587f, 852f, -705f, -227f, 1615f, -1660f, 2179f, -1195f, 984f, 659f);

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, 669f), _wgslsmith_f_op_vec2_f32(abs(global4.a)));
    let var_1 = true;
    let var_2 = vec2<u32>(max(55035u, ~countOneBits(1u)), 0u);
    global2 = array<Struct_1, 20>();
    let var_3 = arg_1;
    return firstTrailingBit(min(var_2.x, ~min(var_2.x, var_2.x) & var_2.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_i32(-u_input.a, u_input.a ^ -(~u_input.a));
    global1 = Struct_1(global4.a, global4.b);
    var var_1 = !global0.xw;
    global0 = vec4<bool>(any(vec4<bool>(true, any(!vec4<bool>(arg_0.b, var_1.x, true, global4.b)), func_3(-1388f, arg_1, vec4<f32>(global4.a.x, arg_1.a.x, -119f, global4.a.x)) >= _wgslsmith_add_u32(25720u, 0u), true)), any(vec2<bool>(!global4.b, true)) && !arg_0.b, all(vec2<bool>(true, true)), arg_1.b);
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), true);
    return ~_wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(~119118u), 1u), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    global3 = array<f32, 22>();
    let var_0 = true;
    var var_1 = -345f;
    var_1 = arg_1.a.x;
    let var_2 = countOneBits(firstLeadingBit(~0u));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-412f + -392f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(234f, global1.a.x), global1.a)))))), all(select(global0.xzy, !(!vec3<bool>(true, arg_1.b, global1.b)), vec3<bool>(global1.b, false, true))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2091f * _wgslsmith_f_op_f32(f32(-1f) * -902f)), arg_1.a.x);
    let var_2 = firstTrailingBit(~55345u);
    global2 = array<Struct_1, 20>();
    var var_3 = !(!(!(!(!vec4<bool>(true, global0.x, true, true)))));
    return func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(881f)), global1.a.x) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.a - arg_1.a), vec2<f32>(596f, 373f)))), global4.b), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1652f, global3[_wgslsmith_index_u32(26942u, 22u)]))) - global4.a), func_4(arg_1, Struct_1(vec2<f32>(340f, 163f), false), vec2<f32>(arg_1.a.x, -575f)).b || (u_input.a >= u_input.a)), global2[_wgslsmith_index_u32(1u, 20u)], global4.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(arg_2, 22u)]))), _wgslsmith_div_f32(func_4(global2[_wgslsmith_index_u32(var_2, 20u)], Struct_1(global4.a, false), global4.a).a.x, _wgslsmith_f_op_f32(max(arg_1.a.x, -529f))))));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(~1u, firstTrailingBit(1u))) >> (abs(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(55924u, 4294967295u, 7185u), ~(~4294967295u))) % 32u), 20u)];
    let var_1 = vec3<bool>(false, func_5(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(max(vec2<u32>(47875u, 0u), vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u)), select(~vec2<u32>(22608u, 46318u), ~vec2<u32>(1u, 1u), true)), func_4(arg_1, arg_1, arg_1.a), ~max(~55872u, 1u)).b, !(global4.b && !(!global0.x)));
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1.b, true, global1.b, false), false), select(select(vec4<bool>(false, arg_2.b, false, false), vec4<bool>(false, global4.b, arg_2.b, false), false), !vec4<bool>(arg_2.b, true, true, true), true), !var_1.x)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(1159f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f))), _wgslsmith_f_op_f32(exp2(arg_1.a.x)));
    global3 = array<f32, 22>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(30550u, 36272u, 60187u), vec3<u32>(14044u, 30150u, 8740u)), 22u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-554f * 475f)))) * global1.a), global4.b);
}

fn func_1() -> bool {
    let var_0 = ~vec3<u32>(~countOneBits(21288u), _wgslsmith_mod_u32(32695u, ~0u), 4294967295u);
    let var_1 = func_6(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, countOneBits(0u)), 22u)], func_5(vec2<u32>(51258u, 3535u | var_0.x) >> (_wgslsmith_mult_vec2_u32(var_0.xz, var_0.yy << (var_0.xy % vec2<u32>(32u))) % vec2<u32>(32u)), func_4(global2[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(62652u, 20u)], Struct_1(vec2<f32>(-990f, -327f), global4.b)), 20u)], Struct_1(_wgslsmith_div_vec2_f32(global1.a, global4.a), true), global1.a), ~(~_wgslsmith_div_u32(0u, 25250u))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.a + global4.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global4.a, vec2<f32>(794f, 943f)))), global0.zy)), global0.x), -28817i | (abs(_wgslsmith_sub_i32(u_input.a, u_input.a)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(1u, 0u, 39944u, 1u)), vec4<u32>(38699u, var_0.x, var_0.x, 0u)) % 32u)));
    let var_2 = firstLeadingBit(var_0.x);
    let var_3 = !(abs(u_input.a) < 3001i);
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(302f, -508f), _wgslsmith_f_op_vec2_f32(max(var_1.a, var_1.a)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-479f, -733f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(212f, var_1.a.x)), !global0.xy)))))), global0.x);
    return all(!select(vec4<bool>(true, !global4.b, !global4.b, false), select(select(vec4<bool>(true, var_3, global4.b, global4.b), vec4<bool>(true, var_4.b, var_4.b, global4.b), vec4<bool>(false, var_1.b, var_3, var_1.b)), select(vec4<bool>(global1.b, global1.b, false, true), vec4<bool>(global0.x, global1.b, false, global4.b), vec4<bool>(var_1.b, global1.b, true, var_4.b)), false), var_4.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global4.a)))))), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(-1778f + global1.a.x)))) - var_0.a.x));
    var var_2 = Struct_1(global4.a, func_1());
    let var_3 = func_6(-1000f, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 37994u, 42414u), vec3<u32>(0u, 57782u, 0u))), 1u, ~countOneBits(37253u) | ~select(38708u, 18887u, global4.b)), 20u)], Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(-global1.a)) * vec2<f32>(var_0.a.x, var_0.a.x)), global1.b), abs(4933i));
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f)), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(8223u, 4294967295u), ~57278u), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -1501f))), func_5(~vec2<u32>(31589u, 52619u), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.a))), false), ~(~_wgslsmith_add_u32(58386u, 26577u))).b);
    var var_5 = vec2<i32>(~(-4893i), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(vec2<u32>(0u, 23014u), vec2<u32>(73190u, 1u), global0.xz) ^ vec2<u32>(27538u, 10816u))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x)))))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(4762u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 6741u), vec3<u32>(4294967295u, 1u, 31144u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(7994u, 36105u, 34780u, 12359u), vec4<u32>(1u, 1543u, 0u, 80331u)), ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(44783u, 0u, 4294967295u, 1372u)))));
}

