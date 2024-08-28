struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<u32>(42073u, 0u, 14467u, 38497u), 7749i, vec3<u32>(6810u, 1u, 11031u), 1u), Struct_1(vec4<u32>(69177u, 1u, 45514u, 26887u), -33703i, vec3<u32>(7961u, 30018u, 27229u), 1u), Struct_1(vec4<u32>(0u, 36839u, 2345u, 40432u), 3312i, vec3<u32>(29639u, 40487u, 50430u), 43646u), Struct_1(vec4<u32>(4883u, 32983u, 90759u, 1u), 0i, vec3<u32>(4294967295u, 69722u, 150188u), 66965u), Struct_1(vec4<u32>(0u, 2864u, 4294967295u, 41556u), -1i, vec3<u32>(4294967295u, 0u, 4294967295u), 61090u), Struct_1(vec4<u32>(1u, 103079u, 1u, 2489u), 6647i, vec3<u32>(0u, 0u, 1u), 0u), Struct_1(vec4<u32>(16858u, 1u, 17848u, 68759u), 1i, vec3<u32>(42538u, 1u, 4234u), 56666u), Struct_1(vec4<u32>(25913u, 56121u, 0u, 39740u), 1i, vec3<u32>(7977u, 22463u, 41465u), 1u), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 0u), 2147483647i, vec3<u32>(14652u, 8887u, 0u), 3432u), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 2031u), i32(-2147483648), vec3<u32>(31868u, 4294967295u, 1u), 20335u), Struct_1(vec4<u32>(13088u, 14764u, 6182u, 4294967295u), -25942i, vec3<u32>(29517u, 18957u, 45188u), 4954u), Struct_1(vec4<u32>(10045u, 8667u, 4294967295u, 1u), 2147483647i, vec3<u32>(1u, 15828u, 9841u), 4294967295u), Struct_1(vec4<u32>(0u, 4294967295u, 69966u, 1u), -2161i, vec3<u32>(4294967295u, 0u, 29079u), 1u), Struct_1(vec4<u32>(1u, 18337u, 4294967295u, 1u), 0i, vec3<u32>(0u, 4294967295u, 87484u), 0u), Struct_1(vec4<u32>(11572u, 1u, 21161u, 1u), i32(-2147483648), vec3<u32>(4294967295u, 0u, 51902u), 1u), Struct_1(vec4<u32>(1u, 33515u, 56887u, 4294967295u), -4125i, vec3<u32>(28215u, 4294967295u, 4294967295u), 33726u), Struct_1(vec4<u32>(0u, 1u, 0u, 0u), -10825i, vec3<u32>(32386u, 3142u, 4294967295u), 1u), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), -30653i, vec3<u32>(4294967295u, 4294967295u, 102790u), 14910u), Struct_1(vec4<u32>(18342u, 4294967295u, 34897u, 3981u), 51709i, vec3<u32>(0u, 4294967295u, 43754u), 8735u), Struct_1(vec4<u32>(25442u, 1u, 979u, 39924u), 2147483647i, vec3<u32>(0u, 50330u, 9454u), 61197u), Struct_1(vec4<u32>(4294967295u, 22029u, 54625u, 53040u), i32(-2147483648), vec3<u32>(63164u, 4294967295u, 0u), 1u), Struct_1(vec4<u32>(0u, 39785u, 1u, 16911u), -25367i, vec3<u32>(13101u, 1u, 56771u), 4294967295u), Struct_1(vec4<u32>(50068u, 35319u, 80403u, 0u), -31313i, vec3<u32>(1u, 15879u, 47884u), 0u), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), 27939i, vec3<u32>(33002u, 4294967295u, 47806u), 0u), Struct_1(vec4<u32>(1u, 135647u, 1u, 7365u), -69929i, vec3<u32>(21921u, 4294967295u, 4294967295u), 4294967295u));

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    var var_0 = ~_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_2 = global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.c.c.x ^ var_1.c.d, _wgslsmith_add_u32(4294967295u, u_input.a.x))), ~(~u_input.a.yy)), ~_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.c.d, var_1.c.d, 0u))) | ~(~4294967295u)), 25u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 1142f, var_1.b.x) + vec3<f32>(-1212f, var_1.b.x, 307f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.b.x) + vec3<f32>(var_1.a, var_1.a, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, -1525f, 485f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -320f, 388f) - vec3<f32>(-791f, -259f, var_1.b.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, 295f, var_1.a)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.x, -721f, var_1.b.x))), vec3<f32>(var_1.a, 492f, var_1.a))), false)), !vec3<bool>(true, true, 4294967295u == var_2.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f), var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a))), var_1.b.x)), all(!vec2<bool>(true, all(vec3<bool>(true, true, false))))));
    var var_4 = Struct_1(_wgslsmith_mod_vec4_u32(var_2.a, firstTrailingBit(vec4<u32>(var_1.c.a.x, var_2.a.x, 23674u, var_2.d))) & var_2.a, -3573i, var_1.c.c, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(59511u, min(var_1.c.c.x, u_input.a.x) ^ _wgslsmith_mult_u32(2283u, var_1.c.c.x), ~_wgslsmith_dot_vec2_u32(var_2.c.zy, u_input.a.yz))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1101f - -1000f) - _wgslsmith_f_op_f32(-221f * 752f))), -338f));
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~18028u, abs(~min(~4294967295u, ~u_input.a.x)), countOneBits(u_input.a.x)), 3u)];
    var var_1 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-992f, _wgslsmith_f_op_f32(var_0.b.x - 1280f), -850f != var_0.b.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1277f) - 1141f)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-718f, 1364f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(875f, 776f)) + vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(-373f, -1223f))))), global0[_wgslsmith_index_u32(u_input.a.x, 25u)]);
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f * var_0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))), var_0.b, var_0.c);
    var var_2 = !(!(any(vec2<bool>(true, true)) && !(var_1.c.c.x > var_1.c.c.x)));
    let var_3 = var_0.b.x;
    var var_4 = Struct_1(vec4<u32>(1u, ~var_1.c.c.x, ~u_input.a.x, ~abs(var_1.c.d)), var_1.c.b, var_1.c.a.yxw, u_input.a.x);
    return StorageBuffer(58138u, var_0.c.c.x, vec2<i32>(~(-var_4.b), abs(0i)) << (vec2<u32>(~_wgslsmith_add_u32(var_1.c.a.x, var_1.c.a.x), _wgslsmith_mult_u32(72682u, u_input.a.x)) % vec2<u32>(32u)), abs(-firstTrailingBit(vec4<i32>(0i, var_4.b, -50817i, -3362i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 3u)];
    global0 = array<Struct_1, 25>();
    let var_1 = !vec4<bool>(true, false, u_input.a.x > 4294967295u, true);
    var var_2 = !(!(!vec3<bool>(select(var_1.x, var_1.x, true), u_input.a.x > var_0.c.c.x, any(var_1.wz))));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a.x >> (81259u % 32u), _wgslsmith_sub_u32(var_0.c.d, var_0.c.a.x)), abs(~(~u_input.a))), ~_wgslsmith_add_u32(u_input.a.x, reverseBits(u_input.a.x ^ 4294967295u)));
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = func_1();
}

