struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = vec4<bool>(!(!(arg_2.a.x && arg_1.b.a.x)), all(select(select(vec3<bool>(arg_2.a.x, arg_1.b.a.x, false), !vec3<bool>(arg_2.a.x, arg_2.a.x, arg_1.d.a.x), !vec3<bool>(arg_2.a.x, arg_1.b.a.x, arg_1.b.a.x)), vec3<bool>(true, all(vec3<bool>(arg_2.a.x, true, true)), true), true)), arg_1.d.a.x, any(vec3<bool>(!arg_1.d.a.x, arg_1.d.a.x, false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -450f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(706f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-714f, -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-216f - -144f) + _wgslsmith_f_op_f32(trunc(1258f))))));
    var var_2 = !var_0.xxz;
    let var_3 = var_0.x;
    let var_4 = select(select(select(select(select(vec4<bool>(var_2.x, true, var_0.x, false), var_0, var_0), select(var_0, var_0, vec4<bool>(false, var_2.x, false, true)), false), !vec4<bool>(var_0.x, false, arg_2.a.x, var_3), any(select(vec3<bool>(false, var_2.x, false), var_0.yxx, var_0.wyy))), vec4<bool>(arg_1.b.a.x, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, var_0.x, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.x, arg_2.a.x), var_0.yyw))), var_0), select(var_0, !var_0, vec4<bool>(true, arg_2.a.x, true, arg_1.b.a.x)), vec4<bool>(true, false, false, any(!(!vec4<bool>(true, true, arg_1.b.a.x, var_3)))));
    return i32(-1i) * -41205i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = arg_0.b.b.x;
    var var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~24638u, 1u & u_input.b.x), ~(~u_input.b.x)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), ~u_input.b.x, 0u) >> (~abs(14756u) % 32u)), ~(~72337u), 4294967295u);
    let var_2 = arg_0.d.b.zz;
    let var_3 = !vec3<bool>(!(arg_1.d.a.x && arg_1.d.a.x), all(!select(vec3<bool>(arg_0.b.a.x, arg_1.b.a.x, arg_0.d.a.x), vec3<bool>(arg_1.b.a.x, arg_0.b.a.x, false), vec3<bool>(false, arg_3.b.a.x, arg_3.d.a.x))), true);
    var_1 = firstLeadingBit(vec3<u32>(u_input.b.x, 741u, 1u));
    return all(vec3<bool>(false, arg_1.d.a.x, arg_1.d.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(26984i, ~(u_input.a | -u_input.a)), countOneBits(arg_0.b.x), _wgslsmith_sub_i32(arg_0.b.x, _wgslsmith_sub_i32(-360i & (-4327i << (arg_2 % 32u)), u_input.a)));
    let var_1 = ~select(arg_2, _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(~u_input.b.x, ~0u)), func_4(Struct_2(_wgslsmith_mult_i32(-1i, var_0.x), Struct_1(arg_0.a, vec3<i32>(arg_0.b.x, u_input.a, -24191i)), firstLeadingBit(vec4<i32>(arg_0.b.x, 2147483647i, 6138i, u_input.a)), arg_0), Struct_2(func_3(arg_2, Struct_2(-1i, arg_0, vec4<i32>(2147483647i, arg_0.b.x, -2147483647i, 25031i), Struct_1(vec2<bool>(arg_0.a.x, arg_1), arg_0.b)), Struct_1(arg_0.a, vec3<i32>(-5836i, -7844i, u_input.a))), Struct_1(vec2<bool>(arg_0.a.x, false), var_0), vec4<i32>(u_input.a, var_0.x, 33856i, u_input.a), arg_0), i32(-1i) * -u_input.a, Struct_2(-3531i, arg_0, _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.a, arg_0.b.x, arg_0.b.x), vec4<i32>(1i, u_input.a, 16852i, 37058i)), Struct_1(vec2<bool>(arg_0.a.x, arg_1), var_0))));
    var var_2 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(step(-1600f, 388f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-290f, -919f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(559f + -258f) + -862f) + _wgslsmith_f_op_f32(round(-166f)))));
    var var_4 = arg_0;
    return Struct_1(!vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, var_0.x), arg_0.b) > 2147483647i, !all(vec4<bool>(false, arg_1, arg_1, false))), -var_4.b);
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = vec4<u32>(max(~firstTrailingBit(u_input.b.x ^ 56869u), 359u), ~4294967295u, ~4294967295u, 8987u);
    var var_1 = _wgslsmith_div_vec3_i32(arg_2.b.b, ~(arg_2.d.b << (vec3<u32>(~83835u, min(0u, var_0.x), var_0.x) % vec3<u32>(32u))));
    var_1 = _wgslsmith_sub_vec3_i32(arg_2.b.b, arg_2.d.b << (vec3<u32>(15170u, 0u, _wgslsmith_mult_u32(var_0.x, 1u)) % vec3<u32>(32u)));
    var_1 = _wgslsmith_mod_vec3_i32(arg_2.b.b, firstLeadingBit(vec3<i32>(-1i) * -arg_2.b.b));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.zxw, var_0.yzz), 1u, u_input.b.x);
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = vec4<i32>(~(~arg_1.a), ~arg_0.b.x, ~arg_2, ~abs(_wgslsmith_mod_i32(-1i, arg_1.b.b.x)));
    let var_1 = arg_0.b;
    let var_2 = func_5(!vec4<bool>(all(vec3<bool>(true, arg_0.a.x, true)) || false, !(false & arg_1.d.a.x), all(vec4<bool>(false, true, false, arg_1.b.a.x)) || (u_input.b.x < 15522u), all(vec2<bool>(arg_1.d.a.x, false))), _wgslsmith_clamp_i32(~(-1653i) << (select(u_input.b.x, ~32162u, true) % 32u), arg_1.b.b.x, 0i & _wgslsmith_clamp_i32(arg_2, arg_2, abs(arg_1.b.b.x))), Struct_2(-1i, func_2(arg_1.d, arg_1.b.a.x, 4294967295u), arg_1.c, func_2(func_2(Struct_1(vec2<bool>(true, false), var_1), true, 30792u), any(vec4<bool>(arg_1.b.a.x, true, arg_0.a.x, arg_1.d.a.x)), 1u)), arg_1.d.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f + -1207f) - _wgslsmith_f_op_f32(floor(1487f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1252f, -1491f))))), _wgslsmith_f_op_f32(f32(-1f) * -386f)), vec2<f32>(_wgslsmith_f_op_f32(sign(1557f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f * 567f)))))));
    let var_4 = reverseBits(countOneBits(var_1.x));
    return 513f;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(67948u, 49576u)), u_input.b.x), abs(~(1u ^ u_input.b.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, countOneBits(u_input.b.x))), 1u));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -348f) - -481f), 152f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1033f, -468f, -488f)))))))));
    let var_2 = arg_2;
    let var_3 = arg_0;
    var_0 = u_input.b.x;
    return Struct_2(_wgslsmith_mod_i32(var_2.d.b.x, -12533i) << (u_input.b.x % 32u), func_5(select(vec4<bool>(any(vec2<bool>(arg_0.a.x, arg_2.d.a.x)), true, true, !var_3.a.x), vec4<bool>(arg_0.a.x, false, true, true), vec4<bool>(!arg_1.b.a.x, any(vec3<bool>(true, false, var_3.a.x)), func_2(arg_1.d, arg_2.b.a.x, 11716u).a.x, true)), _wgslsmith_mult_i32(1i, func_5(vec4<bool>(arg_0.a.x, true, arg_0.a.x, false), -arg_2.d.b.x, func_5(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), 47816i, Struct_2(var_3.b.x, arg_2.b, var_2.c, Struct_1(vec2<bool>(var_3.a.x, true), arg_0.b)), true), arg_2.c.x <= 36091i).b.b.x), Struct_2(countOneBits(_wgslsmith_div_i32(82944i, 51128i)), Struct_1(!vec2<bool>(true, arg_2.d.a.x), ~vec3<i32>(-1i, -2147483647i, arg_2.b.b.x)), arg_2.c, Struct_1(vec2<bool>(arg_0.a.x, true), arg_1.b.b)), false).d, arg_2.c, arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = func_6(Struct_1(vec2<bool>(true, _wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(true, true), vec3<i32>(-48684i, u_input.a, u_input.a)), Struct_2(u_input.a, Struct_1(vec2<bool>(false, false), vec3<i32>(u_input.a, u_input.a, 0i)), vec4<i32>(2147483647i, u_input.a, 22134i, 7233i), Struct_1(vec2<bool>(false, true), vec3<i32>(-75855i, 41410i, u_input.a))), 0i)) < _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_add_vec3_i32(abs(~vec3<i32>(-3375i, u_input.a, 1i)), vec3<i32>(-1i, ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a))))), Struct_2(i32(-1i) * -_wgslsmith_div_i32(u_input.a, u_input.a), func_2(Struct_1(func_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-6295i, -15051i, -2147483647i)), true, u_input.b.x).a, vec3<i32>(u_input.a, u_input.a, 0i) << (vec3<u32>(0u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_0) < 181f, u_input.b.x), -select(vec4<i32>(u_input.a, 1i, u_input.a, 22451i), -vec4<i32>(u_input.a, u_input.a, u_input.a, -15468i), select(false, false, false)), Struct_1(vec2<bool>(true, true), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -2147483647i, -55264i)) & -vec3<i32>(u_input.a, -46266i, u_input.a))), Struct_2(max(firstTrailingBit(u_input.a), -1i ^ select(u_input.a, 28135i, true)), func_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), u_input.a, func_5(vec4<bool>(false, true, true, true), u_input.a, func_5(vec4<bool>(true, false, true, false), -1i, Struct_2(u_input.a, Struct_1(vec2<bool>(true, true), vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), Struct_1(vec2<bool>(true, true), vec3<i32>(-2147483647i, u_input.a, -2147483647i))), true), true), _wgslsmith_div_f32(var_0, var_0) <= -312f).d, abs(vec4<i32>(~16574i, reverseBits(1i), u_input.a, 1i)), func_5(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), -26982i, Struct_2(~(-15980i), Struct_1(vec2<bool>(true, false), vec3<i32>(16836i, 55853i, 7667i)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(vec2<bool>(false, true), vec3<i32>(u_input.a, u_input.a, u_input.a))), true).b));
    var_1 = Struct_2(firstTrailingBit(_wgslsmith_sub_i32(firstTrailingBit(-2147483647i) >> (1u % 32u), 1143i & firstTrailingBit(var_1.d.b.x))), var_1.d, vec4<i32>(14640i, -u_input.a, var_1.b.b.x, 25471i), Struct_1(var_1.d.a, ~var_1.b.b));
    var_1 = func_6(func_5(vec4<bool>(var_1.b.a.x, all(var_1.d.a), var_1.d.a.x, any(var_1.d.a)), u_input.a, Struct_2(_wgslsmith_dot_vec4_i32(~var_1.c, reverseBits(vec4<i32>(var_1.c.x, 15342i, var_1.b.b.x, 1i))), Struct_1(!vec2<bool>(true, var_1.d.a.x), vec3<i32>(13227i, var_1.c.x, u_input.a)), ~vec4<i32>(u_input.a, var_1.c.x, 42139i, 19026i), Struct_1(select(vec2<bool>(var_1.d.a.x, var_1.b.a.x), vec2<bool>(var_1.b.a.x, var_1.b.a.x), false), ~vec3<i32>(u_input.a, u_input.a, 3321i))), var_1.b.a.x).d, Struct_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(55281i, 1i, var_1.d.b.x, u_input.a), vec4<i32>(-58926i, var_1.b.b.x, 18881i, var_1.d.b.x)), vec4<i32>(~0i, -5898i, -2147483647i, 2147483647i)), Struct_1(func_5(!vec4<bool>(true, var_1.b.a.x, var_1.d.a.x, false), 1i, Struct_2(-6975i, Struct_1(vec2<bool>(true, true), var_1.d.b), vec4<i32>(u_input.a, u_input.a, 1i, var_1.d.b.x), Struct_1(var_1.b.a, var_1.c.yyy)), var_1.b.a.x).b.a, vec3<i32>(-var_1.c.x, u_input.a, 2147483647i << (u_input.b.x % 32u))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1121i, 2147483647i, u_input.a, 2147483647i), vec4<i32>(var_1.c.x, 1i, -46676i, -5460i)) | (vec4<i32>(1i, -26717i, u_input.a, var_1.c.x) ^ vec4<i32>(u_input.a, 25996i, -1013i, -4567i)), var_1.b), func_5(!select(select(vec4<bool>(var_1.b.a.x, var_1.b.a.x, false, var_1.b.a.x), vec4<bool>(var_1.b.a.x, var_1.d.a.x, var_1.b.a.x, true), var_1.b.a.x), vec4<bool>(true, var_1.d.a.x, true, true), !vec4<bool>(var_1.b.a.x, var_1.d.a.x, true, true)), _wgslsmith_clamp_i32(~(-2147483647i), 0i, -60089i), func_5(select(vec4<bool>(false, true, true, true), !vec4<bool>(var_1.d.a.x, true, var_1.d.a.x, true), !vec4<bool>(var_1.b.a.x, true, false, true)), -2147483647i, func_6(func_6(Struct_1(var_1.b.a, vec3<i32>(-1i, -8985i, -39791i)), Struct_2(u_input.a, Struct_1(vec2<bool>(var_1.b.a.x, var_1.d.a.x), var_1.b.b), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), var_1.d), Struct_2(-72014i, Struct_1(vec2<bool>(var_1.b.a.x, var_1.b.a.x), var_1.b.b), var_1.c, Struct_1(var_1.b.a, var_1.c.yzx))).d, Struct_2(-1i, var_1.b, vec4<i32>(var_1.d.b.x, 56422i, u_input.a, var_1.d.b.x), var_1.b), Struct_2(9622i, Struct_1(vec2<bool>(true, true), vec3<i32>(-2147483647i, 1i, var_1.c.x)), var_1.c, var_1.b)), _wgslsmith_div_f32(591f, -922f) >= var_0), all(vec4<bool>(true, true, true, select(false, false, false)))));
    var_1 = func_5(!(!select(!vec4<bool>(false, true, var_1.d.a.x, var_1.d.a.x), vec4<bool>(true, false, false, var_1.b.a.x), true)), _wgslsmith_mod_i32(-(-var_1.a | _wgslsmith_div_i32(var_1.b.b.x, u_input.a)), abs(firstTrailingBit(27171i))), Struct_2(~u_input.a, Struct_1(var_1.d.a, vec3<i32>(u_input.a, -u_input.a, var_1.d.b.x)), -abs(var_1.c), func_2(Struct_1(select(var_1.d.a, vec2<bool>(var_1.b.a.x, false), vec2<bool>(false, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, var_1.b.b.x, -2147483647i), var_1.d.b, var_1.b.b)), any(select(vec3<bool>(var_1.d.a.x, true, var_1.b.a.x), vec3<bool>(var_1.b.a.x, true, var_1.b.a.x), vec3<bool>(false, true, true))), u_input.b.x)), var_1.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, -(~(-1i)), reverseBits(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1480f, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))))));
}

