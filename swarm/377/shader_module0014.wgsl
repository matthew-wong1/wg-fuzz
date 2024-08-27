struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-831f, vec2<u32>(38895u, 23384u), 1278f, vec3<i32>(-59316i, 1i, 1i)), Struct_1(-906f, vec2<u32>(13936u, 39648u), 461f, vec3<i32>(0i, -18671i, 46429i)), Struct_1(146f, vec2<u32>(67527u, 63090u), 231f, vec3<i32>(0i, -8746i, 2147483647i)), Struct_1(1000f, vec2<u32>(5952u, 20917u), 396f, vec3<i32>(i32(-2147483648), 55357i, 0i)), Struct_1(-562f, vec2<u32>(1u, 4294967295u), 888f, vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(947f, vec2<u32>(1u, 81650u), 422f, vec3<i32>(-19787i, -41166i, 1i)), Struct_1(952f, vec2<u32>(36459u, 1u), -1863f, vec3<i32>(2147483647i, -1i, 0i)), Struct_1(639f, vec2<u32>(52508u, 0u), -960f, vec3<i32>(-850i, i32(-2147483648), -7637i)), Struct_1(-256f, vec2<u32>(69474u, 3695u), 312f, vec3<i32>(i32(-2147483648), 40107i, 28310i)), Struct_1(-108f, vec2<u32>(22569u, 57299u), -783f, vec3<i32>(-26872i, 1i, 0i)), Struct_1(-424f, vec2<u32>(4294967295u, 77347u), -1463f, vec3<i32>(-1i, 0i, -25443i)), Struct_1(-1357f, vec2<u32>(12775u, 1u), 451f, vec3<i32>(-32954i, -3011i, i32(-2147483648))), Struct_1(296f, vec2<u32>(1u, 4294967295u), -125f, vec3<i32>(-1i, i32(-2147483648), 0i)), Struct_1(112f, vec2<u32>(0u, 1u), 1889f, vec3<i32>(52193i, -18803i, 12281i)), Struct_1(2012f, vec2<u32>(105257u, 0u), -239f, vec3<i32>(30147i, 28i, -19918i)), Struct_1(-1012f, vec2<u32>(0u, 1083u), 1542f, vec3<i32>(-18141i, 2147483647i, 1i)), Struct_1(1504f, vec2<u32>(3777u, 0u), 1178f, vec3<i32>(-1i, 0i, 25093i)), Struct_1(-712f, vec2<u32>(1u, 33871u), 436f, vec3<i32>(1i, i32(-2147483648), 1i)), Struct_1(-223f, vec2<u32>(0u, 61962u), 235f, vec3<i32>(15032i, 1032i, 2147483647i)), Struct_1(795f, vec2<u32>(4294967295u, 0u), -123f, vec3<i32>(i32(-2147483648), -24540i, 2147483647i)));

var<private> global1: array<Struct_1, 10>;

var<private> global2: f32 = -1274f;

var<private> global3: Struct_1;

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)))), u_input.c.zy, global4.x, vec3<i32>(max(31291i, -1i), ~abs(-42595i), u_input.d) ^ countOneBits(-u_input.a.wyy >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 11175u), u_input.c.xyx) % vec3<u32>(32u))));
    var var_1 = global1[_wgslsmith_index_u32(91134u, 10u)];
    global4 = vec2<f32>(-375f, 464f);
    return u_input.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = global1[_wgslsmith_index_u32(u_input.c.x, 10u)];
    let var_0 = Struct_1(-1919f, vec2<u32>(global3.b.x, ~(~arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~global3.d);
    global3 = arg_1;
    let var_1 = arg_1;
    let var_2 = Struct_1(1847f, vec2<u32>(~(~countOneBits(arg_2.b.x)), ~(~(~u_input.c.x))), var_1.a, u_input.a.zyw >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(arg_0, u_input.c.yyy), u_input.c.x), ~(~u_input.c.wyy)) % vec3<u32>(32u)));
    return ~4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<Struct_1, 20>();
    let var_0 = arg_3;
    return vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(35884i, u_input.a.x, global3.d.x, 2147483647i)), vec4<i32>(-52225i, 1i, -14583i, global3.d.x)), func_1()) & ~func_1();
    global2 = global4.x;
    var var_1 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !vec2<bool>(true, all(vec4<bool>(false, false, true, false)))), global3.b.x > reverseBits(87906u));
    global0 = array<Struct_1, 20>();
    var var_2 = global1[_wgslsmith_index_u32(func_2(u_input.c.zzz, Struct_1(515f, _wgslsmith_mult_vec2_u32(global3.b, _wgslsmith_mult_vec2_u32(vec2<u32>(19044u, u_input.b.x), firstLeadingBit(u_input.c.xz))), global3.a, firstTrailingBit(var_0.yyw)), global1[_wgslsmith_index_u32(~global3.b.x, 10u)]), 10u)];
    let var_3 = !any(vec3<bool>(true, var_1.x, true));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1201f, 1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-126f, -1670f))))));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(step(-1092f, -705f))), -1751f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1168f, global4.x))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global4.x, var_2.b, var_4.x, vec3<i32>(var_2.d.x, -50281i, global3.d.x)), _wgslsmith_f_op_f32(682f * -523f), var_3, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global3.b.x, global3.b.x, 4294967295u, var_2.b.x)), 10u)]))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(111f, var_4.x) + vec2<f32>(global3.a, -441f)), vec2<f32>(974f, 582f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-774f, 146f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1069f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global3.a) * vec2<f32>(1306f, var_4.x))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1103f));
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

