struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: array<f32, 23> = array<f32, 23>(-904f, -184f, -254f, 1000f, 1003f, 121f, 849f, 529f, -690f, -1613f, 780f, 315f, 816f, 265f, -1145f, -1523f, -645f, 1804f, 1199f, -1322f, 670f, -206f, -1017f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = Struct_4(~(~0u), arg_0.d.x);
    var var_1 = select(u_input.c.x, u_input.c.x, true);
    let var_2 = vec2<bool>(arg_0.b, all(select(vec2<bool>(arg_0.b, arg_0.b), select(select(vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, true), vec2<bool>(false, arg_0.b)), !vec2<bool>(arg_0.b, false), all(vec2<bool>(arg_0.b, false))), vec2<bool>(786f <= global0[_wgslsmith_index_u32(11986u, 23u)], any(vec2<bool>(false, arg_0.b))))));
    global0 = array<f32, 23>();
    var_1 = reverseBits(u_input.c.x) | -(abs(u_input.a) << (abs(~4294967295u) % 32u));
    return abs(u_input.b.yy);
}

fn func_2() -> f32 {
    global0 = array<f32, 23>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -476f)))), false, Struct_1(-1127f), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(40031u, u_input.d), vec2<u32>(u_input.b.x, u_input.b.x)) >> (u_input.b.yz % vec2<u32>(32u)), ~(vec2<u32>(0u, u_input.b.x) | u_input.b.zy)), firstTrailingBit(~u_input.b.xx));
    var var_1 = countOneBits(reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(var_0.d.x, 1u)), vec2<u32>(0u, var_0.d.x), _wgslsmith_mod_vec2_u32(vec2<u32>(28471u, var_0.e.x), u_input.b.xz)), func_3(Struct_3(Struct_1(var_0.a.a), false, var_0.c, vec2<u32>(u_input.b.x, u_input.b.x), var_0.e)), vec2<u32>(~0u, var_0.d.x))));
    var var_2 = select(select(vec4<bool>(true, true, true, true), !vec4<bool>(any(vec2<bool>(false, true)), var_0.b, all(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), !var_0.b), vec4<bool>(var_0.b, !(-2147483647i <= u_input.c.x), all(!vec4<bool>(var_0.b, true, var_0.b, var_0.b)), select(var_0.b, all(vec2<bool>(true, false)), var_0.b))), !(!(!vec4<bool>(var_0.b, var_0.b, true, false))), !(!select(select(vec4<bool>(true, false, var_0.b, true), vec4<bool>(false, true, var_0.b, true), var_0.b), vec4<bool>(true, true, var_0.b, false), select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, var_0.b, true, false), false))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 1147f, 552f) - vec3<f32>(1000f, global0[_wgslsmith_index_u32(var_0.e.x, 23u)], 432f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1623f), _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(1085f * 638f)), select(!var_2.wzz, var_2.ywy, all(vec4<bool>(var_2.x, var_2.x, false, var_2.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(26617u, 23u)], _wgslsmith_f_op_f32(1866f * var_0.a.a), 1f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, var_0.c.a, 334f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, -440f, global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), any(var_2.yxw))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(20676u, 23u)], var_0.c.a) * vec3<f32>(-1310f, 390f, 1223f)))))));
    return global0[_wgslsmith_index_u32(var_0.d.x, 23u)];
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = true;
    global0 = array<f32, 23>();
    let var_1 = Struct_3(arg_2, true, arg_2, ~vec2<u32>(55327u, abs(u_input.b.x) | u_input.d), ~((u_input.b.zx & vec2<u32>(u_input.b.x, 829u)) | u_input.b.zy) | vec2<u32>(u_input.b.x, ~4294967295u));
    let var_2 = -1158f;
    let var_3 = max(u_input.c.ww, min(~_wgslsmith_add_vec2_i32(vec2<i32>(-34301i, 10648i), u_input.c.xx), select(~u_input.c.ww, u_input.c.ww, arg_3)) << (vec2<u32>(11418u, 45965u) % vec2<u32>(32u)));
    return Struct_2(vec2<bool>(u_input.c.x < -firstTrailingBit(0i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-201f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(867f)))), var_1.c, !select(select(!vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, var_1.b), select(var_1.b, false, var_1.b)), select(select(vec2<bool>(var_1.b, arg_3), vec2<bool>(false, false), vec2<bool>(arg_3, var_1.b)), select(vec2<bool>(true, false), vec2<bool>(true, arg_3), vec2<bool>(arg_3, arg_3)), vec2<bool>(true, true)), any(vec2<bool>(arg_3, false))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]) + -805f) * global0[_wgslsmith_index_u32(~4294967295u & u_input.d, 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 23u)])), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2088f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(636f)), 366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.x, 23u)]) - -1260f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), true);
    let var_1 = Struct_3(Struct_1(var_0.b.a), !arg_0.x, Struct_1(_wgslsmith_f_op_f32(-var_0.b.a)), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x >> (14220u % 32u), 4294967295u), vec2<u32>(~2821u, u_input.b.x))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zx, vec2<u32>(0u, max(1u, 0u)), vec2<u32>(4945u, 4294967295u) << (arg_2.zz % vec2<u32>(32u))), u_input.b.yz));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1266f, var_0.b.a, _wgslsmith_f_op_f32(1776f + var_1.a.a), _wgslsmith_div_f32(1290f, var_1.a.a))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(34457u, 23u)]))), _wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a, 663f) * _wgslsmith_div_f32(314f, var_1.c.a)))));
    var var_3 = any(vec2<bool>(arg_0.x, ~u_input.c.x != -(u_input.a >> (49010u % 32u))));
    let var_4 = var_1.c.a;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(vec3<bool>(true, true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false))), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.b.x, u_input.d, 946u)), countOneBits(vec4<u32>(u_input.d, u_input.d, 23127u, 49623u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 10497u, u_input.d)), 30392u, u_input.b.x | 1u, 1u) | ~(~vec4<u32>(u_input.d, u_input.b.x, u_input.d, u_input.b.x))), false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - global0[_wgslsmith_index_u32(0u, 23u)])))), ~vec2<u32>(u_input.d, 51369u), ~(~u_input.b.yz));
    var var_1 = Struct_4(select(27411u, var_0.d.x, !(max(var_0.e.x, 49841u) >= abs(u_input.b.x))), (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(39052u, var_0.e.x, var_0.d.x), var_0.e.x) & var_0.e.x) ^ ~4294967295u);
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(min(0u << (~_wgslsmith_mod_u32(var_1.b, var_0.e.x) % 32u), select(var_0.e.x, ~(var_0.e.x >> (var_1.b % 32u)), all(select(vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), true))))), 23u)];
    let var_3 = false;
    var_1 = Struct_4(~(_wgslsmith_sub_u32(~var_0.e.x, u_input.b.x) & (4294967295u << (_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(var_1.a, u_input.b.x)) % 32u))), ~var_1.b);
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_4 = Struct_4(var_0.d.x, min(0u, ~var_0.d.x));
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.c.x, ~(-2147483647i), _wgslsmith_mod_i32(firstLeadingBit(min(u_input.a, u_input.c.x)), 1i)));
}

