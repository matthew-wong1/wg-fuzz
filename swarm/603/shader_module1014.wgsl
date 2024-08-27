struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, false, false, true, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    return !arg_0.a.b;
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global0 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))), 1f))), -233f, !func_3(Struct_3(Struct_2(vec2<bool>(arg_0.b, false), arg_0.a.x, vec3<u32>(u_input.b.x, 0u, u_input.a)), vec3<bool>(true, global0[_wgslsmith_index_u32(51606u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)]), ~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(3751i, u_input.c))))));
    let var_1 = Struct_4(-firstLeadingBit(vec4<i32>(35074i, 12790i, ~u_input.c, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(241f)) - _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -2052f) + -152f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_2 = -1i;
    global0 = array<bool, 6>();
    return _wgslsmith_div_vec4_i32(var_1.a & -vec4<i32>(_wgslsmith_mod_i32(19791i, -2147483647i), max(66080i, 0i), 15625i, _wgslsmith_sub_i32(30073i, u_input.c)), abs(var_1.a));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    return arg_1;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    global0 = array<bool, 6>();
    let var_0 = arg_0.a.yx | min(~(countOneBits(vec2<i32>(u_input.c, arg_0.a.x)) & (vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(4294967295u, 9154u) % vec2<u32>(32u)))), ~(arg_0.a.zz | arg_0.a.xy) ^ vec2<i32>(28056i, -1i));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    return Struct_2(arg_2, arg_1, u_input.b.xyy);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = func_5(func_4(true, Struct_4(func_2(Struct_2(vec2<bool>(true, true), false, u_input.b.wyw)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(abs(-1915f))))), Struct_3(Struct_2(select(arg_0, vec2<bool>(true, false), vec2<bool>(true, false)), u_input.a == u_input.a, reverseBits(vec3<u32>(u_input.a, u_input.a, 1u))), select(vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(37637u, 6u)], global0[_wgslsmith_index_u32(66422u, 6u)]), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(0u, 6u)], false), false), u_input.c, u_input.c ^ abs(u_input.c))), false, vec2<bool>(4294967295u != ~firstTrailingBit(0u), arg_0.x));
    var var_1 = Struct_3(func_5(Struct_4((vec4<i32>(u_input.c, 2935i, -481i, u_input.c) ^ vec4<i32>(u_input.c, 43281i, u_input.c, -7888i)) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1417f - -690f))), all(vec4<bool>(!var_0.b, false, 1i < u_input.c, var_0.a.x)), select(func_5(func_4(true, Struct_4(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), -502f), Struct_3(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(14521u, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), arg_0.x, vec3<u32>(u_input.b.x, var_0.c.x, 1u)), vec3<bool>(false, true, false), -27706i, u_input.c)), false, vec2<bool>(true, true)).a, vec2<bool>(false, true | var_0.b), true)), !(!vec3<bool>(true, select(false, false, var_0.a.x), !global0[_wgslsmith_index_u32(u_input.a, 6u)])), ~(65771i & max(-1i, -u_input.c)), u_input.c);
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    return Struct_2(!vec2<bool>(func_3(Struct_3(Struct_2(vec2<bool>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), true, vec3<u32>(var_0.c.x, 4294967295u, 0u)), var_1.b, -29834i, u_input.c)), true), all(!vec4<bool>(var_1.a.a.x, global0[_wgslsmith_index_u32(min(5633u, var_1.a.c.x), 6u)], true, var_1.b.x)), select(vec3<u32>(1u >> (var_0.c.x % 32u), 24054u, ~1u) >> (firstTrailingBit(var_0.c) % vec3<u32>(32u)), u_input.b.wwz, !select(!var_1.b, vec3<bool>(var_1.a.b, var_0.a.x, var_0.b), any(vec3<bool>(arg_0.x, true, var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!select(!vec2<bool>(global0[_wgslsmith_index_u32(78980u, 6u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(23366u, 6u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2651f, 624f, -1000f, -445f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, -688f, -1445f, 1922f)))))), 1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(174f, 189f), vec2<f32>(1156f, -683f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-916f, -686f))) - vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2464f, -494f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1432f - _wgslsmith_f_op_f32(step(532f, -724f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1477f, -386f, var_0.b)), _wgslsmith_div_f32(-403f, 1000f))))));
}

