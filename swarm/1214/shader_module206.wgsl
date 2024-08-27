struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-1i, -20148i, i32(-2147483648)), vec3<i32>(-6625i, -1i, 2147483647i), vec3<i32>(-10913i, 35637i, -1i), vec3<i32>(i32(-2147483648), 1993i, -55814i), vec3<i32>(0i, 55906i, 0i), vec3<i32>(7021i, 26203i, -410i), vec3<i32>(-1i, 1i, -26165i), vec3<i32>(1i, -49456i, -23014i), vec3<i32>(0i, 2147483647i, 29951i), vec3<i32>(-1i, 2147483647i, -923i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<u32> {
    global0 = array<vec3<i32>, 10>();
    let var_0 = _wgslsmith_div_u32(35854u | _wgslsmith_mult_u32(0u, arg_0.b), ~1239u);
    let var_1 = ~u_input.a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1778f - -981f))) * _wgslsmith_f_op_f32(-216f + 147f)), _wgslsmith_f_op_f32(ceil(-818f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(238f * 570f) - _wgslsmith_div_f32(-766f, 193f))))));
    let var_3 = Struct_1(-843f, _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 4294967295u) & _wgslsmith_mod_vec2_u32(abs(arg_0.a.yw), _wgslsmith_mult_vec2_u32(arg_0.a.yx, arg_0.a.yx)), ~arg_0.a.zw), var_2, _wgslsmith_add_vec3_u32(vec3<u32>(var_1, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(0u, 4294967295u, var_0, 1u)), ~0u), 1u), vec3<u32>(abs(arg_1), ~(arg_1 | var_1), reverseBits(_wgslsmith_mod_u32(var_0, arg_1)))), -1i);
    return vec2<u32>(_wgslsmith_dot_vec2_u32(select(select(~var_3.b, arg_0.a.yz, false), vec2<u32>(6574u, firstLeadingBit(10043u)), vec2<bool>(true, true)), ~(vec2<u32>(var_0, var_3.d.x) << (var_3.d.yy % vec2<u32>(32u)))), ~_wgslsmith_mult_u32(arg_0.a.x, 97872u) << ((~arg_0.a.x >> (1u % 32u)) % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = min(u_input.b, u_input.b) >> (~(~u_input.b) % 32u);
    var var_1 = Struct_2(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f))), select(~abs(vec2<u32>(0u, var_0)), func_3(Struct_3(vec4<u32>(4294967295u, var_0, 1u, 32463u), u_input.a, 1i, true), 1u), true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-823f, _wgslsmith_f_op_f32(-826f - 429f), -735f))), vec3<u32>(_wgslsmith_add_u32(u_input.a, var_0) | _wgslsmith_mult_u32(4294967295u, u_input.b), u_input.a, var_0), 0i));
    global0 = array<vec3<i32>, 10>();
    var var_2 = Struct_3(abs(~vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 15091u, u_input.a), var_1.b.d), var_1.b.d.x, 2093u)), firstLeadingBit(~(~_wgslsmith_add_u32(var_0, u_input.a))), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(28480i, var_1.b.e)), var_1.b.e), !(u_input.b > func_3(Struct_3(vec4<u32>(u_input.b, var_0, 85220u, var_1.b.b.x), var_1.b.b.x, var_1.b.e, var_1.a), ~var_0).x));
    var_2 = Struct_3(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, _wgslsmith_sub_u32(var_2.a.x, 1u), 10610u, var_2.a.x), var_2.a), var_2.b, 34168i, var_1.b.e == max(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_2.c, 2147483647i, -27311i), firstLeadingBit(var_2.c)), var_1.b.e));
    return Struct_2(any(!select(select(vec2<bool>(false, false), vec2<bool>(var_2.d, var_1.a), var_1.a), vec2<bool>(true, true), vec2<bool>(false, var_2.d))), var_1.b);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = var_0.b.a;
    var_0 = func_2();
    let var_2 = var_0.b.d.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f));
    return Struct_3(max(firstLeadingBit(vec4<u32>(var_0.b.b.x, 23531u, u_input.a, 21136u) & vec4<u32>(52750u, 4294967295u, var_0.b.d.x, var_0.b.d.x)), (vec4<u32>(4294967295u, u_input.b, 0u, u_input.a) ^ vec4<u32>(u_input.a, var_0.b.b.x, u_input.a, 0u)) | _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(23857u, u_input.b, 10406u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(72837u, var_0.b.b.x, u_input.b, u_input.b), vec4<u32>(96883u, var_0.b.b.x, 67570u, 11759u)))), 4294967295u, abs(_wgslsmith_mult_i32(-var_0.b.e, var_0.b.e) & 0i), false);
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-187f)), _wgslsmith_f_op_f32(step(var_0.b.c.x, -2744f)), _wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.c.x)), _wgslsmith_f_op_f32(var_0.b.a + var_0.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -603f), var_0.b.c.x)))));
    let var_2 = Struct_3(~_wgslsmith_sub_vec4_u32(arg_0.a, select(vec4<u32>(u_input.b, 0u, 40441u, 0u), vec4<u32>(var_0.b.b.x, 8629u, 27677u, 8816u), true)) >> (_wgslsmith_mod_vec4_u32(~arg_0.a, arg_0.a) % vec4<u32>(32u)), ~max(~u_input.a, arg_0.a.x), -37366i, false);
    var var_3 = !select(!select(!vec4<bool>(false, false, var_0.a, false), !vec4<bool>(true, false, var_0.a, true), true), !select(vec4<bool>(true, false, var_0.a, var_2.d), vec4<bool>(true, true, false, false), vec4<bool>(false, var_2.d, false, false)), select(select(!vec4<bool>(var_2.d, false, var_0.a, var_0.a), !vec4<bool>(var_0.a, arg_0.d, true, false), var_2.d), vec4<bool>(var_2.d, true, any(vec2<bool>(var_0.a, arg_0.d)), var_2.c < arg_0.c), !vec4<bool>(false, var_0.a, false, arg_0.d)));
    var var_4 = var_1;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(var_1.x, 310f), var_1.x, -2146f), _wgslsmith_f_op_vec3_f32(max(func_2().b.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, var_1.x, 1636f) + _wgslsmith_div_vec3_f32(var_4.zxw, vec3<f32>(520f, var_4.x, 306f))))))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1166f, 925f)))));
}

