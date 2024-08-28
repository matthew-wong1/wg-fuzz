struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    let var_0 = -1i | u_input.b;
    let var_1 = -528f;
    var var_2 = vec2<bool>(select(false, !all(vec4<bool>(true, true, false, false)) && (-u_input.b <= ~0i), true), true);
    var var_3 = ~(~u_input.a);
    var var_4 = Struct_1(~4294967295u >> (~u_input.a.x % 32u), _wgslsmith_add_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(7811i, u_input.b, u_input.b, var_0), vec4<i32>(u_input.b, var_0, -1i, u_input.b)) & -vec4<i32>(u_input.b, var_0, u_input.b, -37705i)) & max(~vec4<i32>(u_input.b, var_0, -1i, u_input.b), vec4<i32>(var_0, var_0, -1i, u_input.b)), vec4<i32>(_wgslsmith_add_i32(1i, -u_input.b), 31490i, _wgslsmith_clamp_i32(firstTrailingBit(var_0), 41343i, reverseBits(-39531i)), -reverseBits(-3163i))));
    return select(countOneBits(select(u_input.a.yy, vec2<u32>(4294967295u & var_3.x, ~var_3.x), true)), firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.yx, vec2<u32>(27568u, var_4.a)), ~vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(~var_3.x, reverseBits(var_4.a)))), true);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = u_input.a.zx;
    let var_1 = Struct_1(~firstLeadingBit(u_input.a.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 10804i), vec2<i32>(u_input.b, 0i)), _wgslsmith_mult_i32(45452i, 0i)), -firstTrailingBit(vec4<i32>(-30979i, 2147483647i, u_input.b, u_input.b))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 25094i, 18016i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-35815i, -2147483647i, u_input.b, u_input.b))))));
    var var_2 = all(vec3<bool>(true || arg_0, arg_0, !arg_0));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-257f * -437f), _wgslsmith_f_op_f32(-1073f - -413f));
    let var_4 = func_3();
    return Struct_2(660f, u_input.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, 2065f, var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1017f, var_3.x, 849f, var_3.x), vec4<f32>(var_3.x, -1000f, var_3.x, 1044f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1069f, var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(304f, -345f, var_3.x, var_3.x) * vec4<f32>(var_3.x, -779f, 125f, 871f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_3)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = -1i;
    var var_1 = any(vec2<bool>(true, true));
    var_1 = any(select(vec2<bool>(true, _wgslsmith_add_i32(u_input.b, u_input.b) > 9923i), select(vec2<bool>(any(vec4<bool>(false, false, false, false)), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, false)), true)), true));
    let var_2 = -2515f;
    let var_3 = arg_1.xy;
    return Struct_3(Struct_1(~(u_input.a.x << (countOneBits(arg_1.x) % 32u)), vec4<i32>(_wgslsmith_clamp_i32(arg_0.b, -arg_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 7787i), vec3<i32>(26514i, 74268i, var_0))), -1i, 1i, ~(~arg_0.b))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.b, -24167i, 22505i), vec3<i32>(-41358i, 0i, var_0), true) ^ vec3<i32>(var_0, u_input.b, var_0), abs(-vec3<i32>(arg_0.b, 2760i, -51319i))), vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, arg_0.b, 2147483647i), vec3<i32>(-44207i, 3023i, 2147483647i), vec3<i32>(var_0, var_0, var_0))), !select(select(select(true, false, true), all(vec3<bool>(true, true, false)), arg_0.b <= 0i), true, true), arg_0);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    let var_0 = -_wgslsmith_mod_i32(~(~(i32(-1i) * -2147483647i)), 13137i);
    let var_1 = func_4(func_2(_wgslsmith_f_op_f32(sign(-1080f)) > _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 125f), _wgslsmith_f_op_f32(2099f - -769f))), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x << (u_input.a.x % 32u), reverseBits(0u)), _wgslsmith_div_u32(abs(u_input.a.x ^ u_input.a.x), u_input.a.x << (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)), 4294967295u, ~(~1u)));
    var var_2 = var_1.a.b.wyz;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.d.c.x)), var_1.d.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(751f, var_1.d.c.x) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 462f), var_1.d.c.zx))))), vec2<f32>(_wgslsmith_f_op_f32(518f + -1407f), 354f)));
    var var_4 = var_1.a;
    return var_4.a;
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(0u, -arg_2.c.a.b);
    let var_1 = _wgslsmith_clamp_vec3_i32(var_0.b.ywx, func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * -1000f)), (u_input.b ^ 1i) | _wgslsmith_dot_vec2_i32(arg_2.c.b.zy, arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_2.c.d.c)), _wgslsmith_f_op_vec4_f32(-arg_2.c.d.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.c.d.c.xz, vec2<f32>(arg_0, arg_3))))), select(~vec4<u32>(28109u, var_0.a, 34867u, 1u), arg_2.a, !select(vec4<bool>(arg_2.c.c, arg_2.c.c, true, false), vec4<bool>(arg_2.c.c, false, false, arg_2.c.c), vec4<bool>(arg_2.c.c, arg_2.c.c, false, false)))).a.b.www, arg_2.c.a.b.yzx);
    var_0 = func_4(Struct_2(arg_3, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(0i), u_input.b), ~(-vec2<i32>(u_input.b, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -816f, 1000f, -1264f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(684f * arg_3), arg_0), arg_2.c.d.c.yx)), vec4<u32>(select(u_input.a.x, _wgslsmith_add_u32(1u | var_0.a, u_input.a.x), all(vec4<bool>(true, false, arg_2.c.c, arg_2.c.c))), arg_2.c.a.a >> (4294967295u % 32u), 29720u, ~(~4294967295u))).a;
    let var_2 = ~arg_2.a.zww;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(760f - -139f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * arg_0)))), _wgslsmith_f_op_f32(trunc(-168f)));
    return arg_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(21143i, -max(u_input.b, -1i)), -1i);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.b, u_input.b, u_input.b) & vec3<i32>(u_input.b, u_input.b, 2147483647i)), -select(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(0i, -1914i, 42646i), false)), u_input.b, ~u_input.b) | -abs(vec3<i32>(-2147483647i, u_input.b, -20852i));
    var_0 = -2147483647i;
    let var_2 = var_1.x;
    var_0 = _wgslsmith_mod_i32(var_2, countOneBits(_wgslsmith_mult_i32(-2649i, var_1.x)));
    var_0 = -9557i << (u_input.a.x % 32u);
    var var_3 = func_5(805f, ~_wgslsmith_sub_vec2_i32(var_1.zx, ~(vec2<i32>(u_input.b, 0i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), Struct_4(vec4<u32>(_wgslsmith_mult_u32(func_1(1027f, vec3<bool>(false, true, true)), 0u), u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yy, u_input.a.zy, u_input.a.xz), u_input.a.zx), func_4(Struct_2(288f, var_1.x, vec4<f32>(976f, -740f, 545f, 685f), vec2<f32>(445f, 223f)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 3045u) & vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)).a.a), -1000f, func_4(func_4(Struct_2(298f, var_2, vec4<f32>(-827f, 315f, -496f, -981f), vec2<f32>(-2366f, -463f)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)).d, firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 23216u, u_input.a.x, 170488u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), 1070f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1267f - 1252f)))), _wgslsmith_f_op_f32(abs(1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~countOneBits(u_input.a.zz), vec4<u32>(~_wgslsmith_mult_u32(var_3.a | 0u, _wgslsmith_sub_u32(4294967295u, 20948u)), ~_wgslsmith_sub_u32(~1u, 16480u), ~1u, ~firstLeadingBit(4294967295u)), ~(vec3<u32>(1u, func_4(Struct_2(-950f, var_3.b.x, vec4<f32>(161f, 1486f, -287f, 208f), vec2<f32>(421f, 1000f)), vec4<u32>(var_3.a, 9514u, 69475u, u_input.a.x)).a.a, 4294967295u) ^ u_input.a), -1283f);
}

