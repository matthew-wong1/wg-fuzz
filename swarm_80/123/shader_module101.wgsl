struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<vec4<i32>, 28>;

var<private> global4: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(true, 36237i, vec3<i32>(0i, 2147483647i, 1i)), Struct_2(true, 19843i, vec3<i32>(-42425i, -5152i, 5904i)), Struct_2(true, 19299i, vec3<i32>(-47386i, 36699i, 2147483647i)), Struct_2(false, 8579i, vec3<i32>(i32(-2147483648), 0i, -26104i)), Struct_2(true, 51454i, vec3<i32>(-48963i, 0i, 1i)), Struct_2(false, 1i, vec3<i32>(39089i, 2147483647i, 35708i)), Struct_2(false, 2147483647i, vec3<i32>(20900i, 38081i, i32(-2147483648))), Struct_2(false, 1i, vec3<i32>(-18492i, -3890i, 18547i)), Struct_2(false, 1i, vec3<i32>(-6585i, -44354i, 789i)), Struct_2(false, -13523i, vec3<i32>(5879i, -38449i, 0i)), Struct_2(true, 9627i, vec3<i32>(i32(-2147483648), 21215i, -42774i)), Struct_2(true, 15565i, vec3<i32>(38390i, 42161i, 0i)), Struct_2(false, -1i, vec3<i32>(1i, 1i, 0i)), Struct_2(false, -34827i, vec3<i32>(-40035i, 33677i, -19845i)), Struct_2(false, 39266i, vec3<i32>(i32(-2147483648), -4717i, i32(-2147483648))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    let var_0 = arg_0.a;
    var var_1 = !((_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(2007f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f + -1785f))) == (select(any(vec4<bool>(false, arg_0.a, var_0, true)), all(vec2<bool>(arg_0.a, true)), true) == (true == (false || var_0))));
    var var_2 = Struct_1(reverseBits(arg_1), vec4<bool>(select(0u >= ~arg_3.x, (arg_0.a && true) | var_0, any(vec3<bool>(true, arg_0.a, true))), true, any(vec2<bool>(arg_0.a, var_0)), !(!arg_0.a)), u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -790f));
    var var_3 = Struct_1(~(-73296i), var_2.b, select(_wgslsmith_add_u32(1u, firstTrailingBit(_wgslsmith_clamp_u32(0u, var_2.c, arg_3.x))), ~(~(~19323u)), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.d + var_2.d))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d)))) + var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)));
    var var_4 = vec2<bool>(any(var_2.b), all(select(!(!var_2.b.zzy), vec3<bool>(select(false, var_0, arg_0.a), arg_0.a, true), !any(vec2<bool>(false, arg_0.a)))));
    return -2147483647i;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> bool {
    let var_0 = 0i;
    let var_1 = firstTrailingBit(1i);
    var var_2 = firstLeadingBit(~func_3(global1[_wgslsmith_index_u32(~4294967295u, 2u)], u_input.b.x, 22329i, abs(arg_0)));
    global4 = array<Struct_2, 15>();
    let var_3 = global2[_wgslsmith_index_u32(abs(0u), 7u)];
    return var_3.a;
}

fn func_1() -> bool {
    var var_0 = func_2(~u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 278f))));
    return any(vec3<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))), select(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), !(u_input.b.x <= 1i)), true));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(!arg_2.b.x, u_input.a.x, firstTrailingBit(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(-1120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1295f, -512f)))), _wgslsmith_f_op_f32(165f * -1141f)), _wgslsmith_f_op_f32(abs(801f)), Struct_1(-(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.b.wyx)), vec4<bool>(true, true, (-11483i > u_input.a.x) & func_1(), true), 1u, -536f, -863f));
    let var_1 = Struct_1(-2147483647i, vec4<bool>(any(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.a, false, var_0.a), select(vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, false, true)))), true | !(!var_0.a), !(var_0.a != !var_0.a), !(true && (false && var_0.a))), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f), -972f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f + _wgslsmith_f_op_f32(sign(288f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f));
    global0 = var_0.a;
    global3 = array<vec4<i32>, 28>();
    let var_3 = _wgslsmith_mult_u32(4294967295u, u_input.d << (u_input.c % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-375f * var_1.d));
}

