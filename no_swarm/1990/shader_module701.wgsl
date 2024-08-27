struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = vec3<bool>(any(!vec3<bool>(true, true, any(vec4<bool>(arg_1.a, arg_1.a, false, true)))), any(vec3<bool>(false, arg_1.a, true || (arg_1.a & false))), any(select(vec4<bool>(arg_1.a, arg_0.x >= arg_0.x, true, arg_1.a), vec4<bool>(false, true, !arg_1.a, true), _wgslsmith_f_op_f32(trunc(-268f)) != _wgslsmith_div_f32(-1364f, -2361f))));
    var var_1 = -2144f;
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(arg_3.yx, vec2<u32>(u_input.a, u_input.a))), firstTrailingBit(u_input.a ^ ~1u)), 1u, arg_3.x);
    var var_3 = vec2<bool>(var_0.x, !(-arg_0.x == 41677i));
    var_2 = vec3<u32>(~(~_wgslsmith_div_u32(min(var_2.x, u_input.a), u_input.a)), 0u, 1u);
    return select(select(select(select(!vec3<bool>(false, arg_1.a, true), select(var_0, var_0, arg_1.a), !var_3.x), select(!var_0, var_0, var_0), arg_1.a), vec3<bool>(all(vec3<bool>(true, true, true)), var_0.x, arg_1.a), var_0), !select(var_0, vec3<bool>(any(vec4<bool>(arg_1.a, true, true, true)), any(vec3<bool>(var_0.x, var_3.x, false)), true), !(!vec3<bool>(false, var_3.x, var_3.x))), select(vec3<bool>(true, arg_1.a, false), select(var_0, vec3<bool>(var_3.x, false, any(var_0.xy)), true), vec3<bool>(true, any(select(var_0.xx, var_0.yx, true)), arg_1.a)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = u_input.a;
    var var_1 = !select(vec3<bool>(arg_3.a, var_0 != 0u, arg_1.a), !(!vec3<bool>(true, false, arg_2)), select(vec3<bool>(!arg_1.a, arg_2 == true, true), vec3<bool>(arg_1.a, true, all(vec3<bool>(arg_2, arg_2, arg_2))), func_3(~vec2<i32>(0i, -16661i), arg_1, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 29513i, 0i, -2147483647i), vec4<i32>(-15647i, 8359i, 15223i, 19581i)), abs(vec4<u32>(u_input.a, u_input.a, var_0, var_0)))));
    var var_2 = true | var_1.x;
    var var_3 = ~_wgslsmith_add_u32(~_wgslsmith_div_u32(33281u, u_input.a) ^ ((var_0 | 0u) << (_wgslsmith_mult_u32(var_0, 0u) % 32u)), _wgslsmith_sub_u32(~var_0 & _wgslsmith_mult_u32(0u, 0u), _wgslsmith_sub_u32(arg_0, u_input.a)));
    var var_4 = ~((abs(vec4<u32>(42809u, 1u, 1u, 0u) >> (vec4<u32>(u_input.a, arg_0, 16188u, 10151u) % vec4<u32>(32u))) >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, arg_0), vec4<u32>(u_input.a, u_input.a, 1793u, 50398u))) % vec4<u32>(32u))) >> (~(~vec4<u32>(4294967295u, 22322u, 12716u, 0u) & ~vec4<u32>(25557u, 36093u, arg_0, u_input.a)) % vec4<u32>(32u)));
    return _wgslsmith_add_i32(1i, -2147483647i);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32) -> vec3<i32> {
    let var_0 = Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(arg_1 != arg_1, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))));
    let var_1 = reverseBits(vec3<i32>(func_2(23257u | (arg_2 | arg_0), Struct_1(all(vec4<bool>(var_0.a, var_0.a, true, false))), var_0.a, Struct_1(arg_0 > 78767u)), _wgslsmith_sub_i32(1i, ~35211i), i32(-1i) * -13339i));
    var var_2 = vec4<i32>(countOneBits(1i) << (u_input.a % 32u), -select(14724i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, var_1.x)), 40808i), !(var_1.x > -2147483647i)), -38110i, _wgslsmith_mod_i32(var_1.x, max(-min(2147483647i, var_1.x), i32(-1i) * -17324i)));
    var_2 = _wgslsmith_add_vec4_i32(countOneBits(abs(-(~vec4<i32>(0i, var_2.x, var_1.x, -6088i)))), -countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, 983i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_2.x, var_1.x, var_2.x), vec4<i32>(var_2.x, 1i, var_1.x, -32937i)))));
    let var_3 = 486f;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(_wgslsmith_clamp_u32(u_input.a & ~1u, min(_wgslsmith_mult_u32(u_input.a, 39139u), ~1u), abs(u_input.a) | abs(4294967295u)), 46304u, _wgslsmith_mod_u32(7168u ^ (1u ^ u_input.a), 18445u));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), (func_1(u_input.a, -819f, 4294967295u) & vec3<i32>(2147483647i, -14802i, -1i)) << (abs(select(var_0, var_0, true)) % vec3<u32>(32u))), -(~(1i >> (0u % 32u))), ~(-func_2(2114u, Struct_1(true), any(vec4<bool>(true, true, false, false)), Struct_1(false))));
    var var_2 = any(vec2<bool>(true, !all(func_3(vec2<i32>(0i, var_1.x), Struct_1(true), vec4<i32>(var_1.x, 45010i, 0i, var_1.x), vec4<u32>(var_0.x, u_input.a, u_input.a, u_input.a)).yy)));
    var var_3 = Struct_1(all(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    let var_4 = 0u;
    let var_5 = -var_1;
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -611f), -1573f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1585f) - _wgslsmith_div_f32(-1656f, _wgslsmith_f_op_f32(f32(-1f) * -717f)))), 1i, _wgslsmith_mult_i32(-2147483647i, var_1.x), -376f);
}

