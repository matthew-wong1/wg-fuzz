struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_3,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(2256u, 12224u, Struct_2(Struct_1(vec3<i32>(-19474i, -1i, -48831i), vec2<i32>(1i, 10897i), 0i, 4294967295u), -1i, 0i), vec4<u32>(1u, 0u, 4294967295u, 29219u)), Struct_3(4294967295u, 17910u, Struct_2(Struct_1(vec3<i32>(2147483647i, -49446i, 1748i), vec2<i32>(2147483647i, 38278i), 0i, 0u), 105150i, -19865i), vec4<u32>(0u, 4025u, 18078u, 66245u)), Struct_3(12829u, 3330u, Struct_2(Struct_1(vec3<i32>(1i, -44670i, -1110i), vec2<i32>(i32(-2147483648), 24687i), -1i, 4294967295u), 0i, 39380i), vec4<u32>(37283u, 8617u, 23821u, 1u)), Struct_3(0u, 51302u, Struct_2(Struct_1(vec3<i32>(-1i, -25931i, 1i), vec2<i32>(0i, 2147483647i), -13568i, 4166u), -25051i, 1i), vec4<u32>(52005u, 1u, 0u, 1u)), Struct_3(11239u, 1u, Struct_2(Struct_1(vec3<i32>(-4658i, -34262i, 1i), vec2<i32>(-2964i, -23210i), -1i, 61759u), 73194i, 2147483647i), vec4<u32>(1u, 22204u, 37490u, 39276u)), Struct_3(31118u, 32322u, Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec2<i32>(-1i, -18483i), 1i, 1u), 4927i, i32(-2147483648)), vec4<u32>(4294967295u, 10411u, 93502u, 591u)), Struct_3(104358u, 16125u, Struct_2(Struct_1(vec3<i32>(2147483647i, -22372i, 31066i), vec2<i32>(0i, -42401i), 43180i, 0u), 0i, 15054i), vec4<u32>(1u, 0u, 20330u, 6491u)), Struct_3(4294967295u, 4294967295u, Struct_2(Struct_1(vec3<i32>(17270i, 10906i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), i32(-2147483648), 25321u), 2147483647i, 39644i), vec4<u32>(5411u, 24509u, 1342u, 56377u)), Struct_3(4294967295u, 4294967295u, Struct_2(Struct_1(vec3<i32>(-19994i, 19596i, 1i), vec2<i32>(1i, 2147483647i), -1i, 31781u), 46610i, -1i), vec4<u32>(93242u, 30139u, 0u, 21747u)), Struct_3(47490u, 0u, Struct_2(Struct_1(vec3<i32>(0i, -1i, 6848i), vec2<i32>(-25698i, 2147483647i), 0i, 4294967295u), 2147483647i, -34161i), vec4<u32>(0u, 0u, 22804u, 1u)), Struct_3(0u, 0u, Struct_2(Struct_1(vec3<i32>(2147483647i, -6280i, 7440i), vec2<i32>(2147483647i, -1i), 29556i, 116738u), 12713i, -17372i), vec4<u32>(43443u, 4294967295u, 30297u, 0u)), Struct_3(0u, 4294967295u, Struct_2(Struct_1(vec3<i32>(-22244i, 41293i, 2147483647i), vec2<i32>(-40856i, 18946i), -41067i, 22973u), -1i, -1i), vec4<u32>(0u, 10069u, 16337u, 0u)), Struct_3(12751u, 1u, Struct_2(Struct_1(vec3<i32>(-1i, -45777i, -1i), vec2<i32>(-39015i, -13986i), 42833i, 57792u), 16470i, 1i), vec4<u32>(1u, 1u, 43986u, 0u)), Struct_3(4294967295u, 4294967295u, Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, 10955i), vec2<i32>(2147483647i, 9955i), 2147483647i, 53620u), 2147483647i, -37206i), vec4<u32>(48326u, 6803u, 41617u, 1u)), Struct_3(1u, 4294967295u, Struct_2(Struct_1(vec3<i32>(-21817i, -1i, -7842i), vec2<i32>(i32(-2147483648), -30647i), 37238i, 4294967295u), -1i, -28769i), vec4<u32>(18107u, 0u, 0u, 70425u)), Struct_3(45870u, 26079u, Struct_2(Struct_1(vec3<i32>(-10331i, -15543i, -46550i), vec2<i32>(-74157i, i32(-2147483648)), 2147483647i, 0u), 2147483647i, i32(-2147483648)), vec4<u32>(0u, 1u, 1u, 0u)), Struct_3(1u, 1u, Struct_2(Struct_1(vec3<i32>(108388i, -1i, 394i), vec2<i32>(-1i, -1i), -1i, 19713u), -1i, i32(-2147483648)), vec4<u32>(1u, 0u, 33109u, 34476u)), Struct_3(1u, 91179u, Struct_2(Struct_1(vec3<i32>(47617i, 2147483647i, 1330i), vec2<i32>(2147483647i, i32(-2147483648)), 1i, 33216u), i32(-2147483648), 75010i), vec4<u32>(20278u, 4294967295u, 3971u, 4294967295u)), Struct_3(4294967295u, 0u, Struct_2(Struct_1(vec3<i32>(-38449i, i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 2147483647i), -1i, 0u), 6145i, -37311i), vec4<u32>(48780u, 22243u, 1u, 4294967295u)));

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-9254i, 0i, 1i), vec3<i32>(i32(-2147483648), -1473i, i32(-2147483648)), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 15038i, 6548i), vec3<i32>(33485i, 62810i, 1i), vec3<i32>(-48463i, -18271i, -3767i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(i32(-2147483648), -1i, 54272i), vec3<i32>(0i, -36920i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-4047i, -29796i, -33336i), vec3<i32>(11840i, -47375i, 246i), vec3<i32>(-36859i, 0i, 0i), vec3<i32>(-1i, 2147483647i, 23061i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 24709i), vec3<i32>(2394i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 32476i, 21618i), vec3<i32>(-1i, 1i, 31446i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 1i, 0i), vec3<i32>(39267i, -1i, 1i), vec3<i32>(19997i, 0i, 24683i), vec3<i32>(-8461i, 2147483647i, -1i), vec3<i32>(-1i, -37445i, 1i), vec3<i32>(27753i, 2147483647i, -13673i), vec3<i32>(2147483647i, 1i, -18341i), vec3<i32>(6477i, 1i, -73254i), vec3<i32>(25320i, 21929i, -11691i), vec3<i32>(-35936i, -1i, 16172i), vec3<i32>(14062i, -1i, -1i));

var<private> global2: array<vec2<f32>, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(arg_0.b, 4294967295u), u_input.a);
    let var_1 = 53994i;
    global2 = array<vec2<f32>, 31>();
    global1 = array<vec3<i32>, 31>();
    global2 = array<vec2<f32>, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1580f, -247f))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1104f)))))));
}

fn func_4(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-612f + -2076f), 1968f)), -1923f))));
    global1 = array<vec3<i32>, 31>();
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 190f, -1223f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1047f), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))))))));
    global1 = array<vec3<i32>, 31>();
    var var_1 = ~376u;
    return select(~firstTrailingBit(vec3<u32>(33789u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), ~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(112493u, 1u, 4294967295u) ^ vec3<u32>(0u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(45934u, u_input.a.x, 4294967295u), vec3<u32>(0u, u_input.a.x, u_input.a.x)))), select(vec3<bool>(!(arg_0.x && true), !any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), true), !(!arg_0.zyw), !all(vec4<bool>(true, arg_0.x, false, true))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4) -> vec3<u32> {
    global0 = array<Struct_3, 19>();
    var var_0 = Struct_1(arg_2.c.c.a.a, (-(~arg_2.b.c.a.b) | ~min(vec2<i32>(arg_2.c.c.a.b.x, arg_2.a.x), vec2<i32>(0i, 0i))) >> (~_wgslsmith_div_vec2_u32(u_input.a & arg_2.b.d.xw, ~arg_2.b.d.wx) % vec2<u32>(32u)), 0i, u_input.a.x);
    let var_1 = Struct_5(abs(0u), arg_0, vec2<bool>(arg_0.x & true, arg_0.x));
    let var_2 = Struct_1(reverseBits(vec3<i32>(var_0.a.x, reverseBits(countOneBits(-28054i)), arg_2.a.x)), vec2<i32>(0i ^ arg_2.a.x, 2147483647i), 2147483647i, 4118u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(63103u, 31u)]);
    return select(~func_4(vec4<bool>(!var_1.b.x, arg_0.x, func_3(Struct_3(u_input.a.x, 13200u, Struct_2(arg_2.c.c.a, -20553i, var_0.c), vec4<u32>(1u, u_input.a.x, var_1.a, arg_2.c.c.a.d)), vec4<i32>(2147483647i, 2306i, arg_2.c.c.b, var_2.c), 12626i, arg_2.a.x), arg_1 <= arg_1)), ~vec3<u32>(~abs(1u), ~(~arg_2.d), 1u), arg_0.zzz);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(2147483647i) | _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(9647i, arg_1.a.b.x, arg_1.b) << (func_2(vec4<bool>(true, true, arg_0.x, arg_0.x), 1086f, Struct_4(vec4<i32>(arg_1.c, arg_1.b, arg_1.c, arg_1.b), global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.a.x, -490f)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(u_input.a.x, 31u)] >> (vec3<u32>(arg_1.a.d, 72466u, 100265u) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 31u)])), 0i, ~2147483647i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-796f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-125f - -1380f) * -1004f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1369f, 394f, !arg_0.x)), -1000f)) - -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1246f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -385f))), _wgslsmith_f_op_f32(267f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1638f + 1117f))), select(arg_0.x, !any(vec3<bool>(false, false, arg_0.x)), arg_0.x))));
    global0 = array<Struct_3, 19>();
    global2 = array<vec2<f32>, 31>();
    let var_2 = true;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-968f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, false), Struct_2(Struct_1(vec3<i32>(-2147483647i, 28041i, 0i), vec2<i32>(-1i, 0i), 0i, u_input.a.x), 2147483647i, 0i))), 1f))))));
    let var_1 = Struct_4(firstLeadingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), select(~vec4<i32>(-2147483647i, 52554i, -74136i, -14576i), -vec4<i32>(1i, 45207i, -1i, -2147483647i), vec4<bool>(true, true, true, true)))), Struct_3(u_input.a.x, abs(_wgslsmith_div_u32(46449u, u_input.a.x) ^ 1u), Struct_2(Struct_1(min(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], vec3<i32>(-1i, 2147483647i, -26639i)), _wgslsmith_mult_vec2_i32(vec2<i32>(49807i, -1i), vec2<i32>(38852i, 50426i)), ~(-1i), abs(u_input.a.x)), abs(0i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-5686i, 0i, -23796i, 21001i), vec4<i32>(-1384i, 22743i, 0i, 5859i))), select(vec4<u32>(1u, 20173u << (u_input.a.x % 32u), u_input.a.x, 856u), ~(~vec4<u32>(u_input.a.x, 1u, 17943u, 6633u)), 55469u <= func_4(vec4<bool>(false, true, true, false)).x)), Struct_3(1u, u_input.a.x, Struct_2(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, 2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec2<i32>(35706i, -1i), -2147483647i, 1u), firstLeadingBit(max(2147483647i, -1i)), 1245i), ~(firstTrailingBit(vec4<u32>(u_input.a.x, 8985u, u_input.a.x, 13924u)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 56515u))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) - -310f));
    var_0 = -1951f;
    global1 = array<vec3<i32>, 31>();
    let var_2 = ~reverseBits(~(~abs(vec4<u32>(var_1.b.d.x, 0u, var_1.c.c.a.d, var_1.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.zw, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~u_input.a.x), 75603u), 4294967295u, vec2<i32>(-1i) * -vec2<i32>(var_1.c.c.c, -1i), min(var_1.a, min(reverseBits(_wgslsmith_sub_vec4_i32(var_1.a, vec4<i32>(1i, var_1.b.c.a.c, var_1.c.c.b, 0i))), abs(var_1.a) << (vec4<u32>(1u, 44633u, var_1.b.a, 16412u) % vec4<u32>(32u)))));
}

