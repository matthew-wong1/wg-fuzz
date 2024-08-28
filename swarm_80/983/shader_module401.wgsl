struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_5) -> f32 {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.b.x, false, true, false), true), vec4<bool>(true, !all(vec4<bool>(false, true, arg_2.d.b.x, false)), true, arg_0.b.x), !any(arg_2.d.b.xz));
    var var_1 = arg_1;
    var var_2 = vec2<i32>(80241i, arg_3.c);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2.d.c.x))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2.d.c.wz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.c, arg_2.d.a.x))) - arg_2.d.a), !(var_2.x > -5139i)))), !(!var_0.xxy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2.d.c), arg_2.d.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.d.c) - _wgslsmith_f_op_vec4_f32(-arg_0.c)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2.d.c), arg_0.c)))), abs(~(vec2<u32>(arg_0.d.x, 61590u) & ~vec2<u32>(49926u, arg_3.a))));
    let var_4 = _wgslsmith_clamp_i32(-2147483647i, var_2.x >> (arg_2.a % 32u), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-7401i, -4480i), vec2<i32>(-2147483647i, -1i)), ~u_input.e.zx)));
    return 1000f;
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -823f), vec2<f32>(-2147f, -224f)) * vec2<f32>(1f, 1f))))), !vec3<bool>(select(all(vec4<bool>(false, false, true, true)), false, true), -3603i == ~arg_0.x, false), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1180f, 823f) * vec2<f32>(-1501f, -159f)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2508f, 451f, 729f, 279f), vec4<f32>(-473f, -106f, 366f, -112f))), vec2<u32>(u_input.b.x, u_input.b.x) & vec2<u32>(27304u, 4294967295u)), -120f, Struct_2(40446u, -39194i, -1078f, Struct_1(vec2<f32>(413f, -268f), vec3<bool>(false, true, true), vec4<f32>(-637f, 1058f, -1000f, 1056f), u_input.b.xx), ~u_input.c), Struct_5(_wgslsmith_mod_u32(u_input.c, 0u), 1u, _wgslsmith_add_i32(-1i, u_input.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), -753f, _wgslsmith_f_op_f32(f32(-1f) * -1009f)), ~((u_input.b.yx | reverseBits(u_input.b.yz)) | vec2<u32>(u_input.c, _wgslsmith_div_u32(0u, 53727u))));
    var var_1 = vec2<i32>(u_input.a, -(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.d, arg_0.x), max(vec3<i32>(-2147483647i, arg_0.x, 23233i), u_input.e.zzz)) ^ _wgslsmith_clamp_i32(1227i, i32(-1i) * -2147483647i, 75768i & arg_0.x)));
    let var_2 = -u_input.e;
    let var_3 = select(u_input.e.wz, u_input.e.xy, var_0.b.x);
    let var_4 = vec4<bool>(var_0.b.x, true, false, !all(!var_0.b.xx) && select(var_0.b.x, var_0.b.x, var_0.b.x));
    return var_4.xx;
}

fn func_4(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = -u_input.e;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.x, i32(-1i) * -(~u_input.d)), max(select(-u_input.e.x, select(u_input.e.x, ~(-4729i), !arg_0), !arg_0 | true), u_input.d));
    var var_2 = Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(-158f - -1032f)), vec3<bool>(false, false, all(select(vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f * -206f) - _wgslsmith_f_op_f32(round(-196f)))), -357f, -658f, 462f), ~((vec2<u32>(0u, 4294967295u) << (~vec2<u32>(arg_1, 2483u) % vec2<u32>(32u))) << (~u_input.b.yx % vec2<u32>(32u))));
    var var_3 = firstTrailingBit(arg_1);
    var_3 = abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.d.x, 34528u), 0u));
    return var_2.c.x;
}

fn func_1(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(func_4(any(vec4<bool>(all(func_2(vec2<i32>(u_input.e.x, u_input.e.x))), !all(vec2<bool>(true, true)), u_input.b.x <= (u_input.b.x | 61231u), !all(vec4<bool>(false, true, true, true)))), 47327u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(-abs(u_input.e.xzz), firstLeadingBit(vec3<i32>(1i, -2147483647i, _wgslsmith_div_i32(2147483647i, u_input.a))), vec3<bool>(true, all(vec3<bool>(true, true, true)), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-965f)));
    let var_2 = 724f;
    let var_3 = u_input.b.x;
    var var_4 = !vec3<bool>(true, !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), true);
    var var_5 = Struct_3(vec3<i32>(countOneBits(0i), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.d, _wgslsmith_clamp_i32(var_0.x, 3864i, u_input.d), 12669i, countOneBits(u_input.d))), u_input.a), false, vec4<u32>(39491u, 1u, _wgslsmith_mod_u32(min(27512u, 1519u) | u_input.c, firstLeadingBit(u_input.b.x)), _wgslsmith_add_u32(reverseBits(22180u), u_input.b.x)), var_2, _wgslsmith_f_op_f32(func_1(-447f)));
    var var_6 = Struct_4(var_3, Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x >> (var_5.c.x % 32u), -var_5.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 36949i, -2147483647i), u_input.e.xxy)), abs(u_input.e.yxy & vec3<i32>(u_input.a, u_input.a, var_0.x))), var_4.x, ~var_5.c, _wgslsmith_f_op_f32(func_1(var_2)), _wgslsmith_f_op_f32(round(-1000f))), var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.e, _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.b, var_6.b.c.xyy ^ var_6.b.c.xwx, _wgslsmith_mult_vec3_u32(vec3<u32>(var_6.a, 1u, 10252u), var_6.b.c.xzy)), ~abs(~var_6.b.c.zwy), select(var_6.b.c.wwy, vec3<u32>(_wgslsmith_dot_vec2_u32(var_6.b.c.ww, vec2<u32>(var_6.a, var_5.c.x)), ~4294967295u, _wgslsmith_dot_vec4_u32(var_5.c, vec4<u32>(var_5.c.x, var_6.b.c.x, u_input.b.x, var_5.c.x))), any(!vec3<bool>(var_4.x, true, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, var_2))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-417f, var_5.d)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_5.e, var_6.b.d), vec2<f32>(var_6.b.d, 102f)))) + vec2<f32>(-495f, _wgslsmith_f_op_f32(f32(-1f) * -313f)))), select(~4294967295u, reverseBits(min(68649u, firstLeadingBit(0u))), true), u_input.d);
}

