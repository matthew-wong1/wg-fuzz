struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = !any(select(vec3<bool>(arg_1.c, true, true), !(!vec3<bool>(true, arg_1.c, arg_3.c)), select(vec3<bool>(false, arg_1.c, global1.x), select(vec3<bool>(true, true, arg_3.a.c), vec3<bool>(arg_3.a.c, global1.x, false), vec3<bool>(false, arg_1.c, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_1.c)))));
    var var_1 = arg_2.xz;
    var_0 = arg_3.a.c;
    global1 = select(select(select(vec2<bool>(arg_1.c, arg_3.c), select(select(vec2<bool>(false, arg_3.a.c), vec2<bool>(arg_3.a.c, arg_1.c), arg_3.c), select(vec2<bool>(true, arg_1.c), vec2<bool>(false, global1.x), vec2<bool>(true, arg_1.c)), !vec2<bool>(arg_3.a.c, arg_3.a.c)), !all(vec3<bool>(global1.x, false, false))), select(select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(arg_1.c, global1.x), global1.x & global1.x), select(select(vec2<bool>(global1.x, true), vec2<bool>(arg_1.c, false), false), !vec2<bool>(false, global1.x), !vec2<bool>(global1.x, arg_3.c)), vec2<bool>(arg_1.c, true)), vec2<bool>(false, false != all(vec3<bool>(true, false, false)))), vec2<bool>(true, true), any(select(!vec4<bool>(arg_1.c, global1.x, false, true), select(select(vec4<bool>(true, arg_3.c, false, false), vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, arg_3.c, false, false)), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(arg_1.c, arg_3.a.c, false, arg_1.c), vec4<bool>(false, arg_1.c, arg_3.a.c, global1.x)), vec4<bool>(false, true, false, arg_3.c)), any(vec4<bool>(false, arg_1.c, true, arg_1.c)))));
    var var_2 = arg_1.a;
    return abs(min(vec4<i32>(_wgslsmith_add_i32(1i ^ var_2.a, -arg_3.a.b), min(-68835i, var_2.a) & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.a.a, arg_1.b, arg_1.a.a), vec3<i32>(-13445i, u_input.a, 1446i)), 1i, firstTrailingBit(62549i)), vec4<i32>(var_2.a, firstLeadingBit(select(arg_1.a.a, var_2.a, false)), 1i ^ select(13695i, u_input.b, true), u_input.a)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = global1.x || (_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), 6u)])) <= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1329f, 1112f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(354f, global0[_wgslsmith_index_u32(28121u, 6u)]))));
    var var_1 = -7098i;
    let var_2 = _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0, 58500u) << ((~(~1u) ^ arg_0) % 32u), 6u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 6u)])))))));
    let var_3 = u_input.b;
    let var_4 = Struct_3(Struct_2(Struct_1(var_3), _wgslsmith_sub_i32(u_input.b, -18542i), true, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3, var_3, u_input.a, -57381i) >> (vec4<u32>(arg_0, 1u, u_input.c.x, 0u) % vec4<u32>(32u)), func_3(4294967295u, Struct_2(Struct_1(0i), 1i, global1.x, var_3), vec3<f32>(239f, var_2, -1000f), Struct_3(Struct_2(Struct_1(var_3), -2147483647i, var_0, -2147483647i), vec4<u32>(36533u, u_input.c.x, 51078u, 42188u), false, -655f))), abs(vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.b) << (vec4<u32>(arg_0, arg_0, 0u, 56756u) % vec4<u32>(32u))))), countOneBits(vec4<u32>(~(~arg_0), ~(arg_0 | u_input.c.x), ~1u, ~abs(91080u))), !var_0, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(43094u, 6u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1955f, _wgslsmith_f_op_f32(-1653f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)])))))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec4<f32>(global0[_wgslsmith_index_u32(~(~min(firstTrailingBit(1u), countOneBits(arg_0))), 6u)], 266f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u ^ u_input.c.x, 6u)] + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_0, 6u)])))), -1515f, global1.x)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(max(arg_0, arg_0), 6u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_0, 6u)], 1000f)) * global0[_wgslsmith_index_u32(u_input.c.x << (28059u % 32u), 6u)])))));
    var var_1 = vec4<u32>(arg_0, ~(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(28523u, u_input.c.x)) | u_input.c.x), arg_0, u_input.c.x);
    let var_2 = 496i;
    var_1 = ~(~vec4<u32>(0u, firstLeadingBit(12836u), 30456u, arg_0) ^ abs(vec4<u32>(22717u, arg_0, ~34819u, _wgslsmith_mult_u32(90069u, 16184u))));
    var_1 = ~(vec4<u32>(488u, _wgslsmith_add_u32(u_input.c.x, arg_0), select(~23054u, select(27842u, 0u, global1.x), !global1.x), 4294967295u) ^ vec4<u32>(_wgslsmith_mod_u32(0u, arg_0), 1u, 1u, ~max(0u, arg_0)));
    return Struct_1(var_2);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    return Struct_3(Struct_2(func_1(1u), 0i, true, -(~select(-1i, u_input.a, global1.x))), vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(25428u, u_input.c.x, 21216u), vec3<u32>(7595u, u_input.c.x, u_input.c.x))), 36085u, ~u_input.c.x, ~(~(~u_input.c.x))), !all(!select(vec3<bool>(global1.x, false, true), vec3<bool>(true, true, global1.x), true)), _wgslsmith_f_op_f32(-arg_2.x));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = -func_1(~(~_wgslsmith_dot_vec2_u32(arg_1.b.ww, u_input.c))).a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-223f - func_4(-1597f, Struct_1(var_0), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 1038f)).d))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-arg_1.d)))))));
    global0 = array<f32, 6>();
    var var_2 = select(!(!vec4<bool>(all(vec4<bool>(true, arg_2.x, false, true)), true, global1.x | arg_2.x, any(arg_2))), vec4<bool>(global1.x, true && (_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4043u, 6u)], -1000f)) < 554f), true, all(vec3<bool>(!arg_2.x, global1.x, arg_2.x))), true);
    global0 = array<f32, 6>();
    return func_4(var_1, Struct_1(-u_input.a ^ arg_1.a.d), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1018f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52633u, 6u)]))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(all(select(!vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, true), global1.x)), global1.x, !(!global1.x) | true, false), !vec4<bool>(global1.x, select(true, false & global1.x, true), global1.x, false | global1.x), !vec4<bool>(true, true, global1.x, global1.x));
    let var_1 = firstTrailingBit(0u);
    let var_2 = Struct_3(func_5(1u, func_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2845u, 6u)]), func_1(select(var_1, 90798u, false)), vec2<f32>(_wgslsmith_div_f32(-903f, global0[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_div_f32(321f, global0[_wgslsmith_index_u32(30259u, 6u)]))), !(!select(vec2<bool>(true, true), vec2<bool>(global1.x, var_0.x), true))), abs(~select(~vec4<u32>(1u, 1u, 1u, u_input.c.x), vec4<u32>(1u, 43228u, var_1, var_1), select(var_0, vec4<bool>(false, global1.x, var_0.x, false), var_0.x))), false, -370f);
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(16309u, 6u)], -348f) * vec2<f32>(-562f, 1142f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-18227i, u_input.b, var_2.a.a.a) >> (~vec3<u32>(u_input.c.x, var_1, u_input.c.x) % vec3<u32>(32u))), vec3<i32>(39977i, ~var_2.a.a.a, func_3(82029u, var_2.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1356f, var_2.d, -209f), vec3<f32>(var_2.d, var_4.x, var_4.x), var_0.x)), func_4(-1000f, var_2.a.a, vec2<f32>(530f, 225f))).x)), var_2.a.b, ~(~_wgslsmith_sub_u32(firstLeadingBit(var_2.b.x), ~var_1)));
}

