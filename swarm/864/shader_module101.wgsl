struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<i32, 17> = array<i32, 17>(2147483647i, 82799i, 71422i, 3579i, -1i, 4152i, 19241i, 67698i, 37004i, 1i, -25746i, 1i, 22802i, 28144i, 9989i, -16709i, 31498i);

var<private> global2: array<vec2<f32>, 21>;

var<private> global3: array<Struct_1, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, -674f, arg_0.c, arg_0.c), vec4<f32>(arg_0.c, arg_0.c, 475f, arg_0.c)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c, -434f, -1509f, arg_0.c)))) * vec4<f32>(1637f, 1085f, -511f, _wgslsmith_f_op_f32(-1000f * arg_0.c))))));
    var var_1 = vec2<u32>(u_input.a.x, arg_0.a);
    var_1 = max(~vec2<u32>(~arg_0.a, _wgslsmith_sub_u32(arg_0.a, 0u) & abs(u_input.b.x)), vec2<u32>(var_1.x, countOneBits(arg_0.a)));
    let var_2 = var_0.xyz;
    let var_3 = -2147483647i;
    return false;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    global0 = array<bool, 18>();
    var var_0 = !select(!vec3<bool>(func_2(885f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], true), Struct_1(14619u, global1[_wgslsmith_index_u32(4294967295u, 17u)], 1231f, global0[_wgslsmith_index_u32(u_input.b.x, 18u)])), select(global0[_wgslsmith_index_u32(arg_0.x, 18u)], true, global0[_wgslsmith_index_u32(1u, 18u)]), true), vec3<bool>(true, func_3(Struct_1(4294967295u, global1[_wgslsmith_index_u32(arg_0.x, 17u)], 1553f, global0[_wgslsmith_index_u32(1u, 18u)]), global0[_wgslsmith_index_u32(~u_input.a.x, 18u)]), true), !select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 18u)], true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false, global0[_wgslsmith_index_u32(arg_0.x, 18u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 18u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 18u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 18u)], true, global0[_wgslsmith_index_u32(arg_0.x, 18u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(6363u, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), global0[_wgslsmith_index_u32(4294967295u, 18u)])));
    global2 = array<vec2<f32>, 21>();
    global1 = array<i32, 17>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -552f))), -1196f), -1500f), _wgslsmith_f_op_f32(sign(1307f)), -2104f, _wgslsmith_f_op_f32(trunc(1870f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(291f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-var_1.x))))) - -559f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~max(u_input.a.x >> (_wgslsmith_sub_u32(4294967295u, 8782u) % 32u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.b.x), abs(1u))), 0i, _wgslsmith_f_op_f32(func_1(min(abs(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), ~(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a.x))), abs(abs(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 52403u, 34570u), 17u)])))), false);
    let var_1 = Struct_1(_wgslsmith_mod_u32(88695u, ~(~(~0u))), 1i << (min(_wgslsmith_clamp_u32(~19115u, 0u, 1u), countOneBits(44646u)) % 32u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - -680f)))), all(select(vec4<bool>(func_2(var_0.c, vec2<bool>(false, var_0.d), Struct_1(u_input.b.x, var_0.b, var_0.c, false)), true, !global0[_wgslsmith_index_u32(24366u, 18u)], true), select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(4234u, 18u)], false, false, true), true), false)));
    var var_2 = Struct_1(abs(4294967295u | firstLeadingBit(~var_1.a)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-529f - _wgslsmith_f_op_f32(var_0.c - var_0.c))))), true);
    let var_3 = Struct_1(var_0.a, _wgslsmith_sub_i32(var_2.b >> ((var_2.a & firstLeadingBit(1u)) % 32u), _wgslsmith_clamp_i32(var_1.b, -7352i, var_1.b)), _wgslsmith_f_op_f32(round(var_0.c)), (-42999i & max(-2116i, var_1.b << (var_1.a % 32u))) < var_0.b);
    var var_4 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, u_input.b.x, 26485u, 4294967295u), vec4<u32>(12395u, 4294967295u, 0u, 45297u)) << (~vec4<u32>(var_2.a, 11161u, var_0.a, var_1.a) % vec4<u32>(32u)), ~(~vec4<u32>(19139u, 1u, 78434u, 21112u)), !(!vec4<bool>(false, var_2.d, false, true))), reverseBits(vec4<u32>(var_2.a, 0u, u_input.b.x, var_0.a))), 24u)];
    global1 = array<i32, 17>();
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(~12456u, 21u)]))), ~(~(~vec2<u32>(var_1.a, 391u)) | u_input.b), firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.b, 2073i), var_5.b), 2147483647i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_4.b, var_0.b, var_4.b)), -vec3<i32>(var_4.b, var_0.b, var_5.b)))), -_wgslsmith_dot_vec3_i32(-vec3<i32>(-6952i, -7593i, -10830i), vec3<i32>(43152i, var_5.b, -29870i)) & 0i, _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(var_2.a, 0u), ~30244u, ~(~0u)), reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(67538u, 0u, 1u), vec3<u32>(var_0.a, var_3.a, 41075u)), vec3<u32>(u_input.b.x, 28855u, var_3.a)))));
}

