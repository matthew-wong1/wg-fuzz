struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(abs(1u)));
    var_0 = Struct_2(var_0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1218f, arg_0.x, arg_0.x)));
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_add_u32(~u_input.b, 39347u);
    return !(!vec3<bool>(!any(vec3<bool>(true, false, true)), !(var_0.a.a <= u_input.b), true));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = arg_1.x;
    var var_1 = ~(-2147483647i);
    var_0 = !all(select(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, arg_1.x, true, arg_1.x), arg_1.x), any(vec4<bool>(true, arg_1.x, false, false))), !(!vec4<bool>(true, arg_1.x, true, arg_1.x)), !select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, false, arg_1.x), arg_1.x)));
    let var_2 = Struct_1(u_input.b);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-805f)), _wgslsmith_f_op_f32(ceil(1046f))))), vec4<i32>(1i ^ arg_0.x, -(-arg_0.x | -1i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2.x), -u_input.a)), _wgslsmith_clamp_i32(15991i, 2147483647i, u_input.a.x << (~4294967295u % 32u))));
    return Struct_2(Struct_1(~u_input.b));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = arg_2;
    var var_1 = func_3(firstLeadingBit(_wgslsmith_sub_vec2_i32(countOneBits(arg_0.b.yx), -vec2<i32>(1i, 2147483647i))), !func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1321f, arg_1, -515f)))), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(~reverseBits(u_input.a.x), ~arg_0.b.x), u_input.a.x ^ (_wgslsmith_sub_i32(arg_0.b.x, -12197i) ^ 37044i)));
    let var_2 = 2147483647i;
    var_1 = func_3(_wgslsmith_sub_vec2_i32(countOneBits(min(arg_0.b.yy, u_input.a) ^ vec2<i32>(1020i, arg_0.b.x)), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(2975i, u_input.a.x) | vec2<i32>(-2147483647i, var_2)), u_input.a)), !(!vec3<bool>(true, all(vec2<bool>(arg_2, true)), false)), -arg_0.b.yxz);
    var_1 = func_3(vec2<i32>(-1i) * -select(arg_0.b.xx, u_input.a, true), select(select(select(!vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, false, arg_2), !vec3<bool>(arg_2, true, arg_2)), select(vec3<bool>(arg_2, arg_2, false), !vec3<bool>(true, arg_2, true), arg_1 > -280f), vec3<bool>(arg_2, false == arg_2, false)), vec3<bool>(arg_2, arg_2, arg_2), !select(func_2(vec3<f32>(841f, arg_0.a.x, 603f)), vec3<bool>(true, true, arg_2), arg_2)), ~(vec3<i32>(-u_input.a.x, -var_2, -2147483647i) ^ (-vec3<i32>(0i, 18948i, var_2) | vec3<i32>(u_input.a.x, var_2, var_2))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 36466u ^ ~_wgslsmith_div_u32(4294967295u, u_input.b);
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, -(~select(u_input.a, u_input.a, false)), u_input.a), vec2<i32>(11546i, u_input.a.x));
    var var_2 = Struct_1(reverseBits(_wgslsmith_clamp_u32(u_input.b, 4294967295u ^ ~u_input.b, 0u)));
    var_0 = firstLeadingBit(func_1(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-221f, 534f), vec2<f32>(235f, 938f)) * vec2<f32>(-1666f, 246f)), vec4<i32>(var_1.x, var_1.x ^ -9820i, reverseBits(u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_1.x))), 916f, any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true))));
    let var_3 = vec2<bool>(var_2.a != ~countOneBits(var_2.a), true);
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.x, 1i, -12792i, u_input.a.x)), vec4<i32>(var_1.x, 49152i, -2618i, u_input.a.x) & vec4<i32>(-16015i, -2147483647i, u_input.a.x, -545i)) << ((1u ^ func_1(Struct_3(vec2<f32>(310f, 929f), vec4<i32>(var_1.x, var_1.x, 0i, 2147483647i)), -134f, true)) % 32u)));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32((u_input.b << (var_2.a % 32u)) >> (countOneBits(0u) % 32u), ~var_2.a, min(var_2.a << (var_2.a % 32u), ~65003u)), abs(u_input.a) << (~vec2<u32>(~var_2.a, select(u_input.b, u_input.b, var_3.x)) % vec2<u32>(32u)), var_4.a.x, -1968f);
}

