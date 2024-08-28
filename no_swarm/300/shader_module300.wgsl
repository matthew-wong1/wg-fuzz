struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_mod_vec2_u32(u_input.b, u_input.b | u_input.b);
    var var_1 = false;
    var var_2 = Struct_1(u_input.b.x, select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(u_input.b.x < 11453u, any(vec3<bool>(true, false, true)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false))), any(vec3<bool>(true, true, true)) | any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 2147483647i)), ~vec2<i32>(1818i, -38924i), vec2<i32>(56907i, 2147483647i)) ^ ~max(vec2<i32>(10603i, -17698i), vec2<i32>(14893i, 0i)), select(-vec2<i32>(0i, 1i), countOneBits(~vec2<i32>(1i, -2147483647i)), true)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(ceil(-638f))), _wgslsmith_div_f32(-573f, 1f))));
    let var_3 = Struct_1(u_input.a, !var_2.b, !vec3<bool>(var_2.b.x, var_2.c.x, var_0.x < _wgslsmith_mod_u32(var_0.x, 29791u)), max(max(i32(-1i) * -var_2.d, ~0i), select(-2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.d, -45718i, 2147483647i), -vec3<i32>(var_2.d, 36579i, var_2.d)), var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2005f + _wgslsmith_f_op_f32(-837f * var_2.e)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(201f, 1000f)) + var_2.e) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)))));
    var var_4 = Struct_1(~var_2.a, !select(var_3.b, select(select(var_2.b, var_3.b, false), vec4<bool>(var_2.b.x, true, true, false), all(vec2<bool>(var_3.b.x, true))), var_2.b), !vec3<bool>(var_3.c.x, any(!var_2.b), true), _wgslsmith_dot_vec2_i32(-(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -74137i), vec2<i32>(var_3.d, var_3.d)) & -vec2<i32>(var_2.d, 1i)), -vec2<i32>(-13070i, ~var_2.d)), _wgslsmith_div_f32(472f, var_3.e));
    return u_input.b;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~4294967295u) & vec2<u32>(~0u, ~4294967295u), func_3()), arg_1.a);
}

fn func_1() -> i32 {
    return ~_wgslsmith_mod_i32(1i >> (countOneBits(func_2(u_input.b.x, Struct_1(4294967295u, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), 1i, 1000f))) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 1i, 5234i)), ~vec3<i32>(0i, 0i, 2147483647i)), _wgslsmith_mult_i32(firstLeadingBit(2147483647i), -18462i)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = 50758u;
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = abs(max(max(select(vec3<u32>(arg_1.a, arg_1.a, var_1.a), vec3<u32>(69744u, arg_1.a, arg_1.a), var_1.b.wxz), ~vec3<u32>(7407u, arg_1.a, 0u)), max(min(vec3<u32>(4294967295u, 49717u, arg_1.a), vec3<u32>(arg_1.a, arg_1.a, u_input.b.x)), ~vec3<u32>(0u, 3458u, u_input.a))) | ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.a), vec3<u32>(u_input.b.x, arg_1.a, 9302u)), abs(vec3<u32>(12641u, 1u, 13137u))));
    let var_3 = var_1.c.x;
    return ~var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(~(~firstLeadingBit(vec3<u32>(u_input.b.x, u_input.a, 52753u))), vec3<u32>(func_4(-2147483647i ^ select(5622i, 1i, true), Struct_1(u_input.b.x, vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -129f))), 0u, u_input.b.x));
    let var_1 = Struct_1(_wgslsmith_add_u32(func_2(var_0.x, Struct_1(_wgslsmith_add_u32(8274u, u_input.b.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), vec3<bool>(true, true, true), 1i, _wgslsmith_f_op_f32(746f * -1869f))), ~((67587u & u_input.b.x) << (~76392u % 32u))), !vec4<bool>(any(vec2<bool>(true, true)), true, select(false, true, any(vec2<bool>(true, true))), true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(all(vec4<bool>(false, false, true, true)), true, var_0.x <= var_0.x), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), vec3<bool>(true, !(u_input.b.x < u_input.a), any(vec4<bool>(false, false, true, false)))), -8357i, -1000f);
    let var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, func_2(~var_0.x, var_1)), var_0.x), select(select(select(vec4<bool>(var_1.c.x, true, true, var_1.c.x), !vec4<bool>(true, var_1.b.x, var_1.b.x, false), var_1.b), var_1.b, var_1.c.x), !vec4<bool>(var_1.c.x, 960f >= var_1.e, true, var_1.c.x), select(true, true, !var_1.c.x)), !var_1.b.xzy, _wgslsmith_add_i32(-2147483647i, 2147483647i), _wgslsmith_f_op_f32(select(2345f, _wgslsmith_f_op_f32(trunc(var_1.e)), all(vec3<bool>(true, any(var_1.b.xz), select(false, var_1.b.x, var_1.c.x))))));
    var var_3 = select(var_2.d == _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d, -2147483647i, var_1.d), vec3<i32>(1i, var_1.d, var_2.d)), -vec3<i32>(var_2.d, -27661i, 1i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(6847i, 71527i, var_1.d), vec3<i32>(var_1.d, var_1.d, var_2.d)), countOneBits(var_2.d), 1i)), var_1.b.x, all(select(vec3<bool>(false, true, var_2.c.x || true), select(select(var_1.b.wwy, vec3<bool>(var_1.b.x, true, true), vec3<bool>(var_2.c.x, false, true)), select(var_1.c, var_1.c, var_1.c), select(var_2.c, vec3<bool>(true, var_1.b.x, true), false)), true)));
    var var_4 = vec3<f32>(var_2.e, _wgslsmith_f_op_f32(-var_2.e), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(var_1.d, var_1.d), _wgslsmith_add_u32(0u >> (~firstTrailingBit(var_1.a) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, var_2.a, 28423u, u_input.a), vec4<u32>(~var_1.a, 1u, _wgslsmith_sub_u32(var_2.a, 16837u), func_3().x))), var_1.a);
}

