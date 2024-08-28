struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(u_input.b, Struct_1(arg_0.a, !arg_0.c, arg_0.b));
    var var_1 = 8546u;
    var_1 = _wgslsmith_add_u32(abs(~(_wgslsmith_add_u32(var_0.a, var_0.a) & _wgslsmith_add_u32(var_0.a, var_0.a))), _wgslsmith_mult_u32(min(~(~u_input.b), (4294967295u >> (var_0.a % 32u)) >> ((4294967295u ^ var_0.a) % 32u)), _wgslsmith_dot_vec4_u32(abs(max(vec4<u32>(4294967295u, 28900u, u_input.b, var_0.a), vec4<u32>(19183u, 0u, 4294967295u, u_input.b))), countOneBits(firstLeadingBit(vec4<u32>(var_0.a, var_0.a, 1u, 0u))))));
    var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~(~1u), _wgslsmith_add_u32(select(~var_0.a, _wgslsmith_sub_u32(44613u, 41698u), var_0.b.c), var_0.a)), ~u_input.b);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.b.a, 1000f))));
    return var_0.a;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = select(vec2<u32>(func_3(Struct_1(-760f, false, true)), _wgslsmith_mod_u32(0u << (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 27883u), vec2<u32>(u_input.b, 49091u)))) << (select(vec2<u32>(1u | u_input.b, u_input.b), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.b), vec2<bool>(false, false)), vec2<bool>(true, true)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~u_input.b, 30177u), 82429u), ~(~abs(vec2<u32>(14111u, u_input.b))), ~vec2<u32>(52058u, u_input.b) | _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.b), min(vec2<u32>(1u, u_input.b), vec2<u32>(15104u, u_input.b)))), -1i > _wgslsmith_add_i32(-arg_0, ~(-23627i)));
    let var_1 = false;
    let var_2 = 62235u | var_0.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-604f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-392f)) + 381f)))), false, _wgslsmith_f_op_f32(select(-460f, -1355f, !any(vec3<bool>(true, true, var_1)))) >= 1f);
    var var_4 = vec3<i32>(~(-((i32(-1i) * -1i) >> ((1u & var_0.x) % 32u))), firstLeadingBit(2147483647i), u_input.a);
    return Struct_2(var_0.x, var_3);
}

fn func_1() -> bool {
    let var_0 = 0u;
    let var_1 = u_input.d;
    var var_2 = func_2(-37642i);
    let var_3 = vec4<bool>(false, true, !var_2.b.b, var_2.b.c);
    let var_4 = ~vec2<u32>(var_2.a, ~_wgslsmith_mult_u32(reverseBits(u_input.b), 0u));
    return _wgslsmith_sub_i32(23754i, 4138i) <= u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>(false, false, any(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true))), vec4<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true)), true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), func_1())));
    let var_1 = firstTrailingBit(u_input.c.x);
    var var_2 = max(firstTrailingBit(_wgslsmith_sub_i32(var_1, abs(~u_input.a))), _wgslsmith_dot_vec4_i32(-firstLeadingBit(-vec4<i32>(u_input.a, -19765i, -20508i, u_input.a)), -countOneBits(min(vec4<i32>(var_1, var_1, u_input.d, var_1), vec4<i32>(var_1, u_input.d, 7035i, 2147483647i)))));
    var_2 = u_input.a;
    var_2 = reverseBits(~_wgslsmith_add_i32(_wgslsmith_add_i32(7242i, -u_input.d), abs(u_input.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(-719f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1001f))))), any(vec4<bool>(true, false, var_0, !var_0)), any(vec2<bool>(false, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_dot_vec2_i32(u_input.c, abs(vec2<i32>(u_input.c.x, u_input.c.x))) | -firstTrailingBit(-2147483647i)), vec2<i32>(_wgslsmith_div_i32(-34438i, -var_1), u_input.a), ~(var_1 & 0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1864f, -834f, var_3.a))))) - vec3<f32>(var_3.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_3.a, var_3.a)), _wgslsmith_f_op_f32(var_3.a + var_3.a), any(vec2<bool>(var_3.c, true)))), _wgslsmith_f_op_f32(trunc(-1282f)))));
}

