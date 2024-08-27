struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(arg_0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.b.x, var_0.a.b.x, -1651f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(820f, var_0.a.b.x, -478f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-622f, var_0.a.b.x, var_0.a.b.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1844f, -481f) * arg_0.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), 387f)));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(arg_0.a);
    var var_2 = select(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), true)), vec3<bool>(true, true, true), vec3<bool>(true, false, 0u == u_input.b.x));
    return -countOneBits(vec3<i32>(u_input.c.x, abs(-44464i), firstTrailingBit(18184i)) | vec3<i32>(_wgslsmith_sub_i32(-69396i, var_0.a.a.x), i32(-1i) * -1i, -1i));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(firstLeadingBit(func_3(Struct_2(Struct_1(vec3<i32>(u_input.c.x, -147i, 1i), vec2<f32>(-2082f, -1039f))))), vec2<f32>(1f, 1f));
    var_0 = Struct_1(~vec3<i32>(u_input.c.x, (u_input.c.x | var_0.a.x) >> (~19984u % 32u), -1i), var_0.b);
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(-var_0.a.x, 0i >> (firstLeadingBit(u_input.b.x) % 32u)), -2147483647i, ~(~var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-674f, -2260f))), _wgslsmith_f_op_f32(-var_0.b.x)));
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(var_0.a.x, u_input.a.x, 42624i)), _wgslsmith_mod_vec3_i32(u_input.c.yzy, var_1.a)), _wgslsmith_add_vec3_i32(~(~(vec3<i32>(u_input.a.x, var_0.a.x, var_0.a.x) | var_0.a)), u_input.c.xxw));
    var_2 = var_0.a & ~(-(~(~var_0.a)));
    return var_1;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(func_2());
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -224f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.b.x, var_0.a.b.x)) - _wgslsmith_div_f32(1048f, _wgslsmith_f_op_f32(-arg_0.a.b.x)));
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~arg_0.a.a, u_input.c.yzx), ~(-u_input.c.wxy), -(~u_input.c.wxz)), abs(~vec3<i32>(arg_0.a.a.x, -2147483647i, -12876i))), arg_0.a.b);
    var var_3 = Struct_1(var_2.a, var_2.b);
    return Struct_2(var_0.a);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_3.a.b.x);
    let var_1 = 4294967295u;
    let var_2 = !((_wgslsmith_mod_i32(19510i, abs(1i)) ^ arg_3.a.a.x) <= u_input.a.x);
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.a.b.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-840f, _wgslsmith_div_f32(-499f, -237f))), _wgslsmith_div_f32(905f, arg_3.a.b.x)))));
    return ~((~1i << (arg_2 % 32u)) & (i32(-1i) * -16349i)) | -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x) ^ _wgslsmith_clamp_u32(u_input.b.x ^ 22175u, countOneBits(_wgslsmith_mult_u32(78494u, u_input.b.x)), u_input.b.x);
    let var_2 = vec4<bool>(var_0 >= func_4(!any(vec4<bool>(true, false, true, true)), true, _wgslsmith_div_u32(u_input.b.x, var_1 & var_1), func_1(Struct_2(Struct_1(u_input.c.xyz, vec2<f32>(-278f, -1537f))), 77868u > var_1, -1i)), true, true, false);
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(0i, _wgslsmith_sub_i32(-var_0, _wgslsmith_div_i32(2147483647i, 9203i)), 0i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, ~(var_0 | var_0), u_input.a.x), u_input.c.ywy));
    var_3 = -(~(~(~u_input.c.zwx)) | firstTrailingBit(_wgslsmith_div_vec3_i32(~u_input.c.zyx, reverseBits(u_input.c.wyz))));
    let var_4 = !(!(!select(!var_2, vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(4712i, var_3.x, 1272f, firstLeadingBit(firstTrailingBit(~(vec3<i32>(-2147483647i, -22509i, var_0) >> (vec3<u32>(u_input.b.x, 3405u, var_1) % vec3<u32>(32u))))));
}

