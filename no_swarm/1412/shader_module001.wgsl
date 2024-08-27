struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1u), Struct_1(1u), Struct_1(20914u), Struct_1(4294967295u), Struct_1(97473u), Struct_1(4294967295u), Struct_1(0u), Struct_1(32457u), Struct_1(1u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~(~(~4294967295u)), 9u)];
    let var_1 = true;
    var var_2 = Struct_1(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 0u), firstTrailingBit(vec2<u32>(0u, var_0.a))), reverseBits(~vec2<u32>(4852u, var_0.a)))));
    let var_3 = select(vec2<bool>(any(vec2<bool>(var_1, var_1)), false), !(!select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(true, true)))), select(vec2<bool>(var_1, !var_1), vec2<bool>(any(select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(false, true, false, true), false)), all(!vec3<bool>(var_1, false, true))), all(vec3<bool>(35548u < u_input.c, var_1, all(vec3<bool>(false, false, var_1))))));
    let var_4 = global0[_wgslsmith_index_u32(8672u, 9u)];
    return !select(select(vec2<bool>(true && var_1, false), select(var_3, select(var_3, vec2<bool>(true, var_3.x), vec2<bool>(var_3.x, false)), vec2<bool>(true, var_3.x)), vec2<bool>(u_input.b > 68753u, 616f < arg_0.x)), vec2<bool>(any(vec2<bool>(true, true)), true), false);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(false, true), !func_3(vec2<f32>(arg_0.x, arg_0.x))), select(vec2<bool>(~1u < (19246u | u_input.c), true), vec2<bool>(all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), true), !any(vec3<bool>(true, all(vec3<bool>(false, false, false)), u_input.b >= u_input.b)));
    global0 = array<Struct_1, 9>();
    let var_1 = u_input.a;
    var var_2 = vec3<i32>(-(~(~0i)), -37061i, min(~u_input.a, ~(-1i))) >> (~min(firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, 4294967295u) | vec3<u32>(0u, u_input.b, u_input.c)), ~(~vec3<u32>(u_input.c, u_input.b, u_input.b))) % vec3<u32>(32u));
    var_2 = vec3<i32>(~(-29362i), var_1, reverseBits(countOneBits(u_input.a))) | _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1104i, -1i), vec2<i32>(1166i, -2147483647i)), u_input.a), reverseBits(vec3<i32>(2147483647i, var_1, 11408i) << (vec3<u32>(u_input.b, u_input.b, 5623u) % vec3<u32>(32u))) | ~(-vec3<i32>(2147483647i, var_2.x, var_1)));
    return global0[_wgslsmith_index_u32(1u, 9u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(102f, -1022f, 683f) - vec3<f32>(-306f, -880f, 730f))))));
    var var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(29905u, 9u)];
    let var_3 = -1938f;
    var var_4 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3, _wgslsmith_f_op_f32(sign(-2194f)), var_3), vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(abs(176f)), _wgslsmith_f_op_f32(max(var_3, 1110f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(1i | u_input.a, u_input.a)));
    var var_1 = reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(0u) & _wgslsmith_div_u32(0u, u_input.c), u_input.b, ~(u_input.c | u_input.b), ~(~0u)), vec4<u32>(14797u, 1u, ~abs(51891u), 0u)));
    var var_2 = u_input.a;
    global0 = array<Struct_1, 9>();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 185f, -1144f), vec3<f32>(-971f, -577f, 317f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(u_input.c), Struct_1(1u))))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, -1030f, -134f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1189f, -690f, 1259f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1372f, -410f, -125f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1066f, 2305f, -1325f)))), vec3<bool>(true, true, true)))));
    var var_4 = Struct_1(~(~(countOneBits(21007u) >> (~u_input.c % 32u))));
    var_3 = _wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(u_input.c, 1u >> (_wgslsmith_mod_u32(1u, var_1.x) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(913u, u_input.c | u_input.b, 59089u), ~(~var_1.zzy))), 9u)], global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(1u, 1u)), 9u)]));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec2_i32(firstLeadingBit(abs(vec2<i32>(-40278i, u_input.a))), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(9267i, 31755i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, var_0), vec2<i32>(0i, u_input.a))))), var_0);
}

