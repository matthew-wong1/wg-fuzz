struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-22206i, 25355i, 35693i), vec3<i32>(-1i, 7852i, 1i), vec3<i32>(-7946i, -9481i, 30781i), vec3<i32>(1i, -54662i, -5931i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 32876i, 2428i), vec3<i32>(0i, -24544i, 57777i), vec3<i32>(33168i, 1i, 47837i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(-1i, -6415i, -370i), vec3<i32>(3262i, 1i, -23657i), vec3<i32>(i32(-2147483648), 0i, 29260i), vec3<i32>(-86133i, 69271i, -1866i), vec3<i32>(-7459i, -11111i, -13838i), vec3<i32>(-9562i, -1i, -1i), vec3<i32>(0i, 0i, 1i), vec3<i32>(7587i, i32(-2147483648), 1i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(48333i, 42991i, 2147483647i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(1i, -1i, 0i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(9526i, 32949i, 0i), vec3<i32>(2147483647i, -1i, 36606i), vec3<i32>(-1i, -18993i, -1i));

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-115i, vec3<f32>(-262f, -971f, -440f), Struct_1(0i, vec3<bool>(false, true, false), -18991i, vec4<bool>(false, false, false, true)), vec4<f32>(962f, 886f, -1360f, 1848f)), Struct_3(-36367i, vec3<f32>(-699f, 1600f, 1925f), Struct_1(1i, vec3<bool>(false, true, false), 0i, vec4<bool>(false, true, false, false)), vec4<f32>(-1168f, 1607f, -1662f, -931f)), Struct_3(-31928i, vec3<f32>(-203f, -888f, 554f), Struct_1(0i, vec3<bool>(false, true, true), -1i, vec4<bool>(true, true, true, false)), vec4<f32>(1640f, 381f, 259f, -521f)), Struct_3(i32(-2147483648), vec3<f32>(1396f, 1824f, -2086f), Struct_1(0i, vec3<bool>(true, false, true), i32(-2147483648), vec4<bool>(true, true, false, true)), vec4<f32>(1362f, -597f, 1706f, -664f)), Struct_3(i32(-2147483648), vec3<f32>(999f, -1000f, -1000f), Struct_1(0i, vec3<bool>(true, false, false), i32(-2147483648), vec4<bool>(true, true, true, true)), vec4<f32>(123f, 654f, -237f, 735f)), Struct_3(0i, vec3<f32>(353f, 1000f, -112f), Struct_1(-46942i, vec3<bool>(true, true, false), 4713i, vec4<bool>(false, true, false, false)), vec4<f32>(941f, 426f, -717f, 435f)), Struct_3(-18360i, vec3<f32>(-1825f, -1000f, 179f), Struct_1(0i, vec3<bool>(true, true, false), 22705i, vec4<bool>(true, false, true, false)), vec4<f32>(1711f, 371f, 298f, -950f)), Struct_3(-1i, vec3<f32>(-835f, -1609f, 1943f), Struct_1(-22809i, vec3<bool>(false, false, true), -1i, vec4<bool>(true, true, false, true)), vec4<f32>(-644f, -636f, 305f, -1291f)), Struct_3(1i, vec3<f32>(-251f, 665f, 699f), Struct_1(0i, vec3<bool>(false, false, true), -18553i, vec4<bool>(false, true, true, true)), vec4<f32>(1015f, 1629f, 733f, -172f)), Struct_3(-28064i, vec3<f32>(199f, 624f, -494f), Struct_1(2147483647i, vec3<bool>(true, true, true), 584i, vec4<bool>(false, true, false, false)), vec4<f32>(-457f, -1084f, 212f, -1104f)), Struct_3(-6517i, vec3<f32>(608f, 1678f, 939f), Struct_1(1i, vec3<bool>(true, false, true), -4390i, vec4<bool>(false, true, true, true)), vec4<f32>(141f, 1390f, -1995f, -1070f)), Struct_3(-34816i, vec3<f32>(-1539f, -636f, 716f), Struct_1(-1i, vec3<bool>(true, false, false), 1i, vec4<bool>(true, true, true, false)), vec4<f32>(165f, -265f, -773f, 1385f)), Struct_3(-2949i, vec3<f32>(740f, -1239f, 275f), Struct_1(-7034i, vec3<bool>(false, false, true), -6i, vec4<bool>(false, false, true, false)), vec4<f32>(665f, -638f, -510f, 763f)), Struct_3(-45926i, vec3<f32>(361f, -1349f, -453f), Struct_1(7079i, vec3<bool>(true, false, false), 2147483647i, vec4<bool>(false, true, false, true)), vec4<f32>(302f, -382f, -1358f, 2016f)), Struct_3(2147483647i, vec3<f32>(3045f, -454f, -767f), Struct_1(-1i, vec3<bool>(true, true, true), 0i, vec4<bool>(false, false, false, true)), vec4<f32>(2387f, -1030f, -313f, -594f)), Struct_3(2147483647i, vec3<f32>(-630f, -196f, -989f), Struct_1(1i, vec3<bool>(true, false, false), 20278i, vec4<bool>(true, true, true, true)), vec4<f32>(-533f, 1052f, -556f, 1000f)));

var<private> global2: array<vec3<i32>, 22>;

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = abs(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(u_input.b, 22u)], u_input.a.wwy), firstLeadingBit(global2[_wgslsmith_index_u32(10462u, 22u)]))) >> (_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(68222u << (u_input.b % 32u), min(106502u, u_input.b)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(111407u, 0u), vec2<u32>(u_input.b, 4294967295u))))) % 32u);
    let var_1 = arg_2;
    var_0 = _wgslsmith_add_i32(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(min(u_input.a.zz, u_input.a.wx) ^ -global3.yz, vec2<i32>(_wgslsmith_sub_i32(-21001i, -u_input.a.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_0.c, var_1.c.c, u_input.a.x, var_1.c.c)), u_input.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(897f, var_1.d.x, var_1.b.x, 1796f))))));
    global0 = array<vec3<i32>, 26>();
    return 33227u;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) + _wgslsmith_f_op_f32(f32(-1f) * -201f)) * 555f), -1032f));
    let var_1 = Struct_2(true);
    var var_2 = global3.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))));
    var var_4 = global3.x;
    return ~_wgslsmith_dot_vec4_i32(-u_input.a, firstTrailingBit(vec4<i32>(global3.x, -2147483647i, global3.x, global3.x) >> (~vec4<u32>(35744u, 79223u, 0u, 24360u) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> bool {
    var var_0 = arg_0;
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(384f + -747f) - _wgslsmith_f_op_f32(f32(-1f) * -178f)) > _wgslsmith_f_op_f32(trunc(-1100f))) | arg_0.x;
    var var_2 = min(abs(-10572i), func_4(Struct_2(0u < func_3(Struct_1(-1i, vec3<bool>(arg_0.x, var_0.x, var_0.x), 2147483647i, vec4<bool>(true, var_0.x, var_0.x, arg_0.x)), Struct_2(false), Struct_3(global3.x, vec3<f32>(1060f, 473f, 1272f), Struct_1(-2147483647i, vec3<bool>(var_0.x, true, var_0.x), u_input.a.x, vec4<bool>(false, arg_0.x, true, true)), vec4<f32>(212f, -841f, 724f, -1031f)))), select(false, all(select(vec3<bool>(false, arg_0.x, var_0.x), vec3<bool>(false, var_0.x, true), false)), var_0.x), arg_0.x));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~_wgslsmith_mult_u32(max(1u, u_input.b << (58761u % 32u)), ~(~arg_1))), 16u)];
    var var_4 = ~var_3.a;
    return ~(max(0u, firstTrailingBit(0u)) | 0u) < min(_wgslsmith_add_u32(abs(~u_input.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36453u, u_input.b, arg_1), vec3<u32>(u_input.b, arg_1, 48322u)), 0u)), ~firstLeadingBit(u_input.b) | max(60928u, firstLeadingBit(arg_1)));
}

fn func_1() -> u32 {
    global3 = vec3<i32>(global3.x, global3.x, -2147483647i);
    var var_0 = 1268f;
    var var_1 = Struct_1(-2147483647i ^ _wgslsmith_sub_i32(~select(0i, 9052i, false), global3.x), vec3<bool>(false, true, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), min(4294967295u, 4294967295u)) <= u_input.b), ~_wgslsmith_mod_i32(u_input.a.x, (i32(-1i) * -16460i) >> (u_input.b % 32u)), !(!vec4<bool>(func_2(vec2<bool>(false, false), 1u), false, true, true)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true)));
    var var_1 = vec3<f32>(863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(668f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2397f * -203f), _wgslsmith_f_op_f32(floor(-798f)))))));
    global3 = u_input.a.ywx;
    let var_2 = vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(73610u), ~u_input.b, u_input.b, _wgslsmith_mod_u32(1u, u_input.b)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, 87842u), vec4<u32>(u_input.b, 60225u, 0u, u_input.b)))), vec4<u32>(u_input.b, u_input.b, ~u_input.b, func_1())), select(abs(_wgslsmith_div_u32(u_input.b, 4294967295u) & (28793u ^ u_input.b)), 44688u, true));
    let var_3 = Struct_1(u_input.a.x, vec3<bool>(all(vec4<bool>(any(vec2<bool>(var_0, var_0)), all(vec4<bool>(true, true, false, var_0)), var_0, var_0)), var_0, var_0), 26982i, !(!(!vec4<bool>(false, var_0, var_0, var_0))));
    let var_4 = ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.yx, _wgslsmith_sub_vec2_u32(var_2.xz, var_2.zx)), var_2.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), global0[_wgslsmith_index_u32(abs(1u), 26u)] >> (var_2 % vec3<u32>(32u)));
}

