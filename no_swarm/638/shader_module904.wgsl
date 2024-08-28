struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    return !global0.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global0 = Struct_2(arg_0.x, !global0.b);
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(35112u, countOneBits(_wgslsmith_add_u32(0u, arg_1.x)) | ~abs(u_input.b.x), ~0u, ~arg_1.x), ~(~u_input.b));
    var var_1 = Struct_2(-73005i, select(vec4<bool>(!func_3(), true, !(38767u < arg_1.x), false), vec4<bool>(global0.b.x, global0.b.x, !any(global0.b), false), _wgslsmith_div_i32(~global0.a, -2147483647i) <= (global0.a << (arg_2.a % 32u))));
    var_1 = Struct_2(var_1.a, !(!(!select(vec4<bool>(true, false, global0.b.x, var_1.b.x), var_1.b, var_1.b))));
    var var_2 = Struct_2(arg_0.x, !select(global0.b, vec4<bool>(all(vec3<bool>(false, global0.b.x, false)), true, global0.b.x, true), var_1.b));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-826f, -1831f))))), 1f);
}

fn func_4(arg_0: f32) -> bool {
    let var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, 28187u, 56541u) << ((vec4<u32>(1u, u_input.b.x, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, ~18663u, 1u, ~u_input.b.x)), min(global0.a, max(global0.a, ~1i)));
    var var_1 = Struct_1(u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a, 2147483647i, global0.a, -17043i), ~u_input.a) & (u_input.c >> (~vec4<u32>(24772u, u_input.b.x, 66008u, 3981u) % vec4<u32>(32u))), u_input.a));
    var var_2 = Struct_2(58066i, global0.b);
    var var_3 = min(vec3<u32>(_wgslsmith_dot_vec2_u32(~(u_input.b.ww >> (u_input.b.wz % vec2<u32>(32u))), ~firstTrailingBit(vec2<u32>(11214u, var_1.a))), ~_wgslsmith_mult_u32(~70536u, var_0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xz, u_input.b.yx), firstTrailingBit(u_input.b.ww)) & var_0.a), ~((u_input.b.wwz ^ max(vec3<u32>(var_1.a, var_0.a, var_1.a), vec3<u32>(15706u, u_input.b.x, 0u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_1.a), u_input.b.yyx, vec3<u32>(var_0.a, 64067u, 1u)) % vec3<u32>(32u))));
    var var_4 = Struct_1(var_3.x, -_wgslsmith_sub_i32(2147483647i, -(~1i)));
    return true || global0.b.x;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(~(74971u & u_input.b.x), -(2147483647i ^ min(~(-1i), -33076i >> (u_input.b.x % 32u))));
    global0 = arg_3;
    global0 = Struct_2(arg_2, !select(global0.b, select(arg_1.b, !global0.b, select(vec4<bool>(global0.b.x, true, false, global0.b.x), vec4<bool>(false, arg_3.b.x, false, arg_0), arg_3.b.x)), all(select(vec2<bool>(arg_0, false), arg_1.b.yw, vec2<bool>(global0.b.x, false)))));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.c.zyz, firstTrailingBit(vec3<i32>(u_input.c.x, 0i, 314i))), 1i), var_0.b), reverseBits(vec2<i32>(~(~var_0.b), 2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(min(-1243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1341f - 439f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1036f)) - -1933f)))));
    return var_0;
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = -u_input.a.x;
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1589f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(u_input.a.wxy, vec3<u32>(0u, 0u, 0u), Struct_1(u_input.b.x, 1i))))))), Struct_2(abs(0i), global0.b), ~(-2147483647i) & (var_0 | ~_wgslsmith_sub_i32(global0.a, 2147483647i)), Struct_2(-(u_input.a.x >> (u_input.b.x % 32u)), vec4<bool>(true, false, _wgslsmith_dot_vec3_u32(u_input.b.wzz, vec3<u32>(u_input.b.x, 27414u, 0u)) < ~0u, countOneBits(-2147483647i) > ~var_0)));
    let var_2 = global0.b.xx;
    let var_3 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.a.yzy, _wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.b, -1i, global0.a), vec3<i32>(-37515i, _wgslsmith_mod_i32(2147483647i, -41605i), countOneBits(var_1.b)))), vec4<bool>(!any(!vec4<bool>(true, global0.b.x, true, arg_0.x)), !(!func_4(-1000f)), !global0.b.x, true));
    let var_4 = var_3;
    return _wgslsmith_clamp_i32(u_input.c.x, -(1i << (~var_1.a % 32u)), countOneBits(-_wgslsmith_div_i32(~6741i, firstTrailingBit(u_input.c.x))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(22795u, _wgslsmith_mod_u32(arg_0.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a, 0u), 0u >> (arg_0.a % 32u)))) | abs(~_wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), u_input.b.yz));
    var_0 = ~(u_input.b.yz << (u_input.b.xw % vec2<u32>(32u))) ^ (vec2<u32>(arg_0.a, firstTrailingBit(_wgslsmith_add_u32(arg_0.a, var_0.x))) & vec2<u32>(~1u, select(~arg_0.a, abs(u_input.b.x), func_3())));
    global0 = Struct_2(func_5(all(global0.b), Struct_2(-1i, select(global0.b, vec4<bool>(false, global0.b.x, false, global0.b.x), true)), 51863i, Struct_2(u_input.a.x, global0.b)).b, vec4<bool>(!(!global0.b.x), global0.b.x, any(vec2<bool>(func_4(1798f), global0.b.x)), global0.b.x));
    global0 = Struct_2(_wgslsmith_mult_i32(-(countOneBits(-1i) >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_0.a, arg_0.a, 4294967295u, arg_0.a)) % 32u)), global0.a), vec4<bool>(false, false, select(true, !global0.b.x, true), all(vec3<bool>(true, global0.b.x, global0.b.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(270f, 483f, -197f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, 578f, 209f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(264f, 361f, -616f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(957f, -1098f, 1258f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1542f), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1325f)), _wgslsmith_f_op_f32(abs(-843f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!select(vec2<bool>(false, global0.b.x), vec2<bool>(global0.b.x, false), global0.b.zz))));
    let var_1 = var_0.x;
    let var_2 = func_6(Struct_1(1u, func_1(vec4<bool>(true, !global0.b.x, !var_1, global0.b.x))));
    global0 = Struct_2(abs(_wgslsmith_add_i32(~_wgslsmith_mod_i32(1i, 1i), firstTrailingBit(var_2.b))), !(!global0.b));
    let var_3 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(4294967295u));
}

