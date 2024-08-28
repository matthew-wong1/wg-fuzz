struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    let var_0 = !all(vec2<bool>(all(vec3<bool>(true, true, false)), false)) | select(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), !select(select(false, true, false), true, true), any(vec4<bool>(any(vec2<bool>(false, true)), true, all(vec3<bool>(false, false, false)), true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-363f, 162f), vec2<f32>(-1685f, -632f))) - vec2<f32>(-1013f, _wgslsmith_f_op_f32(ceil(-200f))))), u_input.c);
    var var_2 = var_1.a.x;
    let var_3 = var_0;
    let var_4 = max(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(113454u, min(u_input.c.x, 1u)), var_1.b)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(select(var_1.b, vec2<u32>(u_input.c.x, 9151u), vec2<bool>(true, var_0)), reverseBits(var_1.b)), _wgslsmith_add_vec2_u32(var_1.b, ~u_input.c)));
    return firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~29097u, 11248u), ~(vec3<u32>(45709u, 0u, u_input.a) & vec3<u32>(62484u, 1u, 4294967295u)), firstLeadingBit(~vec3<u32>(u_input.c.x, var_4.x, var_1.b.x)))) << (~(~(~firstLeadingBit(vec3<u32>(u_input.c.x, 0u, 3289u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec3<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 35207i, u_input.d.x, 2147483647i), vec4<i32>(arg_0.b.x, 17290i, 0i, -48495i)) | arg_0.b.x, -31091i, u_input.b);
    let var_1 = ~u_input.c;
    var var_2 = _wgslsmith_add_vec3_u32(func_3(), _wgslsmith_div_vec3_u32(vec3<u32>(~7607u, ~var_1.x, 6661u), _wgslsmith_sub_vec3_u32(select(vec3<u32>(var_1.x, 1u, u_input.c.x), vec3<u32>(1u, u_input.a, 17665u), true), ~vec3<u32>(11191u, 0u, 75131u))));
    var var_3 = Struct_2(Struct_1(vec2<f32>(1f, 1f), vec2<u32>(~u_input.a, ~81878u) | countOneBits(var_1)), Struct_1(vec2<f32>(-3482f, _wgslsmith_f_op_f32(f32(-1f) * -360f)), vec2<u32>(0u, _wgslsmith_add_u32(u_input.c.x, 0u))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a.x));
    return Struct_2(var_3.b, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.a.a.x - -1000f), _wgslsmith_f_op_f32(var_4 * var_4)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(-var_4))), ~vec2<u32>(var_3.b.b.x, u_input.c.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = func_2(Struct_3(18120i, vec2<i32>(-2147483647i, -reverseBits(-1i))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2183f), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-2147483647i, 1i, 0i) | u_input.d), ~(~vec3<i32>(u_input.d.x, arg_0, arg_2.x))), var_0, arg_2.x);
    var_1 = Struct_4(_wgslsmith_f_op_f32(var_1.c.a.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.a.x, _wgslsmith_div_f32(arg_1.x, arg_1.x))) * _wgslsmith_f_op_f32(ceil(var_0.a.a.x)))), _wgslsmith_mod_i32(reverseBits(arg_2.x) << (_wgslsmith_div_u32(var_1.c.b.b.x, 1u) % 32u), var_1.b), var_0, firstTrailingBit(firstLeadingBit(reverseBits(-arg_0))));
    var_1 = Struct_4(-781f, 0i, func_2(Struct_3(-(~arg_2.x), -vec2<i32>(-2147483647i, -51189i))), var_1.d);
    var_1 = Struct_4(_wgslsmith_f_op_f32(-2149f - var_1.c.b.a.x), _wgslsmith_mod_i32(var_1.d & (i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 2147483647i), u_input.d.xy)), var_0, ~arg_2.x);
    return var_1.c.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-(u_input.d.x ^ abs(1i)), _wgslsmith_mult_i32(-1i << (func_1(-2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1614f, 285f, 2143f, -100f) * vec4<f32>(922f, -1092f, 1092f, 1000f)), vec2<i32>(39204i, -1i)) % 32u), abs(u_input.d.x)), 1i);
    let var_1 = 16061u;
    var var_2 = vec4<bool>(true, any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))), select(_wgslsmith_clamp_u32(u_input.a, var_1, var_1) != var_1, false, !all(vec4<bool>(true, true, true, true))), (~_wgslsmith_clamp_i32(-2147483647i, 1i, u_input.d.x) <= (~u_input.d.x & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_0.x), u_input.d.yz))) != false);
    let var_3 = vec3<u32>(21448u, var_1, abs(73733u)) >> (((reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(48465u, var_1, u_input.a), vec3<u32>(var_1, var_1, 0u))) >> (vec3<u32>(0u, u_input.c.x | 13769u, 36200u) % vec3<u32>(32u))) ^ (~(~vec3<u32>(var_1, 35835u, u_input.c.x)) & (~vec3<u32>(var_1, 0u, 0u) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 4294967295u, 12188u), vec3<u32>(4777u, var_1, 0u))))) % vec3<u32>(32u));
    let var_4 = vec4<f32>(func_2(Struct_3(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(65699i, 38220i), u_input.d.zz), 1i), -u_input.d.yy)).a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(func_2(Struct_3(-1986i, u_input.d.xz)).a.a.x, -279f)) + _wgslsmith_f_op_f32(ceil(-1979f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f))));
    var var_5 = firstLeadingBit(select(abs(vec3<u32>(var_3.x | 1u, max(0u, var_3.x), var_1)), firstTrailingBit(~vec3<u32>(var_3.x, var_1, var_1)), !(!var_2.zxz)));
    let var_6 = func_2(Struct_3(_wgslsmith_mod_i32(u_input.d.x, var_0.x), _wgslsmith_add_vec2_i32(abs(-u_input.d.zz), vec2<i32>(u_input.b, -71732i) ^ -vec2<i32>(var_0.x, var_0.x)))).b;
    let var_7 = vec3<i32>(-29647i, u_input.d.x, abs(firstTrailingBit(35751i) | _wgslsmith_div_i32(-55315i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -5892i, var_0.x), vec4<i32>(-2147483647i, 2147483647i, var_0.x, 0i)))));
    let var_8 = Struct_3(-1i, var_7.zx);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, -573f, 1f, _wgslsmith_div_f32(var_4.x, var_4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4 * var_4) + _wgslsmith_div_vec4_f32(vec4<f32>(513f, var_4.x, -1484f, var_6.a.x), var_4)))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(16887u, 35408u, 1u, u_input.a), vec4<u32>(var_6.b.x, var_3.x, var_6.b.x, 1u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x)))), var_6.a.x, var_6.a.x, _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(abs(var_6.a.x)))));
}

