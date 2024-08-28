struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec2<u32> = vec2<u32>(0u, 11018u);

var<private> global2: array<f32, 1> = array<f32, 1>(-645f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    global2 = array<f32, 1>();
    let var_0 = ~(~u_input.e.zy);
    var var_1 = !vec4<bool>(true, arg_0.d.x, global0.x && all(vec2<bool>(arg_0.b, global0.x)), !global0.x);
    var var_2 = arg_0;
    let var_3 = Struct_1(arg_2.c, all(!(!var_2.d.xw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 1u)] * var_2.c) - _wgslsmith_f_op_f32(-arg_0.a))), var_2.d, 1036f);
    return vec4<u32>(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(global1.x, 255u)), select(_wgslsmith_mult_u32(arg_1.x, _wgslsmith_mult_u32(arg_1.x, 54077u)), abs(reverseBits(18281u)), select(false, var_3.d.x, false))), 1u, _wgslsmith_div_u32(firstTrailingBit(~u_input.c), 4294967295u) & ~_wgslsmith_clamp_u32(u_input.c, 0u, 0u), ~abs(~(~u_input.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = ~(~vec4<i32>(1i, _wgslsmith_clamp_i32(~565i, -2147483647i, _wgslsmith_add_i32(arg_0.x, -1i)), _wgslsmith_clamp_i32(-arg_0.x, ~2147483647i, 1i), arg_0.x));
    var_0 = select(reverseBits(vec4<i32>(u_input.e.x, i32(-1i) * -32078i, u_input.e.x, countOneBits(arg_0.x)) | u_input.b), u_input.b & ~u_input.b, global0.x);
    var var_1 = ~_wgslsmith_add_u32(global1.x, _wgslsmith_add_u32(global1.x, 4294967295u) | 1u);
    var var_2 = Struct_3(~min(max(vec4<u32>(u_input.c, 24585u, global1.x, 30583u), vec4<u32>(106182u, global1.x, 0u, global1.x)), _wgslsmith_mult_vec4_u32(func_3(Struct_1(arg_1.x, false, -240f, vec4<bool>(true, global0.x, global0.x, global0.x), arg_1.x), vec3<u32>(19320u, 4294967295u, 13850u), Struct_1(arg_1.x, true, -1000f, vec4<bool>(global0.x, true, false, false), global2[_wgslsmith_index_u32(global1.x, 1u)]), -863f), countOneBits(vec4<u32>(global1.x, u_input.c, u_input.c, 41240u)))), _wgslsmith_dot_vec3_i32(-u_input.e, vec3<i32>(-arg_0.x, -2147483647i, var_0.x)));
    return _wgslsmith_f_op_f32(step(-619f, arg_1.x));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(u_input.a, vec4<f32>(-181f, -1584f, -1000f, global2[_wgslsmith_index_u32(41086u, 1u)]))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(169f + global2[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_1, 1u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 1u)], -184f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 1u)], global2[_wgslsmith_index_u32(arg_2.x, 1u)]) + vec2<f32>(global2[_wgslsmith_index_u32(1u, 1u)], 1755f)))), !vec2<bool>(global0.x, false)))));
    let var_1 = firstTrailingBit(_wgslsmith_div_u32(~(~0u >> (min(0u, arg_1) % 32u)), func_3(Struct_1(var_0.x, false, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 1u)])), select(vec4<bool>(arg_3, global0.x, arg_3, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, arg_3, global0.x)), _wgslsmith_f_op_f32(func_2(u_input.a, vec4<f32>(var_0.x, var_0.x, 1108f, -229f)))), ~select(arg_2.zzy, vec3<u32>(39228u, 1u, u_input.c), vec3<bool>(arg_3, arg_3, true)), Struct_1(_wgslsmith_f_op_f32(var_0.x + global2[_wgslsmith_index_u32(arg_2.x, 1u)]), -698f >= global2[_wgslsmith_index_u32(47899u, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -151f), vec4<bool>(arg_3, false, false, false), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2.x, 1u)] + global2[_wgslsmith_index_u32(26958u, 1u)])), global2[_wgslsmith_index_u32(countOneBits(arg_1 | 40884u), 1u)]).x));
    let var_2 = u_input.e;
    var var_3 = vec3<i32>(_wgslsmith_add_i32(countOneBits(~var_2.x), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.d, 1i), _wgslsmith_div_i32(arg_0 << (39097u % 32u), min(-54540i, arg_0)))), ~(-1i), u_input.d);
    global2 = array<f32, 1>();
    return select(select(!(!vec2<bool>(arg_3, global0.x)), vec2<bool>(false, arg_3 & !global0.x), global0.x), select(!select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), false), select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), global0.x), true), select(vec2<bool>(true == global0.x, arg_3), !select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), vec2<bool>(arg_3, true)), !(63769u <= arg_1) & !arg_3), !(!vec2<bool>(false | arg_3, !arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec3_u32(~(~countOneBits(vec3<u32>(global1.x, 4294967295u, 0u))), vec3<u32>(1u, ~u_input.c, u_input.c));
    global2 = array<f32, 1>();
    global0 = select(!(!(!select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), vec2<bool>(false, global0.x)))), select(vec2<bool>(true, false), vec2<bool>(global0.x, true), true && all(!vec2<bool>(true, global0.x))), global0.x);
    let var_1 = u_input.d == firstLeadingBit(abs(u_input.a.x));
    global0 = vec2<bool>(true, true);
    global0 = select(func_1(u_input.d, u_input.c, max(vec4<u32>(29633u, u_input.c, 4294967295u, var_0.x), select(vec4<u32>(u_input.c, var_0.x, 36536u, var_0.x), vec4<u32>(u_input.c, u_input.c, var_0.x, 1u), vec4<bool>(false, true, var_1, false))) & ~(~vec4<u32>(35826u, 16511u, u_input.c, u_input.c)), !all(vec3<bool>(var_1, var_1, global0.x))), vec2<bool>(any(!select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, false, true, global0.x), true)), false), -(u_input.e.x << (~22375u % 32u)) != u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

