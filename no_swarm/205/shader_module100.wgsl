struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, 102287i, vec3<bool>(true, false, true)), Struct_1(true, 67148i, vec3<bool>(false, false, false)), Struct_1(false, 45715i, vec3<bool>(false, true, true)), Struct_1(true, 5628i, vec3<bool>(false, false, true)), Struct_1(true, -13339i, vec3<bool>(true, true, true)), Struct_1(true, 2147483647i, vec3<bool>(true, false, true)), Struct_1(true, 5217i, vec3<bool>(true, true, true)), Struct_1(true, 2147483647i, vec3<bool>(true, true, true)), Struct_1(false, 12563i, vec3<bool>(false, true, true)), Struct_1(true, 14820i, vec3<bool>(false, true, false)), Struct_1(false, 2147483647i, vec3<bool>(false, true, false)), Struct_1(true, 0i, vec3<bool>(false, true, true)), Struct_1(true, 1i, vec3<bool>(false, true, true)), Struct_1(true, 29600i, vec3<bool>(true, false, true)), Struct_1(true, 1i, vec3<bool>(true, false, false)), Struct_1(false, 36734i, vec3<bool>(false, false, true)), Struct_1(true, i32(-2147483648), vec3<bool>(true, false, true)), Struct_1(true, -1i, vec3<bool>(true, true, false)), Struct_1(false, -6094i, vec3<bool>(false, false, true)), Struct_1(true, 25975i, vec3<bool>(true, false, true)), Struct_1(true, 28743i, vec3<bool>(false, false, true)), Struct_1(false, -19713i, vec3<bool>(false, false, true)), Struct_1(true, -54422i, vec3<bool>(true, true, false)), Struct_1(false, 39329i, vec3<bool>(false, true, false)), Struct_1(false, -1i, vec3<bool>(true, false, false)), Struct_1(false, 1i, vec3<bool>(true, false, true)), Struct_1(false, 1i, vec3<bool>(false, true, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    global1 = array<Struct_1, 27>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 27u)];
    var_0 = Struct_1(all(!vec3<bool>(any(vec4<bool>(var_0.c.x, var_0.c.x, var_0.a, var_0.c.x)), !var_0.a, true)), u_input.c.x, var_0.c);
    let var_1 = !var_0.a;
    var var_2 = u_input.a;
    return 1i & _wgslsmith_clamp_i32(u_input.c.x, -1i, ~(countOneBits(0i) | u_input.c.x));
}

fn func_2() -> f32 {
    global0 = array<u32, 1>();
    let var_0 = select(~vec2<i32>(func_3(vec2<f32>(578f, 341f), countOneBits(-13652i)), _wgslsmith_div_i32(1i, -61319i)), reverseBits(-vec2<i32>(_wgslsmith_mult_i32(-1i, u_input.c.x), -u_input.c.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true | (global0[_wgslsmith_index_u32(0u, 1u)] < 4294967295u), true)));
    var var_1 = false;
    global0 = array<u32, 1>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-540f)), _wgslsmith_f_op_f32(abs(-554f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    global1 = array<Struct_1, 27>();
    var var_0 = vec3<bool>(arg_0.c.x, arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))) <= 469f);
    let var_1 = select(vec3<bool>(select(true, any(!vec4<bool>(false, var_0.x, false, var_0.x)), (0u >= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)]) && true), var_0.x, !((global0[_wgslsmith_index_u32(0u, 1u)] ^ global0[_wgslsmith_index_u32(u_input.b, 1u)]) != firstTrailingBit(u_input.a))), select(arg_0.c, vec3<bool>(~22151u != u_input.b, true, arg_0.a), select(arg_0.c, !(!arg_0.c), !vec3<bool>(var_0.x, false, false))), var_0.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_1.x));
    let var_3 = firstTrailingBit(-abs(countOneBits(vec4<i32>(-3785i, u_input.c.x, arg_0.b, 2147483647i))));
    return select(!any(!select(vec4<bool>(arg_0.c.x, true, false, true), vec4<bool>(true, var_0.x, true, var_1.x), false)), false, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 1>();
    global1 = array<Struct_1, 27>();
    let var_0 = ~(~u_input.d.x);
    var var_1 = Struct_1(all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), vec3<bool>(func_1(Struct_1(false, u_input.c.x, vec3<bool>(true, false, true)), vec2<f32>(1239f, 873f)), global0[_wgslsmith_index_u32(2367u, 1u)] <= 4294967295u, var_0 >= 69629u), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))), u_input.c.x, vec3<bool>(var_0 > (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(85241u, 1u)], 1304u), vec3<u32>(var_0, u_input.a, u_input.d.x)) >> (~0u % 32u)), !((i32(-1i) * -2147483647i) >= _wgslsmith_mult_i32(u_input.c.x, 12491i)), true));
    var var_2 = vec4<f32>(-2475f, 359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(356f * 1167f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x - -269f), _wgslsmith_f_op_f32(-241f - -122f), _wgslsmith_f_op_f32(-var_2.x), -1000f))));
}

