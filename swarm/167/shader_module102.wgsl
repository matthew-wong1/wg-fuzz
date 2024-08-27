struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, true, true, false, false, false, true, true, false, false, false, true, true, false, true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    global0 = array<bool, 16>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    var var_1 = vec2<u32>(arg_2.x, ~countOneBits(select(82519u & arg_1.c, _wgslsmith_mod_u32(arg_2.x, 3874u), false)));
    var var_2 = !vec3<bool>(global0[_wgslsmith_index_u32(~90161u, 16u)], !(~23518u < ~arg_1.c), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(0u, arg_2.x)), 16u)] | !global0[_wgslsmith_index_u32(var_1.x, 16u)]);
    var_1 = firstTrailingBit(arg_2.yz);
    return vec4<bool>(var_2.x, var_2.x || false, ((all(var_2.xz) | (arg_1.b < 1835f)) || all(!vec3<bool>(false, true, var_2.x))) & select(!all(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, true)), any(select(var_2.yx, var_2.zx, vec2<bool>(var_2.x, true)))), abs(~(~23001u)) <= var_1.x);
}

fn func_3() -> vec2<u32> {
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * -949f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f - 745f)), global0[_wgslsmith_index_u32(~(~17248u), 16u)]))), _wgslsmith_div_f32(119f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-2584f)), _wgslsmith_f_op_f32(-1427f * _wgslsmith_f_op_f32(f32(-1f) * -494f)), false & any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))))));
    let var_1 = select(any(select(vec3<bool>(global0[_wgslsmith_index_u32(~4294967295u, 16u)], global0[_wgslsmith_index_u32(firstLeadingBit(44697u), 16u)], all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]))), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], !global0[_wgslsmith_index_u32(4294967295u, 16u)], 1i > u_input.a), true)), true, true);
    global0 = array<bool, 16>();
    return vec2<u32>(4294967295u, 1u);
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(arg_0.zz, func_3());
    let var_1 = _wgslsmith_add_i32(0i, u_input.a);
    var var_2 = Struct_1(-u_input.a, -295f, ~(~(~_wgslsmith_add_u32(4294967295u, var_0.x))), ~(~arg_0));
    let var_3 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1208f - -1000f)), arg_0.x, ~var_2.d);
    var var_4 = reverseBits(var_3.d.x);
    return arg_0.x;
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(firstTrailingBit(arg_0.d), _wgslsmith_clamp_vec3_u32(arg_0.d, arg_0.d, arg_0.d))), _wgslsmith_mult_vec3_u32(countOneBits(select(vec3<u32>(arg_0.c, 872u, 0u), arg_0.d, vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 16u)], false, global0[_wgslsmith_index_u32(20250u, 16u)]))), _wgslsmith_mod_vec3_u32(arg_0.d, ~vec3<u32>(arg_0.c, arg_0.d.x, 0u)))), 16u)];
    let var_1 = select(vec3<bool>(false, true, !var_0), vec3<bool>(false, false, select(false, true, any(vec2<bool>(global0[_wgslsmith_index_u32(25329u, 16u)], var_0)))), !func_1(-327f, Struct_1(~(-2147483647i), arg_0.b, arg_0.c, arg_0.d), min(~vec4<u32>(1u, arg_0.c, 2673u, arg_0.d.x), vec4<u32>(arg_0.c, arg_0.c, 0u, arg_0.d.x) | vec4<u32>(0u, arg_0.c, 4294967295u, arg_0.d.x))).zxw);
    var var_2 = true;
    var_2 = global0[_wgslsmith_index_u32(~(~(~1u)), 16u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b)));
    return StorageBuffer(~_wgslsmith_sub_u32(arg_0.d.x, _wgslsmith_add_u32(0u, 4294967295u | arg_0.d.x)), -(~u_input.a), 0i, ~(_wgslsmith_add_vec3_u32(~arg_0.d, select(vec3<u32>(4294967295u, 4294967295u, 89013u), arg_0.d, var_0)) >> (_wgslsmith_div_vec3_u32(arg_0.d, arg_0.d) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global0[_wgslsmith_index_u32(~(~firstLeadingBit(1u)) ^ _wgslsmith_clamp_u32(0u, ~(~27513u), 63930u), 16u)], true, _wgslsmith_dot_vec2_u32(~vec2<u32>(4498u, 10324u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 326u)))) > (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(27854u, 60272u)) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(56635u, 21725u), 1u) % 32u)), true || (!(u_input.a != u_input.a) || any(func_1(-745f, Struct_1(2491i, -160f, 0u, vec3<u32>(115419u, 61093u, 26877u)), vec4<u32>(7853u, 7884u, 0u, 1u)))));
    let x = u_input.a;
    s_output = func_4(Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)), 1u, vec3<u32>(4294967295u, max(1u, func_2(vec3<u32>(13763u, 1u, 1u))), 1u)));
}

