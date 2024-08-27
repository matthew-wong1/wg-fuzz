struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u, vec4<f32>(1784f, 779f, 191f, 1429f)), Struct_1(45745u, vec4<f32>(203f, 1802f, -1140f, 815f)), Struct_1(4294967295u, vec4<f32>(1000f, -522f, -1243f, -2767f)), Struct_1(1u, vec4<f32>(-393f, -1531f, 173f, 427f)), Struct_1(0u, vec4<f32>(-308f, -353f, -1014f, 236f)), Struct_1(4294967295u, vec4<f32>(483f, -220f, 1701f, -652f)), Struct_1(8674u, vec4<f32>(-774f, 1845f, 424f, -516f)), Struct_1(0u, vec4<f32>(173f, 854f, -199f, -608f)), Struct_1(122911u, vec4<f32>(-1204f, 326f, -525f, -483f)), Struct_1(22548u, vec4<f32>(-767f, -570f, 242f, 1383f)), Struct_1(0u, vec4<f32>(-264f, 1000f, 305f, -925f)), Struct_1(33593u, vec4<f32>(864f, -1226f, -811f, -1990f)), Struct_1(3046u, vec4<f32>(475f, 431f, -556f, 1026f)), Struct_1(0u, vec4<f32>(1887f, 256f, 470f, 1948f)), Struct_1(101883u, vec4<f32>(-1000f, 365f, 894f, -425f)), Struct_1(4198u, vec4<f32>(746f, -911f, 852f, -466f)), Struct_1(0u, vec4<f32>(478f, -271f, -1301f, 681f)), Struct_1(32383u, vec4<f32>(-949f, -562f, 1305f, -849f)), Struct_1(0u, vec4<f32>(1967f, -108f, 445f, -1224f)), Struct_1(16092u, vec4<f32>(-1437f, 717f, -1090f, -532f)), Struct_1(81907u, vec4<f32>(154f, -1000f, -565f, 179f)), Struct_1(4294967295u, vec4<f32>(-885f, 1147f, 1060f, -1685f)), Struct_1(57063u, vec4<f32>(-1000f, -495f, 1983f, 275f)), Struct_1(5755u, vec4<f32>(851f, -473f, -530f, -151f)), Struct_1(0u, vec4<f32>(-657f, 339f, 438f, 1146f)));

var<private> global1: Struct_1;

var<private> global2: i32 = 0i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = global0[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global1.a, u_input.a), vec2<u32>(u_input.a, global1.a), vec2<bool>(true, true)), select(vec2<u32>(101440u, 1u), vec2<u32>(2558u, 1u), true)), ~u_input.a)), firstLeadingBit(global1.a)), 25u)];
    var var_1 = -(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-19861i, -2147483647i, -1i, 2147483647i), vec4<i32>(13531i, -44426i, 0i, 38667i)), abs(-25401i), i32(-1i) * -2147483647i)) ^ -vec3<i32>(-54642i, _wgslsmith_mult_i32(reverseBits(-2147483647i), 0i), ~33483i);
    let var_2 = var_0.b.x;
    var_1 = min(~vec3<i32>(abs(-var_1.x), 54737i, ~var_1.x), ~max(abs(vec3<i32>(var_1.x, -1i, var_1.x) >> (vec3<u32>(66938u, 4294967295u, var_0.a) % vec3<u32>(32u))), ~reverseBits(vec3<i32>(-2147483647i, var_1.x, -26436i))));
    return global1.b.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global1.b.x) - _wgslsmith_f_op_f32(select(global1.b.x, global1.b.x, true)))))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(vec3<u32>(arg_0, arg_0, arg_0))), vec3<u32>(2725u, 0u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.b)) * _wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(var_1.a, 1000f, 2744f, 1106f), vec4<bool>(false, true, true, true)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2085f, var_0, var_0, -1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(259f, -177f, -684f, global1.b.x), global1.b)))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a * global1.b.x), _wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_div_f32(var_0, 577f)) - global1.b.zzz) + vec3<f32>(-880f, _wgslsmith_f_op_f32(f32(-1f) * -931f), var_0)), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 21250u, u_input.a, 4294967295u), vec4<u32>(arg_0, global1.a, 12954u, arg_0)), ~vec4<u32>(0u, u_input.a, global1.a, arg_0)), firstLeadingBit(vec4<u32>(0u, 6683u, 6857u, global1.a) >> (vec4<u32>(0u, 4294967295u, 0u, 1u) % vec4<u32>(32u)))), global1.b));
    global1 = global0[_wgslsmith_index_u32(~(~(arg_0 << (86747u % 32u))), 25u)];
    var var_3 = -1168f;
    return global0[_wgslsmith_index_u32(~global1.a, 25u)];
}

fn func_1() -> u32 {
    global2 = _wgslsmith_add_i32(0i, 2147483647i);
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a | 85221u, 44407u), 25u)];
    var var_0 = func_2(~(~global1.a));
    global1 = global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 25u)];
    let var_1 = vec3<i32>(-30983i, _wgslsmith_add_i32(reverseBits(1i), abs(-(0i >> (u_input.a % 32u)))), 1i);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(global1.a, u_input.a), global1.a), min(vec2<u32>(0u, 4294967295u), ~vec2<u32>(global1.a, 37946u)) | vec2<u32>(15337u, 94744u)) >> ((_wgslsmith_mod_u32(6113u, 51753u) | func_1()) % 32u), 25u)];
    let var_0 = vec3<i32>(1i, 1i, 1i) ^ vec3<i32>(0i, -abs(0i << (u_input.a % 32u)), -37491i);
    var var_1 = _wgslsmith_add_i32(reverseBits(~firstTrailingBit(var_0.x)), abs(7308i));
    global1 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-global1.b));
    var_1 = ~var_0.x;
    global2 = countOneBits(12425i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(abs(firstLeadingBit(var_0.x)), 2147483647i << (func_2(0u).a % 32u)));
}

