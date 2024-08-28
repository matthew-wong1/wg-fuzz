struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(622f, -282f, -916f);

var<private> global1: array<vec4<i32>, 31>;

var<private> global2: array<Struct_3, 8>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(-32871i, 2147483647i, 32179i), vec2<bool>(false, true), true, Struct_1(vec2<i32>(-50816i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<f32>(-289f, 352f), 1u)), Struct_2(vec3<i32>(0i, -19287i, 18614i), vec2<bool>(false, false), false, Struct_1(vec2<i32>(3375i, -11275i), vec2<i32>(0i, 2147483647i), vec2<f32>(-322f, 1079f), 59834u)), Struct_2(vec3<i32>(2147483647i, 45957i, i32(-2147483648)), vec2<bool>(false, false), true, Struct_1(vec2<i32>(-40939i, 0i), vec2<i32>(31006i, 0i), vec2<f32>(1267f, 181f), 4294967295u)), Struct_2(vec3<i32>(19630i, 3182i, 824i), vec2<bool>(false, false), false, Struct_1(vec2<i32>(1i, 24718i), vec2<i32>(19409i, -24673i), vec2<f32>(-407f, -214f), 0u)), Struct_2(vec3<i32>(-1i, -2223i, -68421i), vec2<bool>(true, true), false, Struct_1(vec2<i32>(-23921i, 1i), vec2<i32>(2147483647i, -48664i), vec2<f32>(-154f, 1427f), 37084u)), Struct_2(vec3<i32>(-4662i, 2147483647i, -13470i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(-8852i, 25898i), vec2<i32>(0i, -1i), vec2<f32>(-524f, 844f), 9959u)), Struct_2(vec3<i32>(1i, -1i, 10070i), vec2<bool>(true, false), true, Struct_1(vec2<i32>(23420i, -1i), vec2<i32>(9290i, i32(-2147483648)), vec2<f32>(-584f, 2247f), 2917u)), Struct_2(vec3<i32>(-21528i, -78354i, 6435i), vec2<bool>(true, false), false, Struct_1(vec2<i32>(-13773i, -29319i), vec2<i32>(i32(-2147483648), -1i), vec2<f32>(1058f, -1472f), 12084u)), Struct_2(vec3<i32>(i32(-2147483648), 10088i, -19060i), vec2<bool>(false, false), false, Struct_1(vec2<i32>(0i, 32958i), vec2<i32>(-1i, 4096i), vec2<f32>(-1622f, -488f), 4294967295u)), Struct_2(vec3<i32>(-10561i, -5308i, 1i), vec2<bool>(true, false), false, Struct_1(vec2<i32>(2147483647i, 54305i), vec2<i32>(57788i, 2147483647i), vec2<f32>(733f, -550f), 1u)), Struct_2(vec3<i32>(-9034i, 5479i, 23074i), vec2<bool>(true, false), false, Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<f32>(800f, 571f), 64954u)), Struct_2(vec3<i32>(4087i, 20081i, -13392i), vec2<bool>(false, true), true, Struct_1(vec2<i32>(-1i, 1i), vec2<i32>(1978i, -6001i), vec2<f32>(1203f, -1052f), 93635u)), Struct_2(vec3<i32>(4076i, 27966i, 2147483647i), vec2<bool>(false, false), false, Struct_1(vec2<i32>(-32017i, -18003i), vec2<i32>(-10802i, 31371i), vec2<f32>(-1060f, 342f), 20150u)), Struct_2(vec3<i32>(25077i, 28805i, 2147483647i), vec2<bool>(false, false), true, Struct_1(vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 33244i), vec2<f32>(-1695f, 1161f), 4294967295u)), Struct_2(vec3<i32>(-42252i, 2147483647i, 2147483647i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(-333i, 34504i), vec2<i32>(-23061i, 0i), vec2<f32>(1424f, 1055f), 4294967295u)), Struct_2(vec3<i32>(2147483647i, -32358i, -11242i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(-12272i, 28344i), vec2<i32>(52362i, i32(-2147483648)), vec2<f32>(907f, -117f), 48813u)), Struct_2(vec3<i32>(-47773i, -1549i, -169i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(-1i, 2147483647i), vec2<i32>(41706i, 2147483647i), vec2<f32>(775f, 1664f), 9745u)), Struct_2(vec3<i32>(0i, -2859i, 2147483647i), vec2<bool>(true, true), false, Struct_1(vec2<i32>(-56353i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<f32>(1569f, 1000f), 0u)), Struct_2(vec3<i32>(-74816i, -26429i, i32(-2147483648)), vec2<bool>(true, true), true, Struct_1(vec2<i32>(25533i, 6403i), vec2<i32>(0i, -54537i), vec2<f32>(1654f, 504f), 1u)), Struct_2(vec3<i32>(33120i, -29951i, -1i), vec2<bool>(false, false), false, Struct_1(vec2<i32>(i32(-2147483648), 17140i), vec2<i32>(i32(-2147483648), -26019i), vec2<f32>(-1874f, -1075f), 59126u)), Struct_2(vec3<i32>(47787i, 1644i, 12024i), vec2<bool>(false, true), false, Struct_1(vec2<i32>(89951i, -1i), vec2<i32>(31153i, -1i), vec2<f32>(-384f, -1612f), 1u)), Struct_2(vec3<i32>(-46568i, 20773i, -1i), vec2<bool>(false, false), false, Struct_1(vec2<i32>(-1i, 3766i), vec2<i32>(-23931i, -1i), vec2<f32>(-536f, -180f), 0u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global3 = array<Struct_2, 22>();
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a | _wgslsmith_sub_u32(1u, arg_1.d), max(~4294967295u, arg_1.d), arg_0.d), vec3<u32>(countOneBits(57302u) >> (arg_0.d % 32u), arg_0.d, ~(~15275u))), 31u)];
    global1 = array<vec4<i32>, 31>();
    global3 = array<Struct_2, 22>();
    var var_1 = vec3<i32>(-34379i, min(_wgslsmith_clamp_i32(-1i, _wgslsmith_mult_i32(countOneBits(arg_0.a.x), _wgslsmith_mod_i32(2147483647i, var_0.x)), ~43380i), -1i), arg_0.a.x);
    return select(!(!vec3<bool>(any(vec4<bool>(true, true, false, false)), true, false)), !(!vec3<bool>(any(vec2<bool>(true, false)), true, u_input.c >= var_0.x)), true);
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<bool> {
    let var_0 = ~u_input.a;
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1008f)) + 1417f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) + _wgslsmith_f_op_f32(-arg_1))), vec3<f32>(global0.x, arg_1, 1861f));
    let var_1 = u_input.c;
    global2 = array<Struct_3, 8>();
    var var_2 = vec3<u32>(u_input.d, u_input.a & 1u, ~u_input.d);
    return vec4<bool>(select(true, true, true), !((~var_2.x >= _wgslsmith_dot_vec2_u32(var_2.zy, var_2.zx)) || any(func_3(Struct_1(vec2<i32>(u_input.b.x, var_1), u_input.b.wz, vec2<f32>(global0.x, 439f), var_0), Struct_1(vec2<i32>(arg_0, -6762i), u_input.b.xw, vec2<f32>(arg_1, global0.x), 46585u)))), (false && any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))) || true, false);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(644f, global0.x, -726f) + vec3<f32>(global0.x, 764f, global0.x)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x)))))))));
    let var_0 = !arg_3;
    var var_1 = global1[_wgslsmith_index_u32(50627u >> (arg_2 % 32u), 31u)];
    global1 = array<vec4<i32>, 31>();
    let var_2 = 0u;
    return Struct_3(-1i, arg_3);
}

fn func_1() -> vec2<bool> {
    global2 = array<Struct_3, 8>();
    var var_0 = ~vec3<u32>(38373u, 1u, 32115u >> (u_input.d % 32u));
    var var_1 = 384f;
    var var_2 = func_4(~1u, Struct_3(u_input.c, true), u_input.d, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_2(45882i, 415f), vec4<bool>(false, false, true, true)), true)));
    var var_3 = vec4<u32>(0u, ~(~var_0.x), _wgslsmith_add_u32((countOneBits(4294967295u) & u_input.d) ^ var_0.x, 1u), 2994u);
    return !(!vec2<bool>(var_2.b, false));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = u_input.b.x;
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.c.x) * _wgslsmith_f_op_f32(global0.x - arg_0.d.c.x)) + 222f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(288f, 1640f)), arg_1) - _wgslsmith_f_op_f32(-1524f - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.d.c.x)), -298f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.c.x, -1182f, 824f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, 2677f, global0.x) - vec3<f32>(global0.x, arg_1, -552f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_1, -830f) * vec3<f32>(-192f, global0.x, -341f))))))), func_2(_wgslsmith_mod_i32(1i, arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1026f)))).wwz));
    global2 = array<Struct_3, 8>();
    var var_1 = ~(~u_input.d) << (~arg_0.d.d % 32u);
    var_0 = 75817i;
    return global3[_wgslsmith_index_u32(arg_0.d.d, 22u)];
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    let var_0 = min(countOneBits(min(vec3<i32>(4856i, arg_1.a.x, -7659i), -u_input.b.yxx)), u_input.b.xzx) & vec3<i32>(max(func_5(global3[_wgslsmith_index_u32(arg_1.d.d, 22u)], -1757f, vec4<i32>(u_input.c, -44282i, arg_2.x, 26349i)).d.a.x, 1i) >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(11913u, 32101u, arg_1.d.d, arg_0.x), vec4<u32>(4294967295u, 0u, 1u, 1u)), ~arg_1.d.d) % 32u), i32(-1i) * -arg_1.a.x, 28845i);
    var var_1 = ~(~reverseBits(0u << (1u % 32u)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(arg_1.d.c.x - global0.x)))), func_5(Struct_2(vec3<i32>(~u_input.b.x, var_0.x, var_0.x), arg_1.b, true, func_5(func_5(Struct_2(vec3<i32>(56999i, arg_1.d.b.x, 2147483647i), vec2<bool>(true, false), arg_1.c, arg_1.d), 1702f, vec4<i32>(u_input.b.x, -61226i, -1i, u_input.b.x)), func_5(Struct_2(var_0, vec2<bool>(arg_1.b.x, arg_1.c), false, arg_1.d), 911f, vec4<i32>(arg_2.x, arg_1.a.x, 30394i, arg_2.x)).d.c.x, ~vec4<i32>(arg_1.d.b.x, arg_2.x, arg_2.x, 1i)).d), global0.x, vec4<i32>(~firstLeadingBit(arg_1.d.a.x), arg_1.d.a.x, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(arg_0.x, 31u)], -arg_2), u_input.c)).d.c.x, -1004f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -557f))), 1380f, true)));
    global1 = array<vec4<i32>, 31>();
    var var_3 = vec4<i32>(-_wgslsmith_mod_i32(-32980i, arg_1.d.a.x), abs(-14333i), -min(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 18735i), max(countOneBits(arg_1.a.x), -arg_1.d.b.x)), u_input.c);
    return select(_wgslsmith_dot_vec3_u32(~(~arg_0.xzx) >> (arg_0.xzy % vec3<u32>(32u)), arg_0.zzy), ~1u, any(func_5(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -714f), arg_2).b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 31>();
    var var_0 = func_6(~reverseBits(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d, 0u, u_input.a), vec4<u32>(17024u, u_input.d, 20123u, u_input.d)))), func_5(Struct_2(vec3<i32>(u_input.b.x, u_input.b.x ^ u_input.b.x, -u_input.b.x), select(func_1(), vec2<bool>(true, false), vec2<bool>(true, true)), !all(vec4<bool>(false, true, true, true)), Struct_1(firstLeadingBit(u_input.b.xw), u_input.b.zz >> (vec2<u32>(13611u, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(global0.xz, global0.xy), u_input.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1230f, -1522f) - _wgslsmith_f_op_f32(floor(global0.x))))), min(select(-vec4<i32>(2147483647i, -19123i, u_input.b.x, u_input.c), ~u_input.b, global0.x <= 855f), vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, -1i), min(503i, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.b.xz), func_4(u_input.a, global2[_wgslsmith_index_u32(21606u, 8u)], u_input.d, false).a))), _wgslsmith_mod_vec4_i32(-firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 10715i, -30501i, 0i), vec4<i32>(2147483647i, u_input.c, u_input.c, -26815i))), u_input.b));
    let var_1 = func_4(45274u, func_4(u_input.a, func_4(1u, Struct_3(1i, any(vec2<bool>(false, true))), ~u_input.a, !(global0.x <= global0.x)), 39927u, !(global0.x >= 2603f)), _wgslsmith_add_u32(~206375u, firstTrailingBit(2250u)), func_4(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.d, 74061u)), select(abs(vec2<u32>(12484u, 78213u)), vec2<u32>(u_input.d, 0u), true)), func_4(~_wgslsmith_sub_u32(u_input.a, u_input.d), func_4(u_input.d, global2[_wgslsmith_index_u32(4294967295u << (0u % 32u), 8u)], ~49683u, select(false, false, true)), 85934u >> (~4294967295u % 32u), true), 40176u, true).b);
    global2 = array<Struct_3, 8>();
    var var_2 = min(vec3<u32>(~u_input.a, firstLeadingBit(u_input.a), 4294967295u), _wgslsmith_add_vec3_u32(~abs(reverseBits(vec3<u32>(u_input.a, 1u, u_input.d))), select(~(vec3<u32>(u_input.a, u_input.a, 0u) >> (vec3<u32>(52084u, u_input.a, 2361u) % vec3<u32>(32u))), vec3<u32>(12369u, u_input.d, u_input.a), vec3<bool>(var_1.b || var_1.b, var_1.b, var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(514f, -1015f, -498f) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -128f, 185f), vec3<f32>(903f, -1000f, -1228f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -832f, global0.x)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-312f * -1037f), _wgslsmith_f_op_f32(sign(-530f)), _wgslsmith_f_op_f32(step(-888f, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-622f, -606f, global0.x) - vec3<f32>(global0.x, 270f, -1705f))))), _wgslsmith_mult_u32(var_2.x, 4294967295u), vec4<u32>(1u, 0u, (_wgslsmith_sub_u32(4294967295u, 33514u) | var_2.x) >> (44640u % 32u), firstTrailingBit(56323u)));
}

