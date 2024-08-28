struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(0u, 4294967295u, 22191u, 2851u, 44017u, 12377u, 18055u, 8363u, 1u, 17749u, 54543u, 54874u, 4294967295u, 4294967295u, 21268u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 11560u, 82940u, 7850u, 62472u, 45182u, 4294967295u, 1u, 30959u, 0u, 46739u, 1u, 1u, 10423u);

var<private> global1: i32 = -76256i;

var<private> global2: Struct_3;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<bool>) -> vec3<u32> {
    return u_input.a;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    global2 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(20606u >> (1u % 32u), _wgslsmith_add_u32(41031u, 7951u), ~5972u, _wgslsmith_mod_u32(u_input.a.x, 45573u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1406u, global2.c, 53851u), global2.b.a)) << (u_input.a.x % 32u), Struct_2(firstTrailingBit(vec4<u32>(func_1(vec4<bool>(true, true, true, true)).x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 1u, u_input.a.x)), global2.c | 0u, 63745u)), ~u_input.a.x, vec3<i32>(firstTrailingBit(-2147483647i), u_input.b.x, countOneBits(-2147483647i)) & vec3<i32>(5414i, arg_1, arg_1 << (u_input.a.x % 32u))), (select(global0[_wgslsmith_index_u32(~20746u, 32u)], global0[_wgslsmith_index_u32(firstTrailingBit(63681u), 32u)], any(vec2<bool>(false, false))) >> (_wgslsmith_add_u32(0u << (0u % 32u), min(global0[_wgslsmith_index_u32(global2.c, 32u)], u_input.a.x)) % 32u)) >> (1u % 32u));
    var var_0 = true;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(-1603f, 253f, false)), -654f, _wgslsmith_f_op_f32(min(896f, -421f))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -2152f, var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(425f, 442f, 796f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -1424f, -787f), vec3<f32>(-647f, -1497f, var_2.x), vec3<bool>(false, false, true)))), 858f < _wgslsmith_div_f32(var_2.x, var_2.x))))));
    return _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + var_2.x));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = ~global0[_wgslsmith_index_u32(81499u, 32u)] >> (func_1(select(select(!vec4<bool>(arg_1, false, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, arg_1, arg_1, true), arg_1), arg_1), select(!vec4<bool>(arg_1, true, arg_1, true), !vec4<bool>(arg_1, true, arg_1, false), false & arg_1), vec4<bool>(arg_1, all(vec4<bool>(arg_1, true, arg_1, arg_1)), global2.c > 18280u, arg_1 || true))).x % 32u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.b.x, global2.b.c.x), u_input.b.x, u_input.b.xy)))))), -790f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-328f, _wgslsmith_f_op_f32(trunc(-366f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1288f));
    global1 = u_input.b.x;
    var var_2 = global2.b.c.x;
    let var_3 = select(vec3<bool>(arg_1, true, !(2453f <= _wgslsmith_f_op_f32(716f * var_1.x))), !vec3<bool>(all(select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_1, false))), -1i != u_input.b.x, !arg_1), !(var_1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -566f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f))), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_0 = Struct_5(_wgslsmith_clamp_u32(firstLeadingBit(abs(4294967295u)), u_input.a.x, 70325u), abs(countOneBits(~func_1(vec4<bool>(false, true, true, false)))), global2.b.a, vec3<f32>(430f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1266f, _wgslsmith_f_op_f32(func_2(0u, false)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(713f))))), _wgslsmith_f_op_f32(func_2(~u_input.a.x, !all(vec4<bool>(false, true, true, true))))));
    global1 = -u_input.b.x ^ min(~(-(2147483647i << (global2.a % 32u))), 1i);
    let var_1 = Struct_1(0u, !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), ~(~global2.b.a.xz), var_0.b.x);
    let var_2 = Struct_1(u_input.a.x, select(var_1.b, var_1.b, any(vec3<bool>(!var_1.b.x, var_1.b.x, true != var_1.b.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(30308u, _wgslsmith_mult_u32(~global2.a, 37770u)), ~vec2<u32>(29044u, 38891u)), ~var_1.d);
    global2 = Struct_3(4294967295u, global2.b, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~1u), 32u)]));
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(firstTrailingBit(var_0.c.x), 32u)], vec2<bool>(!all(select(var_2.b, var_2.b, var_2.b.x)), !var_1.b.x || all(select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.b.x, true, var_1.b.x, true), vec4<bool>(var_1.b.x, true, false, var_1.b.x)))), var_2.c, _wgslsmith_mod_u32(37700u, var_2.a));
    let var_4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(277f * var_0.d.x), 815f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, 1380f)))))));
}

