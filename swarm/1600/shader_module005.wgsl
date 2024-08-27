struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<vec2<f32>, 12>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = arg_0;
    global1 = array<vec2<f32>, 12>();
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(1u, 16u)]);
    global0 = array<bool, 4>();
    var var_2 = Struct_2(var_1.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f + 2020f) + var_1.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.a.a)), 2539f));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global0 = array<bool, 4>();
    var var_0 = Struct_2(arg_2.a);
    var var_1 = _wgslsmith_f_op_f32(arg_2.a.a * var_0.a.a);
    let var_2 = _wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.a + -728f))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_3.a));
    return firstLeadingBit(~_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(i32(-1i) * -29838i, 31531i << (0u % 32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = firstTrailingBit(u_input.d.x) ^ ~_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d, vec2<i32>(u_input.c, u_input.e)), ~u_input.d));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 4u)]))))));
    var var_2 = vec3<i32>(u_input.d.x ^ 1i, reverseBits(2147483647i << (u_input.b.x % 32u)), i32(-1i) * -func_3(vec4<i32>(var_0, u_input.d.x, var_0, u_input.c), 0i, Struct_2(global2[_wgslsmith_index_u32(u_input.a, 16u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.a), 16u)]));
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    return Struct_2(global2[_wgslsmith_index_u32(0u, 16u)]);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    global1 = array<vec2<f32>, 12>();
    let var_0 = ~1u << (~u_input.b.x % 32u);
    var var_1 = select(!select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], true), vec3<bool>(arg_2, true, global0[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0, 4u)], arg_2)), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(3088u, 4u)]), arg_2), select(select(vec3<bool>(false, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(23550u, 4u)], arg_2), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], arg_2)), select(vec3<bool>(global0[_wgslsmith_index_u32(3920u, 4u)], arg_2, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec3<bool>(arg_2, false, true), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_0, 4u)])), true), true), !vec3<bool>(arg_2, false, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, var_0), var_0 | var_0), 4u)]), any(select(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0, 4u)], false), global0[_wgslsmith_index_u32(18244u, 4u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(767u, 4u)], arg_2)), !(!vec2<bool>(global0[_wgslsmith_index_u32(25687u, 4u)], false)))));
    global1 = array<vec2<f32>, 12>();
    var var_2 = select(!vec3<bool>(u_input.d.x > u_input.d.x, !any(vec2<bool>(false, true)), false && select(global0[_wgslsmith_index_u32(81639u, 4u)], arg_2, false)), select(select(vec3<bool>(true, select(true, true, var_1.x), all(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 4u)], false, var_1.x, var_1.x))), !vec3<bool>(global0[_wgslsmith_index_u32(45304u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false), false), vec3<bool>(any(vec2<bool>(false, true)), any(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(var_0, 4u)], arg_2, global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), 1u >= u_input.a), true), !(!select(vec3<bool>(arg_2, false, false), !vec3<bool>(false, var_1.x, arg_2), true)));
    return vec4<bool>((global0[_wgslsmith_index_u32(0u, 4u)] | all(vec3<bool>(true, true, arg_2))) & true, var_1.x, false, any(vec4<bool>(true, all(!vec2<bool>(arg_2, arg_2)), _wgslsmith_f_op_f32(trunc(arg_0)) > -468f, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(-677f, func_1(), true), !select(func_4(-763f, func_1(), any(vec2<bool>(global0[_wgslsmith_index_u32(86526u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]))), !vec4<bool>(global0[_wgslsmith_index_u32(1152u, 4u)], false, false, global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], false, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], true))), any(vec3<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true, false, global0[_wgslsmith_index_u32(33966u, 4u)])), any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(select(max(u_input.d.x, 1i), u_input.d.x, u_input.b.x > 11032u), 2147483647i, _wgslsmith_dot_vec2_i32(u_input.d, min(vec2<i32>(2147483647i, u_input.d.x), u_input.d))), -u_input.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1220f, 230f, -237f, -735f))))))));
}

