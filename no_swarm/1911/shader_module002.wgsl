struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(floor(-462f));
    let var_2 = vec4<bool>(any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true)), !(!(select(true, true, true) || any(vec4<bool>(true, true, true, false)))), !(!(true && all(vec4<bool>(false, false, false, true)))), false);
    var var_3 = !var_2.x;
    let var_4 = select(var_2.zzz, select(select(vec3<bool>(var_2.x, false, var_2.x), var_2.yyx, var_2.wxx), vec3<bool>(true, any(vec2<bool>(false, false)), var_2.x), vec3<bool>(true, all(vec3<bool>(var_2.x, false, false)), !select(false, false, false))), vec3<bool>(!all(var_2.xy) && any(vec2<bool>(false, var_2.x)), var_2.x, var_2.x & true));
    return vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, i32(-1i) * -36271i), arg_0.x, 2147483647i) << (~abs(4294967295u) % 32u), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(arg_0.x, var_0.x, 2147483647i)), -arg_0.x), i32(-1i) * -var_0.x) >> ((46544u ^ ~(~u_input.b)) % 32u), ~var_0.x, 19389i);
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(func_3(~vec3<i32>(1i, -1i, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(665f)), _wgslsmith_f_op_f32(round(1000f)))))));
    var_0 = Struct_2(Struct_1(abs(var_0.a.a), 1000f));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-656f, _wgslsmith_f_op_f32(f32(-1f) * -1145f), -1046f)))), _wgslsmith_mod_i32(-func_3(vec3<i32>(var_0.a.a.x, var_0.a.a.x, -1i)).x, var_0.a.a.x), u_input.a);
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(min(_wgslsmith_clamp_vec4_i32(~vec4<i32>(57945i, -2147483647i, -2147483647i, -24383i), -var_0.a.a, min(vec4<i32>(2147483647i, -4694i, -19369i, var_0.a.a.x), vec4<i32>(-2147483647i, 0i, var_1.b, 2147483647i))), abs(var_0.a.a)), var_0.a.b));
    return select(abs(max(var_0.a.a.zz, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.b, 22437i), vec2<i32>(var_0.a.a.x, 2147483647i)) & abs(var_0.a.a.yx))), max(~vec2<i32>(var_1.b, _wgslsmith_add_i32(var_0.a.a.x, var_1.b)), _wgslsmith_clamp_vec2_i32(-_wgslsmith_clamp_vec2_i32(var_0.a.a.wy, var_0.a.a.xw, vec2<i32>(var_1.b, var_1.b)), vec2<i32>(_wgslsmith_mod_i32(-1i, 52641i), countOneBits(55780i)), -vec2<i32>(var_1.b, var_1.b))), vec2<bool>(any(vec2<bool>(true, false)), (var_0.a.a.x == max(var_0.a.a.x, 41475i)) & any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = vec2<i32>(1i, ~arg_0.x);
    var var_1 = func_2();
    var_1 = min(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.a.a.zy, select(vec2<i32>(2147483647i, var_1.x), vec2<i32>(-59642i, -41339i), true)), vec2<i32>(abs(arg_1 | var_0.x), var_0.x)), vec2<i32>(22485i, arg_0.x));
    var var_2 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), any(vec3<bool>(false, true, true)))));
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b - _wgslsmith_f_op_f32(-var_3.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec4<i32>(0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(40800i, -2147483647i, -1i), vec3<i32>(2147483647i, 29706i, -2147483647i)), -98023i, firstTrailingBit(-1i)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(651f * -1013f) + _wgslsmith_f_op_f32(func_1(vec2<i32>(0i, -62293i), 1i, Struct_2(Struct_1(vec4<i32>(1i, 1i, 26644i, 2147483647i), -2072f)))))));
    let var_1 = vec4<bool>(false, !(!any(vec2<bool>(true, true)) & false), true, true | (_wgslsmith_f_op_f32(select(-1601f, _wgslsmith_f_op_f32(-595f + var_0.b), any(vec3<bool>(false, false, true)))) >= _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(f32(-1f) * -1339f))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1365f, var_0.b, var_0.b), vec3<f32>(464f, var_0.b, 1618f), var_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-639f * var_0.b), -434f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~(~2147483647i), firstLeadingBit(select(0i, -1i, false)), 6852i), vec4<i32>(firstTrailingBit(abs(var_0.a.x)), -(~0i), _wgslsmith_div_i32(14485i | var_0.a.x, select(var_0.a.x, var_0.a.x, false)), (1i >> (u_input.b % 32u)) >> (~1u % 32u))), max((u_input.a ^ _wgslsmith_add_vec4_u32(u_input.a, u_input.a)) & vec4<u32>(u_input.a.x, u_input.b >> (u_input.b % 32u), ~u_input.b, u_input.b), u_input.a | min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 14814u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x)), vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x))));
    let var_3 = any(var_1.yy);
    var_2 = Struct_3(var_2.a, 0i, ~(~var_2.c >> (u_input.a % vec4<u32>(32u))));
    let var_4 = vec3<bool>(all(vec4<bool>(var_1.x, all(vec3<bool>(var_1.x, true, true)), false == all(var_1.yxw), !any(vec2<bool>(var_1.x, false)))), any(vec4<bool>(false, true, var_3, var_1.x)), select(all(vec4<bool>(false, true, true, false)) & var_1.x, true || var_3, !var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a.x << (~u_input.b % 32u)), vec2<f32>(673f, _wgslsmith_f_op_f32(abs(-2401f))), max(~vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(var_2.c.x, 33479u), _wgslsmith_dot_vec4_u32(u_input.a, var_2.c), u_input.a.x >> (u_input.b % 32u)), ~(vec4<u32>(var_2.c.x, 9967u, u_input.a.x, 50241u) ^ (vec4<u32>(41026u, 29410u, var_2.c.x, 11095u) & var_2.c))), countOneBits(reverseBits(~abs(var_0.a.xyw))));
}

