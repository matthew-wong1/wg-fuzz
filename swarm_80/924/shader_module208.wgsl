struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-28039i, u_input.a, u_input.a, u_input.a) & vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), countOneBits(vec4<i32>(0i, -46120i, u_input.a, 2147483647i))), 0i, _wgslsmith_sub_i32(abs(1i), -1i) ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 17035i), vec3<i32>(1i, 1i, u_input.a)), u_input.a));
    var var_1 = min(vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 31188u, 41077u, 101744u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(75273u, 50877u))), 1u), abs(min(vec2<u32>(1u, ~4294967295u), firstLeadingBit(~vec2<u32>(34914u, 49161u)))));
    var_1 = vec2<u32>(~var_1.x, ~abs(var_1.x));
    var var_2 = Struct_3(var_0.a.yww);
    let var_3 = vec2<bool>(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))), true);
    return var_3.x;
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = Struct_1(vec4<i32>(abs(u_input.a), 62430i, u_input.a, -1i));
    var var_1 = vec2<bool>(true, arg_0.c);
    let var_2 = _wgslsmith_mod_vec4_i32(max(arg_0.d.a, var_0.a), -vec4<i32>(-6032i, ~reverseBits(73679i), ~abs(arg_0.b.x), -_wgslsmith_mod_i32(u_input.a, arg_0.d.a.x)));
    var_1 = !vec2<bool>(!(!(!var_1.x)), true);
    var_1 = select(select(!(!select(vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x), vec2<bool>(arg_0.c, var_1.x))), !(!(!vec2<bool>(false, var_1.x))), !any(vec2<bool>(arg_0.c, true))), !vec2<bool>(true, arg_0.c), vec2<bool>(any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(arg_0.c, true, false, false), vec4<bool>(arg_0.c, arg_0.c, true, true)), !vec4<bool>(var_1.x, var_1.x, true, arg_0.c))), true));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(-11316i, 33003i, var_2.x), max(vec3<i32>(max(~2147483647i, var_2.x & -14189i), -firstTrailingBit(u_input.a), 21862i), -arg_0.d.a.wwz));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x))))));
    var_0 = arg_0.x;
    var var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(select(select(false, true, false), true, true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), 19260i < ~arg_1.a.x, true), true | any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - 1964f), 1367f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1821f, arg_0.x))))));
    let var_3 = Struct_3(-func_4(Struct_2(_wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, arg_1.a.x), vec3<i32>(arg_1.a.x, 26697i, u_input.a)), func_3(), Struct_1(vec4<i32>(u_input.a, 0i, 42147i, 1i)))));
    return func_3();
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = all(select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), func_2(vec4<f32>(-201f, 580f, 1004f, -1106f), Struct_3(vec3<i32>(arg_1.x, u_input.a, -1i)))), vec4<bool>(false, true, false, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))), vec4<bool>(select(-10522i <= arg_1.x, select(false, false, false), true), false, func_2(vec4<f32>(117f, 1228f, 1778f, -2739f), Struct_3(vec3<i32>(arg_1.x, 0i, -10393i))), true), vec4<bool>(true, all(vec2<bool>(true, true)), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(258f, -192f, 711f, -1502f))), Struct_3(vec3<i32>(1i, 0i, arg_1.x))), true)));
    let var_1 = 89676u;
    let var_2 = Struct_2(~u_input.a, ~(~(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, -4542i), arg_1) & countOneBits(arg_1))), arg_1.x == -arg_1.x, Struct_1(reverseBits(~vec4<i32>(16281i, 7289i, 2147483647i, u_input.a) | vec4<i32>(u_input.a, -31464i, -20526i, arg_1.x))));
    var_0 = !(!var_2.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(286f, -716f)))) * -359f);
    return u_input.a & 1i;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> StorageBuffer {
    return StorageBuffer(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(79418u, 50696u), firstTrailingBit(vec2<u32>(1u, 4294967295u)))), _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_add_i32(8001i, 22179i), reverseBits(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    var var_1 = ~2147483647i;
    let var_2 = _wgslsmith_f_op_f32(1540f * 1279f);
    var var_3 = ~1u;
    let x = u_input.a;
    s_output = func_5(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) - -2315f)) == var_2, Struct_3(vec3<i32>(u_input.a, func_1(~vec4<u32>(4294967295u, 24774u, 1u, 34777u), vec3<i32>(2147483647i, 0i, 2147483647i), vec2<u32>(71237u, 0u)), u_input.a)));
}

