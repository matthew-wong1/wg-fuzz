struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(79657i, i32(-2147483648), -87031i, i32(-2147483648), 1i, 2147483647i, 20638i, 3857i, 5005i, 0i, 2147483647i, i32(-2147483648), -20478i, -69225i, -23524i, -6166i, i32(-2147483648), 12854i, 16331i, 9387i, -620i, 1i, 42123i, 2147483647i);

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_2(vec3<i32>(i32(-2147483648), 0i, 1i)), vec2<u32>(1u, 14682u), vec2<f32>(818f, 815f), vec4<u32>(35476u, 0u, 1u, 22627u), -41142i), Struct_4(Struct_2(vec3<i32>(1i, 54384i, 28198i)), vec2<u32>(44408u, 1u), vec2<f32>(-1448f, -142f), vec4<u32>(30639u, 22742u, 4294967295u, 4294967295u), 40622i), Struct_4(Struct_2(vec3<i32>(35078i, -59012i, 0i)), vec2<u32>(16913u, 51670u), vec2<f32>(1248f, -749f), vec4<u32>(1u, 4294967295u, 25978u, 1u), -47811i), Struct_4(Struct_2(vec3<i32>(2147483647i, 0i, 40334i)), vec2<u32>(4294967295u, 0u), vec2<f32>(-536f, -2270f), vec4<u32>(4294967295u, 1u, 67627u, 32580u), -9219i), Struct_4(Struct_2(vec3<i32>(i32(-2147483648), 0i, 22503i)), vec2<u32>(75908u, 42917u), vec2<f32>(605f, 1367f), vec4<u32>(58842u, 18367u, 0u, 4294967295u), -47136i), Struct_4(Struct_2(vec3<i32>(29146i, -21165i, 26i)), vec2<u32>(0u, 1u), vec2<f32>(-504f, 1000f), vec4<u32>(0u, 82657u, 28220u, 1u), i32(-2147483648)), Struct_4(Struct_2(vec3<i32>(i32(-2147483648), 1i, 2147483647i)), vec2<u32>(0u, 5030u), vec2<f32>(-444f, 611f), vec4<u32>(33588u, 27155u, 0u, 0u), -11759i), Struct_4(Struct_2(vec3<i32>(-1i, 0i, 11903i)), vec2<u32>(62817u, 47677u), vec2<f32>(249f, -789f), vec4<u32>(6991u, 2154u, 4294967295u, 0u), 2147483647i), Struct_4(Struct_2(vec3<i32>(1i, -14348i, 34933i)), vec2<u32>(32854u, 0u), vec2<f32>(-1220f, 103f), vec4<u32>(0u, 0u, 17584u, 0u), 1i), Struct_4(Struct_2(vec3<i32>(1i, 2147483647i, 2147483647i)), vec2<u32>(13746u, 4294967295u), vec2<f32>(159f, 2286f), vec4<u32>(0u, 0u, 1u, 4294967295u), -16709i), Struct_4(Struct_2(vec3<i32>(1i, 2147483647i, -3092i)), vec2<u32>(21975u, 1u), vec2<f32>(-588f, 1000f), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), 0i), Struct_4(Struct_2(vec3<i32>(18684i, -27337i, 0i)), vec2<u32>(4294967295u, 74887u), vec2<f32>(-1386f, -1297f), vec4<u32>(1u, 89804u, 0u, 1u), 15585i), Struct_4(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 27067i)), vec2<u32>(0u, 1u), vec2<f32>(-673f, 2096f), vec4<u32>(1u, 0u, 1u, 87258u), -10369i), Struct_4(Struct_2(vec3<i32>(-748i, i32(-2147483648), i32(-2147483648))), vec2<u32>(4294967295u, 4618u), vec2<f32>(1789f, 846f), vec4<u32>(6241u, 101367u, 58310u, 0u), 1680i));

var<private> global2: u32;

var<private> global3: array<Struct_4, 31>;

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<i32>(47578i, 0i, 54i)), Struct_2(vec3<i32>(0i, 4314i, 14145i)), Struct_2(vec3<i32>(1i, 25317i, i32(-2147483648))), Struct_2(vec3<i32>(1i, -60736i, -1i)), Struct_2(vec3<i32>(2147483647i, 27946i, 2147483647i)), Struct_2(vec3<i32>(1i, -38510i, 2147483647i)), Struct_2(vec3<i32>(0i, -1i, -10510i)), Struct_2(vec3<i32>(2147483647i, 7010i, 34718i)), Struct_2(vec3<i32>(-22130i, -54223i, i32(-2147483648))), Struct_2(vec3<i32>(7066i, -36828i, 2492i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(arg_2, 10u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-968f, -767f)) - _wgslsmith_f_op_f32(abs(arg_1.c.x)));
    global0 = array<i32, 24>();
    let var_2 = select(firstLeadingBit(firstTrailingBit(~var_0.a.xx)), ~vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(30683i, var_0.a.x, arg_1.a.a.x), vec3<i32>(global0[_wgslsmith_index_u32(8811u, 24u)], -39097i, -2147483647i))), select(false, _wgslsmith_f_op_f32(floor(arg_1.c.x)) != -431f, false)) | firstLeadingBit(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(var_0.a.x, 63440i), vec2<i32>(-18902i, 1i)), arg_1.a.a.xz, vec2<i32>(_wgslsmith_sub_i32(1i, 39482i), -arg_1.a.a.x)));
    let var_3 = all(vec3<bool>(false, true, arg_1.b.x != 45172u));
    return 22742u;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(59219u, max(87911u << (0u % 32u), func_3(vec3<u32>(u_input.c, u_input.c, 63890u), Struct_4(Struct_2(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], -19503i, global0[_wgslsmith_index_u32(u_input.b, 24u)])), vec2<u32>(u_input.b, 0u), vec2<f32>(324f, -384f), vec4<u32>(1u, 4294967295u, u_input.b, 49441u), 15178i), u_input.b)) & 11410u, u_input.d, ~u_input.c), vec4<u32>(max(4294967295u, u_input.a), ~u_input.a, abs(39160u) & ~(~u_input.b), select(abs(_wgslsmith_mult_u32(u_input.c, u_input.b)), u_input.b, true)));
    var var_1 = select(vec4<bool>(true, true, (select(13943i, global0[_wgslsmith_index_u32(var_0, 24u)], false) ^ ~(-1i)) >= -1i, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, any(vec2<bool>(false, true)) != true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)))), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 24u)] >= global0[_wgslsmith_index_u32(1u, 24u)], var_0 > var_0), !all(vec2<bool>(true, true))));
    let var_2 = -996f;
    let var_3 = -1i;
    var var_4 = select(vec4<bool>(var_1.x, select(var_1.x, false, var_1.x), false, all(vec2<bool>(var_3 <= 13155i, false))), vec4<bool>(var_2 <= 997f, u_input.c >= ~var_0, 1237f > _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-var_2), var_1.x)), !all(!vec3<bool>(var_1.x, var_1.x, var_1.x))), false);
    return ~(var_0 ^ (~var_0 << (~43261u % 32u)));
}

fn func_1() -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(~(~func_2()), 10u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f + -118f)), 895f)), _wgslsmith_div_i32(var_0.a.x, -global0[_wgslsmith_index_u32(abs(~u_input.c), 24u)]));
    var var_2 = global4[_wgslsmith_index_u32(4294967295u, 10u)];
    let var_3 = any(select(vec4<bool>(any(vec3<bool>(false, true, false)), !select(false, false, true), any(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !(u_input.c > 53461u)), true));
    let var_4 = Struct_4(Struct_2(var_0.a | abs(var_0.a)), reverseBits(firstLeadingBit(vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, var_1.a))) * vec2<f32>(363f, -1187f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(522f, var_1.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, -2512f) + vec2<f32>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1689f, -291f) - vec2<f32>(var_1.a, 280f)))))), vec4<u32>(u_input.d, u_input.a, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 47280u), vec2<u32>(4294967295u, u_input.c)), _wgslsmith_mult_u32(~u_input.a, u_input.c)), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.c, u_input.b), _wgslsmith_clamp_u32(u_input.d, _wgslsmith_mod_u32(u_input.b, u_input.d), min(1u, 47847u)), ~u_input.a)), i32(-1i) * -2147483647i);
    return var_4.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(542f, -545f, -360f) + vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -846f), -1441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1012f, 1193f)))))), true));
    var var_2 = ~vec4<u32>(~69654u, u_input.c, u_input.a, var_0.a);
    global2 = ~22578u & func_1();
    let var_3 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(12609u, u_input.c, true), 45447u | var_0.a), 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_mod_i32(-14700i, 53611i), -select(global0[_wgslsmith_index_u32(var_2.x, 24u)], global0[_wgslsmith_index_u32(39349u, 24u)], true) >> (9054u % 32u)));
    var var_4 = -664f;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

