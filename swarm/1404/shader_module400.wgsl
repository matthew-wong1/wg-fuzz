struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(38561i, 1i));

var<private> global1: array<i32, 22> = array<i32, 22>(1i, -2241i, -25399i, 26196i, 1i, -1i, 3810i, i32(-2147483648), -1i, -12875i, 1i, -24587i, 17540i, -28772i, 1i, -19897i, 53813i, 50396i, 23340i, -37743i, -88210i, 15163i);

var<private> global2: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_mult_u32(~u_input.a, ~_wgslsmith_dot_vec3_u32(u_input.b.xwy, u_input.b.xzw)) & _wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(~u_input.a, ~_wgslsmith_mult_u32(0u, u_input.a)));
    let var_1 = ~vec4<u32>(~1u, abs(61828u), ~(4294967295u << (u_input.b.x % 32u)) << (var_0 % 32u), ~(~u_input.b.x));
    var var_2 = -global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 0u, 4294967295u), vec3<u32>(97088u, var_1.x, 4294967295u) | vec3<u32>(var_0, 29182u, 36522u)), var_1.wyy)), 1u)];
    var var_3 = ~select(_wgslsmith_add_vec3_i32(-(vec3<i32>(16614i, 1i, global1[_wgslsmith_index_u32(4294967295u, 22u)]) << (u_input.b.wzx % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(var_2.x, -60362i), -var_2.x, _wgslsmith_mod_i32(var_2.x, global1[_wgslsmith_index_u32(var_0, 22u)]))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 22u)], -2147483647i), ~vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(var_1.x, 22u)], var_2.x)), ~firstLeadingBit(vec3<i32>(var_2.x, 1i, global1[_wgslsmith_index_u32(1u, 22u)]))), !vec3<bool>(true, arg_0, all(vec4<bool>(true, arg_0, arg_0, arg_0))));
    let var_4 = Struct_1(!(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1[_wgslsmith_index_u32(26283u, 22u)]), var_3.yx) != (1i << ((0u | var_0) % 32u))), -2075f);
    return firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, var_1.x), _wgslsmith_add_vec3_u32(var_1.wxy, u_input.b.wzy)) << ((_wgslsmith_clamp_u32(~0u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 48640u), vec2<u32>(var_0, 0u))) << (var_1.x % 32u)) % 32u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = ~u_input.b.xy;
    let var_1 = vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & true, (func_3(true) << (max(~var_0.x, _wgslsmith_add_u32(arg_0, 4294967295u)) % 32u)) < 41001u, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(329f, arg_1.x, arg_1.x, 1550f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1140f, arg_1.x, 1000f) * vec4<f32>(arg_1.x, arg_1.x, -1142f, 446f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 852f, arg_1.x, arg_1.x) + vec4<f32>(arg_1.x, -122f, arg_1.x, -2459f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_1.x, -1336f, -908f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -539f, -576f)))))));
    var var_3 = _wgslsmith_sub_vec4_i32(~(-(vec4<i32>(global1[_wgslsmith_index_u32(0u, 22u)], -17398i, -2147483647i, global1[_wgslsmith_index_u32(var_0.x, 22u)]) >> (vec4<u32>(var_0.x, var_0.x, 3213u, var_0.x) % vec4<u32>(32u)))), vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 22u)], select(-1i, ~global1[_wgslsmith_index_u32(4294967295u, 22u)], true), -(~1i), global1[_wgslsmith_index_u32(17934u, 22u)])) & ((abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], 20371i, -38405i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 22u)], -2147483647i, 29150i, 0i))) ^ ~(~vec4<i32>(27846i, -2906i, 1i, global1[_wgslsmith_index_u32(4294967295u, 22u)]))) << (min(min(select(vec4<u32>(5148u, 29072u, arg_0, 15475u), vec4<u32>(var_0.x, 4294967295u, 0u, var_0.x), vec4<bool>(var_1.x, true, var_1.x, false)), ~vec4<u32>(58027u, 0u, var_0.x, 14094u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.a, 16577u, u_input.a), vec4<u32>(u_input.a, var_0.x, var_0.x, 4294967295u)), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~1u, ~19002u)) % vec4<u32>(32u)));
    global2 = false;
    return 4825u;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3) -> vec2<bool> {
    global2 = true;
    var var_0 = vec4<u32>(reverseBits(~(~func_2(12446u, vec3<f32>(arg_2.a.a.x, -1004f, arg_2.b)))), u_input.a, ~_wgslsmith_add_u32(0u, max(0u, _wgslsmith_mod_u32(0u, u_input.b.x))), select(abs(4294967295u), (min(0u, arg_2.c.x) | ~arg_2.c.x) >> (~_wgslsmith_sub_u32(arg_2.c.x, 1u) % 32u), true));
    var var_1 = select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.c.x, u_input.a), 22u)], (8174i ^ arg_1.x) << (u_input.a % 32u), arg_2.d.x);
    var_1 = min(arg_1.x, -1i);
    global1 = array<i32, 22>();
    return vec2<bool>(true, !any(select(vec4<bool>(false, true, false, arg_2.d.x), vec4<bool>(arg_2.d.x, false, arg_2.d.x, arg_2.d.x), arg_2.d.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>) -> StorageBuffer {
    var var_0 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -446f) * -1558f)))));
    global1 = array<i32, 22>();
    let var_1 = u_input.a == 1u;
    let var_2 = select(arg_1, arg_1, select(!select(vec2<bool>(false, var_0.a), vec2<bool>(var_1, false), arg_0.x > global1[_wgslsmith_index_u32(63743u, 22u)]), arg_1, arg_1));
    var_0 = Struct_1(true, -1906f);
    return StorageBuffer(var_0.b, vec4<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -431f))), _wgslsmith_f_op_f32(round(-1537f))), 150f, _wgslsmith_f_op_f32(round(554f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, -715f, var_0.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2005f, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -1118f, var_0.b) - vec3<f32>(var_0.b, var_0.b, var_0.b))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 226f, 1000f) * vec3<f32>(var_0.b, var_0.b, 176f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, var_0.b, var_0.b))))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(countOneBits(max(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 24269i, global1[_wgslsmith_index_u32(79500u, 22u)]), vec3<i32>(global1[_wgslsmith_index_u32(1u, 22u)], -2147483647i, global1[_wgslsmith_index_u32(17855u, 22u)])), max(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], -2147483647i), vec3<i32>(801i, global1[_wgslsmith_index_u32(8373u, 22u)], 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(10696u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], -1i))), firstLeadingBit(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)])))), !select(!func_1(Struct_2(vec2<f32>(-2060f, 466f)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 22u)]), Struct_3(Struct_2(vec2<f32>(-1231f, -835f)), 809f, u_input.b.zyw, vec4<bool>(true, true, false, true))), func_1(Struct_2(vec2<f32>(-270f, -174f)), vec3<i32>(-2147483647i, 8774i, global1[_wgslsmith_index_u32(4294967295u, 22u)]), Struct_3(Struct_2(vec2<f32>(-588f, 1098f)), 411f, u_input.b.yyx, vec4<bool>(true, false, true, false))), false));
}

