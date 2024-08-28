struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = -3390i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1667f * _wgslsmith_f_op_f32(sign(-255f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1640f + 1618f), 893f), 414f);
    let var_2 = ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -880i, _wgslsmith_sub_i32(arg_1, var_0), 2147483647i, abs(arg_1)), reverseBits(vec4<i32>(var_0, var_0, arg_1, arg_1) & vec4<i32>(arg_1, arg_1, arg_1, 10264i))));
    let var_3 = 25343i;
    return var_0;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(countOneBits(2147483647i)) & ~_wgslsmith_add_i32(min(func_3(Struct_2(Struct_1(vec3<bool>(true, false, false)), vec3<u32>(u_input.a, 4294967295u, 48705u)), 0i, Struct_2(Struct_1(vec3<bool>(false, false, false)), vec3<u32>(8708u, u_input.a, u_input.a))), -1i), select(i32(-1i) * -1i, 15641i, true));
    let var_1 = reverseBits(firstTrailingBit(vec2<u32>(firstTrailingBit(20440u), _wgslsmith_mod_u32(firstLeadingBit(u_input.a), 19915u))));
    var var_2 = Struct_1(vec3<bool>(_wgslsmith_div_i32(-15903i, firstLeadingBit(var_0)) != ~var_0, true, any(vec3<bool>(true, true, true))));
    var_2 = Struct_1(var_2.a);
    var_2 = Struct_1(!vec3<bool>((var_0 >> (var_1.x % 32u)) < _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(1i, var_0)), var_2.a.x, !(!var_2.a.x)));
    return Struct_1(vec3<bool>(var_2.a.x, var_2.a.x, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    var var_1 = arg_0;
    let var_2 = true;
    var var_3 = Struct_1(select(var_1.a, select(!vec3<bool>(false, var_2, arg_0.a.x), select(select(arg_1.a.a, arg_2, vec3<bool>(true, true, true)), vec3<bool>(var_2, arg_0.a.x, false), arg_2), true), !any(vec2<bool>(arg_0.a.x, true))));
    var_3 = arg_0;
    return _wgslsmith_sub_u32(u_input.a, ~u_input.a);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec4<f32> {
    let var_0 = 33963u;
    var var_1 = 67373u;
    let var_2 = ~func_4(func_2(), Struct_2(Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(31266u, 32178u, arg_1.x), vec3<u32>(4294967295u, u_input.a, var_0))), vec3<bool>(true, true, true), vec2<i32>(_wgslsmith_clamp_i32(-2308i, -15993i, _wgslsmith_add_i32(-6788i, 2147483647i)), -2147483647i));
    var var_3 = select(!(!vec2<bool>(true, func_2().a.x)), select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), false), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(all(vec4<bool>(true, false, false, false)), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(-12607i, -40721i), vec2<i32>(-2147483647i, -1i)) < _wgslsmith_mult_i32(1i, ~(-1i))), !func_2().a.xx);
    var var_4 = countOneBits(abs(-((vec4<i32>(0i, 11381i, 25655i, 23367i) >> (vec4<u32>(0u, var_2, 1u, var_2) % vec4<u32>(32u))) | vec4<i32>(-2147483647i, 44714i, -37313i, -20455i))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, -158f, 1665f)))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-226f, 1006f, 105f, 1000f), vec4<f32>(-549f, arg_0, arg_0, 754f), var_3.x)) * vec4<f32>(arg_0, 1000f, -866f, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 689f, arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -905f), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1224f, -1599f, -328f, -478f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, 204f, -589f, 509f))))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1307f), ~reverseBits(vec2<u32>(u_input.a, 0u)))))));
    var var_1 = Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(select(false, true, true), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, 235f < var_0.x)), !(!all(vec4<bool>(true, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u >> (u_input.a % 32u), vec2<i32>(~(~abs(0i)), 1i));
}

