struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = select(arg_0.x, false, all(vec2<bool>(true, true)));
    let var_1 = Struct_2(arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-507f, 182f) - vec2<f32>(882f, -1000f)) + vec2<f32>(1000f, 652f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(159f, 721f))))), Struct_1(~u_input.d, vec4<bool>(arg_0.x, true, arg_2.b.x, true)));
    var var_2 = true;
    var_0 = !(var_1.b.x == _wgslsmith_f_op_f32(-1000f - -463f));
    let var_3 = reverseBits(arg_2.a.yy) | -firstLeadingBit(countOneBits(max(vec2<i32>(40862i, -2147483647i), arg_2.a.yy)));
    return _wgslsmith_clamp_i32(arg_2.a.x, select(~min(27415i, 1i), -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), true), select(1i, ~(-247i) ^ (var_1.c.a.x & arg_2.a.x), false)) | -33499i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_1(abs(~firstTrailingBit(-vec3<i32>(-37622i, arg_0, arg_0))), vec4<bool>(countOneBits(reverseBits(0u)) >= abs(~arg_2.x), arg_1, all(select(!vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, false, false), false)), all(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), arg_1), all(vec3<bool>(false, arg_1, arg_1))))));
    var_0 = Struct_1(vec3<i32>(1i, _wgslsmith_mult_i32(abs(13814i), u_input.b.x ^ 0i) & 2147483647i, _wgslsmith_sub_i32(abs(-13190i & var_0.a.x), -10526i)), vec4<bool>(any(vec4<bool>(any(var_0.b), all(vec2<bool>(true, true)), var_0.b.x, arg_1)), !var_0.b.x, !any(vec4<bool>(arg_1, var_0.b.x, true, var_0.b.x)), true));
    let var_1 = !select(select(!select(var_0.b.yzy, var_0.b.wzw, false), vec3<bool>(arg_1, false, arg_1 && var_0.b.x), !arg_1), !(!(!vec3<bool>(var_0.b.x, true, true))), all(var_0.b));
    let var_2 = Struct_2(Struct_1(vec3<i32>(var_0.a.x, reverseBits(var_0.a.x), max(-arg_0, ~var_0.a.x)), vec4<bool>(true, !any(vec3<bool>(var_0.b.x, var_1.x, true)), all(!var_0.b), -var_0.a.x > var_0.a.x)), vec2<f32>(-864f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(842f, 1803f) - _wgslsmith_div_f32(270f, 870f)))), Struct_1(_wgslsmith_add_vec3_i32(~firstLeadingBit(var_0.a), vec3<i32>(_wgslsmith_sub_i32(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, arg_0, var_0.a.x, -1i), vec4<i32>(1i, -12933i, u_input.b.x, arg_0)), _wgslsmith_dot_vec2_i32(var_0.a.yz, u_input.b.xz))), select(!(!var_0.b), vec4<bool>(!var_1.x, var_0.b.x, true, false), vec4<bool>(!arg_1, u_input.a != arg_2.x, true, var_0.b.x))));
    let var_3 = _wgslsmith_sub_vec2_u32(~arg_2.yy, vec2<u32>(2178u, 0u) << (firstTrailingBit(vec2<u32>(35732u, 1u)) % vec2<u32>(32u)));
    return true;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(-1000f, arg_0));
    var var_1 = func_4(reverseBits(u_input.b.x), !((0i > func_3(vec2<bool>(false, false), u_input.d.x, Struct_1(u_input.d, vec4<bool>(true, false, false, false)))) & any(vec2<bool>(true, true))), ~(~firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.a, 0u, u_input.c)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-70165i, 33494i), func_3(vec2<bool>(true, false), u_input.d.x, Struct_1(vec3<i32>(15990i, -1i, u_input.d.x), vec4<bool>(true, true, false, true))), -18977i), u_input.d), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), func_4(-36994i, false, vec3<u32>(u_input.a, u_input.a, u_input.c))), vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), true, any(vec2<bool>(false, false)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(901f, arg_0))))), Struct_1(vec3<i32>(max(-2147483647i, u_input.b.x), u_input.b.x, -2147483647i), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true))));
    var_1 = !func_4(~1i, false, _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(27725u, u_input.a, u_input.c)), vec3<u32>(select(u_input.a, 4294967295u, true), ~4294967295u, min(1u, u_input.c)), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.a, u_input.c, 34812u))));
    var_0 = arg_0;
    return Struct_1(~abs(-vec3<i32>(var_2.c.a.x, var_2.c.a.x, var_2.c.a.x)), var_2.a.b);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> bool {
    let var_0 = vec2<bool>(true, !(min(-u_input.d.x, _wgslsmith_sub_i32(1i, u_input.d.x)) > 2147483647i));
    var var_1 = Struct_1(vec3<i32>(-34799i, ~(-min(-25727i, 1i)), ~(~_wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(arg_2.x, arg_2.x)))), vec4<bool>((u_input.c >> (select(u_input.c, u_input.a, var_0.x) % 32u)) != 1u, var_0.x, all(vec3<bool>(true, var_0.x, var_0.x)), var_0.x));
    let var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), Struct_1(_wgslsmith_add_vec3_i32(func_2(_wgslsmith_f_op_f32(ceil(arg_1))).a, vec3<i32>(-2147483647i, u_input.d.x, 1i)), !var_1.b));
    let var_3 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.b)) * _wgslsmith_f_op_vec2_f32(-var_2.b)))), Struct_1(vec3<i32>(0i, min(_wgslsmith_sub_i32(arg_2.x, -2147483647i), 12568i), -(~2147483647i)), !(!(!vec4<bool>(true, var_2.a.b.x, true, var_1.b.x)))));
    let var_4 = 1354i;
    return !(!var_3.a.b.x || all(var_3.c.b.yxy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, func_1(-104f, -467f, vec4<i32>(-2147483647i, 1i, 0i, u_input.b.x))), vec3<bool>(true, true, true)), func_2(_wgslsmith_div_f32(-546f, -517f)).b.xyy, vec3<bool>(func_1(627f, -431f, ~vec4<i32>(-25949i, u_input.b.x, u_input.b.x, -1i)), !func_1(-266f, -1919f, vec4<i32>(u_input.b.x, 40990i, -1i, u_input.d.x)), true));
    let var_1 = var_0.yz;
    var var_2 = u_input.b.x;
    let var_3 = -1470f;
    let var_4 = _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, min(u_input.b.x, u_input.d.x)), 13583i)), -max(u_input.d.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~max(vec2<u32>(7930u, 4294967295u), vec2<u32>(u_input.c, 7664u)))), 0u, -(vec4<i32>(23289i, max(-12626i, 1i), i32(-1i) * -2147483647i, var_4) << (~vec4<u32>(1u, u_input.a, u_input.c, 4294967295u) % vec4<u32>(32u))));
}

