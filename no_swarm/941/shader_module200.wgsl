struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = arg_2;
    var_0 = arg_2;
    var_0 = Struct_1(select(arg_2.a, abs(~var_1.a), any(!(!vec2<bool>(arg_1.x, true)))), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-27959i, var_1.b, u_input.b), vec3<i32>(0i, var_0.b, -1i))) ^ abs(23395i & ~var_0.b));
    return 1u;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = ~firstLeadingBit(~arg_0 & ~4294967295u) >> ((4294967295u << ((func_3(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), Struct_1(arg_0, -43184i)) >> (countOneBits(_wgslsmith_add_u32(arg_0, 11020u)) % 32u)) % 32u)) % 32u);
    var var_1 = Struct_1(max(~u_input.a, 22064u), 1i);
    var_0 = arg_0;
    let var_2 = Struct_1(40078u, -53982i);
    let var_3 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_mult_u32(~(~arg_0), 0u)), max(var_2.b, min(~(-var_2.b), -2147483647i)));
    return select(!(!vec3<bool>(true, true, all(vec3<bool>(false, false, false)))), !vec3<bool>(~1u <= func_3(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), var_3), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), any(vec3<bool>(true, false, false))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_1() -> Struct_1 {
    let var_0 = select(vec2<bool>(true, false), vec2<bool>(true, true), true);
    let var_1 = func_2(u_input.a);
    var var_2 = Struct_1(u_input.a << (u_input.a % 32u), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, 7728i, u_input.b) << (vec3<u32>(4294967295u, 65923u, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(19228i, u_input.c, -41235i), vec3<bool>(var_1.x, var_1.x, true)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 11791u, 80927u), firstLeadingBit(vec3<u32>(1u, u_input.a, 1u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.c, u_input.b, 4670i) & vec3<i32>(u_input.b, u_input.b, -2147483647i)), abs(~vec3<i32>(u_input.c, -1422i, 28834i)))));
    var_2 = Struct_1(41188u, abs(53324i >> (~var_2.a % 32u)));
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.a), vec2<u32>(0u, 72602u)), abs(u_input.a))) << (abs(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 0u), vec2<u32>(1868u, 0u))) % 32u), _wgslsmith_mult_i32(~u_input.b, -1i | ~u_input.b));
    return Struct_1(u_input.a, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~(~(select(abs(vec3<i32>(u_input.b, u_input.b, 18334i)), vec3<i32>(u_input.b, 25981i, var_0.b) << (vec3<u32>(var_0.a, 4294967295u, var_0.a) % vec3<u32>(32u)), true) >> (vec3<u32>(var_0.a, 4294967295u, 31501u >> (0u % 32u)) % vec3<u32>(32u))));
    var var_2 = -_wgslsmith_add_i32(var_0.b, select(1i, _wgslsmith_div_i32(var_1.x, ~1i), false));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-639f, -569f))) * 907f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-163f, 540f)) * 1088f))), -124f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(797f)))), 202f, _wgslsmith_f_op_f32(f32(-1f) * -202f), 700f))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(891f, var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1681f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x)))), -2220f, _wgslsmith_f_op_f32(-1309f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -466f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1278f, 353f, false)), _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1529f, var_3.x) * _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(select(-849f, _wgslsmith_f_op_f32(-658f + var_3.x), true))))));
}

