struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    return !(_wgslsmith_mod_i32(-4495i, u_input.a) >= min(0i, u_input.b.x));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(max(~u_input.c.zy >> (_wgslsmith_div_vec2_u32(u_input.c.zw, vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.c.zy, u_input.c.zz)), ~(firstTrailingBit(vec2<u32>(u_input.c.x, arg_0)) | _wgslsmith_add_vec2_u32(u_input.c.zw, u_input.c.xx))), ~vec2<u32>(arg_0, 44820u));
    let var_1 = all(!select(!(!vec3<bool>(arg_2, false, arg_2)), !vec3<bool>(true, arg_2, true), func_2(u_input.c.xyz)));
    let var_2 = Struct_1(vec2<bool>(arg_2, arg_2), vec3<i32>(-8191i, -(~firstTrailingBit(arg_1)), 4796i), _wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_1, -58773i, 1i)), u_input.b.zxy), ~min(u_input.c.wyx, ~u_input.c.zxz), _wgslsmith_dot_vec3_u32(select(u_input.c.wxz, min(u_input.c.zzx, u_input.c.zyw), true), ~(firstTrailingBit(vec3<u32>(arg_0, 0u, arg_0)) | min(vec3<u32>(37881u, u_input.c.x, 6384u), vec3<u32>(1u, 4294967295u, 0u)))));
    var var_3 = select(vec2<bool>(true, any(vec3<bool>(all(vec4<bool>(var_2.a.x, var_1, false, true)), false && var_1, !var_2.a.x))), vec2<bool>(false, any(select(vec2<bool>(var_1, true), vec2<bool>(arg_2, true), var_2.a.x || var_1))), u_input.c.x > _wgslsmith_add_u32(abs(19510u & arg_0), firstTrailingBit(arg_0)));
    var_3 = vec2<bool>(var_1, all(select(select(select(vec4<bool>(true, false, true, var_3.x), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(false, true, false, var_1)), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, arg_2, var_1, true), vec4<bool>(var_1, false, var_3.x, var_3.x), var_2.a.x), vec4<bool>(var_2.a.x, var_3.x, var_3.x, var_1), vec4<bool>(false, arg_2, var_2.a.x, true)))));
    return Struct_2(var_2, vec3<bool>(!var_3.x, !(_wgslsmith_f_op_f32(sign(1031f)) == _wgslsmith_f_op_f32(abs(-1237f))), countOneBits(max(var_2.c.x, u_input.a)) != (i32(-1i) * -u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-1490f)), -1565f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1410f, -2528f))))), vec2<bool>(false, false))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, -603f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-200f, -709f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(670f, -856f) - vec2<f32>(-328f, 1715f)))), !select(select(vec4<bool>(true, true, arg_2, var_1), select(vec4<bool>(var_1, true, var_1, var_2.a.x), vec4<bool>(var_2.a.x, var_1, arg_2, true), true), var_1), select(!vec4<bool>(var_1, true, false, var_1), !vec4<bool>(var_1, false, false, false), true), true), !vec3<bool>(false, true, arg_2));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_div_i32(u_input.b.x, -2147483647i);
    let var_2 = 1163f;
    var var_3 = u_input.c.x;
    var var_4 = var_1;
    return func_3(u_input.c.x, abs(_wgslsmith_sub_i32(countOneBits(~var_1), 1i)), func_2(abs(_wgslsmith_mult_vec3_u32(min(u_input.c.yxw, vec3<u32>(4294967295u, u_input.c.x, 4294967295u)), u_input.c.wzx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    let var_2 = min(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(var_1.a.b.x, u_input.a, -2147483647i, -40290i)), ~vec4<i32>(u_input.d.x, 0i, 14935i, -1i)) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(-1i, var_0.a.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.a.b.x, -3874i), u_input.a), ~var_0.a.b.x), vec4<i32>(_wgslsmith_add_i32(17804i, 1i), var_0.a.c.x, 10853i, abs(u_input.d.x)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_0.a.e, 1u, 34736u), abs(u_input.c)) % vec4<u32>(32u))), abs(~firstTrailingBit(vec4<i32>(-2147483647i, var_1.a.b.x, -1i, var_0.a.b.x)) & u_input.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 1709f))), _wgslsmith_f_op_f32(-var_0.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, 602f, _wgslsmith_f_op_f32(357f - var_0.c.x))));
    let var_4 = vec4<bool>(true, true, all(var_0.e), any(!vec2<bool>(!var_0.b.x, var_1.c.x > var_0.c.x)));
    let var_5 = Struct_1(!select(!var_1.e.xy, func_3(46317u, -var_1.a.c.x, false).e.xy, var_0.d.x), max(var_2.wzx, ~var_2.xyz), func_1().a.c, reverseBits(_wgslsmith_sub_vec3_u32(var_0.a.d, u_input.c.wwz)), func_3(~(~1u), -2147483647i, true).a.d.x);
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_0.c.x, var_0.c.x) - vec3<f32>(var_1.c.x, var_1.c.x, -1000f)))))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -405f)), -681f, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -1323f)), _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))))));
    let var_6 = select(var_0.d.yyy, var_1.b, var_0.e.x);
    let var_7 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(~66297i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.c.x)), 548f, -1955f, var_1.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-253f, var_1.c.x, var_1.c.x, var_3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_3.x, -1000f, var_0.c.x))), vec4<bool>(var_7.a.x, true, true, func_1().b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-709f, -802f, var_1.c.x, var_1.c.x), vec4<f32>(1552f, 418f, var_0.c.x, var_0.c.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, -703f, var_0.c.x, 1000f), vec4<f32>(1445f, -1000f, 183f, -842f)))))), var_3.x);
}

