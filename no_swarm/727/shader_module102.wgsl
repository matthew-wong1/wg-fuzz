struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(352f, 1531f, 131f, -1435f), vec4<f32>(-895f, 1152f, 1360f, 1468f), vec4<f32>(185f, -1316f, 1003f, -1589f), vec4<f32>(1467f, -464f, -552f, -401f), vec4<f32>(-2571f, 716f, 1971f, 1000f), vec4<f32>(349f, 1044f, -820f, -133f), vec4<f32>(-1268f, 379f, 2622f, 1000f), vec4<f32>(443f, -1278f, 471f, -201f), vec4<f32>(701f, 294f, -689f, -540f), vec4<f32>(693f, 154f, -1581f, -1000f), vec4<f32>(-289f, 872f, -384f, 138f), vec4<f32>(-392f, -1303f, 264f, -366f), vec4<f32>(-143f, -689f, -460f, -224f), vec4<f32>(786f, 508f, -817f, -314f), vec4<f32>(520f, 874f, 158f, -203f), vec4<f32>(-1323f, -119f, -2166f, 560f), vec4<f32>(861f, -1963f, -103f, -118f), vec4<f32>(-1816f, 463f, 656f, 1444f), vec4<f32>(-1000f, -565f, 1000f, -805f), vec4<f32>(-887f, -1000f, -1083f, 1450f), vec4<f32>(1375f, 522f, -477f, -1194f), vec4<f32>(-2595f, 1000f, -1253f, -810f), vec4<f32>(1398f, 1000f, -2296f, -209f), vec4<f32>(-1384f, 1216f, -766f, -655f), vec4<f32>(-654f, 667f, -1546f, -1000f));

var<private> global1: Struct_2;

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> vec3<u32> {
    var var_0 = ~(~global1.a.a);
    var var_1 = arg_0.b;
    var_1 = _wgslsmith_sub_u32(29408u, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(abs(global1.b.b))));
    let var_2 = -vec4<i32>(arg_2, abs(u_input.b), max(~(-global1.a.a), 0i), -((global1.a.a | -6086i) & -arg_2));
    var_1 = select(_wgslsmith_sub_u32(global1.a.b, arg_1.x), arg_1.x, global1.c);
    return reverseBits(vec3<u32>(1u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1, arg_1), 10980u), arg_1.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = Struct_1(-global1.b.a, global1.b.b);
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(~(-1i), 0i & var_0.a, -82767i);
    return -1000f;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = global1.b;
    var var_1 = Struct_2(arg_2.b, Struct_1(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, global1.a.a), vec2<i32>(-2147483647i, 0i)), u_input.a), _wgslsmith_dot_vec3_u32(func_1(arg_2.a, vec2<u32>(16299u, 1u), -12894i), ~vec3<u32>(global1.a.b, 45237u, arg_2.b.b)) << (~1u % 32u)), true);
    let var_2 = 487f;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, abs(var_0.a), _wgslsmith_mod_i32(-53516i, 22898i)), ~(-abs(vec3<i32>(var_1.a.a, var_1.a.a, global1.a.a)))), ~arg_2.b.b);
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(abs(187f)), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -361f, 763f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 430f, var_2) + vec3<f32>(var_2, 810f, var_2))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-188f * var_2)))));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(786f + _wgslsmith_f_op_f32(step(169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(406f, 686f)) * -1196f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-272f, 822f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(648f, 553f)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_u32(select(vec3<u32>(global1.a.b, global1.a.b, global1.a.b), vec3<u32>(global1.a.b, 1u, global1.a.b), vec3<bool>(true, global1.c, global1.c)), func_1(Struct_1(global1.b.a, 10210u), vec2<u32>(21038u, global1.a.b), -23900i)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(max(40549u, 2311u), 25u)] - vec4<f32>(-552f, 1185f, 339f, -578f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(696f)) - _wgslsmith_f_op_f32(select(496f, -1766f, global1.c))) + -1073f)));
    let var_1 = Struct_2(global1.a, Struct_1(~global1.a.a, min(_wgslsmith_mult_u32(global1.a.b, ~global1.b.b), func_1(global1.a, ~vec2<u32>(42641u, global1.b.b), u_input.c).x)), select(select(!all(vec3<bool>(false, global1.c, false)), global1.c, (global1.b.b << (48564u % 32u)) < 0u), global1.c, global1.c));
    global1 = var_1;
    var var_2 = Struct_1(-_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_clamp_i32(83780i, global1.b.a, global1.a.a)) >> (func_3(!all(vec4<bool>(var_1.c, true, false, global1.c)), global1.b, var_1) % 32u), ~var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(func_2(vec3<u32>(~19759u, 1u, var_1.a.b), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~global1.a.b, 25u)], _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(0u, 25u)] - vec4<f32>(2514f, 364f, -834f, 475f)))))), func_1(Struct_1(_wgslsmith_mult_i32(var_1.b.a, 21588i) & 0i, var_1.a.b), vec2<u32>(57056u, _wgslsmith_dot_vec3_u32(vec3<u32>(94376u, var_2.b, global1.b.b), ~vec3<u32>(84566u, 47426u, 4294967295u))), var_1.b.a).x, _wgslsmith_f_op_f32(-1f), vec4<i32>(abs(global1.b.a), min(0i, min(var_2.a, 2147483647i)) | u_input.b, min(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.a, -10236i, global1.a.a), vec3<i32>(global1.a.a, u_input.a.x, global1.b.a))), max(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -43793i, 0i), vec3<i32>(-36182i, 90116i, var_1.a.a), vec3<i32>(11175i, global1.a.a, 52587i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_2.a, global1.a.a), vec3<i32>(-21352i, 2147483647i, var_1.a.a))), _wgslsmith_clamp_i32(var_2.a, var_1.b.a, global1.b.a) << (abs(4294967295u) % 32u))));
}

