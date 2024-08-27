struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-30761i, vec4<u32>(14784u, 1u, 1u, 37346u), 89983u, vec4<bool>(false, true, true, false), 212f), Struct_1(19453i, vec4<u32>(0u, 15242u, 4294967295u, 4294967295u), 27585u, vec4<bool>(true, true, true, true), 165f), Struct_1(-1i, vec4<u32>(54079u, 56132u, 1u, 48733u), 4294967295u, vec4<bool>(false, false, true, false), -1000f), Struct_1(0i, vec4<u32>(0u, 64597u, 19518u, 16032u), 4294967295u, vec4<bool>(false, false, true, true), -621f), Struct_1(-1i, vec4<u32>(4294967295u, 11859u, 4490u, 25871u), 1u, vec4<bool>(true, true, true, true), -1716f), Struct_1(6128i, vec4<u32>(0u, 6894u, 75556u, 1u), 4294967295u, vec4<bool>(true, false, false, false), 247f), Struct_1(1889i, vec4<u32>(47348u, 9005u, 22395u, 10562u), 72351u, vec4<bool>(true, true, false, true), 103f), Struct_1(1523i, vec4<u32>(4294967295u, 1u, 1290u, 0u), 65999u, vec4<bool>(false, true, false, false), -1069f), Struct_1(i32(-2147483648), vec4<u32>(98013u, 56613u, 54974u, 1u), 4294967295u, vec4<bool>(false, true, false, false), -862f), Struct_1(0i, vec4<u32>(35278u, 0u, 79245u, 6814u), 14144u, vec4<bool>(true, true, false, false), 1037f));

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-743f, 559f, -262f, -771f), vec4<f32>(-1022f, 422f, -294f, -1108f), vec4<f32>(-1000f, 331f, 2094f, -530f), vec4<f32>(1247f, -506f, 255f, -1711f), vec4<f32>(519f, -185f, -1000f, 596f), vec4<f32>(1000f, 113f, 382f, 600f), vec4<f32>(144f, 1044f, -501f, 883f), vec4<f32>(-112f, -137f, -689f, 342f), vec4<f32>(669f, 400f, 1582f, 400f), vec4<f32>(-1983f, -179f, -570f, -1000f), vec4<f32>(1000f, 1291f, 103f, 1295f), vec4<f32>(-521f, -2086f, -1000f, 1000f), vec4<f32>(1432f, -209f, 630f, -2281f), vec4<f32>(-958f, 265f, -2018f, 1254f), vec4<f32>(-917f, -289f, 472f, 954f), vec4<f32>(281f, -161f, 153f, 1431f), vec4<f32>(2315f, 601f, -1000f, 826f), vec4<f32>(323f, -356f, -2133f, 304f), vec4<f32>(329f, 629f, -1399f, -651f), vec4<f32>(643f, 329f, 1114f, -128f), vec4<f32>(826f, 497f, -1184f, 124f), vec4<f32>(654f, -1745f, -401f, -277f), vec4<f32>(-219f, -2722f, 1000f, -263f), vec4<f32>(1609f, -1333f, 3331f, 369f), vec4<f32>(550f, -384f, 259f, 579f), vec4<f32>(508f, -169f, 1005f, 773f), vec4<f32>(870f, 679f, -110f, -573f), vec4<f32>(983f, -1000f, 737f, 581f), vec4<f32>(1496f, -492f, -2008f, 411f), vec4<f32>(2080f, -326f, 332f, -540f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    let var_0 = i32(-1i) * -1i;
    global2 = array<vec4<f32>, 30>();
    return Struct_1(~min(-10860i, -1i ^ arg_1) << (~_wgslsmith_mult_u32(global1.c, 7308u) % 32u), max(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.b.x, global1.c), 15612u, ~1u, 29754u), vec4<u32>(~arg_0.b.x, abs(global1.b.x), min(57853u, arg_0.b.x), 56652u >> (1u % 32u))), ~select(~vec4<u32>(23827u, 40401u, arg_0.c, 1u), _wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(51089u, global1.b.x, 4294967295u, arg_0.c)), !global1.d.x)), 35469u, !arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e + 503f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = firstLeadingBit(max(_wgslsmith_mod_i32(arg_0.a, 49120i), -(~(global1.a ^ 2147483647i))));
    var var_1 = func_2(func_2(Struct_1(reverseBits(-23862i), abs(vec4<u32>(80350u, arg_0.b.x, arg_0.b.x, 21210u)), 1u, arg_0.d, _wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(f32(-1f) * -1264f))), -_wgslsmith_add_i32(0i, -2147483647i)), -(~_wgslsmith_mult_i32(max(var_0, 34474i), var_0))).d.wxy;
    let var_2 = arg_0.b.ww;
    var_1 = global1.d.zxz;
    let var_3 = arg_0;
    return Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.yww, vec3<i32>(abs(2147483647i), _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yy), abs(1i))), 16289i, abs(~(-21051i))), ~vec4<u32>(13577u, _wgslsmith_mult_u32(arg_1, 1u), reverseBits(_wgslsmith_sub_u32(global1.b.x, 6615u)), max(global1.c, ~arg_0.c)), var_2.x, !vec4<bool>(true, func_2(var_3, i32(-1i) * -15911i).d.x, 855f <= func_2(Struct_1(arg_0.a, vec4<u32>(arg_1, 4294967295u, 0u, 87011u), var_2.x, global1.d, var_3.e), var_3.a).e, func_2(Struct_1(1i, vec4<u32>(var_2.x, arg_1, 46543u, 0u), arg_0.c, vec4<bool>(false, false, global1.d.x, global1.d.x), 344f), u_input.a.x).d.x), 1000f);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), u_input.a);
    let var_1 = Struct_1(~abs(abs(1364i)), global1.b, global1.c, vec4<bool>(global1.d.x, true | (global1.a <= _wgslsmith_div_i32(arg_0.x, 25914i)), global1.d.x, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.e, global1.e), _wgslsmith_f_op_f32(abs(513f)))), _wgslsmith_f_op_f32(-global1.e))));
    global1 = func_3(func_2(Struct_1(var_1.a, abs(~global1.b), max(34050u, ~global1.b.x), !(!var_1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(590f * global1.e), var_1.e)), arg_0.x), ~1u);
    var_0 = 2147483647i;
    global2 = array<vec4<f32>, 30>();
    return 23809u;
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    global1 = Struct_1(global1.a, _wgslsmith_add_vec4_u32(~func_3(global0[_wgslsmith_index_u32(global1.b.x, 10u)], select(1u, arg_0, global1.d.x)).b, global1.b), arg_0, vec4<bool>(false, all(func_3(global0[_wgslsmith_index_u32(68849u, 10u)], 9724u).d.xw), false, arg_0 > func_1(vec3<i32>(u_input.a.x, 36307i, global1.a))), _wgslsmith_f_op_f32(-arg_1));
    let var_0 = func_2(func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(31969u, global1.c), 10u)], global1.a), _wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(global1.a, 2147483647i)), firstLeadingBit(max(min(global1.a, 34004i), ~u_input.a.x)))).c;
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    return global0[_wgslsmith_index_u32(select(94028u, 1u, global1.d.x), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~global1.b.x >> (_wgslsmith_div_u32(func_1(firstTrailingBit(u_input.a.yyx)), 56464u) % 32u), global1.e);
    global1 = var_0;
    let var_1 = func_2(Struct_1(-_wgslsmith_mult_i32(reverseBits(var_0.a), -39890i), _wgslsmith_mod_vec4_u32(~vec4<u32>(28736u, global1.c, global1.c, global1.c), func_2(global0[_wgslsmith_index_u32(var_0.c, 10u)], -1i).b) >> (var_0.b % vec4<u32>(32u)), ~_wgslsmith_mult_u32(0u, 0u), var_0.d, -917f), var_0.a);
    global2 = array<vec4<f32>, 30>();
    var var_2 = vec2<i32>(-24625i, -1i << (var_0.c % 32u));
    var var_3 = 74751u;
    global2 = array<vec4<f32>, 30>();
    var var_4 = _wgslsmith_dot_vec2_u32(var_1.b.ww, vec2<u32>(min(global1.c, _wgslsmith_dot_vec2_u32(var_1.b.yy, var_1.b.zz)), var_0.c) | var_0.b.yx);
    var var_5 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(var_0.c, 30u)] * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 30u)] + vec4<f32>(-746f, 1035f, var_0.e, var_1.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e, -469f, 487f, -870f), vec4<f32>(var_1.e, var_0.e, global1.e, -2436f), var_1.d)))))))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(abs(140828u), global1.b.x, ~50416u, 52258u) | (var_1.b ^ vec4<u32>(0u, var_1.c, var_1.c, var_1.c))) >> (var_1.b % vec4<u32>(32u)), 33465u, u_input.a.yy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.e, _wgslsmith_div_f32(var_5.x, global1.e), var_1.e, _wgslsmith_f_op_f32(max(-656f, 1624f))))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(var_0.c, 30u)])));
}

