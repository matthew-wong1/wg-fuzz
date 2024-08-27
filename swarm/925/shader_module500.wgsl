struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> vec2<i32> {
    var var_0 = any(select(select(select(!arg_1.a, select(vec2<bool>(arg_0.a.x, arg_1.a.x), arg_0.a, false), false), vec2<bool>(arg_1.a.x, 1i < arg_1.b.a.a), select(!vec2<bool>(arg_0.a.x, arg_0.a.x), arg_1.a, select(arg_0.a, vec2<bool>(false, arg_0.a.x), arg_0.a))), vec2<bool>(!arg_1.a.x || all(arg_1.a), false), select(arg_0.a, !select(arg_1.a, vec2<bool>(arg_1.a.x, arg_0.a.x), arg_1.a), false)));
    var_0 = !((_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(815f, 1068f), _wgslsmith_f_op_f32(f32(-1f) * -796f))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1505f, 2381f))))) && true);
    let var_1 = vec4<u32>(u_input.a.x, ~u_input.a.x, arg_1.b.b, _wgslsmith_dot_vec2_u32(~(min(u_input.a, vec2<u32>(66513u, u_input.a.x)) | (vec2<u32>(48165u, 1u) << (u_input.a % vec2<u32>(32u)))), vec2<u32>(~(~4294967295u), ~0u)));
    var_0 = arg_0.a.x;
    var var_2 = arg_0;
    return select(countOneBits(~vec2<i32>(firstLeadingBit(arg_1.b.a.a), countOneBits(1i))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.a.a, -4408i), vec2<i32>(arg_1.b.a.a << (0u % 32u), arg_1.b.a.a)), select(vec2<bool>(true, any(vec2<bool>(true, true))), select(!vec2<bool>(arg_0.a.x, arg_0.a.x), !(!vec2<bool>(arg_1.a.x, true)), any(vec3<bool>(true, arg_0.a.x, var_2.a.x)) & var_2.a.x), vec2<bool>(true, _wgslsmith_dot_vec2_u32(var_1.xw, var_1.zy) >= 87200u)));
}

fn func_2() -> Struct_3 {
    let var_0 = max(vec4<i32>(2147483647i, 0i, firstTrailingBit(_wgslsmith_dot_vec2_i32(func_3(Struct_1(vec2<bool>(false, true)), Struct_5(vec2<bool>(false, false), Struct_3(Struct_2(0i), 14065u))), select(vec2<i32>(-19211i, -50457i), vec2<i32>(27355i, 31006i), false))), 0i), vec4<i32>(0i, ~14318i, ~(-30248i), -(~(~4451i))));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 17713u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 17785u, u_input.a.x) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 26633u, u_input.a.x, 1u), vec4<u32>(53007u, u_input.a.x, u_input.a.x, 0u))) >> (u_input.a.x % 32u), u_input.a.x);
    var var_2 = abs(firstLeadingBit(var_0.x));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(631f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1574f)), _wgslsmith_f_op_f32(step(-541f, 1385f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1708f + _wgslsmith_f_op_f32(step(-378f, -216f))) * -325f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f - 1000f)))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-764f)))))));
    var var_4 = var_3.x;
    return Struct_3(Struct_2(var_0.x), ~32458u);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(173f + 937f)))))));
    var_0 = Struct_3(func_2().a, ~1u);
    var_0 = Struct_3(Struct_2(23103i), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.b, 8118u, var_0.b, 939u) | vec4<u32>(1u, var_0.b, var_0.b, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, u_input.a.x, 35008u, 8516u), vec4<u32>(u_input.a.x, var_0.b, 7398u, var_0.b) & vec4<u32>(u_input.a.x, var_0.b, var_0.b, 1u), ~vec4<u32>(var_0.b, 55595u, 100976u, 4294967295u))), ~_wgslsmith_div_u32(~u_input.a.x, 31242u)));
    let var_2 = true;
    return func_2().a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, func_2().a.a, -_wgslsmith_mult_i32(arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, 2147483647i), vec3<i32>(arg_0.a, -2147483647i, arg_2.x))), reverseBits(i32(-1i) * -18200i) | arg_0.a), firstLeadingBit(vec4<i32>(arg_0.a, _wgslsmith_div_i32(i32(-1i) * -100463i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 10343i, arg_2.x), vec4<i32>(14606i, arg_0.a, arg_0.a, 1i))), -74568i, 0i)));
    let var_1 = -arg_2;
    var var_2 = select(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(~u_input.a.x, u_input.a.x | u_input.a.x, u_input.a.x, reverseBits(u_input.a.x))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(12907u, 9074u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 73091u, u_input.a.x, u_input.a.x)) >> ((select(vec4<u32>(47960u, u_input.a.x, u_input.a.x, 21352u), vec4<u32>(67846u, 1u, u_input.a.x, 30518u), true) & ~vec4<u32>(4294967295u, u_input.a.x, 1u, 4089u)) % vec4<u32>(32u)), reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x, 51051u, 4294967295u) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(8742u, u_input.a.x, 10338u, u_input.a.x)) % vec4<u32>(32u)))), ~select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a), u_input.a.x, 47297u, ~17547u), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(32364u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 5283u, u_input.a.x))), !select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(false, true, arg_1, arg_1), arg_1)), vec4<bool>(!arg_1 == arg_1, true, true, arg_1));
    let var_3 = true;
    var_2 = vec4<u32>(20737u, _wgslsmith_add_u32(var_2.x, ~(~u_input.a.x) << (select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), var_2.xz), ~4294967295u, true) % 32u)), ~_wgslsmith_dot_vec2_u32(countOneBits(~u_input.a), firstLeadingBit(vec2<u32>(var_2.x, 4294967295u))), 1u << ((var_2.x >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)) % 32u));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_4(func_1(), false, vec2<i32>(1i, -39764i)) == func_4(Struct_2(-36993i), true, vec2<i32>(0i, 2147483647i)), false, !select(true, false, true));
    var var_1 = _wgslsmith_f_op_f32(select(-236f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(521f)))))), select(!((u_input.a.x != 12489u) == true), true, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1853f)))));
    var_1 = -1796f;
    let var_3 = firstTrailingBit(-firstTrailingBit(vec3<i32>(-2147483647i, min(6967i, -1i), 1i)));
    var_0 = true;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(267f, _wgslsmith_f_op_f32(-1248f + _wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(-709f * -385f))), true)), _wgslsmith_f_op_f32(-1799f + -122f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-869f * _wgslsmith_f_op_f32(select(745f, 1000f, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-386f, -437f)))), -1702f)), -696f);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3.x >> (_wgslsmith_add_u32(59722u | u_input.a.x, u_input.a.x >> (86036u % 32u)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, -962f))))), u_input.a);
}

