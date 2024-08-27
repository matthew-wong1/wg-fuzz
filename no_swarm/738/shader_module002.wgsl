struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<u32>(35019u, 837u), -833f, vec3<u32>(23487u, 4294967295u, 6342u)), Struct_1(vec2<u32>(19309u, 45392u), 686f, vec3<u32>(4294967295u, 23783u, 4294967295u)));

var<private> global1: array<i32, 28>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<Struct_2, 6>;

var<private> global4: array<Struct_5, 10> = array<Struct_5, 10>(Struct_5(vec2<i32>(0i, 1i), 5775u, vec3<u32>(24797u, 1u, 4294967295u), vec4<f32>(835f, -932f, -1000f, 714f), -24425i), Struct_5(vec2<i32>(59233i, 54147i), 4294967295u, vec3<u32>(65u, 4294967295u, 91722u), vec4<f32>(929f, -433f, -374f, 931f), 0i), Struct_5(vec2<i32>(-1651i, 1i), 0u, vec3<u32>(0u, 4294967295u, 0u), vec4<f32>(-1391f, 512f, -898f, -857f), 1i), Struct_5(vec2<i32>(i32(-2147483648), 37770i), 21331u, vec3<u32>(4294967295u, 36257u, 13138u), vec4<f32>(1000f, 1425f, -483f, 552f), 2147483647i), Struct_5(vec2<i32>(1i, -1i), 0u, vec3<u32>(0u, 1u, 21308u), vec4<f32>(-1578f, -1363f, 836f, 835f), 0i), Struct_5(vec2<i32>(i32(-2147483648), 2829i), 79676u, vec3<u32>(45912u, 4294967295u, 0u), vec4<f32>(446f, -409f, 1885f, 654f), 11133i), Struct_5(vec2<i32>(0i, 1i), 0u, vec3<u32>(20495u, 13338u, 56935u), vec4<f32>(-790f, 472f, 559f, -159f), 5723i), Struct_5(vec2<i32>(2147483647i, -1i), 15399u, vec3<u32>(38421u, 0u, 0u), vec4<f32>(-1393f, 170f, 1165f, -1257f), 0i), Struct_5(vec2<i32>(-42005i, 0i), 27288u, vec3<u32>(26884u, 20549u, 12033u), vec4<f32>(-1837f, 365f, -1757f, 538f), -14883i), Struct_5(vec2<i32>(i32(-2147483648), -101335i), 4294967295u, vec3<u32>(0u, 1u, 4294967295u), vec4<f32>(-418f, -1000f, 2268f, -727f), -17063i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = vec2<bool>(true, true);
    let var_1 = arg_1;
    let var_2 = ~(~vec4<i32>(-2147483647i, 0i ^ var_1.d.x, min(u_input.a.x, arg_1.d.x), -16944i << (u_input.b % 32u)) | vec4<i32>(abs(-u_input.a.x), u_input.a.x, -_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(72921u, 28u)], 1i, arg_1.b), i32(-1i) * -1i));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_1.a.c.yy, arg_2), 2285u);
    global1 = array<i32, 28>();
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.b), 230f, -1634f);
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    global3 = array<Struct_2, 6>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -492f), 2580f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -412f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-264f, -498f, var_0.x))) * vec3<f32>(var_0.x, 1000f, var_0.x))));
    var var_2 = Struct_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 2u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 2u)], u_input.a), arg_0.yy))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(199f, var_0.x, var_1.x))), vec3<bool>(!global2.x, !global2.x, true)))), global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(27748u, 14311u, u_input.b, 36066u), vec4<u32>(u_input.b, 0u, u_input.b, arg_0.x)))), 2u)], countOneBits(abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b, 28u)], -15319i), select(12956i, global1[_wgslsmith_index_u32(arg_0.x, 28u)], global2.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) - _wgslsmith_f_op_vec3_f32(-var_1))))));
    return Struct_5(u_input.a.zy, ~94631u, ~abs(vec3<u32>(arg_0.x, ~3037u, 1u)), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(any(select(vec3<bool>(false, true, false), vec3<bool>(false, global2.x, false), vec3<bool>(true, global2.x, true))), Struct_2(global0[_wgslsmith_index_u32(34987u ^ u_input.b, 2u)], select(0i, 30990i, global2.x), var_2.c, ~u_input.a), ~var_2.c.c.yz)).x, var_3.x, _wgslsmith_div_f32(var_3.x, -242f), 544f), countOneBits(8351i) << (var_2.c.a.x % 32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    var var_0 = func_2(max(~(vec3<u32>(u_input.b, 4294967295u, 54695u) ^ abs(vec3<u32>(1u, u_input.b, u_input.b))), reverseBits(select(~vec3<u32>(arg_0.x, arg_0.x, 106472u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 67190u), vec3<u32>(18510u, u_input.b, arg_0.x), vec3<u32>(u_input.b, u_input.b, u_input.b)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, global2.x, false))))));
    global2 = !select(vec2<bool>(true, global2.x), !(!vec2<bool>(global2.x, global2.x)), !vec2<bool>(global2.x, true));
    global3 = array<Struct_2, 6>();
    let var_1 = global3[_wgslsmith_index_u32(u_input.b, 6u)];
    let var_2 = min(_wgslsmith_clamp_u32(~(~10848u), func_2(~(~vec3<u32>(62749u, 15537u, 37656u))).b, var_0.b), 1u);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 6>();
    let var_0 = global2.x;
    var var_1 = _wgslsmith_mult_i32(59684i, global1[_wgslsmith_index_u32(abs(u_input.b), 28u)]);
    let var_2 = false;
    var var_3 = 72299i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~13070u) << (~(~u_input.b) % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.b, 64795u, u_input.b, 44933u)), min(~vec4<u32>(u_input.b, 0u, 40079u, 79245u), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)))), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(min(u_input.b, 63230u), u_input.b >> (u_input.b % 32u)), func_1(~vec2<u32>(0u, u_input.b), -1i & u_input.a.x, vec3<f32>(1000f, -1000f, -1293f), -1173f), 4294967295u), ~max(17911u & u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(122f)), _wgslsmith_f_op_f32(-501f * -889f), 123f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1086f, -193f, -1717f), vec3<f32>(969f, -587f, 739f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, -562f, -747f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(898f, -824f, 481f, -806f) - vec4<f32>(-527f, -578f, -1288f, 2506f)), _wgslsmith_div_vec4_f32(vec4<f32>(519f, 581f, -494f, -665f), vec4<f32>(1000f, -843f, -701f, -132f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, 411f, -1085f, -333f) + vec4<f32>(-1038f, 1127f, -1424f, -1304f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(596f, -487f, -1915f, 587f), vec4<f32>(-1648f, -1537f, -282f, -415f))), var_2)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -415f, 495f, -715f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, -1226f, -977f, 429f))))));
}

