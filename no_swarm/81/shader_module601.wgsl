struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<u32, 3> = array<u32, 3>(69031u, 0u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    global0 = ~(-abs(_wgslsmith_add_i32(-16700i, ~u_input.d.x)));
    let var_0 = 2147483647i;
    global1 = array<u32, 3>();
    var var_1 = ~u_input.a;
    global1 = array<u32, 3>();
    return vec4<bool>(arg_0.c.x, true, all(vec3<bool>(false, arg_0.d == _wgslsmith_f_op_f32(arg_1 * -816f), true)), !arg_2);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.d;
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(min(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(arg_0.a, 3u)]), firstTrailingBit(arg_0.a), 98863u & global1[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(39954u, arg_0.a, 12814u)), max(vec3<u32>(arg_0.a, 46079u, u_input.a.x), vec3<u32>(66918u, 26553u, u_input.a.x)))), 4294967295u), -2147483647i, !(!select(select(arg_0.c, arg_0.c, arg_0.c), arg_0.c, arg_0.c)), 381f);
    var var_2 = arg_0.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(435f * arg_0.d));
    var var_4 = _wgslsmith_f_op_f32(582f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + -1181f))), _wgslsmith_div_f32(arg_0.d, 764f))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), -467f));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(98975u, 3u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 4294967295u)), 3u)], 1i, vec3<bool>(!any(vec4<bool>(true, true, true, false)), all(func_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 3u)], -44170i, vec3<bool>(false, false, true), -1000f), 755f, false, Struct_1(13966u, u_input.d.x, vec3<bool>(false, true, false), 944f))), !func_2(Struct_1(global1[_wgslsmith_index_u32(0u, 3u)], 31557i, vec3<bool>(false, false, false), 333f), -2066f, true, Struct_1(global1[_wgslsmith_index_u32(23362u, 3u)], u_input.e.x, vec3<bool>(true, false, false), -2080f)).x), _wgslsmith_f_op_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(countOneBits(~1u), 3u)], -10950i, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-3045f * 1238f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(var_0.d))) + 145f), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(floor(var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * -231f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2647f, 1000f, var_0.d)))));
    let var_2 = Struct_1(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.b), vec3<bool>(!var_0.c.x, false, var_0.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -176f))));
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(reverseBits(countOneBits(8431u)), var_2.a), _wgslsmith_dot_vec3_u32(~(vec3<u32>(global1[_wgslsmith_index_u32(var_2.a, 3u)], 46258u, 22221u) | vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(var_0.a, 3u)], global1[_wgslsmith_index_u32(var_2.a, 3u)])), vec3<u32>(4294967295u, _wgslsmith_div_u32(var_0.a, global1[_wgslsmith_index_u32(1u, 3u)]), 1u)), ~(~1u), min(_wgslsmith_div_u32(max(u_input.a.x, 54340u), u_input.a.x >> (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(46355u, 4294967295u, var_2.a), min(vec3<u32>(1738u, var_2.a, var_0.a), vec3<u32>(88927u, var_2.a, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))))), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(46103u, 6842u, global1[_wgslsmith_index_u32(4294967295u, 3u)], 57344u), ~vec4<u32>(global1[_wgslsmith_index_u32(5516u, 3u)], var_0.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16602u, 3u)], 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(var_0.a, 3u)]), ~vec4<u32>(u_input.a.x, 3838u, 4294967295u, var_0.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a, 25256u, 1u, var_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.a, 1u, global1[_wgslsmith_index_u32(var_0.a, 3u)]), vec4<u32>(0u, 8562u, 0u, 76640u))), var_2.c.x || true));
    let var_4 = var_2;
    return Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_2.a, 3u)] >> ((var_3.x << (global1[_wgslsmith_index_u32(var_2.a, 3u)] % 32u)) % 32u), 3u)]), ~(~u_input.a) | var_3.wx), countOneBits(select(0i, 37270i, true)), !select(var_2.c, var_4.c, var_4.c.x), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1();
    global0 = 288i;
    var_0 = func_1();
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d), var_1.d, var_1.c.x)))), !(!(!var_1.c.x))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -2551f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1331f, -743f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1122f, var_0.d), vec2<f32>(-543f, 1092f), false))))), var_0.c.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * -443f) * _wgslsmith_f_op_f32(-var_0.d)), 418f))));
    var_3 = vec2<f32>(_wgslsmith_div_f32(655f, var_0.d), _wgslsmith_f_op_f32(-var_0.d));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(511f - var_0.d))), _wgslsmith_f_op_f32(1089f + var_0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1367f, 632f, -1571f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -1124f, var_3.x) * vec3<f32>(-279f, var_1.d, var_1.d))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(473f, -2101f, var_1.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, var_3.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(881f, 731f, 302f), vec3<f32>(160f, var_3.x, var_0.d)))), var_1.d <= _wgslsmith_f_op_f32(-func_1().d))));
}

