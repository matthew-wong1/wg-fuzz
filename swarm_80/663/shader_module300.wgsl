struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: f32) -> i32 {
    var var_0 = any(vec2<bool>(true, true));
    return min(-35822i, i32(-1i) * -arg_0);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true & any(vec3<bool>(false, false, false))), any(vec4<bool>(false, true, true, -506f > arg_0))));
    var var_1 = Struct_1(select(vec4<bool>(any(!vec3<bool>(false, var_0, false)), any(!vec3<bool>(var_0, false, var_0)), true, true), vec4<bool>(var_0, ~79768u != u_input.c.x, false, !var_0), !(!(!vec4<bool>(true, false, false, var_0)))), vec2<bool>(any(!vec4<bool>(var_0, true, false, false)), all(select(select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, var_0, var_0), var_0 || var_0))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(trunc(-1109f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(623f, arg_0))))));
    let var_3 = _wgslsmith_clamp_i32(2147483647i, u_input.b.x, _wgslsmith_mod_i32(reverseBits(u_input.b.x), abs(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, 1135i, u_input.d.x)))));
    var_1 = Struct_1(vec4<bool>(true, !var_0, ~u_input.c.x <= ~u_input.e, !select(all(var_1.a.yyz), false || var_0, true)), select(!select(!vec2<bool>(var_0, true), select(vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(true, false), vec2<bool>(false, var_0)), !var_1.a.xx), vec2<bool>(true, true), select(var_1.b, !vec2<bool>(var_0, var_1.b.x), var_1.a.zw)));
    return ~u_input.a;
}

fn func_2() -> i32 {
    let var_0 = u_input.d.x << ((~(~(u_input.a ^ u_input.e)) >> (func_3(_wgslsmith_f_op_f32(f32(-1f) * -283f)) % 32u)) % 32u);
    let var_1 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(-2147483647i >= var_0, false, false, u_input.c.x > 4294967295u), vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true)), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), !(true | any(vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_div_f32(-838f, _wgslsmith_f_op_f32(step(-488f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))))));
    let var_3 = firstLeadingBit(firstTrailingBit(_wgslsmith_mod_u32(30952u, ~(~25380u))));
    return ~reverseBits(u_input.d.x ^ 31374i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -1i, abs(u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 29533i), u_input.b)), ~vec4<i32>(-24688i, 31517i, -2147483647i, -2147483647i))) & -vec4<i32>(func_1(1i, -1061f), 56340i, 14527i, abs(_wgslsmith_mult_i32(u_input.d.x, -12982i)));
    var_0 = _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(32268i, 0i, -42109i, -32444i)), vec4<i32>(var_0.x | -16972i, _wgslsmith_add_i32(u_input.b.x, func_2()), -(i32(-1i) * -1i), _wgslsmith_div_i32(u_input.b.x, ~(-2147483647i))));
    let var_1 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), vec4<bool>(false, any(vec3<bool>(true, true, true)), true, !any(vec3<bool>(false, false, false)))), select(vec2<bool>(false && select(true, true, true), select(false, false, var_0.x == -6608i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    let var_2 = var_1;
    var var_3 = any(select(select(var_2.a.ywz, select(vec3<bool>(false, var_2.a.x, var_2.a.x), select(var_2.a.zyx, vec3<bool>(false, var_2.b.x, var_2.b.x), vec3<bool>(var_2.b.x, true, var_2.b.x)), vec3<bool>(false, var_2.b.x, false)), true), !select(var_2.a.yxx, select(vec3<bool>(var_1.a.x, false, var_2.a.x), var_1.a.xxy, vec3<bool>(true, var_2.b.x, false)), var_1.a.xyy), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(572f, -1451f)), -1000f)))), ~(~(~(9578u << (0u % 32u)))), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d.x >> (u_input.a % 32u), var_0.x), max(abs(var_0.x), var_0.x))), ~_wgslsmith_mult_vec2_i32(u_input.b.zz, u_input.b.yx));
}

