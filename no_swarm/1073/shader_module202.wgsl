struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(2298u, vec4<bool>(true, false, false, false), vec2<f32>(-1455f, 577f)), Struct_1(42568u, vec4<bool>(true, false, false, true), vec2<f32>(639f, 1000f)), Struct_1(1u, vec4<bool>(false, true, true, true), vec2<f32>(627f, -492f)), Struct_1(36302u, vec4<bool>(true, true, true, true), vec2<f32>(204f, 2313f)), Struct_1(29892u, vec4<bool>(false, true, false, true), vec2<f32>(-488f, 825f)), Struct_1(4294967295u, vec4<bool>(true, true, true, false), vec2<f32>(1605f, -536f)), Struct_1(4294967295u, vec4<bool>(true, false, true, false), vec2<f32>(1161f, 894f)), Struct_1(70554u, vec4<bool>(true, true, true, false), vec2<f32>(631f, 709f)), Struct_1(4688u, vec4<bool>(false, true, true, false), vec2<f32>(1000f, -2876f)), Struct_1(1u, vec4<bool>(true, true, true, false), vec2<f32>(-283f, 1036f)), Struct_1(4294967295u, vec4<bool>(false, true, false, false), vec2<f32>(263f, 337f)), Struct_1(3513u, vec4<bool>(true, true, false, true), vec2<f32>(-353f, -1110f)), Struct_1(14204u, vec4<bool>(false, true, true, false), vec2<f32>(-230f, -480f)), Struct_1(42949u, vec4<bool>(true, false, true, false), vec2<f32>(-213f, -930f)), Struct_1(1u, vec4<bool>(false, false, false, false), vec2<f32>(1482f, 944f)), Struct_1(0u, vec4<bool>(false, false, false, false), vec2<f32>(-105f, 334f)), Struct_1(0u, vec4<bool>(true, true, false, true), vec2<f32>(1800f, -1355f)), Struct_1(2746u, vec4<bool>(false, true, false, false), vec2<f32>(-1480f, 478f)), Struct_1(4294967295u, vec4<bool>(true, true, false, false), vec2<f32>(-332f, -291f)), Struct_1(1u, vec4<bool>(true, false, true, false), vec2<f32>(1219f, -2335f)), Struct_1(6848u, vec4<bool>(false, true, true, false), vec2<f32>(-464f, 1366f)), Struct_1(4294967295u, vec4<bool>(false, false, false, false), vec2<f32>(-1078f, 979f)));

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(i32(-2147483648), -457i, 1i), vec3<i32>(-41859i, 0i, -13312i), vec3<i32>(-1i, 44731i, 29858i), vec3<i32>(2147483647i, 2147483647i, 43605i), vec3<i32>(46666i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 1i, -8170i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), -9513i, 2147483647i), vec3<i32>(-18244i, -53033i, i32(-2147483648)), vec3<i32>(7147i, -55095i, 1i), vec3<i32>(63471i, i32(-2147483648), -56292i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(40375i, 1i, 2147483647i), vec3<i32>(1i, -32647i, 89394i), vec3<i32>(47193i, 2398i, 2147483647i), vec3<i32>(-1i, -65069i, i32(-2147483648)), vec3<i32>(-17434i, 2147483647i, i32(-2147483648)), vec3<i32>(-57063i, 0i, -29537i), vec3<i32>(-25497i, 2147483647i, -32843i), vec3<i32>(5200i, -48442i, 2147483647i), vec3<i32>(-1i, 6207i, 7372i), vec3<i32>(-33734i, -40404i, i32(-2147483648)), vec3<i32>(-3871i, 1i, 52235i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(41479i, 1i, 20532i), vec3<i32>(2147483647i, 34303i, 2147483647i), vec3<i32>(-27344i, 10644i, 2147483647i));

var<private> global2: i32 = 1i;

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = arg_0.xyz;
    let var_1 = _wgslsmith_div_vec2_u32(u_input.b, ~vec2<u32>(firstLeadingBit(4294967295u) >> (~arg_1.b.x % 32u), 4044u << (arg_1.b.x % 32u)));
    let var_2 = arg_1.a;
    let var_3 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-47964i | _wgslsmith_dot_vec3_i32(vec3<i32>(109288i, 1i, u_input.e.x), vec3<i32>(u_input.c, 0i, u_input.d)), u_input.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-17266i, -12905i, 0i), global1[_wgslsmith_index_u32(4294967295u, 27u)])), select(vec3<i32>(0i | u_input.c, 1i, u_input.d), vec3<i32>(2147483647i, _wgslsmith_sub_i32(u_input.e.x, 34599i), u_input.e.x), var_2.x));
    var var_4 = ~arg_1.b.zyz;
    return ~_wgslsmith_clamp_u32(64523u, 18356u, ~63665u);
}

fn func_2() -> Struct_2 {
    var var_0 = 8193i;
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a | u_input.a), 22u)];
    global3 = array<Struct_2, 10>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstTrailingBit(_wgslsmith_mult_u32(select(0u, u_input.b.x, true), _wgslsmith_div_u32(4294967295u, 4294967295u))), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(var_1.a, u_input.a, u_input.b.x)))), min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.a, ~u_input.b.x), vec3<u32>(_wgslsmith_clamp_u32(137007u, 80874u, 30332u), ~u_input.b.x, func_3(vec4<f32>(-2230f, 402f, var_1.c.x, -1947f), global3[_wgslsmith_index_u32(var_1.a, 10u)]))), vec3<u32>(min(~30140u, 29601u & var_1.a), 1u, u_input.b.x))), 22u)];
    var_1 = Struct_1(firstTrailingBit(53421u), var_2.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x * -378f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f))))));
    return Struct_2(select(var_2.b.wy, var_2.b.zy, select(select(!vec2<bool>(var_1.b.x, false), select(var_2.b.xx, var_2.b.zw, true), vec2<bool>(var_2.b.x, false)), select(select(vec2<bool>(false, var_1.b.x), vec2<bool>(var_2.b.x, var_2.b.x), vec2<bool>(true, false)), var_1.b.zx, vec2<bool>(var_2.b.x, true)), var_1.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(~(~var_1.a), var_1.a, 1u, var_1.a), ~vec4<u32>(u_input.b.x, u_input.b.x, 28480u, var_2.a) & ~countOneBits(vec4<u32>(u_input.a, 39480u, var_1.a, var_1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c.x))))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> bool {
    global2 = _wgslsmith_sub_i32(select(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(86356u, 27u)], abs(global1[_wgslsmith_index_u32(max(arg_0.b.x, 1u), 27u)])), 2147483647i, arg_0.a.x), u_input.c);
    var var_0 = func_2();
    var var_1 = arg_2;
    let var_2 = func_2();
    global1 = array<vec3<i32>, 27>();
    return -countOneBits(u_input.c) >= reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-53392i, u_input.e.x, -1i, u_input.e.x), firstTrailingBit(~vec4<i32>(u_input.d, 27989i, u_input.e.x, u_input.e.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(~0u, 10u)];
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(578f, _wgslsmith_f_op_f32(var_1.c + var_1.c), 625f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-506f, 141f, -1045f) - vec3<f32>(-639f, var_1.c, var_1.c)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.c, -1628f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -2163f, arg_1.c.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1034f, arg_1.c.x, var_1.c)))))) + vec3<f32>(_wgslsmith_f_op_f32(-164f * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-arg_1.c.x)))), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, 425f)) - _wgslsmith_f_op_f32(sign(var_1.c)))));
    let var_3 = reverseBits(_wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x) << (u_input.b % vec2<u32>(32u)), ~vec2<i32>(u_input.c, -58151i)), max(vec2<i32>(1i, i32(-1i) * -26923i), reverseBits(_wgslsmith_mult_vec2_i32(u_input.e.yz, u_input.e.yx)))));
    var var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_1.b.x, ~57546u, 33947u), vec4<u32>(_wgslsmith_sub_u32(30965u, 9422u), u_input.a, 1u, _wgslsmith_add_u32(22334u, abs(var_0.b.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~4393u, 1u, ~3020u, var_1.b.x) | vec4<u32>(~var_0.b.x, _wgslsmith_div_u32(var_0.b.x, 54131u), firstTrailingBit(var_1.b.x), 4294967295u), var_0.b >> (var_0.b % vec4<u32>(32u))));
    return Struct_1(0u, arg_0, vec2<f32>(var_2.x, var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1000f * 2041f);
    let var_1 = ~(-_wgslsmith_add_vec3_i32(select(_wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], vec3<i32>(u_input.d, u_input.d, -24656i)), global1[_wgslsmith_index_u32(13859u, 27u)] | global1[_wgslsmith_index_u32(u_input.b.x, 27u)], true), _wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(-40294i, u_input.c, u_input.e.x), vec3<i32>(0i, u_input.e.x, u_input.e.x)) | _wgslsmith_add_vec3_i32(u_input.e, global1[_wgslsmith_index_u32(4294967295u, 27u)])));
    var var_2 = func_4(vec4<bool>(func_1(Struct_2(vec2<bool>(false, false), vec4<u32>(19141u, 1u, u_input.b.x, 56793u) | vec4<u32>(u_input.a, 56608u, 21557u, 10630u), _wgslsmith_f_op_f32(exp2(var_0))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, 108f)), _wgslsmith_f_op_f32(var_0 * 180f)), var_0), false, !any(vec4<bool>(true, true, false, false)), true & func_1(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, var_0, var_0, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -236f))), global0[_wgslsmith_index_u32(u_input.b.x, 22u)]);
    var var_3 = var_2.b.x;
    global0 = array<Struct_1, 22>();
    let var_4 = _wgslsmith_f_op_f32(-var_0);
    var var_5 = ~(firstTrailingBit(83847i) << (firstLeadingBit(~6410u) % 32u));
    var var_6 = var_2.b.x;
    var var_7 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.e.zz, u_input.e.yy), u_input.e.x) ^ u_input.e.xx;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~_wgslsmith_clamp_u32(59523u, 4294967295u, 4294967295u)), 4294967295u, var_2.b.x));
}

