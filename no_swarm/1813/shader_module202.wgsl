struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-29138i, 0i), vec2<i32>(23226i, i32(-2147483648)), vec2<i32>(-57090i, -42960i), vec2<i32>(0i, 0i), vec2<i32>(28630i, 0i), vec2<i32>(5957i, 23518i), vec2<i32>(2147483647i, 2429i), vec2<i32>(0i, 1i), vec2<i32>(18424i, 59166i), vec2<i32>(-24238i, 47492i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_2(arg_0.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1251f - -333f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_3) * _wgslsmith_f_op_f32(select(-706f, 1483f, arg_1 | arg_1)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.c)) - 1000f), _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_div_f32(-137f, 997f))))));
    global0 = array<vec2<i32>, 10>();
    let var_2 = _wgslsmith_clamp_vec2_i32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(abs(17518u), 5023u, !arg_1), _wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26670u, var_0.a.a, var_0.a.a), vec4<u32>(47067u, 4294967295u, u_input.b.x, var_0.a.a)))), 10u)], vec2<i32>(13596i, arg_2), global0[_wgslsmith_index_u32(4294967295u, 10u)]);
    var_1 = arg_3;
    return select(vec3<bool>(all(vec4<bool>(false, all(vec4<bool>(true, arg_1, true, arg_1)), all(vec3<bool>(arg_1, arg_1, false)), arg_1)), all(!select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true)), any(vec2<bool>(true, true))), select(vec3<bool>(all(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), false)), !(arg_1 && arg_1), arg_1), select(!select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, true)), !vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, true, arg_1)), true), true);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    let var_0 = Struct_3(select(func_3(Struct_2(Struct_1(u_input.a, arg_1, -1170f)), arg_0.x, firstLeadingBit(-32569i), 616f), func_3(Struct_2(Struct_1(1u, arg_1, 887f)), true, -1i | (arg_1 & 29389i), _wgslsmith_f_op_f32(f32(-1f) * -688f)), arg_0.x), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), reverseBits(arg_1 ^ -arg_1) ^ (-arg_1 & ~0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1323f, -1223f)))));
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    var var_1 = var_0.a.yz;
    return u_input.a;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -842f) + arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) * arg_1.x);
    let var_2 = u_input.b;
    return _wgslsmith_div_vec4_u32(vec4<u32>(1u, firstLeadingBit(u_input.b.x), func_2(vec2<bool>(false, false), 1503i) | firstTrailingBit(13262u), 1u) & vec4<u32>(_wgslsmith_div_u32(36938u, var_2.x) ^ 4294967295u, _wgslsmith_mod_u32(~1u, 4294967295u), func_2(vec2<bool>(false, true), 12326i) & 1u, ~u_input.b.x), ~vec4<u32>(0u, 4294967295u, ~reverseBits(var_2.x), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~(~vec4<u32>(u_input.b.x, 28484u, 39775u, u_input.b.x) >> (func_1(-1591f, vec2<f32>(-979f, -926f)) % vec4<u32>(32u))));
    var var_1 = var_0.yzx;
    var_1 = _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_1.x, 42612u), vec3<u32>(1u, 7527u, u_input.b.x), var_0.wzy)), ~(~countOneBits(var_0.zyx)), var_0.yzw) >> ((vec3<u32>(var_0.x, 1069u, _wgslsmith_mod_u32(59847u, ~1u)) >> (~var_0.zzx % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = !(!any(vec4<bool>(true, true, false, true)));
    let var_3 = Struct_1(_wgslsmith_mult_u32(func_2(vec2<bool>(false, false), 1i) & 0u, 4294967295u) | (var_1.x | max(71871u, _wgslsmith_mod_u32(var_0.x, 72863u))), ~(~firstLeadingBit(23932i)) ^ (select(_wgslsmith_dot_vec4_i32(vec4<i32>(29503i, 9761i, 1i, 1i), vec4<i32>(-28337i, 18643i, -41174i, 15737i)), firstTrailingBit(44976i), true) & reverseBits(1i)), -177f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_3.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.c, -1524f, var_3.c), vec3<f32>(var_3.c, var_3.c, 342f), vec3<bool>(true, false, true)))))))));
}

