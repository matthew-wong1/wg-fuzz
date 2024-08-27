struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = min(_wgslsmith_add_vec3_u32(firstTrailingBit(abs(select(vec3<u32>(u_input.b.x, 1u, 1u), vec3<u32>(52007u, 0u, 50294u), true))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.b.x, u_input.a, u_input.a)), vec3<u32>(u_input.a, 36978u, 1u))), ~abs(abs(vec3<u32>(u_input.a, u_input.a, 0u))));
    var var_1 = abs(1u);
    var var_2 = ~(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 15018u, var_0.x)), ~vec4<u32>(var_0.x, 37222u, u_input.b.x, 1u))));
    var_2 = 0u;
    let var_3 = vec2<i32>(countOneBits(2147483647i), -19861i);
    return 4294967295u;
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(func_3(), 30413u, 2568u), _wgslsmith_clamp_u32(~1u, 4294967295u, u_input.b.x ^ u_input.a)), ~1u, arg_0.x, vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), 0u, ~abs(u_input.b.x), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-174f))))));
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 1i, -2147483647i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -20447i, -8598i, -1i), vec4<i32>(-2147483647i, -17731i, 22995i, 27385i))), _wgslsmith_add_i32(-12044i, min(27647i, -7528i)), -2147483647i, 1i);
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = false;
    var_0 = false;
    var_0 = all(select(vec4<bool>(true, select(true, true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true), func_2(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, all(vec3<bool>(false, false, false)))), false));
    var var_1 = 1u;
    var_0 = any(vec2<bool>(false, (u_input.a >> (abs(50816u) % 32u)) != ~2043u));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1016f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(605f * _wgslsmith_f_op_f32(f32(-1f) * -1566f)) - _wgslsmith_f_op_f32(round(-1742f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-246f)))))), all(vec3<bool>(false, !func_2(vec4<bool>(false, true, true, true)).x, any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & !(!all(vec3<bool>(false, true, true)) == true);
    var var_1 = _wgslsmith_f_op_f32(max(910f, -1000f));
    var_1 = _wgslsmith_f_op_f32(func_1());
    var_1 = -2057f;
    var var_2 = !vec4<bool>(true, any(func_2(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, false, true, var_0), vec4<bool>(false, var_0, var_0, false))).wz), true, (select(u_input.a, u_input.b.x, false) << (u_input.a % 32u)) <= ~1u);
    var_1 = _wgslsmith_f_op_f32(round(1f));
    var_1 = _wgslsmith_f_op_f32(-176f + 1000f);
    let var_3 = _wgslsmith_f_op_f32(-2106f + -578f);
    let var_4 = Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, 4294967295u) & u_input.a, reverseBits(abs(1u))), u_input.b.x, select(all(!vec4<bool>(true, var_0, var_0, true)), 63316u <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 12883u, 1u), vec4<u32>(1u, u_input.a, u_input.b.x, 4294967295u)), var_2.x), firstTrailingBit(~reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u))), 1527f), ~(43181i >> (u_input.b.x % 32u)), _wgslsmith_add_vec2_i32(-(~(-vec2<i32>(-1i, 1i))), (-vec2<i32>(0i, -2147483647i) >> (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u))) << (~u_input.b % vec2<u32>(32u))), !any(select(func_2(vec4<bool>(var_2.x, true, var_0, var_2.x)).yx, vec2<bool>(true, true), var_0 || true)), Struct_1(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, 0u, 69521u), ~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x))), true, ~vec4<u32>(u_input.b.x, 77008u, _wgslsmith_mod_u32(14044u, u_input.b.x), u_input.b.x), _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(-var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.e))))), _wgslsmith_f_op_f32(func_1()));
}

