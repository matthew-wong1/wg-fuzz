struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(10829u, 4294967295u, 4294967295u), 1511f, 23408i);

var<private> global1: array<bool, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    global0 = Struct_2(~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global0.a.x, u_input.b, u_input.d.x), vec4<u32>(5911u, global0.a.x, 0u, global0.a.x)), 18621u, _wgslsmith_clamp_u32(1u, 16100u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-global0.b)) - 1526f) - -599f), -2147483647i);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1684f, 645f, global0.b, 151f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -1326f, -660f, 1000f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 787f, 672f, -1045f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b, global0.b, global0.b, 373f), vec4<f32>(global0.b, global0.b, -2279f, global0.b))), vec4<f32>(global0.b, global0.b, -1018f, global0.b))))), -global0.c);
    let var_1 = 1075f;
    global0 = Struct_2(~firstLeadingBit(u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -781f)), var_0.b);
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(sign(global0.b))))), _wgslsmith_sub_i32(-18552i, var_0.b));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(416f, 1087f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, global0.b, 1154f) - vec4<f32>(global0.b, -664f, -697f, 761f)))))), u_input.a.x);
    global0 = Struct_2(u_input.d, 1173f, -25602i);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) + var_0.a.x) + _wgslsmith_f_op_f32(func_3())), global0.b) * var_0.a.yw);
    let var_2 = _wgslsmith_clamp_vec2_u32(~(u_input.d.xz | u_input.c.yz) | u_input.d.yx, select(u_input.c.xy, ~vec2<u32>(global0.a.x, 36719u >> (u_input.c.x % 32u)), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(global0.a.x, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)]), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, global1[_wgslsmith_index_u32(8932u, 10u)]), vec2<bool>(true, true))), global0.a.xx);
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2046f)) - var_0.a.x), 2077f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x * 326f), _wgslsmith_div_f32(var_0.a.x, 1150f))), _wgslsmith_f_op_f32(var_1.x * -1135f))), -943f), 2147483647i);
    return var_3;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> vec3<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(-select(u_input.e, vec3<i32>(u_input.a.x, arg_2, u_input.a.x), false)) & u_input.a.zzz, -_wgslsmith_mult_vec3_i32(countOneBits(u_input.a.wxy), ~u_input.a.wwx) ^ select(u_input.e, abs(~vec3<i32>(var_0.b, arg_2, global0.c)), any(vec2<bool>(arg_1, true))));
    global0 = Struct_2(vec3<u32>(4294967295u, 37807u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), global0.a.x)) >> (select(vec3<u32>(~global0.a.x, 60941u, 11770u), global0.a, !vec3<bool>(arg_1, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], true)) % vec3<u32>(32u)), var_0.a.x, func_2().b);
    var var_2 = global0.a;
    var var_3 = reverseBits(u_input.c.wx | vec2<u32>(19621u, _wgslsmith_sub_u32(min(var_2.x, 0u), global0.a.x)));
    return select(!(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(91431u, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(6873u, 10u)], true, true), true)), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], !(global0.b == global0.b), !(false & arg_1)), !vec3<bool>(global1[_wgslsmith_index_u32(1147u | var_3.x, 10u)], !(global1[_wgslsmith_index_u32(var_3.x, 10u)] == true), global1[_wgslsmith_index_u32(~0u, 10u)] & all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(!(false | global1[_wgslsmith_index_u32(0u, 10u)]), !select(true, global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(92757u, 10u)]), true), select(select(vec3<bool>(global1[_wgslsmith_index_u32(60492u, 10u)], global1[_wgslsmith_index_u32(u_input.d.x, 10u)], false), select(vec3<bool>(false, false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)], true), global1[_wgslsmith_index_u32(24224u, 10u)]), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], global1[_wgslsmith_index_u32(global0.a.x, 10u)], true))), func_1(_wgslsmith_add_i32(global0.c, 9349i), global1[_wgslsmith_index_u32(global0.a.x, 10u)], _wgslsmith_sub_i32(-53235i, 1986i)), select(vec3<bool>(false, global1[_wgslsmith_index_u32(70669u, 10u)], true), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(global0.a.x, 10u)] | false)), false);
    var_0 = vec3<bool>(all(vec4<bool>(18680u == _wgslsmith_clamp_u32(u_input.c.x, u_input.b, 4294967295u), var_0.x, !global1[_wgslsmith_index_u32(global0.a.x, 10u)], all(vec3<bool>(true, true, true)))), !var_0.x, var_0.x);
    var var_1 = func_2().a.yxw;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1854f)), 353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(622f, -1678f, var_1.x, 1544f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-199f, var_1.x, global0.b, var_1.x), vec4<f32>(global0.b, global0.b, 820f, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-905f, global0.b, 1105f, -253f) - _wgslsmith_div_vec4_f32(vec4<f32>(-940f, var_1.x, global0.b, -438f), vec4<f32>(-1450f, -1538f, -701f, -1010f)))) + _wgslsmith_f_op_vec4_f32(-func_2().a)), -1i);
    var var_3 = !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 10u)], 0i < ~u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(4294967295u >> (0u % 32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d.x, 1u), u_input.b)), ~abs(select(vec2<u32>(63500u, 1u), vec2<u32>(0u, 0u), var_3.x))));
}

