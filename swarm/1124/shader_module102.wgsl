struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<bool, 31>();
    var var_0 = ~firstTrailingBit(_wgslsmith_sub_u32(arg_0.a, 1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(select(2304f, 733f, global0[_wgslsmith_index_u32(15805u, 31u)])))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(916f, 1033f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1856f, 211f) + vec2<f32>(1000f, 197f))), global0[_wgslsmith_index_u32(9592u, 31u)] && global0[_wgslsmith_index_u32(u_input.a, 31u)])))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(1211f)), -327f))))));
    var var_2 = 36036u;
    return global0[_wgslsmith_index_u32((_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~arg_0.a, ~4294967295u, max(72299u, 19667u)), 5116u, _wgslsmith_mod_u32(~u_input.a, _wgslsmith_sub_u32(arg_0.a, u_input.a))) >> (u_input.a % 32u)) & _wgslsmith_div_u32(max(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 42178u), vec2<u32>(u_input.a, 4663u)), u_input.a), u_input.a), 31u)];
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.x), 31u)] && true, vec2<bool>(arg_2 || any(vec4<bool>(arg_2, global0[_wgslsmith_index_u32(85423u, 31u)], global0[_wgslsmith_index_u32(1194u, 31u)], global0[_wgslsmith_index_u32(arg_0.a.x, 31u)])), !func_3(Struct_1(8363u))));
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), arg_1) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 501f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3, -1487f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -288f), vec2<f32>(1029f, 1251f))))))));
    let var_2 = ~abs(~select(~vec4<u32>(u_input.a, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<u32>(16629u, 49527u, 4294967295u, u_input.a) & vec4<u32>(arg_0.a.x, 63190u, u_input.a, 0u), select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], var_0.a, true), vec4<bool>(arg_2, false, global0[_wgslsmith_index_u32(38533u, 31u)], arg_2))));
    return arg_0.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_1(~85415u);
    return -315f;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> f32 {
    global0 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f))) * _wgslsmith_f_op_f32(func_4(func_2(Struct_5(vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_f_op_f32(round(-1000f)), false, _wgslsmith_f_op_f32(1719f + 486f)) >> (4294967295u % 32u), Struct_5(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(53035u, u_input.a), vec2<u32>(24779u, u_input.a), vec2<u32>(19666u, u_input.a)))), Struct_3(true, !select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1886u, 31u)], arg_0), global0[_wgslsmith_index_u32(u_input.a, 31u)])))));
    global0 = array<bool, 31>();
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(27451u, 16702u, u_input.a, u_input.a)), countOneBits(vec4<u32>(67202u, 0u, 0u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 24757u, u_input.a))), (_wgslsmith_mult_u32(4294967295u, u_input.a) | select(0u, u_input.a, arg_0)) | u_input.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u) & vec4<u32>(26632u, 45628u, u_input.a, 4294967295u), ~vec4<u32>(601u, u_input.a, u_input.a, 54092u)) >> ((8889u | (0u >> (u_input.a % 32u))) % 32u), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(22015u, 1u, 0u, 63888u), vec4<u32>(32806u, u_input.a, 8909u, u_input.a)), vec4<u32>(~u_input.a, u_input.a & 4294967295u, 4294967295u, 24383u >> (u_input.a % 32u))), u_input.a));
    var_1 = _wgslsmith_mod_u32(u_input.a, u_input.a) ^ 95637u;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~25242u, 31u)], vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec3<i32>(25591i, 2147483647i, u_input.b) ^ vec3<i32>(36719i, u_input.b, -1i), vec4<i32>(-1i, u_input.b, u_input.b, -29937i)))))));
    var var_1 = Struct_4(!(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)])))), select(min(max(vec2<i32>(0i, 0i), vec2<i32>(u_input.b, u_input.b)), firstLeadingBit(vec2<i32>(0i, 22608i))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(2147483647i, -21019i), vec2<i32>(u_input.b, 24155i)), select(select(vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)])), vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false), !global0[_wgslsmith_index_u32(4294967295u, 31u)])) << (vec2<u32>(~4294967295u, countOneBits(~1u)) % vec2<u32>(32u)), Struct_3(u_input.a <= ~40314u, select(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec2<bool>(true, true), vec2<bool>(true, u_input.b != -1i))));
    let var_2 = vec4<bool>(var_1.c.a, var_1.c.b.x, global0[_wgslsmith_index_u32(min(min(1u, firstTrailingBit(u_input.a)), ~(~41640u)) ^ reverseBits(110549u), 31u)], !(!(_wgslsmith_f_op_f32(-179f * 349f) < _wgslsmith_f_op_f32(step(-429f, -347f)))));
    let var_3 = var_1.c;
    var var_4 = min(countOneBits(2147483647i), -1i);
    var_4 = ~(-11586i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1231f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) - -259f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(701f - 294f)))), 975f), reverseBits(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(19460u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 25824u, 1u))))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(-2147483647i), 44329i >> (u_input.a % 32u)), min(~u_input.b, -30714i)) << (u_input.a % 32u), vec3<u32>(abs(max(u_input.a, abs(1u))), 173009u, func_2(Struct_5(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), -831f, any(select(vec2<bool>(var_2.x, true), vec2<bool>(false, true), var_3.b)), -1163f)), u_input.b);
}

