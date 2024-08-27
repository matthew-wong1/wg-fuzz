struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u), i32(-2147483648), Struct_1(vec3<u32>(4294967295u, 62650u, 16589u)), -2078f), 1u);

var<private> global2: array<f32, 26> = array<f32, 26>(209f, -1672f, -496f, -936f, 824f, 408f, -1093f, -2728f, -1448f, 680f, 222f, -442f, -595f, -1179f, -1184f, -1018f, 844f, -706f, 819f, 799f, 354f, -1169f, 1000f, -1000f, -288f, -1000f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = reverseBits(vec4<i32>(0i, ~global1.a.b, abs(0i), _wgslsmith_sub_i32(reverseBits(global1.a.b), _wgslsmith_div_i32(global1.a.b, -1i))) >> (~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(19266u, arg_1.a.x, 1u, arg_1.a.x), vec4<u32>(global1.a.c.a.x, u_input.a, arg_1.a.x, u_input.a)), vec4<u32>(u_input.a, 1u, global1.a.a.x, 22463u) ^ vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, 1258u), reverseBits(vec4<u32>(89329u, global1.b, 1u, 4294967295u))) % vec4<u32>(32u)));
    var var_1 = Struct_3(~global1.a.a, -1i << ((~(~arg_1.a.x) ^ global1.a.c.a.x) % 32u), Struct_1(~arg_1.a), global2[_wgslsmith_index_u32(1u, 26u)]);
    let var_2 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(_wgslsmith_add_i32(global1.a.b, global1.a.b), var_0.x, ~var_0.x) >> (_wgslsmith_sub_vec3_u32(~arg_1.a, arg_1.a) % vec3<u32>(32u))), ~(~vec3<i32>(global1.a.b, 0i, var_1.b)));
    let var_3 = _wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec2_i32(var_2.zy, -firstTrailingBit(vec2<i32>(-27360i, 42119i)))) | 1i;
    return (9802u ^ min(~_wgslsmith_clamp_u32(arg_1.a.x, var_1.c.a.x, u_input.b), 20685u)) ^ 0u;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = ~(global1.a.a.zx << (global1.a.c.a.zz % vec2<u32>(32u)));
    global2 = array<f32, 26>();
    let var_1 = Struct_1(vec3<u32>(~_wgslsmith_div_u32(31313u, global1.b), ~1u, 34971u) ^ vec3<u32>(4294967295u, var_0.x, abs(func_3(vec2<bool>(true, arg_0.x), global1.a.c))));
    global1 = Struct_4(Struct_3(countOneBits(vec3<u32>(var_0.x, 0u, 20032u) << (global1.a.a % vec3<u32>(32u))), -7371i, global1.a.c, -1000f), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(57349u, ~var_1.a.x, ~5047u, ~155602u)), ~(~vec4<u32>(global1.a.a.x, 0u, var_0.x, var_0.x))));
    global0 = true;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~min(~43775u, _wgslsmith_clamp_u32(18152u, u_input.b, var_1.a.x)), 18034u, var_0.x, ~(_wgslsmith_div_u32(var_1.a.x, var_0.x) << ((4294967295u << (global1.a.a.x % 32u)) % 32u))), min(abs(~vec4<u32>(var_0.x, 7141u, 0u, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_1.a.x, 0u, 68310u), vec4<u32>(var_1.a.x, 0u, u_input.b, 4294967295u)) & (vec4<u32>(22080u, u_input.a, global1.a.a.x, 0u) & vec4<u32>(62651u, var_0.x, 4294967295u, var_1.a.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: f32) -> vec4<bool> {
    let var_0 = ~vec4<u32>(func_2(arg_1), u_input.b, 4294967295u, firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, u_input.a, 6272u, u_input.b), vec4<u32>(95839u, 4294967295u, global1.b, global1.b)), ~vec4<u32>(47601u, 0u, 28058u, u_input.b))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(894f, global1.a.d), vec2<f32>(arg_2, global1.a.d))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(148396u, 26u)], -183f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(908f, arg_2))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global1.a.c.a.x, 26u)])), _wgslsmith_f_op_f32(-arg_2)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(4294967295u), 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.a.a.x, 26u)] - global2[_wgslsmith_index_u32(4294967295u, 26u)])))));
    var var_2 = !(~(-global1.a.b) <= arg_0.x);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.a.a.x, 20807u) >> (var_0.x % 32u), 26u)] * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 * -479f), 705f)))))));
    global2 = array<f32, 26>();
    return vec4<bool>(!(firstTrailingBit(50978i | arg_0.x) >= global1.a.b), arg_1.x, all(vec4<bool>(all(arg_1.xx), true, any(vec2<bool>(arg_1.x, arg_1.x)), select(!arg_1.x, arg_1.x, !arg_1.x))), all(!select(arg_1, vec4<bool>(arg_1.x, false, true, true), arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(any(vec4<bool>(true, true, true, true)), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), any(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.b, -73464i, global1.a.b), vec3<i32>(1i, global1.a.b, global1.a.b)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(global1.a.d + global2[_wgslsmith_index_u32(1u, 26u)]))), ~max(u_input.a, u_input.b) == ~4294967295u), vec4<bool>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(60152u, 10507u), 26u)]) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(175f, global2[_wgslsmith_index_u32(102480u, 26u)])), !any(func_1(vec3<i32>(global1.a.b, global1.a.b, global1.a.b), vec4<bool>(true, false, true, false), 1000f).wxw), false, any(vec4<bool>(true, true, true, global1.a.b <= global1.a.b))), true);
    var var_1 = true;
    var_1 = global1.a.c.a.x <= ~(~firstLeadingBit(4294967295u));
    var var_2 = vec3<u32>(13747u | u_input.a, ~u_input.a | _wgslsmith_div_u32(u_input.a, 35828u), 1u);
    global0 = !(!(var_0.x & false));
    var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 27300u, var_2.x, var_2.x), vec4<u32>(global1.a.a.x, 1u, 1u, u_input.b)), ~vec4<u32>(4294967295u, 12795u, 27994u, u_input.a)), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(28477u, 1u, 8803u, 0u), vec4<u32>(91050u, global1.b, 0u, 11016u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, global1.b), vec4<u32>(4294967295u, u_input.b, 0u, u_input.a)))), min(u_input.a, firstTrailingBit(global1.b)), max(u_input.a, ~u_input.b) | (var_2.x << (abs(~global1.b) % 32u)));
    var var_3 = !func_1(min(select(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a.b, global1.a.b, global1.a.b), vec3<i32>(global1.a.b, global1.a.b, global1.a.b)), _wgslsmith_div_vec3_i32(vec3<i32>(global1.a.b, 8673i, 0i), vec3<i32>(global1.a.b, 2147483647i, global1.a.b)), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(5281i, 1i, -5701i), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.a.b, -1i, 17497i), vec3<i32>(global1.a.b, global1.a.b, global1.a.b)))), vec4<bool>(false, var_0.x, var_0.x, any(vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(-706f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(217f)) + _wgslsmith_f_op_f32(-global1.a.d)))).xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -523f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.d, 1071f, global2[_wgslsmith_index_u32(var_2.x, 26u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.d, -661f, -1000f) * vec3<f32>(1000f, global1.a.d, 2338f)))))), 715f, max(~_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 1u, 27852u), global1.a.c.a), 0u), 0u), -(~(abs(vec2<i32>(global1.a.b, global1.a.b)) ^ -vec2<i32>(2147483647i, 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-603f, -519f, global2[_wgslsmith_index_u32(53118u, 26u)], -878f))), vec4<f32>(-260f, global2[_wgslsmith_index_u32(u_input.b, 26u)], global1.a.d, -916f))))));
}

