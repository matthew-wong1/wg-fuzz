struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(40550u, vec2<bool>(true, false), false), Struct_1(4294967295u, vec2<bool>(true, true), false), Struct_1(10100u, vec2<bool>(true, true), false), Struct_1(4294967295u, vec2<bool>(true, true), true), Struct_1(12214u, vec2<bool>(false, false), false), Struct_1(51337u, vec2<bool>(true, true), false), Struct_1(0u, vec2<bool>(false, false), true), Struct_1(34006u, vec2<bool>(false, true), false), Struct_1(3921u, vec2<bool>(false, false), false), Struct_1(1u, vec2<bool>(false, false), true), Struct_1(61162u, vec2<bool>(false, true), true), Struct_1(79025u, vec2<bool>(false, false), true), Struct_1(24638u, vec2<bool>(true, false), false), Struct_1(0u, vec2<bool>(true, false), true), Struct_1(42136u, vec2<bool>(true, true), false), Struct_1(24995u, vec2<bool>(true, false), true), Struct_1(0u, vec2<bool>(false, false), false), Struct_1(6589u, vec2<bool>(true, false), false), Struct_1(0u, vec2<bool>(false, true), true), Struct_1(55284u, vec2<bool>(true, false), false), Struct_1(0u, vec2<bool>(true, true), true), Struct_1(79664u, vec2<bool>(false, false), true), Struct_1(31856u, vec2<bool>(false, true), true), Struct_1(23431u, vec2<bool>(false, true), true), Struct_1(18648u, vec2<bool>(true, false), true), Struct_1(0u, vec2<bool>(false, false), false), Struct_1(92840u, vec2<bool>(true, false), false), Struct_1(4294967295u, vec2<bool>(false, false), true), Struct_1(11108u, vec2<bool>(true, false), true), Struct_1(36189u, vec2<bool>(false, false), true), Struct_1(4637u, vec2<bool>(true, true), false));

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

var<private> global2: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> bool {
    return -1309f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
}

fn func_2() -> i32 {
    global2 = false;
    var var_0 = Struct_2(Struct_1(18156u, vec2<bool>(!select(false, true, true), func_3()), true));
    let var_1 = Struct_2(Struct_1(4294967295u, !(!var_0.a.b), !var_0.a.c));
    let var_2 = _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(max(vec2<u32>(var_1.a.a, 1u), vec2<u32>(4294967295u, 29209u)), ~vec2<u32>(var_0.a.a, 1u)) & select(~max(vec2<u32>(var_1.a.a, 12377u), vec2<u32>(u_input.b, u_input.b)), ~abs(vec2<u32>(4294967295u, 4294967295u)), var_1.a.c), vec2<u32>(6621u, _wgslsmith_sub_u32(1u, var_0.a.a)) << (~vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)));
    let var_3 = Struct_3(var_0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f * 882f) - _wgslsmith_f_op_f32(463f + -467f)), _wgslsmith_f_op_f32(605f * _wgslsmith_f_op_f32(193f - 236f)), 699f, _wgslsmith_f_op_f32(max(-619f, 1676f)))));
    return _wgslsmith_clamp_i32(-1i, -26358i << (_wgslsmith_clamp_u32(reverseBits(var_0.a.a), 4294967295u << (var_0.a.a % 32u), firstTrailingBit(select(0u, var_2.x, var_0.a.b.x))) % 32u), firstLeadingBit(0i) >> ((firstLeadingBit(_wgslsmith_div_u32(var_3.a, var_0.a.a)) >> ((_wgslsmith_dot_vec2_u32(var_2, var_2) | _wgslsmith_mult_u32(20046u, u_input.c)) % 32u)) % 32u));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<bool>) -> vec2<i32> {
    global0 = array<Struct_1, 31>();
    var var_0 = 1u;
    return _wgslsmith_mod_vec2_i32(vec2<i32>(max(1i, u_input.a), (func_2() & u_input.a) >> (_wgslsmith_mult_u32(0u, ~u_input.c) % 32u)), vec2<i32>(firstLeadingBit(0i), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 23>();
    global0 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = ~vec4<i32>(reverseBits(-(u_input.a ^ 2147483647i)), min(~35241i, -(~u_input.a)), 1i, -2147483647i);
    var var_2 = Struct_4(max(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, ~u_input.a), vec2<i32>(_wgslsmith_mod_i32(-1i, 11620i), 17548i)), vec2<i32>(var_1.x, _wgslsmith_div_i32(1i | u_input.a, -u_input.a))));
    var var_3 = _wgslsmith_dot_vec2_i32(-min(vec2<i32>(0i, -47802i), var_1.xy), func_1(vec3<bool>(!all(vec2<bool>(false, true)), false, true && (4294967295u != u_input.c)), _wgslsmith_dot_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 3358u, u_input.c), vec3<u32>(u_input.b, 52397u, 4294967295u)), vec3<u32>(47620u, 10529u, 4294967295u) ^ vec3<u32>(u_input.b, u_input.c, 26167u)), vec3<u32>(u_input.b, u_input.b, 4294967295u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.c, 28113u), vec3<u32>(0u, u_input.c, 1u)) % vec3<u32>(32u))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), var_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -613f))));
    let x = u_input.a;
    s_output = StorageBuffer(30711u, 0i);
}

