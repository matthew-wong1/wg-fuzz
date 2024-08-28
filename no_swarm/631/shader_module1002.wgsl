struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = true;
    let var_1 = max(0u, ~abs(_wgslsmith_sub_u32(arg_0.b.a.x, 0u)));
    var var_2 = vec4<bool>(all(!(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, false), var_0))), all(select(vec3<bool>(true, var_0 & true, any(vec3<bool>(false, true, var_0))), !vec3<bool>(var_0, var_0, var_0), !(var_0 || false))), !any(vec3<bool>(!var_0, true, false)), var_0);
    var var_3 = arg_0;
    var_2 = vec4<bool>(447f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1530f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(598f, -791f))))), any(select(vec4<bool>(!var_2.x, -51935i < u_input.a, false, true), vec4<bool>(true, true, false, any(var_2.wxz)), !vec4<bool>(false, var_0, var_0, var_2.x))), var_0, var_2.x);
    return 1i <= (i32(-1i) * -(~var_3.a.x << (u_input.b.x % 32u)));
}

fn func_4(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(628f - _wgslsmith_f_op_f32(max(284f, -239f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -503f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f - _wgslsmith_f_op_f32(f32(-1f) * -1451f)) + _wgslsmith_f_op_f32(1540f - -1508f))), vec3<f32>(_wgslsmith_f_op_f32(420f + 462f), 457f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) * _wgslsmith_f_op_f32(-1177f + -700f)))))));
    var var_1 = vec3<bool>(all(select(vec3<bool>(true, any(arg_0), true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x | arg_0.x), !(!arg_0.x))), arg_0.x, any(vec2<bool>(arg_0.x, all(vec4<bool>(true, arg_0.x, true, true)))) | !arg_0.x);
    var_1 = arg_0;
    var var_2 = u_input.a;
    var var_3 = Struct_1(vec2<u32>(min(u_input.b.x, 12831u), _wgslsmith_add_u32(~u_input.b.x, firstTrailingBit(1u)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b) % 32u)), firstLeadingBit(vec3<u32>(~max(u_input.b.x, u_input.b.x), abs(0u), 1u)));
    return var_0;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(select(false, true, func_3(Struct_2(vec4<i32>(41718i, 0i, u_input.a, -3553i), Struct_1(u_input.b.zz, u_input.b)))), true, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1122f, 516f, _wgslsmith_f_op_f32(603f - -1742f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_0.zz, var_0.yy)))));
    let var_2 = Struct_2(reverseBits(vec4<i32>(u_input.a, -u_input.a, ~(-1i), select(firstTrailingBit(u_input.a), 0i, all(vec4<bool>(true, true, true, false))))), Struct_1(min(abs(~u_input.b.xz), countOneBits(vec2<u32>(u_input.b.x, u_input.b.x))), u_input.b));
    let var_3 = true;
    let var_4 = ~var_2.a;
    return 16977i;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    var var_0 = min(vec3<i32>(~u_input.a, func_2() << (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(28098i, 0i)), ~u_input.a), ~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -12110i), true))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.a), u_input.a >> (u_input.b.x % 32u)), func_2()), 1i, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), u_input.a, 2147483647i)));
    let var_1 = countOneBits(~(~(~(vec2<u32>(15719u, 77310u) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u))))));
    var var_2 = Struct_2(-_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.a, var_0.x, -1i) << (~vec4<u32>(0u, arg_0, var_1.x, 41844u) % vec4<u32>(32u)), -(~vec4<i32>(107231i, u_input.a, -2147483647i, 1i))), arg_1);
    let var_3 = vec4<i32>(-(~(~_wgslsmith_clamp_i32(u_input.a, var_0.x, var_0.x))), -1i, ~(~_wgslsmith_div_i32(var_2.a.x, _wgslsmith_mod_i32(u_input.a, -19117i))), ~(-9362i));
    var var_4 = Struct_2(max(~_wgslsmith_sub_vec4_i32(var_2.a, var_3), -select(~vec4<i32>(u_input.a, var_3.x, var_2.a.x, 0i), var_2.a, vec4<bool>(arg_3.x, arg_3.x, true, false))), Struct_1(vec2<u32>(~27870u, reverseBits(var_1.x ^ 134100u)), vec3<u32>(u_input.b.x << (_wgslsmith_clamp_u32(68025u, 73822u, 16359u) % 32u), abs(0u ^ var_2.b.b.x), var_2.b.b.x)));
    return _wgslsmith_mult_i32(var_3.x, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_2.a.x, -1622i), var_4.a.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_3, ~var_4.a), _wgslsmith_sub_i32(-2147483647i, var_0.x) ^ var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(reverseBits(select(vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), 0i, 1i, -1i), vec4<i32>(func_1(u_input.b.x, Struct_1(u_input.b.xy, u_input.b), 721f, vec4<bool>(true, true, false, true)), u_input.a, u_input.a, -u_input.a), func_3(Struct_2(vec4<i32>(-2147483647i, u_input.a, u_input.a, 15103i), Struct_1(u_input.b.yz, vec3<u32>(u_input.b.x, u_input.b.x, 1u)))))), Struct_1(u_input.b.zx, ~countOneBits(u_input.b)));
    let var_1 = vec3<u32>(min(_wgslsmith_add_u32(u_input.b.x, 4294967295u) ^ u_input.b.x, 4294967295u) & firstTrailingBit(var_0.b.b.x), _wgslsmith_sub_u32(~47725u, ~(~abs(var_0.b.a.x))), 36932u);
    var var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec3_f32(func_4(select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)))), (~vec4<u32>(100195u, var_1.x, var_0.b.b.x, 17179u) & select(vec4<u32>(var_2.b.x, var_2.b.x, var_2.a.x, var_0.b.a.x), vec4<u32>(18050u, 4294967295u, 9082u, 1u) ^ vec4<u32>(48868u, var_2.b.x, 9316u, 0u), false)) & vec4<u32>(~_wgslsmith_div_u32(4294967295u, 1u), abs(max(var_2.b.x, var_2.a.x)), 30491u, ~4294967295u), -21362i);
}

