struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(vec4<u32>(29001u, 1481u, 12438u, 67570u), vec3<u32>(22578u, 4294967295u, 61195u)), Struct_2(-27198i), vec3<bool>(true, false, true), vec2<bool>(false, true), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec4<u32>(134119u, 20201u, 38769u, 10380u), vec3<u32>(4294967295u, 392u, 44906u)), Struct_2(8580i), vec3<bool>(false, true, false), vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec4<u32>(33993u, 4294967295u, 0u, 4294967295u), vec3<u32>(0u, 48858u, 22744u)), Struct_2(1i), vec3<bool>(false, false, true), vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec4<u32>(0u, 0u, 0u, 17173u), vec3<u32>(1u, 10970u, 15788u)), Struct_2(2147483647i), vec3<bool>(false, true, false), vec2<bool>(true, false), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<u32>(23987u, 35669u, 45241u, 39326u), vec3<u32>(21895u, 8429u, 1u)), Struct_2(-20950i), vec3<bool>(true, false, false), vec2<bool>(false, false), vec3<bool>(true, false, false)));

var<private> global2: array<Struct_3, 17>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(9698u, 24057u, 33310u, 4294967295u), vec3<u32>(31380u, 20980u, 64669u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    global1 = array<Struct_3, 5>();
    let var_0 = select(!(!vec2<bool>(true, arg_0.x <= 822f)), vec2<bool>(true, true), !any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(arg_1.yz, abs(~(-arg_1.yy))));
    let var_2 = 1u;
    global1 = array<Struct_3, 5>();
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, ~(~global3.b.x)), global3.b.x), 22870u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(1430f));
    let var_1 = arg_0.e.x;
    var var_2 = arg_0.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1738f)) + -1827f))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-464f + 661f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(982f - 2197f))));
    global1 = array<Struct_3, 5>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-240f, 591f), vec2<f32>(1165f, -502f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, 844f)))));
}

fn func_2() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_1(vec4<u32>(_wgslsmith_div_u32(global3.a.x, global3.b.x), global3.b.x, 25857u >> (global3.b.x % 32u), func_3(vec2<f32>(-893f, 815f), vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), 58068i)), ~select(global3.b, vec3<u32>(13395u, global3.a.x, u_input.a), false)), Struct_2(_wgslsmith_clamp_i32(max(-20079i, 2147483647i), u_input.b.x, 17782i)), vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, true)), true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec3<bool>(false, false, false))), vec2<bool>(true, all(vec3<bool>(false, false, false))), any(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), u_input.a >= global3.a.x), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), u_input.b.x >= -43174i), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))), Struct_1(_wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(global3.a.x, global3.b.x, 0u, 18928u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 75208u, 1u), vec4<u32>(u_input.a, 0u, 34617u, u_input.a) | global3.a), ~global3.a), global3.a.zwx), u_input.a, global3.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(step(arg_2, -304f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(129f, arg_0.x) * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(596f, 168f), -145f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(513f, 107f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1206f, 443f), vec2<f32>(-517f, arg_2))) - _wgslsmith_f_op_vec2_f32(func_2())))) * vec2<f32>(_wgslsmith_f_op_f32(abs(605f)), arg_2));
    return select(select(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), all(vec4<bool>(true, true, false, false))), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, all(vec4<bool>(true, true, false, true))), false)), !(!vec3<bool>(true, true, select(false, true, true))), !(!(!all(vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-488f, 837f) - vec2<f32>(425f, 559f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2314f, 1552f) - vec2<f32>(-1267f, 1072f))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-691f)) - _wgslsmith_f_op_f32(f32(-1f) * -1477f))));
    var_0 = !vec3<bool>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(160f, -970f))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(444f * -305f))), true);
    global1 = array<Struct_3, 5>();
    global3 = Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 97711u, 26188u, ~1u), global3.a, select(global3.a, vec4<u32>(1u, 13400u, u_input.a, 20527u), var_0.x)), abs(vec4<u32>(u_input.a, 1u, _wgslsmith_mult_u32(global3.a.x, 4294967295u), ~1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(~1u, 1u, ~global3.a.x), reverseBits(~global3.b)) >> (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, global3.a.x, 7475u, 0u), global3.a), max(4294967295u, global3.a.x), _wgslsmith_clamp_u32(20454u, _wgslsmith_mod_u32(u_input.a, 4679u), firstTrailingBit(26449u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_sub_vec3_u32(global3.a.zxz, global3.b);
    let var_2 = Struct_1(vec4<u32>(~(0u | ~var_1.x), global3.a.x, 0u, countOneBits(~29254u)), ~countOneBits(global3.a.zzy));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(var_1.x, 5u)], Struct_1(vec4<u32>(1u, 0u, 0u, var_2.b.x), global3.a.xxz), global3.b.x, vec4<u32>(4294967295u, 4294967295u, 58364u, 31912u))).x, _wgslsmith_f_op_f32(sign(-1000f))))))));
    global3 = Struct_1(~firstLeadingBit(~reverseBits(var_2.a)), ~var_2.b);
    global2 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(24073i, ~u_input.b.x);
}

