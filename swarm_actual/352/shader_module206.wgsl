struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(0i, 2147483647i, 47922i), 4294967295u, Struct_1(vec3<f32>(-457f, -1433f, 283f), vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 4421i, 1i), true, vec2<f32>(108f, 414f)), vec3<f32>(1334f, 1474f, 1211f));

var<private> global1: bool;

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<i32>(0i, 16476i, -1i), 1u, Struct_1(vec3<f32>(2489f, -1419f, -1646f), vec3<bool>(false, true, false), vec3<i32>(30911i, 62329i, 53626i), false, vec2<f32>(-1235f, -1304f)), vec3<f32>(-119f, 177f, -106f)), Struct_2(vec3<i32>(2147483647i, 22168i, 58086i), 1u, Struct_1(vec3<f32>(896f, 1000f, 485f), vec3<bool>(false, false, false), vec3<i32>(-666i, i32(-2147483648), -12928i), true, vec2<f32>(289f, -708f)), vec3<f32>(520f, 969f, 1493f)), Struct_2(vec3<i32>(i32(-2147483648), 17597i, -22699i), 78360u, Struct_1(vec3<f32>(1551f, 2198f, -256f), vec3<bool>(true, true, true), vec3<i32>(28667i, 1i, 1i), true, vec2<f32>(-234f, 599f)), vec3<f32>(386f, 719f, 1283f)), Struct_2(vec3<i32>(0i, 2147483647i, -1i), 1950u, Struct_1(vec3<f32>(-256f, -310f, -886f), vec3<bool>(false, true, true), vec3<i32>(5626i, 1i, -28440i), false, vec2<f32>(710f, 692f)), vec3<f32>(295f, -1103f, -1000f)), Struct_2(vec3<i32>(-29665i, -1i, 2147483647i), 18943u, Struct_1(vec3<f32>(-222f, 274f, -843f), vec3<bool>(true, false, false), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), true, vec2<f32>(-1000f, 470f)), vec3<f32>(-351f, -779f, 978f)), Struct_2(vec3<i32>(-1i, 18973i, 19798i), 86u, Struct_1(vec3<f32>(-1163f, 126f, 152f), vec3<bool>(false, true, false), vec3<i32>(-39244i, -15784i, 2147483647i), false, vec2<f32>(406f, 1609f)), vec3<f32>(1112f, 1000f, -1138f)), Struct_2(vec3<i32>(0i, -15001i, -47273i), 63554u, Struct_1(vec3<f32>(-297f, 519f, -413f), vec3<bool>(false, true, false), vec3<i32>(-14332i, -28267i, -11950i), true, vec2<f32>(469f, 527f)), vec3<f32>(-1007f, 1503f, -802f)), Struct_2(vec3<i32>(-263i, 0i, 1i), 57116u, Struct_1(vec3<f32>(728f, -696f, -1085f), vec3<bool>(false, false, true), vec3<i32>(-85439i, 2147483647i, 28945i), false, vec2<f32>(-1103f, 2123f)), vec3<f32>(305f, -1000f, 715f)), Struct_2(vec3<i32>(0i, -17099i, 1i), 0u, Struct_1(vec3<f32>(-788f, 1307f, 1067f), vec3<bool>(true, false, false), vec3<i32>(1i, -26284i, 1i), false, vec2<f32>(955f, 610f)), vec3<f32>(-142f, 318f, -1508f)), Struct_2(vec3<i32>(17332i, -1i, 4093i), 34734u, Struct_1(vec3<f32>(482f, 1036f, -319f), vec3<bool>(true, false, false), vec3<i32>(-1i, 2147483647i, 79978i), true, vec2<f32>(467f, -133f)), vec3<f32>(-412f, -354f, -929f)), Struct_2(vec3<i32>(1i, -38426i, i32(-2147483648)), 68132u, Struct_1(vec3<f32>(-255f, 415f, 762f), vec3<bool>(true, false, false), vec3<i32>(-1i, -41368i, -13255i), false, vec2<f32>(1053f, 1546f)), vec3<f32>(1320f, 457f, 1022f)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<i32> {
    global3 = array<Struct_2, 11>();
    global1 = false;
    global0 = global3[_wgslsmith_index_u32(~4294967295u, 11u)];
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.a) + _wgslsmith_f_op_vec3_f32(global0.c.a * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global2.x, global2.x) - _wgslsmith_f_op_vec3_f32(global0.d + vec3<f32>(global2.x, global2.x, -1202f)))))));
    var var_0 = vec4<bool>(true, any(select(global0.c.b, vec3<bool>(global0.c.b.x, !global0.c.d, global0.c.b.x || true), vec3<bool>(true, true, global0.c.b.x))), global0.c.b.x, true);
    return (vec3<i32>(-24381i, select(u_input.b.x >> (u_input.a % 32u), u_input.b.x, -1000f < global0.c.e.x), -_wgslsmith_clamp_i32(-1i, 1i, global0.a.x)) ^ vec3<i32>(i32(-1i) * -1i, global0.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(-25377i, global0.c.c.x, u_input.c.x, global0.c.c.x), vec4<i32>(u_input.c.x, global0.a.x, 2147483647i, -2147483647i)), u_input.b))) & ~abs(~min(u_input.b.xzw, vec3<i32>(46308i, 2147483647i, -1i)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(32285i, ~(-28624i), -(~u_input.b.x)), select(~(~vec3<i32>(34962i, u_input.c.x, 0i)), _wgslsmith_mod_vec3_i32(select(u_input.b.wzw, u_input.b.wwy, global0.c.b), func_3()), select(select(global0.c.b, vec3<bool>(global0.c.d, true, true), global0.c.b), !vec3<bool>(true, global0.c.b.x, global0.c.b.x), global0.c.b.x || true))), u_input.a, global0.c, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-855f + global2.x), _wgslsmith_f_op_f32(1401f * global2.x)), 1227f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.c.a.x, -417f) - vec3<f32>(global2.x, -1000f, global2.x)), global0.c.a)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-243f, 191f, -1206f))))))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.e.x, global2.x, 837f)) + _wgslsmith_f_op_vec3_f32(floor(global0.c.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, global0.c.a.x, 1325f)))) * global0.c.a), !(!select(global0.c.b, global0.c.b, false || global0.c.d)), abs(global0.a), true, _wgslsmith_div_vec2_f32(global0.c.a.xz, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), global0.c.e.x)), 478f)));
    var var_1 = ~(~_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.b, global0.b), vec2<u32>(u_input.a, global0.b)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 20048u)), ~vec2<u32>(u_input.d, 0u))));
    return Struct_1(var_0.a, select(vec3<bool>(any(!var_0.b.yz), global0.c.a.x > var_0.e.x, !var_0.d), !select(select(vec3<bool>(global0.c.d, var_0.b.x, true), vec3<bool>(false, global0.c.b.x, global0.c.d), vec3<bool>(false, global0.c.b.x, global0.c.b.x)), select(global0.c.b, var_0.b, vec3<bool>(true, false, false)), -414f > global0.c.a.x), false), u_input.b.wxw, true, global2.yy);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(~arg_1.c.x, arg_1.c.x);
    var var_1 = (vec2<i32>(-1i) * -u_input.b.wz) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(select(112632u, global0.b, global0.c.d) & ~9538u, u_input.d)) % vec2<u32>(32u));
    var_1 = countOneBits(max(abs(-vec2<i32>(var_1.x, var_0)), ~(arg_1.c.zy >> (vec2<u32>(global0.b, 1u) % vec2<u32>(32u))))) ^ global0.a.zx;
    var var_2 = global3[_wgslsmith_index_u32(global0.b, 11u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x - arg_2.x), global2.x, -1023f, _wgslsmith_f_op_f32(global0.c.a.x + arg_2.x))) * arg_2) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1977f))), _wgslsmith_f_op_f32(-global2.x))), global0.c.e.x, _wgslsmith_f_op_f32(step(var_2.c.e.x, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f + global2.x)))));
    return Struct_2(~(~(-arg_1.c)), global0.b, global0.c, arg_2.wwx);
}

fn func_1() -> f32 {
    let var_0 = func_4(any(vec4<bool>(all(vec4<bool>(global0.c.b.x, global0.c.b.x, true, false)), !any(vec3<bool>(global0.c.d, false, false)), (global0.c.c.x & global0.a.x) < countOneBits(6991i), true)), func_2(), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0.d.x, -598f, global0.c.e.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1638f, -144f, global2.x, global0.d.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(global0.d.x, -316f, 318f, -1708f))))), global0.b);
    var var_1 = 747f;
    let var_2 = func_4(true, func_2(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f - 1343f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)) * _wgslsmith_f_op_f32(-var_0.c.e.x))), global2.x, -1052f), 51462u);
    var var_3 = var_2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-880f, var_0.c.e.x) + _wgslsmith_f_op_f32(-1562f * global0.c.e.x)) * 766f)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.b.x;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_vec3_f32(-global0.c.a)), global3[_wgslsmith_index_u32(102127u, 11u)], firstTrailingBit(max(global0.b, ~893u)), global3[_wgslsmith_index_u32(0u, 11u)]);
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(-abs(vec4<i32>(var_1.c.c.x, u_input.b.x, u_input.c.x, 31479i))), u_input.b), max(49506i, -2147483647i));
    let var_3 = global0.a;
    var_2 = _wgslsmith_mod_i32(~global0.a.x, _wgslsmith_div_i32(var_3.x, u_input.c.x));
    let var_4 = 0i;
    let var_5 = func_5(_wgslsmith_f_op_vec3_f32(trunc(global0.d)), func_4(func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-398f, 1329f, -364f), vec3<f32>(global2.x, var_1.d.x, global0.c.a.x), global0.c.b)), Struct_2(~vec3<i32>(-2147483647i, var_1.c.c.x, 0i), select(14916u, u_input.a, var_1.c.b.x), var_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1701f, global0.d.x, -500f))), 51353u, Struct_2(var_1.a, 27548u, func_5(var_1.d, var_1, global0.b, global3[_wgslsmith_index_u32(var_1.b, 11u)]).c, vec3<f32>(var_1.c.a.x, -1000f, global2.x))).c.d, global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, 322f, 351f, 1822f) * vec4<f32>(-331f, -565f, -263f, global2.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1298f, global0.d.x, -1371f, global2.x))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(11820u, 4699u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, var_1.b))) & ~var_1.b), global0.b, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-482f, 488f, global2.x))), global0.c.a)), var_1, 1u, func_4(!(-897f <= var_1.d.x), Struct_1(var_1.c.a, !var_1.c.b, vec3<i32>(-1i, -1537i, -16504i), true, func_5(vec3<f32>(global2.x, global2.x, -282f), Struct_2(var_1.c.c, u_input.d, Struct_1(var_1.c.a, global0.c.b, u_input.b.xxx, true, var_1.c.e), global0.c.a), 91623u, var_1).d.xz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.a.x, 1882f, global2.x, -132f), vec4<f32>(var_1.d.x, -597f, 194f, 550f), false))), u_input.d))).c.d;
    let var_6 = (var_4 ^ _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(u_input.b.xyz, u_input.b.zyy), global0.c.c.x)) > (func_2().c.x & -39277i);
    var var_7 = global3[_wgslsmith_index_u32(u_input.a, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(min(vec4<u32>(u_input.d, 1u, global0.b, 4294967295u), vec4<u32>(15157u, 17202u, 0u, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_7.c.e.x + var_7.d.x), -843f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1912f), -584f, !var_1.c.d))))), func_5(global0.c.a, var_1, ~46277u, func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_7.d.x, var_1.c.e.x, global2.x), var_1.d, var_7.c.b)), global0.d), Struct_2(vec3<i32>(492i, var_7.a.x, global0.a.x), u_input.d, Struct_1(vec3<f32>(global0.d.x, 610f, -380f), vec3<bool>(var_1.c.b.x, global0.c.b.x, false), vec3<i32>(var_1.a.x, global0.a.x, -15501i), var_6, vec2<f32>(-755f, var_7.c.e.x)), vec3<f32>(330f, -539f, var_1.d.x)), 42826u, Struct_2(global0.a | vec3<i32>(0i, global0.a.x, 49574i), abs(0u), global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1203f, 1189f, var_1.d.x))))).a.yy, vec4<i32>(var_3.x, var_7.c.c.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_4, -2147483647i, 50002i, -1i), u_input.b), 2145i), _wgslsmith_f_op_vec3_f32(-global0.d));
}

