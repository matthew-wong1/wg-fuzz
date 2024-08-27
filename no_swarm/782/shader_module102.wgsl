struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = ~(~arg_0.b);
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(4294967295u, ~var_0), ~(arg_0.b << (var_0 % 32u)), arg_2.b);
    let var_2 = arg_0;
    var var_3 = Struct_1(-795f, abs(countOneBits(var_2.b)), var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(select(657f, var_2.d.x, false))))) * arg_2.d), _wgslsmith_mod_u32(var_1.x, arg_0.b >> (~var_2.b % 32u)) != arg_0.b);
    let var_4 = select(vec4<u32>(_wgslsmith_mult_u32(~arg_0.b, var_1.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, var_1.x), 4294967295u), var_0, 4294967295u) ^ _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_1.x, var_2.b, var_0, arg_2.b)), vec4<u32>(var_0, 2873u, var_2.b, var_3.b) ^ vec4<u32>(43138u, arg_2.b, arg_2.b, 44771u), reverseBits(vec4<u32>(56429u, 1u, var_3.b, 65769u))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 31721u, 12876u) & ~vec4<u32>(1u, 32291u, var_3.b, 10751u)), _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(var_0, var_2.b, arg_2.b, 0u)), ~vec4<u32>(1u, var_1.x, 6964u, var_3.b) ^ (vec4<u32>(arg_0.b, 1u, var_0, 0u) ^ vec4<u32>(arg_0.b, 0u, 4294967295u, 107709u)))), arg_1.x);
    return -513f;
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    global0 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(func_3(Struct_1(562f, 1u, vec4<f32>(-852f, 466f, -301f, -157f), vec2<f32>(556f, -1000f), true), vec3<bool>(false, false, true), Struct_1(-533f, 0u, vec4<f32>(-636f, 846f, 823f, -1000f), vec2<f32>(182f, 1000f), false))) != 1f));
    var_0 = !(true || !all(vec4<bool>(false, false, false, false)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(-199f, -1211f, !(!select(false, true, false)))), select(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(131544u, _wgslsmith_add_u32(53382u, 33562u)), 4294967295u, 1u), ~(~abs(1u)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2589f * -513f), _wgslsmith_f_op_f32(1732f + 945f), _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_div_f32(-264f, -2348f))) - vec4<f32>(1f, 1f, 1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(353f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2241f), _wgslsmith_f_op_f32(f32(-1f) * -755f))))), _wgslsmith_f_op_f32(-1f)), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), false)));
    let var_2 = Struct_1(var_1.d.x, _wgslsmith_div_u32(~(var_1.b | 0u), countOneBits(4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.d.x * -434f))))), -951f, -1718f, 247f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1896f, -199f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, var_1.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(991f - _wgslsmith_f_op_f32(floor(1500f))), _wgslsmith_f_op_f32(ceil(2370f)))), var_1.e);
    return Struct_1(-988f, ~countOneBits(reverseBits(var_2.b)), _wgslsmith_f_op_vec4_f32(select(var_1.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, var_1.c.x, 1030f, -1205f), vec4<f32>(-378f, var_1.d.x, 3055f, -1005f)), _wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(964f, var_1.a, var_2.a, var_2.c.x)), var_1.e)), _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(var_1.c + var_1.c)))), vec4<bool>(false, true, (u_input.b.x & -11565i) < -3060i, !all(vec2<bool>(var_2.e, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(423f, -457f), var_2.d)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(var_1.d))))), true);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(13780i > u_input.b.x, arg_1.e || (!(arg_1.e != false) || !any(vec4<bool>(false, false, false, false))));
    var var_1 = -(~1i);
    let var_2 = func_2();
    var var_3 = vec4<bool>(true, !select(false, var_0.x, false), true, false);
    let var_4 = !var_3.wzw;
    return Struct_1(447f, ~(~39428u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c + _wgslsmith_div_vec4_f32(vec4<f32>(-2187f, arg_1.a, 147f, -359f), vec4<f32>(-467f, -552f, -661f, -2679f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1688f, arg_0.x, 1023f, -690f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0))), var_4.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(1u, _wgslsmith_add_u32(0u, arg_0.x)) >> (vec2<u32>(arg_1.b, 38042u) % vec2<u32>(32u));
    var var_1 = arg_1;
    var_0 = vec2<u32>(~_wgslsmith_mult_u32(26787u, firstLeadingBit(~1u)), reverseBits(~countOneBits(arg_3.b)) << (var_0.x % 32u));
    var_1 = arg_3;
    let var_2 = true;
    return func_4(_wgslsmith_f_op_vec2_f32(-arg_3.c.wz), func_2());
}

fn func_5(arg_0: Struct_1) -> u32 {
    global0 = true;
    global0 = func_2().e;
    let var_0 = !(9984i < min(-55316i, u_input.b.x));
    let var_1 = var_0;
    global0 = var_1;
    return 48712u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = 109f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(1u, 1u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(abs(u_input.a) >> (1u % 32u), reverseBits(u_input.a & 0i)), u_input.a, u_input.b.x), ~(1u >> (func_5(func_1(vec2<u32>(38948u, 54857u), Struct_1(1000f, 40287u, vec4<f32>(1000f, -538f, -1755f, -553f), vec2<f32>(-356f, 723f), true), u_input.b.yw, Struct_1(1077f, 4294967295u, vec4<f32>(155f, -694f, -137f, 1115f), vec2<f32>(-395f, 1336f), true))) % 32u)), vec3<u32>(_wgslsmith_mod_u32(~52142u, 1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 24677u, 1u), select(vec4<u32>(76082u, 15105u, 7633u, 1u), vec4<u32>(83565u, 78750u, 26139u, 1u), vec4<bool>(true, true, var_0.x, false))), firstLeadingBit(~_wgslsmith_mod_u32(4294967295u, 34103u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 7885u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(42927u, 6269u, 20267u, 18015u), vec4<u32>(26826u, 0u, 1u, 26515u)), 4294967295u << (0u % 32u)))));
}

