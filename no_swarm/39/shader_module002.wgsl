struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    global0 = array<u32, 5>();
    return 25777u;
}

fn func_3() -> f32 {
    global0 = array<u32, 5>();
    let var_0 = Struct_1(select(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, any(vec2<bool>(false, true)), false, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1113f, -234f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1341f, 1255f)) + _wgslsmith_f_op_f32(f32(-1f) * -119f))) + 564f), !all(vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec3<bool>(false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))));
    let var_1 = u_input.c;
    let var_2 = vec4<i32>(~(-(1i ^ u_input.d.x)), _wgslsmith_mult_i32(-23253i, -(u_input.a.x | u_input.d.x)), -29981i, u_input.a.x) << (_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(4294967295u, 1402u, var_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 5u)], 5u)]))), (select(vec4<u32>(0u, 4294967295u, 49358u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 5u)], 5u)]), vec4<u32>(0u, var_1, u_input.b, 0u), var_0.a) ^ firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 5u)], 5u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 5u)], 9894u))) ^ countOneBits(vec4<u32>(31343u, 4294967295u, 1u, 13693u))) % vec4<u32>(32u));
    var var_3 = Struct_1(var_0.a, -1988f, !any(var_0.e.zz), var_0.d, var_0.e);
    return 497f;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> bool {
    let var_0 = ~reverseBits(1u | min(arg_1, global0[_wgslsmith_index_u32(39744u, 5u)] << (27330u % 32u)));
    var var_1 = vec2<f32>(arg_0.x, arg_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zw))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1069f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, 1000f)), _wgslsmith_f_op_vec2_f32(var_2 + arg_0.xx)), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.zx, arg_0.yz, vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(exp2(arg_0.yx))) * vec2<f32>(581f, 297f)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f + 1534f), true)), _wgslsmith_f_op_f32(floor(-970f))), !(!all(vec2<bool>(true, true))))));
    var var_3 = vec4<bool>(-abs(-2147483647i) <= arg_2.x, true, false, true);
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<u32, 5>();
    var var_0 = Struct_1(func_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(1117f)), -938f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(-1000f))), countOneBits(arg_1.x), _wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, -2147483647i)), -vec3<i32>(u_input.d.x, 0i, -22239i)), vec4<i32>(u_input.a.x, 15280i, u_input.d.x, u_input.a.x)) & all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(func_3()), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-445f - 178f), _wgslsmith_f_op_f32(f32(-1f) * -1425f)) - _wgslsmith_f_op_f32(floor(-522f)))), vec3<bool>(reverseBits(reverseBits(1i)) < u_input.d.x, false, select(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, true)));
    var_0 = Struct_1(var_0.a, var_0.b, all(!(!(!vec4<bool>(var_0.a, true, var_0.a, var_0.e.x)))), -730f, select(!select(var_0.e, select(vec3<bool>(var_0.a, var_0.e.x, true), var_0.e, vec3<bool>(var_0.c, var_0.e.x, var_0.a)), var_0.e), !select(select(var_0.e, vec3<bool>(false, true, var_0.c), var_0.a), vec3<bool>(true, true, var_0.a), var_0.c), true));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), any(vec2<bool>(true, var_0.e.x)), var_0.b, var_0.e);
    let var_2 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1496f))) - 1000f), !(6891i <= (36733i >> ((u_input.c >> (662u % 32u)) % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-786f)) + _wgslsmith_f_op_f32(276f * -1340f))), _wgslsmith_f_op_f32(f32(-1f) * -455f))), vec3<bool>(true || (1u >= ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), true, true));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(-var_0.d), var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -253f))), !var_0.e);
    var_0 = func_2(u_input.c, min(vec3<u32>(func_1(var_1, vec3<f32>(-759f, 856f, 944f)), _wgslsmith_clamp_u32(reverseBits(4294967295u), global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.c), 0u), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(7599u, 5u)], 59646u, u_input.c), vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(36266u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)])) ^ vec3<u32>(u_input.c, 0u, 1u))));
    let var_2 = var_0.e.yx;
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 5u)], u_input.b), vec2<u32>(u_input.c, 0u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7988u, 5u)], 5u)], 20966u)), ~vec2<u32>(4241u, global0[_wgslsmith_index_u32(32810u, 5u)])), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-983f, var_1.b, var_0.d, -379f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1220f, -157f, var_1.d, -1347f) - vec4<f32>(-500f, 995f, var_0.b, var_1.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 832f, -1647f, var_0.b))))), 8690i);
}

