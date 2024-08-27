struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: u32 = 29994u;

var<private> global2: array<i32, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * 187f)));
    let var_1 = _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-_wgslsmith_clamp_i32(35401i, global2[_wgslsmith_index_u32(u_input.e.x, 19u)], arg_2), i32(-1i) * -arg_3.c.x, ~_wgslsmith_mod_i32(arg_2, 2147483647i))), vec3<i32>(global2[_wgslsmith_index_u32(~78911u, 19u)] & 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, global2[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_sub_i32(6141i, u_input.c.x)), -vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 55198i, arg_2)), reverseBits(abs(2147483647i))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 288f, -511f, 1503f), arg_1) + vec4<f32>(arg_3.b.x, -945f, var_0, arg_1.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(floor(arg_1)), all(vec3<bool>(!arg_3.d, true, any(vec4<bool>(arg_3.d, arg_3.d, false, arg_3.d)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-831f, 701f, var_0, -646f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2576f, -894f, 1420f, arg_3.a), arg_1))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1041f, _wgslsmith_f_op_f32(2882f + 616f), -733f, _wgslsmith_f_op_f32(-1224f + 458f)) * vec4<f32>(var_0, _wgslsmith_f_op_f32(sign(global0.x)), -906f, -1716f))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, arg_3.d)), true, true, u_input.b.x != u_input.e.x), arg_3.d), select(vec4<bool>(!arg_3.d, all(vec3<bool>(arg_3.d, false, true)), arg_3.d, false), select(select(vec4<bool>(false, true, arg_3.d, true), vec4<bool>(arg_3.d, arg_3.d, false, false), arg_3.d), select(vec4<bool>(arg_3.d, true, arg_3.d, arg_3.d), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, arg_3.d)), !arg_3.d), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_3.d, false, false), !arg_3.d)), !(!select(vec4<bool>(false, true, arg_3.d, true), vec4<bool>(arg_3.d, true, arg_3.d, arg_3.d), vec4<bool>(true, arg_3.d, false, false))))));
    let var_2 = _wgslsmith_mult_i32(countOneBits(~(-arg_2)), firstLeadingBit(0i));
    var var_3 = var_2;
    return ~firstLeadingBit(abs(u_input.d.x));
}

fn func_2() -> f32 {
    let var_0 = vec4<i32>(global2[_wgslsmith_index_u32(~(u_input.e.x & func_3(_wgslsmith_f_op_f32(select(254f, global0.x, false)), vec4<f32>(global0.x, -363f, global0.x, global0.x), countOneBits(global2[_wgslsmith_index_u32(1u, 19u)]), Struct_1(-459f, vec4<f32>(1926f, 250f, global0.x, 1255f), vec2<i32>(-2147483647i, u_input.c.x), true, global2[_wgslsmith_index_u32(4294967295u, 19u)]))), 19u)], -41012i, 0i, 0i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.wz))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 586f, global0.x, -645f)))))));
    let var_2 = ~_wgslsmith_add_u32(~u_input.d.x, ~max(u_input.e.x, u_input.b.x) & u_input.e.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1393f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1118f * -1000f))), _wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(sign(-910f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -559f))), -166f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global0.x)), var_1.x, var_1.x, 759f), u_input.e.x >= u_input.d.x)), vec2<i32>(-3498i, 1i), !all(vec4<bool>(false, true, true, true)), 51563i);
    return -341f;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(vec4<bool>(select(true, any(vec4<bool>(false, false, false, false)), !all(vec2<bool>(true, false))), false, countOneBits(1i) >= (-2147483647i | u_input.c.x), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, global0.x)) > _wgslsmith_f_op_f32(-global0.x)), Struct_1(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, 1067f, 1000f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -1132f, global0.x, global0.x), vec4<f32>(1000f, global0.x, global0.x, 1164f))))), u_input.c.xw, (25049u < ~arg_0.x) != ((var_0.x == 51894u) && true), -(_wgslsmith_clamp_i32(0i, u_input.c.x, 11517i) << (arg_0.x % 32u))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(var_1.b.a, 1825f))), _wgslsmith_div_f32(global0.x, global0.x))), global0.x, 993f, -1482f);
    var var_2 = var_1.b.b.x;
    var var_3 = 449f;
    return _wgslsmith_f_op_f32(f32(-1f) * -622f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - _wgslsmith_f_op_f32(floor(1214f))))));
    global0 = _wgslsmith_f_op_vec4_f32(arg_1.b - _wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b));
    let var_1 = u_input.a;
    let var_2 = reverseBits(~1u);
    let var_3 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~vec4<u32>(0u, 0u, 40702u, u_input.b.x)))) * -363f), Struct_1(_wgslsmith_f_op_f32(1427f - -1790f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -1000f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 846f, global0.x))))), u_input.c.zz, true, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~abs(71964u), 19u)], global2[_wgslsmith_index_u32(countOneBits(~u_input.e.x), 19u)])), vec3<bool>(true, all(vec2<bool>(true, true)), !select(global0.x > global0.x, true, true)));
    global1 = 0u;
    global0 = vec4<f32>(1278f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -315f))), -853f)), _wgslsmith_f_op_f32(-var_0.a));
    let var_1 = !(!var_0.d);
    var var_2 = Struct_2(vec4<bool>(true, true, var_1, any(select(!vec3<bool>(var_1, true, true), vec3<bool>(true, true, true), !vec3<bool>(var_0.d, true, true)))), func_4(-592f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - global0.x), vec4<f32>(-1285f, 1000f, _wgslsmith_f_op_f32(-var_0.b.x), -1331f), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 19u)], 1434i), vec2<i32>(u_input.c.x, u_input.c.x))), true, _wgslsmith_sub_i32(-1i, u_input.a) & var_0.c.x), !(!(!vec3<bool>(false, var_0.d, false)))));
    let var_3 = -(((global2[_wgslsmith_index_u32(~u_input.e.x, 19u)] << (4294967295u % 32u)) & ~_wgslsmith_clamp_i32(2147483647i, u_input.c.x, 1i)) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(2050u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.e.x, 61166u, u_input.b.x, 4294967295u)), u_input.e.x) % 32u));
    var var_4 = vec4<bool>(var_0.d, false, true, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(trunc(654f)), ~(select(vec4<u32>(47470u, 22035u, u_input.b.x, 40713u), vec4<u32>(u_input.e.x, u_input.e.x, 10693u, 76222u), var_1) >> (vec4<u32>(u_input.d.x, 4294967295u, 19909u, 48154u) % vec4<u32>(32u))) ^ vec4<u32>(63552u, u_input.b.x, 4294967295u, _wgslsmith_mult_u32(~28918u, u_input.e.x & u_input.d.x)));
}

