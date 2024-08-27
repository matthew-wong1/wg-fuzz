struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec3<i32>, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_2(select(arg_1.d, false, true), global0[_wgslsmith_index_u32(~(~(~u_input.a)), 4u)], vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0) ^ vec2<i32>(arg_0, arg_0), select(vec2<i32>(2147483647i, arg_0), vec2<i32>(-1i, arg_0), false)), _wgslsmith_add_i32(arg_0, _wgslsmith_mod_i32(~1i, arg_0)), -24410i), Struct_1(arg_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - -509f))), ~arg_1.c, true));
    let var_1 = -(~(~(-vec4<i32>(62680i, arg_0, 1181i, var_0.c.x))) >> (abs(~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)));
    global1 = array<vec3<i32>, 8>();
    global1 = array<vec3<i32>, 8>();
    global0 = array<Struct_1, 4>();
    return 2147483647i >> (u_input.a % 32u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = Struct_1(-461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2.a)), _wgslsmith_f_op_f32(-arg_2.a)))))), select(4294967295u, u_input.a, firstTrailingBit(42201u) >= 0u), all(vec3<bool>(any(vec4<bool>(arg_2.d, true, false, arg_2.d)), all(select(vec3<bool>(arg_2.d, true, arg_2.d), vec3<bool>(arg_2.d, true, arg_2.d), vec3<bool>(arg_2.d, arg_2.d, false))), !arg_2.d)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~(~(~arg_2.c)), 57696u), 4294967295u), 4u)];
    global1 = array<vec3<i32>, 8>();
    var var_1 = 1u;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a * -1086f))))) * _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -732f), arg_2.a)))), u_input.a, !(!var_0.d));
    return ~0i;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(110f, arg_2)), arg_2);
    var var_1 = _wgslsmith_mult_i32(-(_wgslsmith_clamp_i32(~31383i, -31459i, func_2(-30522i, global0[_wgslsmith_index_u32(arg_1.c, 4u)], vec2<bool>(arg_1.d, arg_3))) | func_3(~arg_0, ~vec4<u32>(arg_0, arg_1.c, 15266u, arg_0), global0[_wgslsmith_index_u32(~5483u, 4u)], 32349u)), -22364i);
    let var_2 = vec2<i32>(1i, firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, 1i)), vec2<i32>(-42983i, -1i)))));
    var var_3 = Struct_2(arg_3, Struct_1(187f, _wgslsmith_f_op_f32(floor(arg_1.a)), ~arg_0 & u_input.a, true), -_wgslsmith_div_vec3_i32(-(global1[_wgslsmith_index_u32(1u, 8u)] | vec3<i32>(-2147483647i, var_2.x, var_2.x)), global1[_wgslsmith_index_u32(u_input.a, 8u)]), global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(u_input.a >> (25098u % 32u), arg_0, _wgslsmith_sub_u32(4294967295u, 1u))), 4u)]);
    var var_4 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-725f, 690f) - _wgslsmith_div_f32(arg_2, arg_1.a)))), _wgslsmith_f_op_f32(-arg_2), 1u, !all(vec2<bool>(true, false)) && false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!any(vec4<bool>(true, false, false, true)), func_1(1u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, u_input.a), 4u)], _wgslsmith_f_op_f32(-590f * 734f), !(51521u >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, u_input.a)))), vec3<i32>(firstTrailingBit(firstLeadingBit(-40107i)), 0i, _wgslsmith_clamp_i32(min(~(-2147483647i), i32(-1i) * -11056i), _wgslsmith_clamp_i32(1i, -1i, _wgslsmith_add_i32(-31488i, -1i)), (2267i >> (u_input.a % 32u)) << (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u))), func_1(u_input.a, Struct_1(-174f, 1318f, 12633u, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-246f - -315f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-984f, -301f))), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -10009i, 0i), global1[_wgslsmith_index_u32(u_input.a, 8u)]) < (reverseBits(-2147483647i) << (~4294967295u % 32u))));
    global0 = array<Struct_1, 4>();
    var var_1 = vec3<i32>(-1i, -2147483647i, 0i << (u_input.a % 32u));
    global1 = array<vec3<i32>, 8>();
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<i32>(-1i) * -(min(vec4<i32>(var_1.x, 2147483647i, var_1.x, var_0.c.x), vec4<i32>(var_1.x, var_0.c.x, var_0.c.x, -58441i)) << (select(vec4<u32>(47361u, u_input.a, var_0.b.c, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 1u), true) % vec4<u32>(32u))));
}

