struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(43740u, vec2<i32>(-17637i, 0i)), Struct_1(0u, vec2<i32>(0i, 7355i)), Struct_1(1u, vec2<i32>(2147483647i, 10852i)), Struct_1(4294967295u, vec2<i32>(20378i, 1i)), Struct_1(21524u, vec2<i32>(4225i, 1i)), Struct_1(19174u, vec2<i32>(20569i, 0i)), Struct_1(26967u, vec2<i32>(-12164i, 0i)), Struct_1(18136u, vec2<i32>(110531i, 2147483647i)), Struct_1(1u, vec2<i32>(i32(-2147483648), 85935i)), Struct_1(12401u, vec2<i32>(0i, 81237i)), Struct_1(5665u, vec2<i32>(0i, i32(-2147483648))), Struct_1(5293u, vec2<i32>(-39802i, 2147483647i)), Struct_1(1u, vec2<i32>(33215i, -35076i)), Struct_1(32514u, vec2<i32>(0i, -12287i)), Struct_1(4294967295u, vec2<i32>(0i, 24741i)), Struct_1(4294967295u, vec2<i32>(25116i, -1i)), Struct_1(4479u, vec2<i32>(2147483647i, 4622i)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = select(vec4<bool>(!select(true, 4294967295u > arg_1.a, false), true, true, 1u == firstTrailingBit(1u << (arg_1.a % 32u))), vec4<bool>(!(!(u_input.a.x < 2147483647i)), select(_wgslsmith_div_f32(-1241f, -710f) > _wgslsmith_f_op_f32(-1129f + arg_2), true, all(vec4<bool>(true, true, true, true))), ~arg_1.b.x < (-23998i << (arg_0.a % 32u)), true), vec4<bool>(false, !(select(false, false, false) || (arg_2 > -177f)), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, true)))));
    var var_1 = vec3<u32>(arg_1.a, firstLeadingBit(arg_1.a), 1u);
    return abs(1i);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = arg_1;
    global0 = array<Struct_1, 17>();
    var var_1 = Struct_1(~arg_0.a, ~vec2<i32>(-func_3(global0[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(arg_0.a, arg_0.b), arg_1), u_input.a.x));
    let var_2 = 31764i;
    let var_3 = 38965i;
    return vec3<u32>(_wgslsmith_mod_u32(arg_0.a ^ var_1.a, _wgslsmith_div_u32(4294967295u, var_1.a)) >> (~(~11379u) % 32u), firstTrailingBit(~abs(4504u)), ~(abs(64013u) & _wgslsmith_div_u32(var_1.a, 0u))) & _wgslsmith_mult_vec3_u32(~vec3<u32>(firstLeadingBit(26020u), _wgslsmith_add_u32(44124u, 19724u), _wgslsmith_div_u32(var_1.a, var_1.a)), vec3<u32>(var_1.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, var_1.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, 67285u), vec2<u32>(var_1.a, arg_0.a), vec2<u32>(59537u, arg_0.a))), 1u));
}

fn func_1() -> vec4<u32> {
    global0 = array<Struct_1, 17>();
    return countOneBits(vec4<u32>(_wgslsmith_add_u32(~9118u, abs(0u)), ~(~1u), _wgslsmith_dot_vec3_u32(func_2(Struct_1(0u, vec2<i32>(22428i, u_input.a.x)), -199f, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(20043u, 0u, 55518u), vec3<u32>(1u, 0u, 0u), vec3<u32>(5258u, 4294967295u, 0u))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(48796u, 20435u), false), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(5467u, 71687u)))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 4294967295u, 0u, 18943u)), max(0u, ~11649u), ~_wgslsmith_clamp_u32(0u, 0u, 25028u), _wgslsmith_sub_u32(1u, firstLeadingBit(4294967295u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(func_1(), vec4<u32>(_wgslsmith_div_u32(reverseBits(77981u), ~61192u), _wgslsmith_mod_u32(~1u, firstTrailingBit(20436u)), 1u, func_1().x) >> (func_1() % vec4<u32>(32u)));
    var var_1 = select(vec3<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), all(vec4<bool>(all(vec4<bool>(false, false, true, true)), true, all(vec2<bool>(true, false)), false)), (var_0.x >= (var_0.x << (15969u % 32u))) || false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false)) || any(vec3<bool>(false, false, true))), !vec3<bool>(true, u_input.a.x < -u_input.a.x, all(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~var_0.x | 30617u, _wgslsmith_div_u32(firstLeadingBit(var_0.x), 76249u)), select(firstTrailingBit(func_2(Struct_1(var_0.x, u_input.a), _wgslsmith_f_op_f32(575f * 573f), abs(vec3<i32>(-6003i, -24090i, -27197i))).xz), _wgslsmith_mult_vec2_u32(vec2<u32>(27039u, var_0.x) | vec2<u32>(1u, 0u), ~var_0.wy), vec2<bool>(all(!vec4<bool>(var_1.x, true, var_1.x, true)), !(var_1.x && false))));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(var_0.yyz, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_2.x, 1035u), 0u, ~var_0.x), vec3<u32>(var_0.x, var_0.x, 1u) << (~var_0.wyy % vec3<u32>(32u)))), u_input.a);
    var var_4 = ~(~var_3.b.x);
    var var_5 = global0[_wgslsmith_index_u32(~var_2.x, 17u)];
    var_2 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.yz, var_0.xw, vec2<u32>(var_0.x, 1u)), ~vec2<u32>(24659u, 51095u))), select(var_0.wz, var_0.ww, !var_1.x));
    var var_6 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(24002u, 22265u), vec2<u32>(1u, 4294967295u))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(var_3.b, ~var_3.b, _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(1i, u_input.a.x))), vec2<i32>(abs(10595i), -u_input.a.x)) & ~(countOneBits(var_5.b) | vec2<i32>(-18309i, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_dot_vec2_u32(vec2<u32>(73073u, var_5.a), select(vec2<u32>(var_6.a, 6743u), var_0.xw, var_1.xy)), var_6.a), var_0.zz, vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(710f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-597f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1619f - -249f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(865f - -923f) - _wgslsmith_f_op_f32(abs(1812f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f + -473f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1364f)), 450f)), 192f, var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f * 1477f)) + _wgslsmith_f_op_f32(f32(-1f) * -1114f))));
}

