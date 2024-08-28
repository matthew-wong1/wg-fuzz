struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(1056f, 450f);

var<private> global1: vec2<i32> = vec2<i32>(-15695i, 1i);

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-1000f, 1289f, 859f, -1000f), vec4<f32>(-1716f, -235f, 1794f, -627f), vec4<f32>(660f, -2094f, -1000f, -773f), vec4<f32>(-150f, -742f, 185f, -818f), vec4<f32>(611f, -1168f, -1000f, -1884f), vec4<f32>(-338f, -1678f, 1000f, -1202f), vec4<f32>(217f, -611f, 1382f, 963f), vec4<f32>(-1000f, -666f, 881f, 1000f), vec4<f32>(-355f, -514f, -230f, 1198f), vec4<f32>(105f, 491f, -1151f, -2207f), vec4<f32>(-1006f, -873f, 1000f, -204f), vec4<f32>(118f, 647f, 1103f, -803f), vec4<f32>(-244f, 1092f, 1300f, 396f), vec4<f32>(-1000f, -339f, -638f, 563f), vec4<f32>(-577f, -1268f, -541f, -411f), vec4<f32>(-521f, -1000f, -734f, -525f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = u_input.a.zz;
    let var_0 = ~vec4<u32>(0u, _wgslsmith_mult_u32(~1u, ~(~0u)), countOneBits(4294967295u), ~1u);
    var var_1 = false;
    let var_2 = _wgslsmith_mult_vec3_u32(select(var_0.xxy, _wgslsmith_clamp_vec3_u32(var_0.yzz, var_0.yyz, vec3<u32>(0u, 92325u, 1u)) << (~(~vec3<u32>(11289u, 4294967295u, var_0.x)) % vec3<u32>(32u)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), ~var_0.ywy);
    let var_3 = reverseBits(~11997u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 2u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(77033u, 2u)]) + _wgslsmith_f_op_f32(-722f - -654f))))));
}

fn func_2() -> f32 {
    global0 = array<f32, 2>();
    var var_0 = -(~reverseBits(vec3<i32>(1i, -65799i, ~(-6160i))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 2u)];
    var_0 = u_input.a.xxy;
    var var_2 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = global1.x;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.c.a, arg_2.a), _wgslsmith_add_u32(10116u, 51890u));
    var_0 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-arg_2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 2u)])) + global0[_wgslsmith_index_u32(min(~3456u, var_1), 2u)]))) - 1000f);
    let var_3 = arg_2;
    return arg_1.a << (~vec4<u32>(~var_1, arg_1.a.x, arg_1.c.a, firstTrailingBit(4294967295u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global1 = vec2<i32>(min(_wgslsmith_mod_i32(arg_1.b, -2147483647i), firstLeadingBit(-_wgslsmith_div_i32(1913i, u_input.d))), 11635i);
    let var_0 = ~arg_2.c.a;
    let var_1 = vec3<u32>(select(0u, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, arg_1.a.x), firstTrailingBit(firstTrailingBit(75406u))), !arg_1.e.b.x), _wgslsmith_sub_u32(firstTrailingBit(abs(~65217u)), 1u), countOneBits(~func_1(~arg_2.b, Struct_2(vec4<u32>(var_0, arg_1.c.a, var_0, arg_2.a.x), -1i, arg_1.c, vec3<f32>(-764f, arg_0.x, arg_2.d.x), arg_1.c), arg_1.c).x));
    var var_2 = arg_1.c.b.x;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(trunc(arg_1.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1035f + -168f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.d - arg_1.c.d) + arg_1.e.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f - arg_2.c.d) + arg_2.e.d))), 681f);
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> i32 {
    let var_0 = vec3<i32>(u_input.c.x, u_input.a.x, -arg_0.b) ^ -vec3<i32>(global1.x, ~func_4(arg_0.d.yz, Struct_2(vec4<u32>(1u, arg_0.c.a, 90166u, 44184u), 11049i, arg_0.c, arg_0.d, arg_0.c), Struct_2(vec4<u32>(arg_0.e.c.x, 79360u, arg_0.e.a, 0u), u_input.b, Struct_1(1u, vec3<bool>(false, arg_0.e.b.x, true), arg_0.c.c, 109f), vec3<f32>(480f, 438f, -296f), arg_0.c)).b, -2147483647i);
    let var_1 = ~(~_wgslsmith_add_vec4_u32(arg_0.a, ~vec4<u32>(4294967295u, 13349u, 0u, arg_0.e.a)));
    let var_2 = false;
    let var_3 = countOneBits(vec4<i32>(2147483647i, ~u_input.b, arg_0.b, _wgslsmith_dot_vec2_i32(u_input.a.wy, _wgslsmith_sub_vec2_i32(select(var_0.zy, vec2<i32>(u_input.a.x, var_0.x), false), _wgslsmith_clamp_vec2_i32(vec2<i32>(22618i, u_input.a.x), var_0.yy, vec2<i32>(1i, arg_0.b))))));
    var var_4 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, arg_0.e.c.x, arg_0.e.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.x, 0u, 4294967295u), vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.e.a), arg_0.a.xyw))), select(firstLeadingBit(arg_0.c.c), vec3<u32>(1u, var_1.x, arg_0.a.x), func_4(_wgslsmith_f_op_vec2_f32(trunc(arg_0.d.yx)), Struct_2(~vec4<u32>(0u, arg_0.c.a, 22250u, arg_0.c.c.x), 1i, Struct_1(var_1.x, vec3<bool>(true, false, var_2), vec3<u32>(var_1.x, arg_0.e.c.x, 45113u), 1000f), vec3<f32>(172f, 867f, arg_0.c.d), func_4(vec2<f32>(arg_0.d.x, arg_0.e.d), arg_0, arg_0).e), Struct_2(~vec4<u32>(40134u, arg_0.e.a, 1u, 0u), arg_0.b, arg_0.c, arg_0.d, arg_0.c)).e.b));
    return (i32(-1i) * -u_input.c.x) << (arg_0.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(20993i, _wgslsmith_div_i32(firstTrailingBit(-2168i), _wgslsmith_add_i32(-10378i, 21767i)) >> (4294967295u % 32u)) | -u_input.c.xy;
    let var_0 = _wgslsmith_f_op_f32(floor(-377f));
    let var_1 = u_input.b;
    let var_2 = true;
    let var_3 = abs(func_5(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1020f, 608f), vec2<f32>(-325f, 1494f))), Struct_2(min(vec4<u32>(1u, 4294967295u, 77213u, 15286u), vec4<u32>(93204u, 4294967295u, 51572u, 32966u)), ~global1.x, Struct_1(37u, vec3<bool>(var_2, false, var_2), vec3<u32>(0u, 1u, 0u), var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -851f, var_0) - vec3<f32>(-525f, 1829f, -176f)), Struct_1(19322u, vec3<bool>(true, true, var_2), vec3<u32>(1u, 4294967295u, 0u), -560f)), Struct_2(func_1(global1.x, Struct_2(vec4<u32>(1u, 9602u, 4294967295u, 1u), -57993i, Struct_1(4294967295u, vec3<bool>(var_2, var_2, var_2), vec3<u32>(28109u, 4294967295u, 54565u), 487f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 2u)], var_0, var_0), Struct_1(156u, vec3<bool>(var_2, true, var_2), vec3<u32>(62746u, 0u, 4294967295u), -264f)), Struct_1(0u, vec3<bool>(true, false, var_2), vec3<u32>(0u, 4294967295u, 4294967295u), -343f)), ~u_input.b, Struct_1(13314u, vec3<bool>(false, false, false), vec3<u32>(28189u, 34939u, 34826u), 836f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], -699f), Struct_1(21487u, vec3<bool>(false, false, var_2), vec3<u32>(67024u, 16408u, 12425u), 408f)))));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(u_input.a.x), var_3, u_input.a.x), ~(min(min(u_input.a.xwx, vec3<i32>(u_input.c.x, var_1, -32223i)), ~vec3<i32>(-819i, var_3, u_input.c.x)) & _wgslsmith_div_vec3_i32(vec3<i32>(-782i, var_1, global1.x), vec3<i32>(1i, global1.x, -31046i))), ~_wgslsmith_add_u32(~(~1u), ~(~44905u)));
}

