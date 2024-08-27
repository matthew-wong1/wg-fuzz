struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 54003u, 1u, 0u, 0u, 1u, 1u, 31437u, 4600u, 1u, 97392u, 1u, 18353u, 18471u, 2393u, 0u, 23481u, 0u, 1u, 10729u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(u_input.a.x);
    global0 = array<u32, 21>();
    var var_1 = -(~(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(-18158i, u_input.c, -29783i), vec3<i32>(u_input.d.x, u_input.b, u_input.d.x) << (vec3<u32>(5252u, u_input.a.x, 1u) % vec3<u32>(32u)), u_input.d.wxy)));
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    return ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, ~(global0[_wgslsmith_index_u32(1u, 21u)] & u_input.a.x)), ~_wgslsmith_mod_u32(0u, 16333u)), 21u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~(arg_1.a << (0u % 32u)), 4294967295u, arg_3.a, 0u), select(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u), global0[_wgslsmith_index_u32(13731u, 21u)] | arg_2.a, firstTrailingBit(3922u)), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, arg_2.a), ~vec4<u32>(0u, 15424u, 47326u, arg_0.a)), vec4<bool>(true, true, true, all(vec2<bool>(true, true))))) << (_wgslsmith_div_u32(1u, ~(~1u)) % 32u);
}

fn func_1() -> u32 {
    global0 = array<u32, 21>();
    let var_0 = vec3<u32>(func_2(), 4294967295u, ~0u);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~var_0.x, 24291u) << (firstLeadingBit(u_input.a.x) % 32u), 5311u);
    var var_2 = Struct_1(func_3(Struct_1(4294967295u), Struct_1(0u), Struct_1(var_0.x & _wgslsmith_mult_u32(var_0.x, 1u)), Struct_1(~(6500u ^ var_0.x))));
    var var_3 = reverseBits(~vec4<u32>(~(~var_2.a), ~(~var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, var_2.a), 1u), 21u)], _wgslsmith_add_u32(var_0.x, ~global0[_wgslsmith_index_u32(20515u, 21u)])));
    return _wgslsmith_mod_u32(~(~(~(~0u))), 49261u);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<bool>) -> i32 {
    global0 = array<u32, 21>();
    var var_0 = countOneBits(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], ~u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(arg_0.a, 21u)], arg_0.a), vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 21u)], 22708u)) % 32u)), 21u)]);
    let var_1 = arg_0;
    var_0 = select(56437u, max(4294967295u, 0u), true);
    let var_2 = select(select(select(vec4<bool>(arg_1 && false, true, select(arg_1, arg_3.x, arg_3.x), true), vec4<bool>(all(vec4<bool>(arg_3.x, arg_1, false, arg_3.x)), arg_3.x, arg_3.x, arg_1 | false), false), vec4<bool>(arg_1, true, 312f <= _wgslsmith_f_op_f32(trunc(-369f)), !arg_1), vec4<bool>(!arg_1, arg_1, all(arg_3), arg_1)), !(!vec4<bool>(any(vec2<bool>(false, false)), all(arg_3.xz), arg_3.x && false, any(vec2<bool>(arg_1, true)))), select(vec4<bool>(any(vec3<bool>(true, arg_1, arg_3.x)), true, !any(vec3<bool>(arg_3.x, arg_3.x, arg_1)), select(arg_1, true, arg_3.x)), !(!vec4<bool>(false, arg_1, arg_3.x, false)), true));
    return -15192i;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !(!vec3<bool>(!all(vec2<bool>(true, true)), true, false));
    var var_1 = any(select(vec4<bool>(!all(vec2<bool>(var_0.x, var_0.x)), !var_0.x && (var_0.x || false), ~arg_2.a < arg_1.a, var_0.x), !vec4<bool>(all(vec4<bool>(var_0.x, false, var_0.x, true)), var_0.x, var_0.x, true), all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))));
    var_1 = var_0.x | var_0.x;
    var var_2 = Struct_1(4294967295u);
    let var_3 = Struct_1(select(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_2.a, arg_2.a, global0[_wgslsmith_index_u32(var_2.a, 21u)], u_input.a.x), vec4<u32>(u_input.a.x, 28594u, 16436u, 58550u)), firstLeadingBit(vec4<u32>(30895u, global0[_wgslsmith_index_u32(arg_2.a, 21u)], var_2.a, u_input.a.x))) << (0u % 32u), arg_1.a, all(var_0)));
    return Struct_1(~arg_1.a >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(39088u & ~arg_2.a, 21u)], 4294967295u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_0 = -1000f;
    let var_1 = func_5(func_4(Struct_1(func_1()), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), -vec3<i32>(1i, u_input.b, u_input.e) & ~vec3<i32>(-1i, 37855i, u_input.b), vec3<bool>(true, true, true)) << (((u_input.a.x >> (4294967295u % 32u)) & global0[_wgslsmith_index_u32(0u, 21u)]) % 32u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.a.x, 20776u), 8473u, reverseBits(u_input.a.x)), abs(~vec3<u32>(u_input.a.x, 87032u, global0[_wgslsmith_index_u32(0u, 21u)])))), Struct_1(26807u));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-775f, 606f))), vec2<f32>(145f, 2290f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1130f))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(339f)))) * _wgslsmith_div_f32(-569f, var_2.x)), var_2.x));
    global0 = array<u32, 21>();
    var var_3 = -(_wgslsmith_add_i32(abs(u_input.c ^ u_input.b), _wgslsmith_dot_vec4_i32(select(u_input.d, vec4<i32>(u_input.d.x, 37778i, u_input.d.x, u_input.c), vec4<bool>(false, true, true, false)), ~vec4<i32>(1i, u_input.e, u_input.c, u_input.e))) | _wgslsmith_add_i32(8243i >> (func_3(Struct_1(4294967295u), Struct_1(103114u), Struct_1(global0[_wgslsmith_index_u32(16853u, 21u)]), var_1) % 32u), ~u_input.e));
    var_0 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - 654f), _wgslsmith_div_f32(var_2.x, 1074f), var_2.x));
}

