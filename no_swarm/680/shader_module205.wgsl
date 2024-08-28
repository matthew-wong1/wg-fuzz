struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4) -> i32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(-arg_0.b.a.zz << (vec2<u32>(u_input.b, firstLeadingBit(4294967295u)) % vec2<u32>(32u)), u_input.a.xy), !(_wgslsmith_div_i32(~arg_2.b.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, arg_0.c), vec3<i32>(arg_2.c, arg_0.b.a.x, -16807i))) <= -1i));
    var var_1 = Struct_1(var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, 1195f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 1790f, -335f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.d, 381f, arg_0.a), vec3<f32>(arg_2.d, -232f, -661f))), vec3<f32>(-1267f, arg_1.x, arg_1.x))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_2.a), _wgslsmith_f_op_f32(-arg_0.a), -657f))));
    return var_0.a.x;
}

fn func_2() -> vec4<i32> {
    let var_0 = vec2<i32>(-35604i, u_input.a.x);
    let var_1 = var_0.x ^ min(6366i, -var_0.x);
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(var_0.x, ~40560i), -u_input.a.x, _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(var_0.x, -34792i))));
    var var_3 = Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(956f + -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1421f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f + -1268f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-265f, 1137f, -600f), vec3<f32>(546f, -641f, 164f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, 1001f, 451f))))));
    var var_4 = ~(~vec4<u32>(u_input.b << (u_input.b % 32u), u_input.b, abs(1u) << (0u % 32u), select(0u, 1u, var_3.a)));
    return ~(vec4<i32>(1i, var_1, func_3(Struct_4(-1682f, Struct_3(vec3<i32>(-17917i, -2147483647i, 0i)), 1i, var_3.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, 292f)), Struct_4(-680f, Struct_3(vec3<i32>(-1i, 62147i, -13855i)), var_2.a.x, 1314f)), var_0.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_4.x), vec2<u32>(u_input.b, var_4.x)), var_4.x, 1u, var_4.x >> (u_input.b % 32u)), firstLeadingBit(vec4<u32>(1u, 25599u, var_4.x, 46683u)) << (~vec4<u32>(u_input.b, var_4.x, 101168u, 73133u) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> vec4<i32> {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((-firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) << (vec4<u32>(u_input.b, abs(u_input.b), 0u, ~u_input.b) % vec4<u32>(32u))) & select(-(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 1i) >> (vec4<u32>(0u, 12160u, u_input.b, 4294967295u) % vec4<u32>(32u))), max(_wgslsmith_div_vec4_i32(vec4<i32>(33568i, 5783i, -31655i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, 1i, -643i)), vec4<i32>(-2147483647i, -10609i, -1i, u_input.a.x)), all(vec2<bool>(false, false)))) ^ ~max(func_1(), -(~vec4<i32>(u_input.a.x, 39905i, -2147483647i, -17113i)));
    var var_1 = -var_0.zz;
    var_0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(func_1(), countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(49841i, var_1.x, var_1.x, -1i), vec4<i32>(var_0.x, var_0.x, var_0.x, -1i), vec4<i32>(2147483647i, -4897i, 2147483647i, u_input.a.x)), -vec4<i32>(-2147483647i, var_0.x, 0i, -2147483647i))), vec4<i32>(abs(_wgslsmith_add_i32(1i, 30801i)), u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(65795i, 2147483647i, -2147483647i, var_1.x), vec4<i32>(var_1.x, -37017i, var_0.x, 43640i))), ~var_1.x)));
    let var_2 = false && !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_3 = Struct_3(_wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, 34823i), i32(-1i) * -58442i, var_1.x), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.yy, vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(var_0.yxy, vec3<i32>(var_1.x, 11970i, var_0.x) | vec3<i32>(u_input.a.x, -1i, -1279i)), ~(-var_0.x))));
    let var_4 = Struct_1(select(any(vec4<bool>(var_2, var_2, var_2, var_2)), var_2 | var_2, var_2) | any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-511f, -174f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)))));
    var var_5 = ~abs(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.b), firstTrailingBit(~vec2<u32>(u_input.b, u_input.b))));
    var_0 = max(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -3789i, -2147483647i, -_wgslsmith_add_i32(var_3.a.x, 2147483647i), _wgslsmith_mult_i32(~u_input.a.x, var_1.x)), reverseBits(~firstLeadingBit(vec4<i32>(var_1.x, 1i, u_input.a.x, var_0.x)))), vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -var_3.a.x, firstLeadingBit(func_1().x)), (1i >> (abs(1u) % 32u)) >> ((var_5.x ^ 4294967295u) % 32u), -22234i, _wgslsmith_mod_i32(var_0.x & _wgslsmith_mult_i32(-1i, var_3.a.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, 2147483647i), -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1257f, -1423f), _wgslsmith_mult_vec3_i32(-u_input.a, _wgslsmith_sub_vec3_i32(~func_1().xxx, var_3.a)));
}

