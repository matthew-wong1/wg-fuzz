struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: vec3<f32> = vec3<f32>(243f, -1000f, -163f);

var<private> global2: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(~(~4294967295u)), 1u)];
    let var_1 = Struct_1(max(~(~vec4<u32>(0u, u_input.c, u_input.e.x, u_input.e.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(51922u, 4294967295u, u_input.b.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, u_input.d.x), vec4<u32>(u_input.c, u_input.d.x, u_input.e.x, u_input.d.x)))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x ^ u_input.e.x, ~u_input.b.x, 1u, _wgslsmith_div_u32(u_input.b.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 46951u, 0u, 4294967295u), vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.b.x))) % vec4<u32>(32u)));
    let var_2 = -2147483647i;
    global1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -1681f, false)) * _wgslsmith_f_op_f32(min(740f, 1577f))) * global1.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -973f), global1.x))))));
    var var_3 = _wgslsmith_f_op_f32(1998f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - 649f)))), _wgslsmith_f_op_f32(-global1.x))));
    return 43539u;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> vec4<u32> {
    let var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~u_input.d), ~(~vec2<u32>(u_input.c, u_input.e.x))), select(u_input.e, u_input.d, vec2<bool>(all(arg_0), true)));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(39927u, var_0, 73350u, u_input.c), vec4<u32>(0u, u_input.e.x, u_input.d.x, u_input.d.x)) | (vec4<u32>(33551u, var_0, 4294967295u, 40490u) ^ vec4<u32>(var_0, var_0, 1u, var_0))) ^ _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0, 747u, var_0, var_0), ~vec4<u32>(2178u, u_input.e.x, u_input.b.x, u_input.d.x)), vec4<u32>(~u_input.d.x, func_3(), 46448u, u_input.d.x ^ 0u)));
    var var_2 = -2558f;
    let var_3 = all(vec3<bool>(true | global0[_wgslsmith_index_u32(u_input.c, 1u)], !arg_0.x, global1.x >= global1.x));
    var_1 = Struct_1(vec4<u32>(firstTrailingBit(40129u), firstLeadingBit(_wgslsmith_mult_u32(1u, var_1.a.x)), _wgslsmith_mod_u32(func_3() >> (33867u % 32u), _wgslsmith_div_u32(u_input.c, var_1.a.x)), 4294967295u));
    return ~vec4<u32>(47037u << (var_0 % 32u), 14327u, _wgslsmith_mod_u32(firstTrailingBit(1u), 20822u), select(var_0 << (30285u % 32u), _wgslsmith_add_u32(var_1.a.x, 130111u), all(vec4<bool>(false, arg_0.x, false, global0[_wgslsmith_index_u32(0u, 1u)]))) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(26251u, var_0), 12232u));
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = Struct_2(min(~min(max(u_input.e.x, 1u), u_input.e.x >> (3008u % 32u)), 4929u & u_input.b.x), ~(~(~vec4<u32>(0u, u_input.e.x, 2873u, 8595u))), Struct_1(~func_2(vec2<bool>(false, global0[_wgslsmith_index_u32(96550u, 1u)]), 42758i) << (~(~vec4<u32>(u_input.c, u_input.d.x, u_input.e.x, 251u)) % vec4<u32>(32u))), Struct_1(~func_2(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false), firstLeadingBit(-2147483647i))), vec2<i32>(-_wgslsmith_div_i32(u_input.a.x, -1i), min(_wgslsmith_dot_vec3_i32(u_input.a.yxx | vec3<i32>(-7966i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x)));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_div_u32(0u, firstTrailingBit(var_0.a << (u_input.b.x % 32u))), var_0.d.a.x, _wgslsmith_add_u32(~0u, ~u_input.e.x), abs(~countOneBits(var_0.b.x))));
    let var_2 = Struct_2(21754u, vec4<u32>(max(func_2(vec2<bool>(false, true), u_input.a.x).x, func_2(vec2<bool>(false, true), ~(-1i)).x), min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.c.a.x, 23632u), _wgslsmith_mod_u32(var_1.a.x, u_input.e.x), 1u), 0u), var_1.a.x, 0u), var_1, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(21513u, ~4294967295u, _wgslsmith_sub_u32(34039u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(32800u, 0u, 1u, var_0.a), var_1.a)), var_1.a)), ~vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), select(vec4<i32>(var_0.e.x, var_0.e.x, u_input.a.x, 1073i), u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), u_input.a.x));
    let var_3 = vec4<bool>(_wgslsmith_div_u32(~52252u, countOneBits(126880u)) < abs(func_3()), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~20391u, 1u), 1u)], global0[_wgslsmith_index_u32(7951u, 1u)], any(vec4<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(63819u, 1u)], true)), true, ~u_input.e.x <= _wgslsmith_add_u32(48007u, var_2.d.a.x), select(all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.a, 1u)])), true, global0[_wgslsmith_index_u32(~var_0.a, 1u)]))));
    var var_4 = var_2.b;
    return StorageBuffer(global1.x, ~firstTrailingBit(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~(-1112i));
    let x = u_input.a;
    s_output = func_1(global1.zz);
}

