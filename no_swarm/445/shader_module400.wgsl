struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<vec3<i32>, 17>;

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_1 {
    global1 = array<vec3<i32>, 17>();
    return arg_2.a.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.a.a.x ^ ~(~44698u), 1u >> (_wgslsmith_add_u32(~7458u, ~arg_2.a.a.x) % 32u)), 4294967295u);
    var var_1 = arg_0.a;
    global1 = array<vec3<i32>, 17>();
    let var_2 = ~abs(50549u);
    var var_3 = -17957i;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~firstTrailingBit(var_0), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(490f))), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1624f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.e) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.e) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -220f, 919f, -146f), arg_2.e, arg_2.d))))))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(49184u, 16u)], global0[_wgslsmith_index_u32(13007u, 16u)], 310f, -1877f))) - vec4<f32>(global0[_wgslsmith_index_u32(484u, 16u)], -884f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(func_3(func_2(4547i, -794f, Struct_4(Struct_2(vec4<u32>(u_input.b, 14951u, 21903u, u_input.b), Struct_1(false, vec3<bool>(false, true, true)), true), u_input.d, u_input.c), vec2<bool>(false, arg_2.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_1.x), arg_1.yz)), Struct_3(Struct_2(vec4<u32>(u_input.c.x, 14211u, u_input.b, 15835u), Struct_1(arg_2.x, vec3<bool>(arg_2.x, true, arg_2.x)), arg_2.x), arg_0, 815f, vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<f32>(-235f, 904f, global0[_wgslsmith_index_u32(u_input.b, 16u)], arg_1.x)))))));
    var var_1 = func_2(0i, _wgslsmith_f_op_f32(2654f * 1565f), Struct_4(Struct_2(abs(vec4<u32>(u_input.b, 2810u, u_input.c.x, 33249u)), Struct_1(false, vec3<bool>(arg_2.x, arg_2.x, false)), any(select(arg_2.www, arg_2.xyz, true))), 2147483647i, u_input.c | vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 4294967295u)), 111404u >> (u_input.b % 32u))), func_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, u_input.d) ^ -vec2<i32>(arg_0, u_input.a.x), -vec2<i32>(u_input.a.x, -7093i)), 512f, Struct_4(Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 44233u, 1u, 10100u), vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b)), func_2(13919i, -369f, Struct_4(Struct_2(vec4<u32>(u_input.b, u_input.c.x, 20u, u_input.c.x), Struct_1(arg_2.x, vec3<bool>(false, true, arg_2.x)), arg_2.x), arg_0, u_input.c), vec2<bool>(arg_2.x, arg_2.x)), func_2(-2147483647i, arg_1.x, Struct_4(Struct_2(vec4<u32>(31779u, 90422u, u_input.b, u_input.b), Struct_1(false, vec3<bool>(true, arg_2.x, arg_2.x)), arg_2.x), 1i, vec2<u32>(u_input.b, u_input.c.x)), arg_2.wy).b.x), -15415i, ~_wgslsmith_div_vec2_u32(u_input.c, u_input.c)), vec2<bool>(all(vec3<bool>(false, true, false)), arg_2.x)).b.yy);
    var var_2 = i32(-1i) * -u_input.a.x;
    let var_3 = arg_2.ww;
    let var_4 = var_0.xy;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    global2 = u_input.d;
    var var_0 = select(vec3<bool>(all(vec4<bool>(select(true, false, false), false, func_1(-1i, vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], -573f, -896f), vec4<bool>(false, false, false, true)), true)), select(true, all(vec2<bool>(true, false)), true), !(!any(vec2<bool>(false, true)))), vec3<bool>(true, false, !any(vec4<bool>(true, true, true, true))), true);
    var var_1 = -(~(~((vec4<i32>(6417i, u_input.d, u_input.a.x, 37370i) << (vec4<u32>(6924u, u_input.b, u_input.b, 1u) % vec4<u32>(32u))) ^ ~vec4<i32>(2147483647i, u_input.a.x, -37126i, -2147483647i))));
    var var_2 = select(vec4<bool>(true && !var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, any(vec2<bool>(u_input.d <= -1i, any(var_0.zz))), !any(vec3<bool>(false, var_0.x, false)), false & all(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, true)))), vec4<bool>(!(!(!var_0.x)), true, var_0.x, true & func_1(~var_1.x, vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], 191f, global0[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 16u)], 477f)), 1000f), ~_wgslsmith_add_u32(0u, ~u_input.b << (u_input.b % 32u)), vec3<u32>(u_input.c.x, u_input.b, 4294967295u), -vec4<i32>(~0i | var_1.x, 47542i, _wgslsmith_mod_i32(2147483647i, 2147483647i), 10094i << (1u % 32u)), max(~(~u_input.b << (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) % 32u)), 0u));
}

