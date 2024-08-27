struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec2<i32> {
    let var_0 = arg_2.d;
    var var_1 = vec2<f32>(-116f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(324f - 1073f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(244f + -662f) - _wgslsmith_f_op_f32(abs(-1079f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2010f + 658f)))))));
    let var_2 = var_1.x;
    var_1 = vec2<f32>(var_1.x, var_1.x);
    let var_3 = Struct_2(all(vec2<bool>(-arg_2.b.x > (u_input.b.x ^ u_input.b.x), true)), vec4<i32>(1i, -2147483647i, min(_wgslsmith_mod_i32(var_0.a.x, 1i), 10404i >> (_wgslsmith_sub_u32(u_input.a.x, arg_3) % 32u)), _wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_mult_vec3_i32(-vec3<i32>(1i, arg_0.x, u_input.b.x), vec3<i32>(u_input.b.x, arg_0.x, var_0.a.x)))), -146i, arg_2.d, vec2<i32>(-1i) * -var_0.a);
    return _wgslsmith_add_vec2_i32(vec2<i32>(~(-2360i), 38371i), u_input.b.xz);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(145f - arg_1.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.zz)))));
    let var_2 = vec3<u32>(~(1u ^ _wgslsmith_div_u32(u_input.a.x, select(arg_0, arg_0, true))), ~1u, ~117910u);
    var_0 = false;
    let var_3 = _wgslsmith_clamp_u32(arg_0 ^ (firstLeadingBit(_wgslsmith_mod_u32(11261u, 16650u)) >> (firstTrailingBit(var_2.x) % 32u)), 11902u, var_2.x);
    return Struct_3(_wgslsmith_div_u32(4294967295u, 23543u), Struct_1(func_3(u_input.b, -86687i, Struct_2(false, vec4<i32>(-27857i, u_input.b.x, -5088i, -15825i), u_input.b.x, Struct_1(u_input.b.xz), u_input.b.xx), ~0u) & vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 0i, u_input.b.x)), ~u_input.b.x)));
}

fn func_1() -> vec2<i32> {
    let var_0 = func_2(12834u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, -239f, 1000f) * vec3<f32>(1000f, -776f, 1289f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1643f, -2133f, -652f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1312f, -1399f, 948f)))));
    var var_1 = var_0;
    var var_2 = var_1.b.a.x <= countOneBits(i32(-1i) * -var_0.b.a.x);
    let var_3 = u_input.c.x;
    var var_4 = _wgslsmith_f_op_f32(-782f * 1f);
    return select(max(u_input.b.xz & ~u_input.b.zx, var_1.b.a) & var_1.b.a, var_1.b.a, vec2<bool>(true, true));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = abs(~(-2147483647i) ^ -arg_0.x);
    let var_1 = 4294967295u;
    let var_2 = vec3<bool>(all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(true, true, any(vec3<bool>(false, false, true))))), true, any(vec3<bool>(true, true, true)));
    var var_3 = ~(~(~(~firstLeadingBit(u_input.c.x))));
    let var_4 = Struct_3(~(~1997u), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, var_0), u_input.b.xy | vec2<i32>(var_0, 52660i)))));
    return vec2<u32>(firstLeadingBit(var_1), abs(var_4.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(1000f + -1106f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f)) * -383f), _wgslsmith_f_op_f32(floor(-521f))), func_4(abs(-countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x))), _wgslsmith_add_vec2_i32(u_input.b.zy, _wgslsmith_sub_vec2_i32(func_1(), func_2(27657u, vec3<f32>(-1713f, 420f, -101f)).b.a))));
}

