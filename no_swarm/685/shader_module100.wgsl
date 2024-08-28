struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -24586i;

var<private> global1: vec3<u32> = vec3<u32>(0u, 36520u, 1u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1338f, 204f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1397f, -322f), vec2<f32>(203f, -385f))))))));
    let var_1 = !(!vec3<bool>(false, !(var_0.x <= var_0.x), false));
    let var_2 = Struct_3(Struct_1(~countOneBits(~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-574f, var_0.x, var_0.x)) + vec3<f32>(116f, var_0.x, 1433f))), u_input.b.yxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, var_0.x, 1223f))))), -_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(53549i, 6724i), vec2<i32>(u_input.b.x, u_input.b.x)))), vec3<bool>(select(true, true, var_1.x), var_1.x, all(vec4<bool>(any(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), all(vec2<bool>(true, true)), var_1.x, true))), 2147483647i, u_input.b, _wgslsmith_sub_i32(2147483647i, 24265i));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(var_2.a.d.yx));
    let var_3 = _wgslsmith_f_op_f32(select(450f, _wgslsmith_f_op_f32(-var_0.x), var_1.x));
    return var_2.a.d.x;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-366f, -1765f, -996f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(896f, 740f, 1141f), vec3<f32>(1174f, 1441f, 952f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-210f, -1000f, 733f) - vec3<f32>(-2733f, -1690f, 410f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(func_3()), 424f, _wgslsmith_f_op_f32(func_3()))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -390f)), 344f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1220f)), _wgslsmith_f_op_f32(-853f - -1102f))))));
    global1 = firstTrailingBit(u_input.a.wwz);
    global1 = u_input.a.wyz;
    global1 = ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 57237u), vec3<u32>(firstLeadingBit(u_input.a.x), 1u, u_input.a.x)));
    var var_1 = Struct_3(Struct_1(~88321u & firstLeadingBit(global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))), min(firstTrailingBit(u_input.b.yyx), u_input.b.wzy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec3_f32(var_0, var_0), !any(vec2<bool>(false, false)))), vec2<i32>(1i, countOneBits(u_input.b.x))), select(vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), select(41704u == global1.x, -2147483647i < u_input.b.x, true), any(vec2<bool>(true, true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), firstTrailingBit(1u) > min(u_input.a.x, u_input.a.x), all(vec2<bool>(true, true))), select(false, false, any(vec3<bool>(true, false, true)))), _wgslsmith_clamp_i32(11930i, 0i, ~_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 43579i)) | (2147483647i & reverseBits(u_input.b.x)), u_input.b, ~(~(-3521i) >> (u_input.a.x % 32u)));
    return Struct_3(var_1.a, !select(var_1.b, select(!var_1.b, select(vec3<bool>(true, true, var_1.b.x), var_1.b, vec3<bool>(true, true, var_1.b.x)), true), false), 7983i << (((~u_input.a.x | ~15015u) | min(~var_1.a.a, _wgslsmith_div_u32(1u, 26122u))) % 32u), -u_input.b, _wgslsmith_add_i32(firstLeadingBit(reverseBits(firstLeadingBit(u_input.b.x))), _wgslsmith_mult_i32(u_input.b.x, var_1.a.e.x) | u_input.b.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = -48649i;
    var var_2 = !(!vec3<bool>(var_0.b.x, var_0.b.x, false));
    var_2 = vec3<bool>(true | all(var_0.b), !all(!var_0.b.yz), var_2.x);
    let var_3 = ~4294967295u;
    return Struct_2(~reverseBits(-vec4<i32>(var_0.e, var_0.d.x, u_input.b.x, var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(43293u, _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.a.x, 18312u & global1.x, global1.x, _wgslsmith_dot_vec2_u32(global1.xz, global1.yy))), _wgslsmith_add_u32(1u, 74685u));
    var var_0 = func_1(vec4<f32>(1000f, 101f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(ceil(1f)))), -764f), ~_wgslsmith_add_vec3_u32(u_input.a.zyz, ~u_input.a.xwy));
    let var_1 = -(i32(-1i) * -firstTrailingBit(8272i));
    let var_2 = _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(min(global1.x, ~4294967295u & global1.x), ~(~global1.x | ~4294967295u)));
    var var_3 = vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(~global1.x, global1.x), abs(var_2));
    let var_4 = !(!(!func_2().b));
    var var_5 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-451f, 1082f, -1969f, 1333f) - vec4<f32>(1000f, 329f, -1000f, 1334f)) * _wgslsmith_div_vec4_f32(vec4<f32>(595f, -1000f, -1321f, 2729f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, 398f, 1133f, -1061f))))))));
    var_5 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-750f, -519f, _wgslsmith_f_op_f32(f32(-1f) * -1587f), var_5.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_5.x * 691f), var_5.x, var_5.x, 493f)), vec4<f32>(_wgslsmith_div_f32(var_5.x, _wgslsmith_f_op_f32(-var_5.x)), -1829f, _wgslsmith_f_op_f32(var_5.x * var_5.x), -219f)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -countOneBits(u_input.b.zz), vec2<i32>(reverseBits(-2147483647i) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.b.x, 36970i, var_1), var_0.a), 2147483647i)));
}

