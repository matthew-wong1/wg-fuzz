struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -572f);

var<private> global1: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1119f, 694f)), -371f) + vec2<f32>(-249f, _wgslsmith_f_op_f32(floor(global0.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, global0.x)));
    let var_0 = ~(~firstLeadingBit(~countOneBits(1u)));
    global1 = array<bool, 1>();
    let var_1 = 1u >> (var_0 % 32u);
    var var_2 = true;
    return Struct_2(vec4<u32>((~arg_0 >> (u_input.c % 32u)) << (~max(1u, u_input.c) % 32u), _wgslsmith_div_u32(~var_1, 2836u), 40417u, ~_wgslsmith_dot_vec2_u32(~u_input.d, u_input.d)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-689f, 371f, -151f, -339f) * vec4<f32>(global0.x, 188f, 2620f, -332f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, global0.x, 221f, 962f))), vec4<f32>(611f, _wgslsmith_f_op_f32(-906f - global0.x), 600f, global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1038f) - var_0.zy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(602f, 358f))), vec2<f32>(var_0.x, 1054f), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], global1[_wgslsmith_index_u32(u_input.d.x, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 1u)], false), global1[_wgslsmith_index_u32(68248u, 1u)]))))));
    global0 = _wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) * -618f))), -794f));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1773f * global0.x), global0.x) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(var_0.xx, var_0.yy, true))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1768f))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.e), -_wgslsmith_mod_vec2_i32(u_input.e, vec2<i32>(u_input.e.x, u_input.b))), -5531i) ^ _wgslsmith_clamp_vec2_i32(u_input.e, u_input.e, ~vec2<i32>(-u_input.a, 1i));
    return global1[_wgslsmith_index_u32(u_input.d.x, 1u)];
}

fn func_1() -> Struct_3 {
    global1 = array<bool, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2787f, -784f, -1148f))))))))));
    var var_1 = func_2(u_input.c);
    var_1 = func_2(4294967295u);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.yz)) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-global0.x)) + -191f)));
    return Struct_3((var_1.a.xxw | ~var_1.a.yyw) | vec3<u32>(reverseBits(reverseBits(var_1.a.x)), var_1.a.x, countOneBits(u_input.c >> (var_1.a.x % 32u))), !(!func_3()), vec2<bool>(func_3(), !(true && global1[_wgslsmith_index_u32(17277u, 1u)])), Struct_2(_wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(u_input.c, var_1.a.x, 4294967295u, ~0u))), Struct_2(_wgslsmith_mod_vec4_u32(select(_wgslsmith_clamp_vec4_u32(var_1.a, var_1.a, var_1.a), select(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.d.x, u_input.c, var_1.a.x, 12798u), true), vec4<bool>(global1[_wgslsmith_index_u32(38566u, 1u)], global1[_wgslsmith_index_u32(22866u, 1u)], true, false)), var_1.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<bool>((-(~2147483647i) < reverseBits(u_input.e.x)) | global1[_wgslsmith_index_u32(55352u, 1u)], global1[_wgslsmith_index_u32(u_input.d.x, 1u)]);
    global1 = array<bool, 1>();
    let var_1 = 220f;
    var var_2 = vec3<f32>(557f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))));
    var var_3 = Struct_1(vec3<bool>(arg_1.b, !all(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 1u)], false, false, false), vec4<bool>(arg_1.b, true, false, false), true)), !(_wgslsmith_f_op_f32(267f + var_2.x) > _wgslsmith_f_op_f32(-global0.x))));
    return Struct_1(vec3<bool>(!(!arg_1.c.x), true || !func_1().b, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.c, arg_1.e.a.x) | arg_0), 1u)]));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = array<bool, 1>();
    var var_0 = vec4<bool>(u_input.c > func_1().a.x, true, global1[_wgslsmith_index_u32(27515u >> (_wgslsmith_sub_u32(1u, 1u) % 32u), 1u)], arg_0.a.x);
    var var_1 = Struct_3(countOneBits(vec3<u32>(func_2(~30037u).a.x, u_input.c, 1u)), !(!all(vec3<bool>(false, false, true))), !vec2<bool>(_wgslsmith_f_op_f32(floor(global0.x)) < 530f, global1[_wgslsmith_index_u32(4294967295u, 1u)]), Struct_2(~(~(~vec4<u32>(u_input.d.x, 81820u, u_input.c, 9077u)))), func_2(72438u));
    var_0 = select(select(vec4<bool>(all(func_4(var_1.d.a.x, Struct_3(vec3<u32>(u_input.d.x, u_input.c, 0u), var_1.c.x, vec2<bool>(true, var_1.c.x), Struct_2(var_1.d.a), var_1.d), vec4<f32>(global0.x, global0.x, global0.x, -224f)).a.zx), all(!vec4<bool>(var_1.c.x, var_1.c.x, false, false)), any(select(arg_0.a.xx, arg_0.a.xx, false)), var_1.c.x), vec4<bool>(true, any(vec4<bool>(false, false, var_0.x, var_0.x)) | false, var_1.c.x, arg_0.a.x), !select(vec4<bool>(arg_0.a.x, var_0.x, global1[_wgslsmith_index_u32(68530u, 1u)], false), vec4<bool>(var_1.c.x, arg_0.a.x, false, arg_0.a.x), true)), vec4<bool>(false, all(select(vec3<bool>(true, true, true), arg_0.a, any(vec2<bool>(true, var_0.x)))), all(vec2<bool>(any(var_0.yy), var_0.x & var_0.x)), u_input.c <= 27546u), !select(!vec4<bool>(true, var_1.c.x, global1[_wgslsmith_index_u32(2351u, 1u)], var_0.x), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 1u)], true, false, false)), true));
    global1 = array<bool, 1>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(u_input.d.x, func_1(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1524f, -1046f) - vec4<f32>(1000f, 126f, 265f, 254f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 149f, 271f, -1273f))))));
    global1 = array<bool, 1>();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 969f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, 1422f)) - _wgslsmith_f_op_f32(floor(-223f))))));
    var var_1 = ~abs(abs(countOneBits(vec4<i32>(-1i, u_input.b, 2147483647i, 0i)) | -vec4<i32>(u_input.e.x, -2147483647i, 2147483647i, 14965i)));
    let var_2 = _wgslsmith_f_op_f32(-global0.x);
    global1 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2 + 363f), global0.x, -1769f, _wgslsmith_f_op_f32(max(var_2, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -935f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, var_2, -1685f, global0.x)))))), 4294967295u, var_1.wxw, vec2<i32>(1i, reverseBits(_wgslsmith_sub_i32(2147483647i, firstLeadingBit(-58299i)))));
}

