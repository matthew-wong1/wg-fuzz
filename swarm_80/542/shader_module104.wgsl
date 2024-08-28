struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 16u)];
    global0 = array<Struct_1, 16>();
    let var_1 = global0[_wgslsmith_index_u32(abs(140562u), 16u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(412f)));
    let var_3 = global0[_wgslsmith_index_u32(u_input.e.x << (u_input.b.x % 32u), 16u)];
    return any(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(max(u_input.a, firstLeadingBit(u_input.a >> (~vec3<u32>(u_input.b.x, 67256u, 1u) % vec3<u32>(32u)))));
    var var_1 = all(vec2<bool>(false, all(vec2<bool>(true, true))));
    var var_2 = u_input.b;
    var var_3 = !any(!vec4<bool>(true, all(vec2<bool>(false, true)), true, true));
    var_3 = true;
    return all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    let var_0 = vec4<bool>(true, arg_1, func_2(), arg_0.x);
    global0 = array<Struct_1, 16>();
    let var_1 = select(vec3<bool>(!(~arg_2.x < ~4294967295u), true, false), vec3<bool>(true, true, true), var_0.zxz);
    var var_2 = select(!(!vec3<bool>(var_0.x, arg_1, any(var_0.wxx))), vec3<bool>(var_0.x, func_3(), !(firstTrailingBit(u_input.c.x) > _wgslsmith_div_u32(1u, 4294967295u))), !(!var_0.wzw));
    var var_3 = vec4<u32>(firstTrailingBit(~(~arg_2.x & 14641u)), _wgslsmith_add_u32(36680u, u_input.e.x), 13549u, ~0u);
    return 166f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x << (u_input.b.x % 32u), 16u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-723f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, true), false, u_input.c)) + _wgslsmith_f_op_f32(1503f - 1065f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1884f, 501f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(952f, -1000f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(573f, -764f) * -1446f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1217f, 272f, -1226f, 1000f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-114f, -481f, -1916f, -778f), vec4<f32>(628f, 2226f, -784f, -205f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-856f + _wgslsmith_f_op_f32(sign(-184f))), -653f, 750f, _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, false), true, vec3<u32>(36185u, 4294967295u, 1u))))), select(vec4<bool>(func_3() && false, all(vec4<bool>(false, false, false, true)), true, all(vec4<bool>(false, false, false, true))), vec4<bool>(true, any(vec2<bool>(false, true)), false, any(vec2<bool>(true, false)) == true), true & (_wgslsmith_f_op_f32(1060f - -612f) == _wgslsmith_f_op_f32(floor(-1106f))))));
    let var_2 = global0[_wgslsmith_index_u32(8191u, 16u)];
    global0 = array<Struct_1, 16>();
    let var_3 = _wgslsmith_sub_i32(4079i, 0i);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -585f);
    var var_5 = firstLeadingBit(vec3<u32>(~countOneBits(u_input.b.x), _wgslsmith_div_u32(4294967295u, ~(~4294967295u)), _wgslsmith_mult_u32(u_input.e.x >> (_wgslsmith_add_u32(u_input.c.x, 0u) % 32u), (u_input.d ^ 1u) >> (~0u % 32u))));
    var_5 = max(u_input.c, ~vec3<u32>(var_5.x & 33694u, ~firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(var_5.x, u_input.b.x)), u_input.d)));
    var var_6 = _wgslsmith_sub_i32(~var_3 | reverseBits(_wgslsmith_mod_i32(select(var_2.a.x, var_3, true), -2147483647i)), var_0.a.x & ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 9324i), select(vec2<i32>(var_2.a.x, var_2.a.x), vec2<i32>(2147483647i, var_2.a.x), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(53542u), _wgslsmith_dot_vec4_u32(vec4<u32>(31708u, ~1u, 1u, firstLeadingBit(u_input.e.x)), vec4<u32>(var_5.x << (u_input.e.x % 32u), _wgslsmith_dot_vec2_u32(u_input.e, var_5.yy), 1u, firstLeadingBit(32831u))), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(27004u, 103031u, 36977u, 47817u), vec4<u32>(var_5.x, u_input.e.x, var_5.x, u_input.e.x)))), vec4<f32>(_wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) - var_4)), -116f, -322f, var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, 297f, 237f, var_1.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(874f, 1000f, var_1.x, -2474f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, -108f, var_1.x), var_1)))))), -var_0.a.x | (-59324i & _wgslsmith_mult_i32(countOneBits(-2147483647i), -u_input.a.x)));
}

