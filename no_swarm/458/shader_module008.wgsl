struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = !(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))));
    var var_1 = var_0.x;
    var_1 = true & var_0.x;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(740f * 254f), -583f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-888f - 1000f) * 1626f)))));
    let var_3 = !var_0.x;
    return 973f;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(!(!(!(!vec4<bool>(true, arg_1, true, arg_1)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), (~1u <= arg_3) & arg_1)), 1u == _wgslsmith_dot_vec4_u32(vec4<u32>(1u | arg_3, 66060u, _wgslsmith_sub_u32(arg_3, arg_3), ~1u), vec4<u32>(arg_3, 9234u, arg_3, arg_3) ^ vec4<u32>(arg_3, arg_3, 0u, arg_3)), vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-260f + arg_0.x) * arg_0.x))), arg_0.x, -590f), -vec3<i32>(1i, ~arg_2.x >> (4294967295u % 32u), i32(-1i) * -2147483647i));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) * 297f);
    var var_3 = Struct_1(var_0.a, var_1.d.x, all(vec4<bool>(var_0.c, select(false & var_0.a.x, true, false), arg_3 >= 32871u, arg_3 <= arg_3)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1968f - 1000f))), -1036f), min(u_input.a, ~vec3<i32>(var_0.e.x, _wgslsmith_add_i32(var_1.e.x, arg_2.x), -var_0.e.x)));
    let var_4 = var_0.d.xz;
    return Struct_1(vec4<bool>(all(select(var_3.a, vec4<bool>(true, false, var_3.a.x, true), select(var_1.a, vec4<bool>(var_0.c, var_0.c, var_0.a.x, false), var_3.a))), true, true, !(!(var_0.a.x | var_0.c))), _wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-968f + var_3.b)), var_4.x))), all(select(select(!var_1.a, var_3.a, var_3.a.x), var_1.a, true)), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1852f))), _wgslsmith_f_op_f32(arg_0.x - -938f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + -1216f)))), abs(-var_0.e));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(arg_0.d)), arg_0.d, !arg_0.a.x));
    var var_1 = arg_0.a.x;
    var var_2 = select(vec4<i32>(-(~(-9161i)), abs(arg_0.e.x | -1i), -1i, -arg_0.e.x), ~vec4<i32>(43678i, -46027i, -30411i, 0i) >> (vec4<u32>(1u, _wgslsmith_mult_u32(0u, 4294967295u), 39018u, _wgslsmith_clamp_u32(15751u, 1u, 1u)) % vec4<u32>(32u)), arg_0.c) & (countOneBits(vec4<i32>(-1i, 2147483647i, func_3(arg_0.d, arg_0.c, vec2<i32>(arg_0.e.x, u_input.a.x), 43482u).e.x, _wgslsmith_add_i32(2147483647i, u_input.a.x))) ^ min(_wgslsmith_add_vec4_i32(~vec4<i32>(68016i, arg_0.e.x, 4103i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-69166i, 23646i, 59713i, arg_0.e.x), vec4<i32>(u_input.b, -2147483647i, arg_0.e.x, 1i))), firstTrailingBit(vec4<i32>(-10029i, -2147483647i, 40526i, 0i)) & (vec4<i32>(u_input.b, arg_0.e.x, u_input.b, 12190i) ^ vec4<i32>(5782i, u_input.b, u_input.b, u_input.b))));
    var var_3 = !select(arg_0.a.wyx, vec3<bool>(true & (arg_0.a.x & arg_0.c), false, any(vec2<bool>(false, arg_0.a.x))), !(!(arg_0.b >= var_0.x)));
    var_2 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -6418i, arg_0.e.x), vec4<i32>(-2147483647i, arg_0.e.x, var_2.x, -2147483647i)));
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_4(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, -1000f, -1243f))) - vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(962f)), _wgslsmith_f_op_f32(trunc(-2846f)))), true, ~(vec2<i32>(u_input.a.x, u_input.b) | select(vec2<i32>(-2147483647i, -1i), vec2<i32>(33250i, arg_0), false)), 0u));
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.d.x, var_0.d.x))), func_3(var_0.d, select(true, false, false), u_input.a.yz, 1u).d))), true, var_0.e.zy, 1u);
    return func_3(var_0.d, var_1.a.x == (25491i > arg_0), var_0.e.xy, 1u);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!func_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(-arg_2.b), -1457f), func_1(u_input.a.x | -8927i).c, u_input.a.xz, _wgslsmith_mod_u32(0u, 39660u)).a.zw);
    let var_1 = abs(-u_input.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f));
    let var_3 = func_4(arg_0).d.x;
    var_0 = !vec2<bool>(~18373i >= _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1, var_1, 2147483647i), arg_0.e, var_0.x), vec3<i32>(0i, arg_0.e.x, -34911i)), all(vec4<bool>(all(vec3<bool>(false, false, true)), false, !arg_2.a.x, select(var_0.x, false, false))));
    return Struct_1(vec4<bool>(false, true, arg_2.c, true), -899f, arg_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, 620f, 219f)))))), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))), -1000f, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-364f, _wgslsmith_f_op_f32(-1000f + -1591f), 1214f)), ~u_input.a >> (vec3<u32>(firstLeadingBit(1u), ~44514u, 1u) % vec3<u32>(32u))), 107125u, func_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(u_input.b, -18664i), u_input.b), u_input.b)));
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(36207u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(3701u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u)))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 0u), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(-138f + -1672f)));
}

