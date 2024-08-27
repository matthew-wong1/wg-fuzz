struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<i32, 32>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<u32>(1u, 29767u, 4294967295u), Struct_2(vec4<u32>(0u, 35269u, 5983u, 0u), 42180u, vec2<u32>(86054u, 0u), Struct_1(7670i)), Struct_1(4594i)), Struct_3(vec3<u32>(4294967295u, 27905u, 17719u), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 1u), 8048u, vec2<u32>(64290u, 18544u), Struct_1(2147483647i)), Struct_1(-1i)), Struct_3(vec3<u32>(30123u, 3410u, 14010u), Struct_2(vec4<u32>(0u, 11425u, 4294967295u, 56140u), 1u, vec2<u32>(5046u, 1u), Struct_1(i32(-2147483648))), Struct_1(i32(-2147483648))), Struct_3(vec3<u32>(0u, 4294967295u, 1u), Struct_2(vec4<u32>(27931u, 0u, 1u, 0u), 0u, vec2<u32>(1u, 840u), Struct_1(-26616i)), Struct_1(1i)), Struct_3(vec3<u32>(32375u, 1u, 4294967295u), Struct_2(vec4<u32>(4294967295u, 0u, 16843u, 0u), 37028u, vec2<u32>(1u, 0u), Struct_1(-49134i)), Struct_1(38025i)), Struct_3(vec3<u32>(1u, 0u, 93872u), Struct_2(vec4<u32>(0u, 28413u, 0u, 0u), 4294967295u, vec2<u32>(82353u, 80094u), Struct_1(0i)), Struct_1(1i)), Struct_3(vec3<u32>(10517u, 1u, 28441u), Struct_2(vec4<u32>(1u, 1u, 4294967295u, 21846u), 1u, vec2<u32>(4294967295u, 57220u), Struct_1(-4277i)), Struct_1(-26063i)), Struct_3(vec3<u32>(6263u, 24051u, 45888u), Struct_2(vec4<u32>(4294967295u, 1u, 4328u, 57817u), 0u, vec2<u32>(34125u, 1u), Struct_1(i32(-2147483648))), Struct_1(2147483647i)), Struct_3(vec3<u32>(4294967295u, 0u, 124552u), Struct_2(vec4<u32>(32999u, 29316u, 0u, 0u), 40544u, vec2<u32>(6671u, 1u), Struct_1(0i)), Struct_1(-12580i)), Struct_3(vec3<u32>(3739u, 1u, 1034u), Struct_2(vec4<u32>(47391u, 46928u, 0u, 4294967295u), 4294967295u, vec2<u32>(401u, 1u), Struct_1(i32(-2147483648))), Struct_1(-26221i)), Struct_3(vec3<u32>(19477u, 0u, 29931u), Struct_2(vec4<u32>(1u, 12692u, 0u, 85627u), 34225u, vec2<u32>(63945u, 12594u), Struct_1(2147483647i)), Struct_1(i32(-2147483648))), Struct_3(vec3<u32>(1u, 22570u, 50527u), Struct_2(vec4<u32>(1u, 71518u, 1u, 6540u), 22530u, vec2<u32>(0u, 0u), Struct_1(i32(-2147483648))), Struct_1(-46575i)), Struct_3(vec3<u32>(1u, 72197u, 0u), Struct_2(vec4<u32>(6489u, 1u, 0u, 1u), 11841u, vec2<u32>(0u, 12655u), Struct_1(1i)), Struct_1(-4666i)), Struct_3(vec3<u32>(70018u, 4294967295u, 0u), Struct_2(vec4<u32>(0u, 30723u, 59659u, 4294967295u), 0u, vec2<u32>(6627u, 27766u), Struct_1(2147483647i)), Struct_1(1i)), Struct_3(vec3<u32>(1u, 1u, 1u), Struct_2(vec4<u32>(4679u, 4294967295u, 7416u, 1u), 14111u, vec2<u32>(4294967295u, 0u), Struct_1(-1i)), Struct_1(-52147i)), Struct_3(vec3<u32>(4294967295u, 73736u, 4294967295u), Struct_2(vec4<u32>(1u, 1u, 1u, 11916u), 4294967295u, vec2<u32>(1u, 2921u), Struct_1(0i)), Struct_1(0i)), Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u), Struct_2(vec4<u32>(98723u, 4294967295u, 1u, 43072u), 115042u, vec2<u32>(0u, 53662u), Struct_1(-1i)), Struct_1(1i)), Struct_3(vec3<u32>(7286u, 16930u, 30250u), Struct_2(vec4<u32>(1u, 41311u, 58928u, 1u), 4294967295u, vec2<u32>(4294967295u, 0u), Struct_1(1i)), Struct_1(-32567i)), Struct_3(vec3<u32>(42679u, 4294967295u, 0u), Struct_2(vec4<u32>(0u, 0u, 1u, 107174u), 4294967295u, vec2<u32>(1410u, 4294967295u), Struct_1(0i)), Struct_1(0i)), Struct_3(vec3<u32>(39546u, 1660u, 40103u), Struct_2(vec4<u32>(4294967295u, 39941u, 4165u, 1u), 61939u, vec2<u32>(43361u, 2045u), Struct_1(i32(-2147483648))), Struct_1(-1i)), Struct_3(vec3<u32>(4294967295u, 23084u, 1u), Struct_2(vec4<u32>(4294967295u, 1u, 53083u, 0u), 1u, vec2<u32>(1u, 1u), Struct_1(i32(-2147483648))), Struct_1(0i)), Struct_3(vec3<u32>(54278u, 52644u, 8972u), Struct_2(vec4<u32>(1u, 106400u, 4294967295u, 36933u), 66080u, vec2<u32>(8592u, 29554u), Struct_1(1i)), Struct_1(0i)), Struct_3(vec3<u32>(59337u, 0u, 0u), Struct_2(vec4<u32>(93644u, 4294967295u, 330u, 1u), 4940u, vec2<u32>(1u, 10127u), Struct_1(1i)), Struct_1(1i)), Struct_3(vec3<u32>(21295u, 19718u, 46480u), Struct_2(vec4<u32>(4294967295u, 42907u, 35759u, 8343u), 70825u, vec2<u32>(43259u, 1u), Struct_1(15615i)), Struct_1(-1349i)));

var<private> global3: array<Struct_1, 4>;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    global0 = array<vec2<bool>, 26>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-389f))), _wgslsmith_div_f32(-1011f, _wgslsmith_f_op_f32(-297f - -1715f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1052f, -208f))));
}

fn func_3() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(4794u, 4u)];
    let var_1 = Struct_1(-1i);
    var_0 = Struct_1(-(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(28085u, 32u)], -1i), vec2<i32>(var_1.a, var_0.a)), ~var_0.a) << (0u % 32u)));
    global1 = array<i32, 32>();
    let var_2 = ~_wgslsmith_mod_i32(abs(_wgslsmith_add_i32(-66451i, 47191i)), var_0.a) | ~var_0.a;
    return 38242i;
}

fn func_1() -> Struct_4 {
    global0 = array<vec2<bool>, 26>();
    global1 = array<i32, 32>();
    global3 = array<Struct_1, 4>();
    global3 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(u_input.a, 24u)], ~u_input.a, vec3<u32>(u_input.a, u_input.a, 16880u), any(!vec2<bool>(true, global4.x))))));
    return Struct_4(0i, ~vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(9468i, 1i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -65801i, global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)]), ~vec4<i32>(0i, global1[_wgslsmith_index_u32(57541u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)], 2147483647i)), _wgslsmith_clamp_i32(func_3(), global1[_wgslsmith_index_u32(u_input.a, 32u)] & 1717i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)])), 24790i >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<i32, 32>();
    global0 = array<vec2<bool>, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-861f + 742f), _wgslsmith_f_op_f32(abs(-1305f)), _wgslsmith_f_op_f32(f32(-1f) * -232f))))) - vec3<f32>(-1935f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(389f)) * _wgslsmith_f_op_f32(f32(-1f) * -859f)))));
    var var_2 = !vec2<bool>(global4.x, all(!global0[_wgslsmith_index_u32(~u_input.a, 26u)]));
    global0 = array<vec2<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))) * -445f));
}

