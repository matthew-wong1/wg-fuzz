struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(1615f));
    let var_1 = true;
    let var_2 = arg_2.b.x;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1832f)), -2093f, !(2147483647i < -max(u_input.b.x, arg_2.b.x))));
    var var_4 = Struct_5(arg_0.b.zyx);
    return ~(~u_input.c);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(-1822f));
    let var_1 = Struct_2(Struct_1(~vec2<u32>(8380u, arg_1) ^ (firstTrailingBit(vec2<u32>(arg_0, arg_0)) & u_input.e.yy), arg_2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1799f), -772f, all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(ceil(arg_2.a.x))))), false, countOneBits(_wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.b.xy) >> (~u_input.d.zz % vec2<u32>(32u)), ~(vec2<i32>(u_input.b.x, u_input.b.x) | arg_2.b.yz), arg_2.b.wz)), all(vec4<bool>(all(vec2<bool>(true, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)), !any(vec3<bool>(false, false, false)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))))));
    var var_2 = select(!select(!vec3<bool>(var_1.d, false, var_1.b), !vec3<bool>(var_1.d, var_1.b, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec4<bool>(var_1.b, var_1.b, var_1.d, false)))), !(!(!select(vec3<bool>(false, true, var_1.d), vec3<bool>(var_1.d, var_1.d, true), false))), !var_1.b);
    let var_3 = countOneBits(_wgslsmith_div_i32(-6217i, _wgslsmith_sub_i32(2147483647i, -var_1.a.b.x)));
    let var_4 = _wgslsmith_sub_u32(firstTrailingBit(~(~select(arg_1, 0u, var_1.b))), abs(_wgslsmith_add_u32(min(min(52075u, arg_0), var_1.a.a.x), arg_0)));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = vec2<bool>(any(vec4<bool>(!all(vec4<bool>(false, true, true, true)), !(u_input.c == 9923u), true, true)), !(func_4(func_3(Struct_4(vec4<f32>(461f, 324f, 456f, 558f), vec4<i32>(2147483647i, u_input.b.x, arg_0.x, u_input.b.x)), false, Struct_1(u_input.e.xx, vec4<i32>(628i, u_input.b.x, 0i, -2850i), -408f)), firstTrailingBit(u_input.a), Struct_4(vec4<f32>(100f, -2345f, -905f, 460f), vec4<i32>(u_input.b.x, arg_0.x, u_input.b.x, u_input.b.x))) & any(vec2<bool>(false, true))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.b.xz & vec2<i32>(0i, u_input.b.x), ~vec2<i32>(arg_0.x, 0i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), firstLeadingBit(vec2<i32>(u_input.b.x, 1i))) | countOneBits(vec2<i32>(u_input.b.x, -10534i) << (u_input.d.xx % vec2<u32>(32u)))), abs(_wgslsmith_sub_i32(firstTrailingBit(1i) | ~arg_0.x, _wgslsmith_mult_i32(-53973i, u_input.b.x) & _wgslsmith_clamp_i32(u_input.b.x, 0i, 0i))), 1i);
    var_1 = u_input.b;
    var_1 = abs(~(-abs(vec3<i32>(var_1.x, u_input.b.x, u_input.b.x)) << (u_input.d % vec3<u32>(32u))));
    var_1 = ~countOneBits(~vec3<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-37491i, var_1.x, u_input.b.x, -2147483647i), vec4<i32>(0i, -25565i, -94580i, 23202i)), var_1.x));
    return Struct_2(Struct_1(u_input.e.zx, select(vec4<i32>(0i, 9783i, var_1.x, arg_0.x) ^ select(vec4<i32>(1i, u_input.b.x, -26633i, arg_0.x), vec4<i32>(2147483647i, var_1.x, u_input.b.x, u_input.b.x), true), abs(~vec4<i32>(1i, arg_0.x, 0i, u_input.b.x)), vec4<bool>(true, var_0.x, false, true)), -778f), var_0.x, ~var_1.zz, var_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, arg_0.a.c, -518f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(792f, -1151f, arg_0.a.c), vec3<f32>(arg_1.b.a.c, 113f, arg_0.a.c), true)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(163f, arg_1.b.a.c, -407f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1628f, 2160f, -471f))))))));
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -(~arg_1.b.c.x)), vec2<i32>(arg_1.a.c.x, -52118i));
    var var_2 = Struct_3(func_2(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(0i, 1i, -67538i)) | vec3<i32>(arg_0.a.b.x, var_1.x, arg_0.c.x), u_input.b)), Struct_2(func_2(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b) << (max(arg_1.c.xzy, u_input.e) % vec3<u32>(32u))).a, !arg_0.b, max(u_input.b.yx, -max(arg_0.a.b.zy, arg_0.c)), any(select(!vec2<bool>(arg_0.d, arg_0.b), vec2<bool>(false, arg_0.b), vec2<bool>(true, true)))), _wgslsmith_sub_vec4_u32(~arg_1.c, vec4<u32>(select(u_input.d.x, _wgslsmith_dot_vec3_u32(arg_1.c.ywz, vec3<u32>(0u, u_input.d.x, arg_0.a.a.x)), all(vec3<bool>(true, arg_1.b.b, true))), ~4294967295u, ~4294967295u, _wgslsmith_mult_u32(8167u, arg_1.b.a.a.x))));
    var_2 = arg_1;
    let var_3 = arg_0.a.c;
    return -1544f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f) + 1613f), 1711f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(491f, 344f))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(u_input.e.yy, vec4<i32>(1i, u_input.b.x, -29371i, 2147483647i), -1541f), true, vec2<i32>(u_input.b.x, 30533i), true), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, u_input.a), vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), 1583f), true, u_input.b.zy, true), Struct_2(Struct_1(u_input.d.xz, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), -1033f), false, vec2<i32>(0i, 1i), false), vec4<u32>(u_input.c, u_input.a, u_input.e.x, 10440u)))))), 285f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(832f, _wgslsmith_f_op_f32(f32(-1f) * -451f)))));
    let var_1 = u_input.b.x;
    var var_2 = func_2(-vec3<i32>(var_1, _wgslsmith_add_i32(_wgslsmith_mod_i32(19685i, u_input.b.x), var_1 & 2147483647i), u_input.b.x)).a;
    var var_3 = max(_wgslsmith_dot_vec3_i32(var_2.b.xyx, abs(vec3<i32>(78173i, 32277i, u_input.b.x))), 1i) >> (abs(u_input.a) % 32u);
    var var_4 = _wgslsmith_f_op_f32(var_2.c + var_0.x);
    let var_5 = -vec3<i32>(-_wgslsmith_mod_i32(u_input.b.x, abs(-28781i)), var_1, _wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.x, var_2.b.x), vec2<i32>(var_2.b.x, -1i)), var_2.b.yw), var_2.b.xy));
    let x = u_input.a;
    s_output = StorageBuffer(~67022u, -var_5.x, abs(_wgslsmith_sub_vec3_i32(var_5, _wgslsmith_sub_vec3_i32(max(vec3<i32>(var_5.x, u_input.b.x, var_5.x), vec3<i32>(var_1, u_input.b.x, 290i)), var_5))), ~max(_wgslsmith_sub_vec2_i32(var_2.b.zy, vec2<i32>(var_1, var_1) << (var_2.a % vec2<u32>(32u))), -reverseBits(var_5.yz)));
}

