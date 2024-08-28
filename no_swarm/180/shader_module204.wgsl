struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_3.a))));
    let var_1 = Struct_4(!arg_3.b.a, _wgslsmith_sub_vec4_u32(select(~(~vec4<u32>(24926u, 14804u, 0u, 60729u)), vec4<u32>(~4294967295u, ~arg_0.x, 46703u, arg_1.x), !(var_0.x < var_0.x)), countOneBits(vec4<u32>(_wgslsmith_clamp_u32(32228u, 4294967295u, 4294967295u), 48597u, abs(u_input.c.x), arg_1.x & 83669u))), ~arg_0, _wgslsmith_sub_i32(abs(0i), arg_3.d.x) >> (~19393u % 32u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.b.b.x, 312f), arg_3.a.zx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.b.b + _wgslsmith_f_op_vec2_f32(-var_0.zy)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    let var_0 = vec4<i32>(i32(-1i) * -15132i, -1i, ~(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<i32>(_wgslsmith_sub_i32(arg_1.d, arg_1.d), countOneBits(u_input.a), u_input.a)), firstTrailingBit(-vec3<i32>(arg_0.x, -10528i, arg_0.x))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(43300u, _wgslsmith_sub_u32(arg_1.c.x, ~2520u), _wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(u_input.d, arg_1.b.x, 1u, 39793u)), arg_1.c.x), vec3<u32>(_wgslsmith_mult_u32(reverseBits(u_input.d), arg_1.b.x), _wgslsmith_sub_u32(arg_1.c.x, arg_1.b.x) & _wgslsmith_sub_u32(arg_1.c.x, arg_1.b.x), _wgslsmith_clamp_u32(u_input.c.x, 94693u, 64379u)), ~min(~arg_1.c.x, ~u_input.c.x), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, 918f, arg_2)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_2, -1262f), vec3<f32>(-459f, arg_2, 612f)))), Struct_2(select(vec2<bool>(true, false), arg_1.a, arg_1.a.x), vec2<f32>(917f, arg_2)), ~(~16156i), ~vec4<i32>(2147483647i, arg_1.d, -8013i, u_input.b)))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<i32> {
    let var_0 = ~_wgslsmith_mult_u32(arg_3.x, abs(select(firstLeadingBit(21603u), ~u_input.c.x, true)));
    let var_1 = _wgslsmith_div_vec2_f32(arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(sign(775f)), -182f));
    let var_2 = vec4<i32>(~2147483647i, reverseBits(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -27266i, arg_0), reverseBits(vec4<i32>(arg_1.d, u_input.b, arg_0, -11357i))))), 25202i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0, 2147483647i), vec3<i32>(7245i, -67525i, arg_1.d))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-1i, -19317i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -vec2<i32>(arg_1.d, u_input.a), all(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x))), vec2<i32>(arg_0, 0i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(arg_1.c, vec3<u32>(_wgslsmith_add_u32(select(9181u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.b.x), arg_3.zx), false), reverseBits(1u)), max(firstTrailingBit(~0u), abs(min(var_0, 31929u))), _wgslsmith_div_u32(35856u, 35806u)), var_0, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(min(var_1.x, arg_2.a.x)))), Struct_2(select(arg_1.a, !arg_1.a, any(vec3<bool>(arg_1.a.x, true, arg_1.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(443f, 3323f))), 1i, _wgslsmith_clamp_vec4_i32(var_2, var_2, var_2)))).x;
    let var_4 = 51875u << (~reverseBits(var_0) % 32u);
    return vec2<i32>(~arg_0, ~(min(~arg_1.d, abs(var_2.x)) >> (u_input.c.x % 32u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>) -> f32 {
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_add_vec2_i32(-(func_4(arg_0.d, arg_0, func_2(vec2<i32>(-46220i, arg_0.d), Struct_4(arg_0.a, vec4<u32>(1u, var_0, arg_0.b.x, 4380u), arg_0.c, arg_0.d), 619f), ~vec3<u32>(var_0, arg_0.b.x, arg_0.b.x)) ^ _wgslsmith_sub_vec2_i32(-vec2<i32>(8686i, -43081i), vec2<i32>(-3706i, u_input.a) & vec2<i32>(-59798i, 2147483647i))), vec2<i32>(i32(-1i) * -622i, arg_0.d));
    let var_2 = arg_1.xy;
    var_1 = -reverseBits(~vec2<i32>(func_4(var_1.x, arg_0, Struct_1(vec2<f32>(955f, -2570f)), vec3<u32>(u_input.d, var_0, u_input.c.x)).x, var_1.x));
    var_1 = abs(vec2<i32>(-2147483647i, u_input.a));
    return -685f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1470f, _wgslsmith_f_op_f32(func_1(Struct_4(vec2<bool>(false, true), vec4<u32>(5248u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 35948u), u_input.a), vec4<bool>(true, false, true, false))), 549f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, 1707f, -110f) * vec3<f32>(104f, -1252f, 163f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 660f, -374f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, 142f, 1975f)), _wgslsmith_div_vec3_f32(vec3<f32>(-690f, -671f, -450f), vec3<f32>(-370f, -1161f, -447f)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1013f, var_0.x)))), _wgslsmith_f_op_f32(abs(var_0.x)));
    var_0 = vec3<f32>(-937f, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1411f), var_0.x))), -1279f, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))));
    let var_1 = Struct_2(vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1532f) - -395f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(269f + var_0.x))), var_0.yy);
    var var_2 = Struct_4(select(vec2<bool>(!all(vec3<bool>(true, false, true)), !all(vec3<bool>(false, true, var_1.a.x))), var_1.a, !select(vec2<bool>(var_1.a.x, false), select(var_1.a, var_1.a, false), !vec2<bool>(var_1.a.x, true))), countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 0u)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 22790u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 24799u), ~vec4<u32>(4294967295u, u_input.c.x, u_input.d, 25158u)))), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(u_input.d, u_input.d)), u_input.d, 1u, firstTrailingBit(max(0u, 1u))), max(0i, -17787i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-31883i, u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d, -11498i, 0i, u_input.a), vec4<i32>(u_input.a, var_2.d, 0i, -1i)), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d, 2147483647i, u_input.a, 2147483647i) | vec4<i32>(u_input.a, -1i, u_input.b, -35007i), select(vec4<i32>(u_input.b, -63065i, u_input.a, var_2.d), vec4<i32>(var_2.d, 0i, u_input.a, -1i), vec4<bool>(false, var_2.a.x, var_2.a.x, true))))));
}

