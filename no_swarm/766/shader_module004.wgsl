struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<i32, 20> = array<i32, 20>(24600i, -18183i, 25628i, i32(-2147483648), 2147483647i, -1i, -16614i, 1i, -15800i, 2147483647i, i32(-2147483648), 2147483647i, -8835i, 0i, 17636i, -35438i, -21926i, -41290i, 2147483647i, -35217i);

var<private> global2: u32;

var<private> global3: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: vec2<u32> = vec2<u32>(34549u, 0u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_div_vec4_i32(~(-(~vec4<i32>(-15729i, -4304i, u_input.b, 2147483647i))), abs(vec4<i32>(-7175i, reverseBits(~0i), ~global1[_wgslsmith_index_u32(firstTrailingBit(global4.x), 20u)], -1i)));
    global1 = array<i32, 20>();
    let var_1 = Struct_2(select(vec2<i32>(-1i, abs(i32(-1i) * -2147483647i)), max(~(vec2<i32>(-2147483647i, u_input.b) | arg_1.d.yz), var_0.wy), arg_1.a.x != all(vec2<bool>(false, arg_1.a.x))), Struct_1(vec3<bool>(all(vec2<bool>(arg_1.a.x, true)), global4.x > arg_1.b.x, true), select(arg_1.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 1u, global4.x), _wgslsmith_mod_vec3_u32(vec3<u32>(94588u, 8054u, 4294967295u), vec3<u32>(global4.x, arg_1.b.x, u_input.a)), _wgslsmith_clamp_vec3_u32(arg_1.b, arg_1.b, vec3<u32>(global4.x, arg_2, global4.x))), arg_1.a), _wgslsmith_mod_i32(min(abs(var_0.x), 2147483647i), _wgslsmith_mod_i32(1i, ~(-21110i))), arg_1.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.e.x - arg_0), -134f, arg_1.e.x, _wgslsmith_f_op_f32(-2364f * arg_1.e.x)))), 1745f, abs(abs(max(1u, u_input.a)) >> (_wgslsmith_mult_u32(max(u_input.a, arg_2), ~10593u) % 32u)));
    let var_2 = Struct_2(vec2<i32>(0i, 1198i | min(-23059i, countOneBits(global1[_wgslsmith_index_u32(global4.x, 20u)]))), arg_1, 1306f, ~max(max(global4.x, ~global4.x), u_input.a));
    let var_3 = !any(select(select(vec3<bool>(var_2.b.a.x, arg_1.a.x, true), vec3<bool>(var_2.b.a.x, true, var_2.b.a.x), any(var_2.b.a.xy)), vec3<bool>(var_2.b.a.x != arg_1.a.x, var_2.b.a.x, false), vec3<bool>(true, arg_1.a.x & true, var_1.b.b.x <= u_input.a)));
    return arg_1.c;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    global3 = array<vec2<bool>, 23>();
    global3 = array<vec2<bool>, 23>();
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, ~firstLeadingBit(2147483647i | u_input.b)), _wgslsmith_mult_vec2_i32(-(vec2<i32>(global1[_wgslsmith_index_u32(28224u, 20u)], global1[_wgslsmith_index_u32(arg_1.b.x, 20u)]) << (~vec2<u32>(u_input.a, arg_1.b.x) % vec2<u32>(32u))), vec2<i32>(func_3(1207f, arg_1, ~18159u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1[_wgslsmith_index_u32(42236u, 20u)]), vec2<i32>(1i, 1i)))));
    return -531f;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(390f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -513f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(851f - -838f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1038f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, Struct_1(vec3<bool>(true, false, arg_2.x), arg_0, global1[_wgslsmith_index_u32(2107u, 20u)], vec3<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(arg_0.x, 20u)]), vec4<f32>(-895f, 589f, -1069f, 481f)))))))), _wgslsmith_f_op_f32(ceil(1f)));
    var var_1 = Struct_1(select(select(!(!vec3<bool>(false, false, arg_2.x)), vec3<bool>(true, true, true), !vec3<bool>(false, false, arg_2.x)), !vec3<bool>(true, arg_2.x, false), vec3<bool>(!all(vec4<bool>(true, arg_2.x, true, true)), !(false && arg_2.x), 86747u < countOneBits(arg_0.x))), ~max(countOneBits(arg_0), ~select(vec3<u32>(0u, arg_1, 4294967295u), vec3<u32>(u_input.a, arg_0.x, 42637u), vec3<bool>(arg_2.x, false, false))), -_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(arg_0.x, 20u)], u_input.b), vec3<i32>(_wgslsmith_div_i32(63955i, u_input.b), ~(-25932i), countOneBits(u_input.b))), -vec3<i32>(7297i, _wgslsmith_div_i32(abs(u_input.b), u_input.b), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 748f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, var_0.x, 643f, 693f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3004f, -648f, var_0.x, var_0.x))) + vec4<f32>(var_0.x, -156f, var_0.x, 1816f)))));
    let var_2 = vec2<f32>(117f, 155f);
    var var_3 = vec3<u32>(firstTrailingBit(0u), _wgslsmith_add_u32(select(arg_1, arg_0.x, arg_2.x), var_1.b.x), arg_1);
    let var_4 = Struct_2(firstLeadingBit(countOneBits(vec2<i32>(var_1.d.x, i32(-1i) * -271i))), Struct_1(!var_1.a, select(arg_0, arg_0, var_1.a), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-12034i, u_input.b, global1[_wgslsmith_index_u32(55250u, 20u)]), vec3<i32>(1i, 0i, -53229i)), var_1.d) ^ 2147483647i, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, 0i, var_1.d.x), (vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 20u)], var_1.d.x, u_input.b) & vec3<i32>(-76399i, global1[_wgslsmith_index_u32(u_input.a, 20u)], -30774i)) | var_1.d), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_0.x, var_1.e.x, -331f)), var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)), _wgslsmith_div_f32(-2672f, _wgslsmith_f_op_f32(-var_1.e.x))))), 25892u);
    return any(select(!var_4.b.a.xx, arg_2, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, false, -(-1i | u_input.b) > (-39992i >> (u_input.a % 32u))), vec3<bool>(any(vec3<bool>(true, true, true)), !(false & any(global3[_wgslsmith_index_u32(u_input.a, 23u)])), true), vec3<bool>(true, !func_1(vec3<u32>(u_input.a, 4294967295u, u_input.a), global4.x, vec2<bool>(true, true)), true));
    let var_1 = global4.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(1f + -1551f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1026f)))), 1912f, all(select(!vec4<bool>(false, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false)), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, true), false))))), _wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(f32(-1f) * -285f));
    let var_3 = Struct_1(var_0, ~select(~(vec3<u32>(global4.x, 62734u, 64905u) << (vec3<u32>(0u, u_input.a, global4.x) % vec3<u32>(32u))), reverseBits(vec3<u32>(u_input.a, u_input.a, 4294967295u) ^ vec3<u32>(global4.x, u_input.a, u_input.a)), all(var_0.xx)), global1[_wgslsmith_index_u32(88643u, 20u)], ~(-max(min(vec3<i32>(-43927i, 32999i, global1[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(global4.x, 20u)], u_input.b)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec4_f32(max(var_2, var_2)));
    let var_4 = vec3<i32>(u_input.b, _wgslsmith_add_i32(0i, 4666i), min(func_3(_wgslsmith_f_op_f32(select(-1693f, _wgslsmith_f_op_f32(trunc(var_2.x)), true)), Struct_1(select(var_0, vec3<bool>(false, false, false), true), var_3.b, 45715i, var_3.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2055f, -174f, 462f, var_2.x))), ~(~global4.x)), u_input.b));
    let var_5 = vec2<bool>(_wgslsmith_f_op_f32(-var_3.e.x) <= _wgslsmith_div_f32(var_3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.e.x, var_3.e.x)) - var_3.e.x)), all(!var_3.a));
    let var_6 = global4.x != reverseBits(countOneBits(~8045u));
    var var_7 = var_3.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(vec4<i32>(abs(17616i), i32(-1i) * -40436i, ~19620i, var_4.x), -(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], var_4.x, var_3.c, 16987i) << (vec4<u32>(global4.x, global4.x, 0u, global4.x) % vec4<u32>(32u))), !var_6)), var_3.b.x);
}

