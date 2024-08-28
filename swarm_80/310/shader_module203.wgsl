struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    let var_0 = select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, false, true)), true)), all(vec3<bool>(true, any(vec3<bool>(true, false, false)), all(vec2<bool>(false, false))))), vec4<bool>(true, true, true, true), ~u_input.a.x < u_input.a.x);
    let var_1 = Struct_1(vec4<bool>(all(select(select(var_0, var_0, var_0.x), var_0, !var_0.x)), all(!(!var_0.xyw)), 58565i <= reverseBits(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), true), abs(_wgslsmith_div_vec3_u32(~u_input.a, vec3<u32>(arg_0.x, 1u, 1u)) & _wgslsmith_mod_vec3_u32(arg_0.yxz, ~u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1890f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, -868f))), _wgslsmith_f_op_f32(-arg_1))));
    var var_2 = Struct_1(vec4<bool>(var_1.a.x, var_0.x, any(select(var_1.a, select(var_0, var_1.a, true), 1u <= arg_0.x)), true), ~vec3<u32>(arg_0.x, 54388u, min(_wgslsmith_add_u32(52886u, u_input.a.x), arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c))));
    var_2 = var_1;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2145f, var_2.c, var_2.c, 834f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-1332f, 758f)), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(step(-1085f, -542f)), var_1.c), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 539f, -403f, var_1.c), vec4<f32>(arg_1, var_2.c, 330f, -989f), vec4<bool>(var_1.a.x, false, true, true))))), true))));
    return ~var_1.b.x;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = firstTrailingBit(u_input.a);
    let var_1 = Struct_1(!select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, true, true, !arg_0), any(vec2<bool>(true, arg_0)) || arg_0), min(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 546u, 1493u), vec3<u32>(53596u, 1u, 0u), vec3<u32>(var_0.x, u_input.a.x, var_0.x)) | ~u_input.a), ~u_input.a), _wgslsmith_f_op_f32(ceil(1622f)));
    var var_2 = i32(-1i) * -u_input.b.x;
    var_0 = vec3<u32>(4294967295u, 4493u, func_3(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 73396u), vec4<u32>(1u, var_1.b.x, 135945u, 43660u))), _wgslsmith_f_op_f32(-227f - -884f)));
    var_2 = 2147483647i;
    return var_1.a.xxy;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(vec4<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(true))), select(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) >= (u_input.b.x | 0i), abs(u_input.a.x) <= _wgslsmith_mod_u32(u_input.a.x, 39101u), true)), min(select(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 49266u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) & u_input.a, u_input.a ^ ~vec3<u32>(0u, u_input.a.x, 9252u), false), vec3<u32>(firstLeadingBit(select(45732u, 18889u, true)), ~_wgslsmith_mod_u32(0u, u_input.a.x), u_input.a.x)), -698f);
    var var_1 = Struct_1(!(!(!var_0.a)), vec3<u32>(_wgslsmith_div_u32(24403u, 94984u), _wgslsmith_add_u32(9222u, abs(u_input.a.x) ^ 0u), u_input.a.x), var_0.c);
    var_1 = Struct_1(var_0.a, ~var_1.b, _wgslsmith_f_op_f32(-var_0.c));
    var_0 = Struct_1(select(!var_1.a, vec4<bool>((var_1.a.x | var_1.a.x) != (var_0.a.x | var_0.a.x), var_1.a.x, var_0.a.x, var_1.a.x & !var_1.a.x), all(var_1.a.xx)), vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(49975u, var_0.b.x, u_input.a.x, var_1.b.x), vec4<u32>(0u, u_input.a.x, 47060u, 4294967295u))) >> ((u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 0u), vec2<u32>(var_1.b.x, 66566u))) % 32u), 51263u, _wgslsmith_dot_vec3_u32(u_input.a, ~min(var_1.b, vec3<u32>(var_1.b.x, 4294967295u, u_input.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1962f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.c, var_0.c)))))), var_0.c)));
    let var_2 = ~(_wgslsmith_div_vec2_u32(~var_0.b.xy, max(var_0.b.zy, vec2<u32>(1u, var_0.b.x))) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.b.x, 4294967295u), vec2<u32>(var_1.b.x, u_input.a.x)) % vec2<u32>(32u))) | var_1.b.yx;
    return ~abs(-vec2<i32>(_wgslsmith_add_i32(4500i, u_input.b.x), u_input.b.x | u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(func_1(), max(u_input.b.yy, vec2<i32>(-43143i, -1i)));
    var var_1 = vec4<bool>(~(~u_input.a.x) < ~(~u_input.a.x | _wgslsmith_mod_u32(29253u, u_input.a.x)), !select(select(all(vec3<bool>(true, true, false)), true, true), true, true), all(vec2<bool>(true, (0u < u_input.a.x) || false)), false);
    let var_2 = reverseBits(~u_input.a.yz);
    var_1 = !vec4<bool>(true, ((-2147483647i ^ u_input.b.x) <= _wgslsmith_add_i32(var_0.x, 25658i)) && !(true & var_1.x), var_1.x, !var_1.x);
    let var_3 = var_0.x;
    var var_4 = -(vec4<i32>(-1i) * -(~(~vec4<i32>(-2702i, -2147483647i, u_input.b.x, u_input.b.x))));
    var_1 = !select(select(vec4<bool>(true, true, true, any(var_1.yzy)), !select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, true, false)), !(false & var_1.x)), !(!vec4<bool>(var_1.x, false, var_1.x, false)), var_1.x);
    let var_5 = !select(vec2<bool>(!all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_div_f32(268f, -560f) > _wgslsmith_f_op_f32(sign(880f))), var_1.xx, any(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, true), var_1.x)));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec2_i32(var_4.xz, u_input.b.zy)), _wgslsmith_clamp_i32(var_0.x, u_input.b.x, func_1().x))), u_input.b.x, _wgslsmith_f_op_f32(step(497f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2219f)))))));
}

