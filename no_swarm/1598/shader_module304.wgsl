struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = ~(~_wgslsmith_sub_u32(u_input.b, arg_0));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1026f, -1748f), _wgslsmith_f_op_f32(select(591f, 2124f, true))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(489f)), -869f))))));
    var var_3 = select(!vec2<bool>(true, u_input.b <= 55837u), vec2<bool>(true, any(select(vec4<bool>(var_1, var_1, var_1, true), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(false, var_1, true, false)), select(false, false, false)))), _wgslsmith_sub_u32(1u, ~(~var_0)) <= select(4294967295u, var_0, true));
    let var_4 = 60055u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f - -681f)))))), _wgslsmith_div_f32(1856f, 1388f));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u)))), 1u, _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(i32(-1i) * -17538i, 0i)), ~reverseBits(vec2<i32>(1i, 1i))));
    let var_1 = vec3<i32>(-(~var_0.c.x), var_0.c.x, _wgslsmith_dot_vec2_i32(max(var_0.c, var_0.c), var_0.c)) >> (firstLeadingBit(u_input.a) % vec3<u32>(32u));
    let var_2 = false;
    let var_3 = true & any(select(vec3<bool>(var_2, true, !var_2), !(!vec3<bool>(true, var_2, var_2)), select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, var_2, var_2), !vec3<bool>(true, false, var_2))));
    var var_4 = Struct_1(-686f, 22369u, vec2<i32>(-26030i << (select(0u, ~66478u, true) % 32u), -(~(-1i))));
    return true;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0.ww;
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~4294967295u, 102273u), 33734u, 55958u << (1u % 32u)), vec3<u32>(u_input.c ^ ~u_input.a.x, select(0u, ~1u, func_2()), 1u ^ max(u_input.c, 21606u))), _wgslsmith_div_vec3_u32(select(u_input.a >> (u_input.a % vec3<u32>(32u)), u_input.a, vec3<bool>(var_0.x, false, true)) ^ (u_input.a >> (_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(47752u, u_input.a.x, 69350u)) % vec3<u32>(32u))), u_input.a));
    var_1 = select(~u_input.a, firstLeadingBit(u_input.a), vec3<bool>(func_2(), arg_0.x, !select(!arg_0.x, true, var_0.x)));
    var_0 = select(arg_0.zy, !vec2<bool>(!arg_0.x != false, all(arg_0) && true), all(!(!(!vec4<bool>(var_0.x, var_0.x, false, true)))));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1066f * _wgslsmith_f_op_f32(select(-503f, 1465f, arg_0.x))) + _wgslsmith_f_op_f32(789f + _wgslsmith_f_op_f32(min(1643f, 456f)))), 589f), firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a, ~max(vec3<u32>(u_input.c, 36473u, 0u), vec3<u32>(var_1.x, var_1.x, 1u)))), -(~_wgslsmith_div_vec2_i32(vec2<i32>(-16737i, 1i), vec2<i32>(-1i, -2147483647i)) << (select(vec2<u32>(var_1.x, var_1.x), _wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.a.yy, u_input.a.yx), var_0.x) % vec2<u32>(32u))));
    return var_2;
}

fn func_1(arg_0: f32) -> Struct_1 {
    return func_4(vec4<bool>(true, false, all(vec3<bool>(false, true, all(vec2<bool>(true, false)))), func_2()));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(~select(4294967295u, arg_0.b, arg_2.x), 40450u, ~71800u, arg_0.b), vec4<u32>(68124u, 0u, countOneBits(42489u), select(4294967295u, 4294967295u, false)));
    var var_1 = Struct_1(1f, 0u, _wgslsmith_sub_vec2_i32(vec2<i32>(~arg_1.c.x, _wgslsmith_mult_i32(arg_1.c.x, arg_0.c.x)) & _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(arg_0.c.x, arg_1.c.x)), vec2<i32>(arg_0.c.x, arg_0.c.x)), _wgslsmith_add_vec2_i32(max(countOneBits(arg_1.c), arg_1.c), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_0.c.x, -2147483647i), _wgslsmith_div_i32(arg_0.c.x, arg_1.c.x)))));
    var_0 = ~abs(vec4<u32>(_wgslsmith_div_u32(var_0.x, ~4294967295u), arg_1.b, ~(~53022u), ~_wgslsmith_clamp_u32(0u, 91704u, 14773u)));
    var var_2 = func_4(select(vec4<bool>(any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), true, !(arg_2.x | false), any(!arg_2.yx)), select(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_1.c.x <= var_1.c.x, true), !select(vec4<bool>(true, false, arg_2.x, false), vec4<bool>(false, false, false, arg_2.x), false)), vec4<bool>(false, arg_1.a < _wgslsmith_div_f32(226f, var_1.a), !(u_input.a.x > 130172u), true)));
    let var_3 = vec2<bool>(arg_2.x, arg_2.x);
    return StorageBuffer(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(220f, -800f, 590f);
    let x = u_input.a;
    s_output = func_5(func_1(_wgslsmith_f_op_f32(ceil(-1000f))), func_4(vec4<bool>(true, true, true, true)), vec3<bool>(!any(vec2<bool>(true, true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), false));
}

