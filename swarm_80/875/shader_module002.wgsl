struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(643f, vec3<u32>(68668u, 34268u, 4294967295u), vec3<f32>(1253f, -189f, -497f)), Struct_1(686f, vec3<u32>(1u, 54868u, 1u), vec3<f32>(-2084f, -451f, -777f)), Struct_1(-692f, vec3<u32>(4294967295u, 32859u, 1u), vec3<f32>(-365f, -864f, -629f)), Struct_1(1498f, vec3<u32>(0u, 10298u, 4294967295u), vec3<f32>(-1254f, -1000f, 357f)), Struct_1(-531f, vec3<u32>(55720u, 4294967295u, 1u), vec3<f32>(199f, -422f, 1107f)), Struct_1(-1000f, vec3<u32>(0u, 55010u, 48561u), vec3<f32>(-504f, 2051f, -1428f)), Struct_1(721f, vec3<u32>(1u, 738u, 1u), vec3<f32>(-966f, -1263f, 593f)), Struct_1(418f, vec3<u32>(1u, 0u, 1u), vec3<f32>(294f, -189f, -154f)), Struct_1(-1621f, vec3<u32>(1u, 1u, 1u), vec3<f32>(1085f, -962f, -737f)), Struct_1(-431f, vec3<u32>(42862u, 4294967295u, 4294967295u), vec3<f32>(-1508f, 1000f, -338f)), Struct_1(-570f, vec3<u32>(4294967295u, 1u, 17146u), vec3<f32>(-686f, 397f, -2271f)), Struct_1(-619f, vec3<u32>(30993u, 34678u, 4294967295u), vec3<f32>(866f, -668f, -326f)), Struct_1(548f, vec3<u32>(46579u, 1u, 1u), vec3<f32>(-211f, -1603f, 631f)), Struct_1(569f, vec3<u32>(4294967295u, 19903u, 4294967295u), vec3<f32>(-408f, 1355f, -1648f)), Struct_1(717f, vec3<u32>(31364u, 8309u, 33207u), vec3<f32>(213f, -1252f, -482f)), Struct_1(583f, vec3<u32>(41104u, 0u, 4294967295u), vec3<f32>(2445f, -879f, 1121f)), Struct_1(-1275f, vec3<u32>(10449u, 49815u, 20286u), vec3<f32>(-2372f, 1480f, -1617f)), Struct_1(-216f, vec3<u32>(38531u, 0u, 88419u), vec3<f32>(838f, 392f, -865f)), Struct_1(-651f, vec3<u32>(0u, 102177u, 0u), vec3<f32>(689f, 1000f, -1090f)), Struct_1(827f, vec3<u32>(1u, 55264u, 1u), vec3<f32>(341f, 345f, -1000f)), Struct_1(-1984f, vec3<u32>(0u, 48223u, 10326u), vec3<f32>(1540f, -1148f, 845f)), Struct_1(-158f, vec3<u32>(0u, 45u, 93895u), vec3<f32>(-313f, -328f, -367f)), Struct_1(-1000f, vec3<u32>(29722u, 1u, 83531u), vec3<f32>(-2639f, 2259f, 1554f)), Struct_1(-864f, vec3<u32>(53880u, 91299u, 0u), vec3<f32>(408f, 1079f, 1200f)), Struct_1(-917f, vec3<u32>(12025u, 37572u, 4294967295u), vec3<f32>(-875f, -682f, -469f)), Struct_1(-1454f, vec3<u32>(60183u, 76751u, 5560u), vec3<f32>(393f, -702f, 370f)), Struct_1(-526f, vec3<u32>(59712u, 56542u, 12580u), vec3<f32>(1580f, -555f, 774f)));

var<private> global1: array<f32, 18> = array<f32, 18>(-1731f, 868f, 207f, -631f, 233f, 980f, 493f, -463f, -933f, 981f, 1828f, -115f, -113f, 1842f, 518f, -1207f, -1000f, 234f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_2(u_input.a > ~_wgslsmith_div_u32(~27612u, abs(50843u)));
    let var_1 = _wgslsmith_div_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(2147483647i, i32(-1i) * -39720i));
    var var_2 = Struct_2(var_0.a);
    global1 = array<f32, 18>();
    var_0 = Struct_2(true);
    return ~(-2147483647i) >= firstTrailingBit(var_1.x);
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, ~(-71982i), reverseBits(-25951i), 22445i), vec4<i32>(1i, 1i, 1i, 1i));
    var var_1 = var_0;
    let var_2 = vec3<u32>(u_input.a, _wgslsmith_div_u32(~u_input.a, u_input.a), u_input.a | 61669u);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.x, 18u)] - 717f)), -1000f, _wgslsmith_f_op_f32(1490f * _wgslsmith_div_f32(-596f, -1000f)), _wgslsmith_f_op_f32(sign(-328f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(0u, 18u)], -1403f, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(12390u, 18u)]), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(18548u, 18u)], 298f, global1[_wgslsmith_index_u32(u_input.a, 18u)], -690f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(41919u, 18u)], -2552f, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, global1[_wgslsmith_index_u32(var_2.x, 18u)], global1[_wgslsmith_index_u32(var_2.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1137f, 155f, global1[_wgslsmith_index_u32(u_input.a, 18u)], 146f)))));
    var var_4 = ~(~var_2.yz);
    return all(select(vec4<bool>(func_3(), true, true, !any(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, !any(vec3<bool>(true, false, true))), ~(0u & var_4.x) == ~1u));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = !(!vec2<bool>(func_2(), -2920f < _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 18u)], arg_2.a, false))));
    var var_1 = -_wgslsmith_mult_i32(select(reverseBits(_wgslsmith_div_i32(arg_0, -2147483647i)), ~arg_0, (true | var_0.x) | all(vec4<bool>(var_0.x, false, true, var_0.x))), arg_0);
    let var_2 = ~abs(~vec4<u32>(0u, 86168u >> (arg_2.b.x % 32u), 1u, arg_3.b.x));
    let var_3 = true;
    let var_4 = Struct_2(all(vec3<bool>(true, min(0u, u_input.a) > 1u, !(!var_3))));
    return firstTrailingBit(vec4<u32>(arg_2.b.x, ~(~(26301u & u_input.a)), u_input.a ^ min(4294967295u, var_2.x), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), max(vec2<i32>(0i, -1i), vec2<i32>(3910i, 2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(996f, global1[_wgslsmith_index_u32(u_input.a, 18u)], -1808f, global1[_wgslsmith_index_u32(u_input.a, 18u)]) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(2402u, 18u)], global1[_wgslsmith_index_u32(88452u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)])))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(48823u, 18u)], 986f, global1[_wgslsmith_index_u32(4294967295u, 18u)])))))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 15952u), u_input.a), 27u)], global0[_wgslsmith_index_u32(42548u, 27u)]), _wgslsmith_clamp_u32(abs(_wgslsmith_div_u32(u_input.a, u_input.a)) >> (~(u_input.a | 57871u) % 32u), firstTrailingBit(~46352u), u_input.a), max(~(~(vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(22969u, u_input.a) % vec2<u32>(32u)))), vec2<u32>(u_input.a, 86331u)), ~(~(~vec4<u32>(93146u, 82108u, u_input.a, u_input.a) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, 244u) % vec4<u32>(32u)))));
}

