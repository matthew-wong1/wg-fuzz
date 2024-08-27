struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(613u, 4294967295u, 21083u), vec3<u32>(8467u, 4294967295u, 22847u), vec3<u32>(78927u, 49947u, 35826u), vec3<u32>(1u, 69023u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(16149u, 0u, 21854u), vec3<u32>(4294967295u, 45566u, 4294967295u), vec3<u32>(59332u, 34516u, 1u), vec3<u32>(1u, 43715u, 1u), vec3<u32>(1u, 1u, 8033u), vec3<u32>(18777u, 127581u, 0u), vec3<u32>(53614u, 65236u, 2182u), vec3<u32>(4294967295u, 40797u, 22576u), vec3<u32>(19008u, 4294967295u, 13344u), vec3<u32>(45674u, 15355u, 4294967295u), vec3<u32>(1u, 41784u, 1u), vec3<u32>(1u, 1u, 30166u));

var<private> global1: array<i32, 14> = array<i32, 14>(i32(-2147483648), -32777i, 7666i, 1i, 43255i, 5401i, -5951i, 6547i, 0i, 2147483647i, -1i, i32(-2147483648), 0i, 46176i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = 521f;
    var_0 = -1000f;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 14u)];
    var var_2 = 0i;
    var var_3 = Struct_1(~vec4<u32>(~0u, 42375u, ~_wgslsmith_mult_u32(71426u, u_input.a.x), u_input.a.x | firstTrailingBit(u_input.a.x)));
    return Struct_1(abs(vec4<u32>(var_3.a.x, 1u, var_3.a.x, _wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(69963u, u_input.a.x, var_3.a.x, var_3.a.x))) ^ vec4<u32>(~u_input.a.x, _wgslsmith_clamp_u32(var_3.a.x, var_3.a.x, u_input.a.x), _wgslsmith_mod_u32(var_3.a.x, 34967u), u_input.a.x)));
}

fn func_2() -> u32 {
    global1 = array<i32, 14>();
    return ~u_input.a.x;
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = 1693f;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1644f);
    let var_3 = arg_0.b;
    global1 = array<i32, 14>();
    return vec4<bool>(select(true, _wgslsmith_mult_i32(arg_0.e << (arg_0.b.c % 32u), ~(-1i)) < 1i, any(vec4<bool>(var_0.c.e.x <= arg_0.b.e.x, true, false, var_3.a.x))), all(vec2<bool>(any(!var_3.a.zz), !(var_0.a.x || var_3.a.x))), true, true);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<bool> {
    global0 = array<vec3<u32>, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 896f, 1106f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1959f, -3115f, -1430f) + vec3<f32>(978f, -661f, -823f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1065f, -917f, 1991f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-292f, 1000f, -751f), vec3<f32>(-270f, -860f, 678f))))))));
    var var_1 = Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(37516u, 24781u) & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yw), func_2()), 0u, ~max(min(u_input.a.x, 34374u), 0u)));
    let var_2 = Struct_4(Struct_1(countOneBits(u_input.a)), Struct_1(vec4<u32>(_wgslsmith_mod_u32(4123u, u_input.a.x), _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(20365u, 52048u, 4294967295u, var_1.a.x)), ~u_input.a.x, _wgslsmith_mod_u32(var_1.a.x, 1u)) >> (var_1.a % vec4<u32>(32u))));
    let var_3 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~(~u_input.a.x), ~(~4294967295u)), ~countOneBits(~vec2<u32>(31467u, 1u)));
    return vec3<bool>(!arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(572f * _wgslsmith_f_op_f32(var_0.x - 193f)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(i32(-1i) * -39908i);
    var var_1 = ~_wgslsmith_add_u32(~(~reverseBits(0u)), (10509u << (func_2() % 32u)) << (firstTrailingBit(_wgslsmith_mult_u32(4294967295u, var_0.a.x)) % 32u));
    var_1 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(func_2(), 1u) ^ ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, firstLeadingBit(~1u)));
    let var_2 = Struct_2(func_4(all(vec3<bool>(true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), func_3(Struct_3(vec4<bool>(true, false, true, false), Struct_2(vec3<bool>(false, true, true), vec3<u32>(var_0.a.x, 37238u, 58427u), var_0.a.x, u_input.a.wy, vec3<f32>(-676f, -402f, 796f)), Struct_2(vec3<bool>(false, false, false), var_0.a.xxz, 32333u, var_0.a.xw, vec3<f32>(313f, 740f, -1051f)), 239f, global1[_wgslsmith_index_u32(0u, 14u)])), true), vec4<bool>(true, true, true, true)), vec2<i32>(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, 105261u), 14u)], global1[_wgslsmith_index_u32(~u_input.a.x, 14u)] ^ -global1[_wgslsmith_index_u32(33195u, 14u)])), u_input.a.xwx, 1u, var_0.a.zw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-772f - -1663f), _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(434f + -1429f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1128f, -701f, 1075f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1829f, 253f, -1198f)), vec3<bool>(true, true, true))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var_1 = max(var_0.a.x, _wgslsmith_dot_vec3_u32(max(reverseBits(var_2.b), _wgslsmith_mod_vec3_u32(var_2.b << (var_0.a.xyz % vec3<u32>(32u)), ~var_0.a.xzz)), ~abs(~vec3<u32>(u_input.a.x, 51172u, var_0.a.x))));
    var var_3 = Struct_4(Struct_1(abs(u_input.a)), Struct_1(vec4<u32>(~(~var_2.b.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.d.x, u_input.a.x, 0u), vec4<u32>(158410u, var_0.a.x, 10571u, 135795u))), var_0.a.x << (u_input.a.x % 32u), 38560u)));
    var_1 = ~var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, -31799i, firstLeadingBit(_wgslsmith_mult_i32(21311i << (reverseBits(var_3.b.a.x) % 32u), _wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(76622u, 14u)], _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(42439u, 14u)], 1163i)))));
}

