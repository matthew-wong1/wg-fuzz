struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 26>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(85750u, 59463u, 1u), vec2<f32>(-138f, 158f), true, true, 1u), Struct_1(vec3<u32>(11943u, 13018u, 10130u), vec2<f32>(810f, 982f), true, false, 0u), Struct_1(vec3<u32>(9310u, 1u, 30995u), vec2<f32>(734f, -1407f), true, true, 23375u), Struct_1(vec3<u32>(13806u, 20059u, 12560u), vec2<f32>(-838f, 764f), true, true, 1u), Struct_1(vec3<u32>(57583u, 17898u, 4294967295u), vec2<f32>(-694f, 1202f), false, true, 1u), Struct_1(vec3<u32>(0u, 17935u, 3561u), vec2<f32>(129f, 1000f), false, false, 4294967295u), Struct_1(vec3<u32>(22008u, 17926u, 97195u), vec2<f32>(-1000f, 114f), false, false, 4294967295u), Struct_1(vec3<u32>(12197u, 77779u, 1u), vec2<f32>(1028f, -1171f), true, false, 11417u), Struct_1(vec3<u32>(0u, 31859u, 55484u), vec2<f32>(738f, -2555f), false, false, 1u), Struct_1(vec3<u32>(34874u, 0u, 4294967295u), vec2<f32>(808f, 825f), false, true, 1u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(~(~(~min(arg_1.a, vec3<u32>(89459u, arg_0.e, 4294967295u)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f * arg_0.b.x)))), arg_1.b.x), true, false, 0u);
    var var_1 = vec4<i32>(abs(u_input.d.x >> (reverseBits(~arg_1.e) % 32u)), u_input.d.x, -u_input.d.x, min(1i, u_input.d.x));
    let var_2 = vec2<i32>(~u_input.d.x | -1021i, 1i);
    global0 = 1000f;
    let var_3 = abs(var_0.a.x);
    return _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x);
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(6887u, 11479u ^ global1[_wgslsmith_index_u32(108969u, 26u)]), ~(~75506u)), 10u)], global2[_wgslsmith_index_u32(~(~abs(global1[_wgslsmith_index_u32(u_input.c, 26u)])), 10u)])) - 183f);
    var var_1 = ~u_input.a.yy;
    global0 = _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), false));
    var var_2 = ~(-2147483647i);
    global1 = array<u32, 26>();
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2571f, var_0) - vec2<f32>(-602f, var_0))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-345f)) + 600f), _wgslsmith_f_op_f32(139f + _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(var_1.x, 10u)], Struct_1(vec3<u32>(997u, var_1.x, 0u), vec2<f32>(575f, -1095f), false, true, u_input.c))))))));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    global2 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_sub_u32(~4294967295u | _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.b.x, u_input.c)), _wgslsmith_sub_u32(1u, ~u_input.c), global1[_wgslsmith_index_u32(~48422u, 26u)]), min(0u, firstTrailingBit(1860u)));
    global2 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -222f);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.ywy, vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 26u)], 26u)], 6540u)), 44345u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(37229u, u_input.a.x, 1268u), vec3<u32>(u_input.c, u_input.a.x, global1[_wgslsmith_index_u32(35626u, 26u)])), 44349u), 26u)]), vec3<u32>(select(max(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(34131u, global1[_wgslsmith_index_u32(42315u, 26u)]), vec2<u32>(u_input.b.x, 1u)), true), 18792u, 43900u)) ^ (~firstLeadingBit(0u) << (u_input.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i >> (min(u_input.b.x, min(reverseBits(16824u) << (func_1(true) % 32u), _wgslsmith_sub_u32(21538u >> (u_input.c % 32u), 1u))) % 32u);
    let var_1 = 1u;
    global1 = array<u32, 26>();
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1758f)), -1243f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(239f, -1065f)), _wgslsmith_f_op_f32(262f * 710f)))) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f) + _wgslsmith_f_op_f32(-966f + 1513f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1811f)))) + 625f));
    global1 = array<u32, 26>();
    var var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, ~1859u, firstLeadingBit(0u)), min(vec3<u32>(global1[_wgslsmith_index_u32(61086u, 26u)], 48805u, 1u), u_input.b.wwx)), u_input.b.zzx), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | min(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 1u, 79078u), u_input.b.zyx, vec3<u32>(2490u, global1[_wgslsmith_index_u32(1u, 26u)], var_1)), reverseBits(vec3<u32>(var_2.x, 0u, 0u))), min(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 22357u, 1u), vec3<u32>(1u, global1[_wgslsmith_index_u32(3822u, 26u)], 0u)), vec3<u32>(4294967295u, var_1, 4294967295u) ^ u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~(global1[_wgslsmith_index_u32(95389u, 26u)] & var_2.x), _wgslsmith_mod_u32(u_input.c, 4294967295u), ~(4294967295u | var_2.x)), abs(_wgslsmith_div_vec3_u32(u_input.a, u_input.b.xxz) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_2.x, 0u), vec3<u32>(4294967295u, var_2.x, 4294967295u))), ~u_input.a), _wgslsmith_f_op_f32(1583f + _wgslsmith_f_op_f32(f32(-1f) * -1131f)));
}

