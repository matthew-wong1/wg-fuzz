struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(32986i, -13699i));

var<private> global2: array<Struct_3, 19>;

var<private> global3: array<u32, 13>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> vec3<i32> {
    global2 = array<Struct_3, 19>();
    let var_0 = arg_1;
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(4294967295u, 32u)], arg_1, false, arg_1.a);
    let var_2 = vec4<bool>(!(-abs(-12298i) <= arg_1.a.x), arg_2, true, arg_3.c.x != var_1.b.a.x);
    global1 = Struct_1(max(~firstTrailingBit(vec2<i32>(2147483647i, var_1.b.a.x)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(arg_1.a.x, 48087i)), firstLeadingBit(var_1.d))) << (firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(31447u, 13u)], 15279u), vec2<u32>(u_input.d, u_input.e)) & vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)));
    return reverseBits(reverseBits((vec3<i32>(1i, arg_1.a.x, 2147483647i) & _wgslsmith_sub_vec3_i32(vec3<i32>(-11522i, var_1.a.a.x, u_input.b.x), vec3<i32>(-29384i, var_1.d.x, global1.a.x))) >> (~(~vec3<u32>(arg_3.b, u_input.d, u_input.a)) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32) -> vec4<i32> {
    var var_0 = ~_wgslsmith_mod_vec3_i32(countOneBits(-func_3(vec2<bool>(false, true), Struct_1(vec2<i32>(1i, -11290i)), true, arg_1)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 45569i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.a.x, 2147483647i, arg_1.c.x), vec4<i32>(27655i, u_input.b.x, u_input.b.x, 82838i)), ~global1.a.x), _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, -2147483647i, global1.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-50864i, 69642i, -62371i), vec3<i32>(global1.a.x, arg_1.c.x, u_input.b.x)))));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global3 = array<u32, 13>();
    let var_1 = !select(!vec3<bool>(arg_1.e, arg_1.d.x, !arg_1.e), select(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_1.e, arg_1.d.x, arg_1.e), vec3<bool>(arg_1.d.x, false, false)), select(vec3<bool>(arg_1.d.x, false, arg_1.e), vec3<bool>(arg_1.e, false, arg_1.e), false), select(vec3<bool>(true, true, arg_1.e), vec3<bool>(arg_1.e, false, arg_1.d.x), false)), vec3<bool>(true, !arg_1.d.x, any(arg_1.d)), any(select(vec4<bool>(true, false, arg_1.e, true), vec4<bool>(false, arg_1.e, arg_1.d.x, arg_1.d.x), true))), !(!select(true, false, true)));
    return ~(~(~vec4<i32>(2147483647i, global1.a.x, var_0.x, arg_2) ^ -vec4<i32>(arg_1.c.x, 26050i, var_0.x, -23430i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_0.zx;
    var var_1 = 1045f;
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-559f, 160f)), 1f, _wgslsmith_f_op_f32(floor(-193f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1080f, 1146f, -123f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1511f, 1418f, -753f))) + vec3<f32>(-293f, _wgslsmith_f_op_f32(trunc(115f)), _wgslsmith_f_op_f32(round(1146f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1486f, -469f, -433f), vec3<f32>(582f, -1948f, 1714f))))), true));
    global0 = array<Struct_1, 32>();
    return arg_0.zx;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = select(func_4(!arg_3.xwz, max(~(vec4<i32>(global1.a.x, 2147483647i, 26451i, -1i) << (vec4<u32>(u_input.e, 0u, arg_0.b, 53227u) % vec4<u32>(32u))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -466f)), arg_0, firstLeadingBit(22814i)))), arg_0.d, arg_1.c);
    let var_1 = Struct_2(Struct_1(arg_1.a.a), Struct_1(u_input.b), !any(select(arg_3, arg_3, var_0.x | false)), ~(~min(vec2<i32>(arg_1.a.a.x, u_input.b.x), select(u_input.b, vec2<i32>(36364i, u_input.b.x), arg_0.d))));
    global3 = array<u32, 13>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -255f);
    var var_3 = arg_0.e;
    return arg_3.wwz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    global3 = array<u32, 13>();
    let var_0 = 1u;
    let var_1 = select(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(74477u, u_input.a, 73379u, u_input.e), vec4<u32>(147u, u_input.a, 4294967295u, var_0)), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0, 13u)], 13u)] & global3[_wgslsmith_index_u32(27683u, 13u)], ~global3[_wgslsmith_index_u32(var_0, 13u)], ~1u, ~24826u)), ~(~vec4<u32>(var_0, var_0, u_input.d, 0u)), vec4<bool>(any(vec4<bool>(true, true, true, true)), (u_input.b.x != u_input.c.x) | (-2147483647i < u_input.c.x), -1i == -global1.a.x, true)) | ~abs(~abs(vec4<u32>(44900u, 59103u, global3[_wgslsmith_index_u32(var_0, 13u)], 4294967295u)));
    var var_2 = select(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), func_1(Struct_3(vec3<f32>(1506f, 710f, -504f), u_input.d, u_input.c, vec2<bool>(false, true), true), Struct_2(global0[_wgslsmith_index_u32(var_1.x, 32u)], Struct_1(u_input.c), true, global1.a), vec2<f32>(-1000f, -1458f), vec4<bool>(true, false, false, true)), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), func_1(Struct_3(vec3<f32>(1083f, 551f, -1000f), u_input.d, vec2<i32>(1i, u_input.b.x), vec2<bool>(false, true), true), Struct_2(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], false, vec2<i32>(-1i, u_input.b.x)), vec2<f32>(-1060f, -1527f), vec4<bool>(true, true, true, true)), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), true), true), !select(func_1(Struct_3(vec3<f32>(-468f, -621f, -1145f), var_0, vec2<i32>(u_input.b.x, global1.a.x), vec2<bool>(false, false), true), Struct_2(Struct_1(vec2<i32>(u_input.b.x, 87775i)), Struct_1(vec2<i32>(-1i, -43678i)), true, global1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(620f, 1000f) - vec2<f32>(-409f, -905f)), vec4<bool>(false, true, true, true)), vec3<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(false, false)), global1.a.x < -6655i), vec3<bool>(func_1(Struct_3(vec3<f32>(386f, 190f, -1402f), u_input.e, global1.a, vec2<bool>(false, false), true), Struct_2(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], true, global1.a), vec2<f32>(-2199f, -131f), vec4<bool>(true, false, false, false)).x, true, false)), all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~(-(~vec4<i32>(u_input.b.x, global1.a.x, 0i, -1i))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b.x, global1.a.x, u_input.c.x) & vec4<i32>(0i, -7220i, 20503i, global1.a.x), firstTrailingBit(vec4<i32>(-25278i, global1.a.x, -1i, -2147483647i))) >> (var_1 % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, 1235f)))), abs(vec2<u32>(~var_1.x, ~(~1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-122f, 265f, -1004f, 1960f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(581f, 1524f, 911f, -1529f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, true, false)), false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1538f - 454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(319f + 1222f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-250f + _wgslsmith_f_op_f32(round(590f))) - _wgslsmith_f_op_f32(min(-760f, -1441f))))));
}

