struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_5(firstTrailingBit(~vec3<i32>(0i, reverseBits(-38647i), _wgslsmith_mod_i32(u_input.b, u_input.d))), abs(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yx)) ^ _wgslsmith_mult_vec2_i32(u_input.a.xx & vec2<i32>(-2147483647i, u_input.b), u_input.a.yy & vec2<i32>(u_input.a.x, u_input.b))));
    var var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(-31075i, u_input.a.x, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(var_0.b.x, var_0.a.x) >> (1u % 32u)), u_input.a);
    let var_2 = !arg_0.x;
    var_0 = Struct_5(var_0.a, ~(vec2<i32>(-1899i, -u_input.d) | ~vec2<i32>(17339i, u_input.d)));
    var_1 = vec4<i32>(-2147483647i, _wgslsmith_sub_i32(var_1.x >> (12502u % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.d, 2147483647i), u_input.a.zyx), -vec3<i32>(0i, -1i, var_0.b.x)), 1i)), _wgslsmith_dot_vec4_i32(u_input.a, max(vec4<i32>(~28888i, _wgslsmith_mult_i32(var_0.a.x, var_0.b.x), ~var_1.x, -var_1.x), vec4<i32>(firstLeadingBit(10200i), var_1.x, u_input.d, var_0.a.x))), ~u_input.a.x);
    return _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(702f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-2549f, -467f)))) * 2086f)));
}

fn func_2(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_i32(~_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.b, arg_0.b.x)), abs(arg_0.b.x << (u_input.c.x % 32u))), min(-2147483647i, u_input.b));
    var var_1 = u_input.a.x;
    var var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true))) + _wgslsmith_f_op_f32(955f - 528f)))), 295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f))));
    var var_4 = _wgslsmith_mult_u32(u_input.c.x << (4294967295u % 32u), select(~(~u_input.c.x), ~(u_input.c.x << (u_input.c.x % 32u)) ^ 1u, false));
    return vec3<bool>(!all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))))), any(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, false)));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = select(vec3<bool>(true, arg_1, arg_1), !(!func_2(Struct_5(u_input.a.xwy, u_input.a.zz))), !select(true, !arg_1, true));
    var var_1 = vec3<bool>(false, false, false && arg_1);
    let var_2 = Struct_5(vec3<i32>(~(_wgslsmith_clamp_i32(u_input.d, u_input.a.x, u_input.a.x) & reverseBits(-1i)), _wgslsmith_clamp_i32(u_input.a.x, 1i, ~max(30632i, 0i)), 2147483647i), vec2<i32>(_wgslsmith_mod_i32(u_input.b, 12936i) | -22650i, 0i));
    let var_3 = var_1.yz;
    return Struct_2(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), ~4294967295u, true, u_input.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    var var_0 = select(_wgslsmith_mod_vec3_i32(reverseBits(~u_input.a.xzz), -select(-vec3<i32>(u_input.a.x, u_input.d, -34396i), -vec3<i32>(u_input.d, 2147483647i, 28628i), !vec3<bool>(false, arg_0.c, false))), _wgslsmith_clamp_vec3_i32(countOneBits(~(~u_input.a.xyw)), select(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.d, 2147483647i), u_input.a.wwx, vec3<bool>(arg_2, u_input.b == u_input.a.x, arg_0.d.x != u_input.c.x)), -_wgslsmith_mod_vec3_i32(-u_input.a.zwx, vec3<i32>(u_input.a.x, 38549i, 1i) ^ vec3<i32>(2147483647i, u_input.a.x, -2147483647i))), true);
    let var_1 = u_input.d;
    var_0 = vec3<i32>(max(u_input.b, ~(var_0.x << (u_input.c.x % 32u))), -1i, _wgslsmith_dot_vec2_i32(countOneBits(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, var_0.x), vec2<i32>(var_1, u_input.a.x)))), vec2<i32>(u_input.b, -59628i)));
    var var_2 = Struct_3(!arg_0.c);
    var var_3 = max(~4294967295u, u_input.c.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2898f - -1272f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2119f) + _wgslsmith_f_op_f32(abs(-462f))))));
    let var_1 = Struct_5(u_input.a.yzx, u_input.a.yy ^ vec2<i32>(u_input.b, u_input.a.x));
    let var_2 = ~31509u & func_4(func_1(798f, u_input.c.x <= abs(4294967295u)), _wgslsmith_div_vec3_f32(vec3<f32>(-1326f, _wgslsmith_f_op_f32(-1182f * -554f), -1209f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1873f, 945f)))), !(!all(vec2<bool>(true, true))));
    var var_3 = select(u_input.c.yw, u_input.c.yz, !any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, true))));
    var var_4 = Struct_2(var_0, 1u, !select(true, u_input.c.x != 40714u, false) && true, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1035f)) - var_4.a), -1000f), var_1.b.x, vec2<i32>(u_input.d, _wgslsmith_clamp_i32(1i, abs(~41623i), -23868i)));
}

