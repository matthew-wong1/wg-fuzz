struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<bool> {
    var var_0 = 259f;
    var var_1 = arg_1 && true;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1665f, -500f, -1409f, -676f), vec4<f32>(-530f, -1569f, 822f, 1130f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -392f, -1455f, -1970f)) - vec4<f32>(1313f, 1000f, -830f, -748f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1107f, -380f, -655f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(821f, -448f, 1679f, -1333f)))))));
    let var_3 = Struct_4(u_input.c.yw);
    var var_4 = _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i) * -(~u_input.c));
    return select(vec4<bool>(all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, arg_1, false), vec4<bool>(false, arg_1, false, arg_1))), true, true, !all(vec3<bool>(true, true, true))), !(!(!vec4<bool>(arg_1, false, arg_1, true))), !select(vec4<bool>(arg_1 | false, arg_1, u_input.b <= u_input.b, false), vec4<bool>(var_3.a.x < 24984i, any(vec4<bool>(true, false, arg_1, false)), arg_1, var_2.x < 967f), any(select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, true, true), arg_1))));
}

fn func_2() -> u32 {
    var var_0 = false;
    let var_1 = 1u;
    var var_2 = Struct_4(u_input.c.xy);
    let var_3 = _wgslsmith_mult_u32(abs(u_input.b), _wgslsmith_div_u32(_wgslsmith_sub_u32(46573u >> (var_1 % 32u), ~var_1), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(16799u, 1u, u_input.b, 0u), vec4<u32>(118655u, u_input.b, var_1, var_1)))) ^ countOneBits(reverseBits(var_1)));
    let var_4 = Struct_2(Struct_1(any(vec3<bool>(true, true, false)), select(func_3(u_input.c.x, any(vec2<bool>(true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(601f, 1493f), vec2<f32>(-1962f, -1000f))))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~countOneBits(~4294967295u), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, var_3, 1u)), vec3<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_1, 29700u), vec4<u32>(var_3, 4294967295u, 0u, 9539u)), var_1)), _wgslsmith_mult_u32(var_3, ~countOneBits(u_input.a.x))), ~(_wgslsmith_sub_vec3_u32(~vec3<u32>(51384u, var_3, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(56749u, u_input.a.x, 1u), vec3<u32>(34116u, u_input.b, var_3), vec3<u32>(var_3, 53892u, u_input.b))) ^ ~(~vec3<u32>(1u, 1u, 4294967295u))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = !(~u_input.a.x > ~((22121u >> (1u % 32u)) & func_2()));
    var var_1 = Struct_3(~(~0u));
    var var_2 = Struct_1(false, select(!vec4<bool>(true, var_0, false, var_0), !vec4<bool>(!var_0, true, var_0, var_0), vec4<bool>(var_0, true, false && any(vec2<bool>(var_0, false)), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(789f, -957f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1811f, -193f), vec2<f32>(-631f, 526f))) + vec2<f32>(1f, 1f))))));
    let var_3 = vec4<bool>(!(any(vec2<bool>(false, var_0)) | any(func_3(-2147483647i, var_0))), false, !all(var_2.b.wwy), !var_0);
    var_2 = Struct_1(var_0, vec4<bool>(any(vec3<bool>(false, var_3.x, var_3.x)) || (all(vec2<bool>(false, true)) || (true | var_3.x)), true, false, all(select(vec4<bool>(var_3.x, var_2.a, var_2.a, var_0), !vec4<bool>(false, var_2.b.x, var_0, false), !vec4<bool>(var_3.x, var_3.x, var_2.a, var_3.x)))), var_2.c);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!(!vec2<bool>(func_1(86636u), false)));
    var_0 = true;
    var_0 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-129f)), _wgslsmith_f_op_f32(-411f * _wgslsmith_f_op_f32(sign(-665f))))) >= 1000f);
    let var_1 = vec2<u32>(4294967295u, abs(reverseBits(_wgslsmith_mult_u32(firstLeadingBit(u_input.b), u_input.b))));
    var var_2 = Struct_4(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.c.x, u_input.c.x), ~vec2<i32>(29615i, u_input.c.x)));
    var_2 = Struct_4(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.yz | vec2<i32>(var_2.a.x, 1670i), vec2<i32>(var_2.a.x, var_2.a.x)), var_2.a, -var_2.a));
    var var_3 = ~vec3<u32>(29132u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 56226u, 4294967295u, u_input.b) << (vec4<u32>(22186u, var_1.x, 59495u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, var_1.x, var_1.x, var_1.x))), 21987u >> (~(~1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(168f, -1000f))))));
}

