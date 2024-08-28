struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1651f))));
    var var_1 = 4294967295u;
    var var_2 = Struct_3(arg_2.b, -410f);
    var_2 = Struct_3(all(vec3<bool>(arg_2.b, ~1u > select(4294967295u, 0u, arg_2.b), false)), var_2.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(411f + _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b * 270f), -732f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, _wgslsmith_f_op_f32(step(682f, var_2.b))))));
    return -select(vec2<i32>(0i, -78025i), vec2<i32>(-12366i, ~1i), !select(true, var_2.b > -1172f, true));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~(func_3(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, true), 42529u, Struct_2(u_input.c, false)) ^ vec2<i32>(u_input.b, arg_2.a)), firstLeadingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -14540i), vec2<i32>(2147483647i, u_input.c), vec2<i32>(arg_2.a, -1i))), firstLeadingBit(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.a, u_input.c), vec2<i32>(u_input.b, arg_2.a)))), ~(~vec2<i32>(60182i, 0i) & select(vec2<i32>(15339i, u_input.c), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(26467i, 53275i)), true)));
    var var_2 = arg_2;
    var_2 = Struct_2(-56805i, arg_2.b);
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(246f * -127f)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = any(vec2<bool>(true, any(select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, false), select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b))))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-523f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)), 2201f))), -729f, _wgslsmith_f_op_f32(1735f + _wgslsmith_f_op_f32(sign(-906f))));
    var var_2 = _wgslsmith_div_u32(0u, u_input.a.x ^ u_input.a.x);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec3<u32>(0u, 23283u, 0u), Struct_1(u_input.a), arg_0)))) + 1f), 1737f, _wgslsmith_div_f32(-814f, var_1.x)));
    var_2 = _wgslsmith_add_u32(firstLeadingBit(30584u), (u_input.a.x | reverseBits(76502u >> (u_input.a.x % 32u))) | _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x));
    return Struct_1(firstLeadingBit(abs(abs(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = all(!vec4<bool>(!all(vec2<bool>(true, true)), true, select(!arg_1, arg_1, arg_1), all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), arg_1))));
    var_0 = arg_1;
    var_0 = !(!any(!vec4<bool>(arg_1, arg_1, false, true)));
    let var_1 = select(-countOneBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, -1i, 1i, u_input.c), -vec4<i32>(-1i, u_input.c, u_input.b, 2147483647i))), ~firstLeadingBit(vec4<i32>(u_input.b, u_input.c, u_input.b, -42251i)) ^ (vec4<i32>(~u_input.b, u_input.c, _wgslsmith_sub_i32(-1i, 2147483647i), 25386i) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(7970u, arg_0.a.x, 18589u, 4343u), vec4<u32>(arg_0.a.x, u_input.a.x, 16733u, 25239u), max(vec4<u32>(28591u, 0u, arg_0.a.x, 17132u), vec4<u32>(3806u, u_input.a.x, 54436u, 32357u))) % vec4<u32>(32u))), !select(vec4<bool>(!arg_1, all(vec2<bool>(arg_1, false)), any(vec4<bool>(arg_1, false, true, false)), arg_1), select(vec4<bool>(arg_1, true, true, false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), !arg_1), arg_0.a.x <= 1u));
    var var_2 = func_1(Struct_2(~u_input.b, any(!(!vec4<bool>(arg_1, false, arg_1, arg_1)))));
    return arg_1 || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = Struct_3(any(vec3<bool>(true, func_4(func_1(Struct_2(-23393i, false)), true), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -461f))));
    var_1 = Struct_3(!(var_1.a | (any(vec3<bool>(var_1.a, true, false)) | select(var_1.a, var_1.a, true))), var_1.b);
    var_1 = Struct_3(any(vec2<bool>(false, !var_1.a && true)), var_1.b);
    var_1 = Struct_3(all(!(!(!vec3<bool>(var_1.a, var_1.a, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_1.b)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -700f) + _wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_f_op_f32(-var_1.b))));
}

