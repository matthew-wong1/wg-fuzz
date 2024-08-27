struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(546f, -107f, -1057f, 1168f, -611f, 618f, -441f, 480f, -607f, 546f, 1429f, 2431f, 234f, 762f, -1392f, 331f, -149f, 245f, -462f, 1000f, 605f, 205f);

var<private> global1: array<i32, 24> = array<i32, 24>(34720i, -30688i, -15530i, 15159i, 10449i, 49766i, 8770i, -10911i, 23136i, 1i, 3537i, -1i, 0i, 1i, 0i, -54241i, 2147483647i, 2147483647i, 0i, -24952i, -6400i, 1i, 2147483647i, 7757i);

var<private> global2: array<vec4<i32>, 29>;

var<private> global3: bool = true;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = Struct_5(arg_3.a.c.c.wz, vec3<u32>(~u_input.c.x, 0u, arg_3.b.x), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.a.c.c.x, -2147483647i), vec2<i32>(arg_1.a & global1[_wgslsmith_index_u32(1u, 24u)], -3060i), -arg_3.a.c.c.wx)));
    global1 = array<i32, 24>();
    let var_1 = arg_3.c.b;
    return vec2<f32>(arg_3.c.a.x, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_3.b.x, 22u)])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_4) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 22u)];
    global3 = arg_3.c.b.x;
    var var_1 = Struct_5(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(~1i, _wgslsmith_clamp_i32(4404i, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(43005u, 24u)])), ~global1[_wgslsmith_index_u32(1u & u_input.c.x, 24u)]), -(~_wgslsmith_add_i32(arg_2.x, arg_2.x))), vec3<u32>(arg_3.b.x, ~arg_3.b.x & abs(~u_input.c.x), (reverseBits(arg_3.b.x) & max(arg_3.b.x, arg_3.b.x)) ^ _wgslsmith_div_u32(arg_3.b.x, 4294967295u)), _wgslsmith_add_vec2_i32(arg_3.a.b.c.xw & arg_3.c.c.wy, firstLeadingBit(reverseBits(arg_0.a.c.zz))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(f32(-1f) * -482f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1101f, _wgslsmith_div_f32(775f, -1309f))))));
    let var_3 = arg_3.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.a.x)) + arg_3.a.b.a.x));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1(967f, Struct_3(~(-19164i)), reverseBits(~arg_0.c.xyz), Struct_4(Struct_2(Struct_1(vec3<f32>(-1836f, 2631f, 850f), vec2<bool>(false, false), arg_0.c), arg_0, arg_0, 1928f), u_input.b.xy >> (u_input.a.yz % vec2<u32>(32u)), arg_0, arg_0.b))).x, -1380f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_0.a, vec2<bool>(false, arg_0.b.x), arg_0.c), Struct_1(arg_0.a, arg_0.b, arg_0.c), Struct_1(arg_0.a, vec2<bool>(false, true), global2[_wgslsmith_index_u32(15245u, 29u)]), global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x), arg_0.c.xxw, Struct_4(Struct_2(arg_0, Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(124342u, 22u)], arg_0.a.x, global0[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(arg_0.b.x, false), arg_0.c), Struct_1(arg_0.a, arg_0.b, global2[_wgslsmith_index_u32(26574u, 29u)]), 1000f), u_input.c.zy, arg_0, vec2<bool>(false, false)))) + _wgslsmith_f_op_f32(arg_0.a.x * global0[_wgslsmith_index_u32(4294967295u, 22u)])), arg_0.a.x, 4294967295u > u_input.b.x)), _wgslsmith_f_op_vec2_f32(func_1(1f, Struct_3(_wgslsmith_add_i32(-36218i, global1[_wgslsmith_index_u32(0u, 24u)])), arg_0.c.ywx, Struct_4(Struct_2(arg_0, arg_0, arg_0, arg_0.a.x), _wgslsmith_mod_vec2_u32(u_input.c.xz, u_input.c.wz), arg_0, vec2<bool>(false, true)))).x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, arg_0.a.x, arg_0.a.x, 594f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(15796u, 22u)], -279f, 1000f, 734f))))));
    let var_1 = arg_0.c.zxz;
    let var_2 = vec2<i32>(arg_0.c.x, 1i);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1551f, 507f, arg_0.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec4<f32>(-1087f, global0[_wgslsmith_index_u32(0u, 22u)], var_0.x, -477f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(135f, -282f, var_0.x, var_0.x) * vec4<f32>(-298f, arg_0.a.x, global0[_wgslsmith_index_u32(7887u, 22u)], 517f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<f32>(var_0.x, arg_0.a.x, var_0.x), vec2<bool>(arg_0.b.x, arg_0.b.x), vec4<i32>(34044i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 1i, arg_0.c.x)), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], arg_0.a.x, arg_0.a.x), arg_0.b, vec4<i32>(var_2.x, arg_0.c.x, var_2.x, 99791i)), arg_0, global0[_wgslsmith_index_u32(30981u, 22u)]), vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), arg_0.c.zzw, Struct_4(Struct_2(arg_0, arg_0, Struct_1(vec3<f32>(-494f, -605f, 939f), arg_0.b, arg_0.c), 978f), u_input.b.xz, Struct_1(arg_0.a, arg_0.b, global2[_wgslsmith_index_u32(28202u, 29u)]), arg_0.b))), global0[_wgslsmith_index_u32(u_input.c.x, 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u)), 22u)]))), select(select(!vec4<bool>(false, false, false, arg_0.b.x), vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), select(vec4<bool>(false, true, false, arg_0.b.x), vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, true, false, arg_0.b.x))), vec4<bool>(any(arg_0.b), all(vec3<bool>(arg_0.b.x, arg_0.b.x, true)), any(vec4<bool>(false, false, arg_0.b.x, arg_0.b.x)), arg_0.b.x), vec4<bool>(arg_0.b.x, false && arg_0.b.x, any(arg_0.b), any(vec3<bool>(arg_0.b.x, false, arg_0.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 22u)]))), global0[_wgslsmith_index_u32(1u, 22u)], 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f), _wgslsmith_f_op_f32(f32(-1f) * -265f))), false));
    global0 = array<f32, 22>();
    return _wgslsmith_f_op_vec2_f32(var_0.xy - arg_0.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~20587u, 22u)]);
    global1 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 1000f), global0[_wgslsmith_index_u32(u_input.c.x, 22u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(1u, 22u)], Struct_3(-6768i), vec3<i32>(global1[_wgslsmith_index_u32(14190u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global1[_wgslsmith_index_u32(86396u, 24u)]), Struct_4(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(1u, 22u)], -336f, 1163f), vec2<bool>(true, true), vec4<i32>(-6416i, -61877i, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)])), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 1000f), vec2<bool>(true, false), vec4<i32>(-5494i, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)])), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 856f, global0[_wgslsmith_index_u32(38914u, 22u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.c.x, 29u)]), 949f), u_input.c.zy, Struct_1(vec3<f32>(356f, global0[_wgslsmith_index_u32(u_input.c.x, 22u)], -1476f), vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<bool>(false, false)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(240f, global0[_wgslsmith_index_u32(11697u, 22u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(637f, global0[_wgslsmith_index_u32(4294967295u, 22u)])), any(vec3<bool>(false, false, false))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], -750f, 1073f), vec2<bool>(false, false), vec4<i32>(5851i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)])))), _wgslsmith_div_vec2_f32(vec2<f32>(976f, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 1117f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1068f, -556f), vec2<f32>(global0[_wgslsmith_index_u32(41669u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]))))))));
    let var_2 = u_input.b.xy;
    var var_3 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(166f, var_1.x, 1713f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1726f, 1024f, global0[_wgslsmith_index_u32(0u, 22u)]))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec4<i32>(select(global1[_wgslsmith_index_u32(var_2.x, 24u)], -1255i, true), 32426i, 1i, _wgslsmith_mod_i32(10258i, 1i))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 1177f, global0[_wgslsmith_index_u32(var_2.x, 22u)]), vec3<f32>(global0[_wgslsmith_index_u32(67810u, 22u)], 736f, global0[_wgslsmith_index_u32(4294967295u, 22u)]), true)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-859f, -924f, 602f), vec3<f32>(-3417f, 1760f, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<bool>(true, false, false)))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec4<i32>(global1[_wgslsmith_index_u32(7867u, 24u)] ^ -2147483647i, 2147483647i, _wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(4294967295u, 24u)]), 22226i)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(116f, 1358f)), -756f, _wgslsmith_f_op_f32(-651f - var_1.x)), vec2<bool>(true, false), -(~vec4<i32>(-57391i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(11325u, 24u)], global1[_wgslsmith_index_u32(var_2.x, 24u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -964f))) * var_1.x)), u_input.b.yy, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1837f, 445f, var_1.x), vec3<f32>(-1258f, 168f, global0[_wgslsmith_index_u32(4294967295u, 22u)])), vec3<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -580f), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 22u)], global0[_wgslsmith_index_u32(2775u, 22u)], var_1.x), vec3<f32>(720f, var_1.x, -477f), false)))), vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), !all(vec3<bool>(false, false, false))), reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 0u >> (var_2.x % 32u)), 29u)])), vec2<bool>(all(vec4<bool>(true, true, true, true)), false));
    var var_4 = Struct_5(var_3.a.a.c.wx, u_input.b.zzx, ~var_3.c.c.zz);
    let var_5 = select(select(vec3<bool>(false, true, true), select(!select(vec3<bool>(var_3.a.a.b.x, true, var_3.a.a.b.x), vec3<bool>(var_3.c.b.x, false, true), true), !select(vec3<bool>(var_3.a.a.b.x, var_3.c.b.x, var_3.c.b.x), vec3<bool>(var_3.a.c.b.x, true, false), false), vec3<bool>(u_input.a.x < var_3.b.x, any(vec2<bool>(var_3.c.b.x, false)), true)), true), !select(vec3<bool>(var_3.a.a.b.x, true, !var_3.c.b.x), vec3<bool>(true, !var_3.a.c.b.x, any(vec2<bool>(true, true))), true), true);
    global1 = array<i32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(countOneBits(var_3.c.c.x), 31775i, 1i, _wgslsmith_dot_vec2_i32(var_3.a.b.c.yw, var_4.a)) | vec4<i32>(~var_4.c.x, -2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_4.b.x, 1u), 24u)], var_4.c.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_4.b.x, 22u)], var_1.x, var_1.x, var_1.x)), vec4<f32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(var_3.b.x, 22u)], 367f))))))), ~var_3.b.x);
}

