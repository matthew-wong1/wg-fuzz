struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), !(!vec4<bool>(true, any(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, false)), all(vec3<bool>(false, false, true)))), true);
    var var_1 = u_input.a;
    let var_2 = abs(vec2<i32>(_wgslsmith_sub_i32(min(_wgslsmith_add_i32(u_input.a, -16337i), u_input.e), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.a, u_input.e), vec3<i32>(-19982i, 2147483647i, 0i))), 6546i));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, 897f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(374f, 1225f), vec2<f32>(1296f, 287f), vec2<bool>(false, false)))))));
    var var_4 = Struct_3(~39890u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(931f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) - _wgslsmith_f_op_f32(-784f + -623f))))), _wgslsmith_f_op_f32(trunc(var_3.x)), u_input.d, _wgslsmith_mult_i32(reverseBits(_wgslsmith_mult_i32(var_2.x, -1i)), 0i));
    return vec3<i32>(~693i, var_4.e, u_input.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>) -> u32 {
    let var_0 = func_3();
    var var_1 = any(!select(!vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, true), vec2<bool>(true, arg_0.x & arg_0.x)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4679u, max(_wgslsmith_sub_u32(arg_1.x >> (1u % 32u), u_input.c.x), abs(arg_1.x))), 9u)];
    var var_3 = vec4<bool>(any(select(vec3<bool>(false, arg_1.x != 1u, arg_0.x), !(!vec3<bool>(false, false, arg_0.x)), select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, false, true), arg_0.x), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, true, arg_0.x), true), !vec3<bool>(arg_0.x, false, false)))), _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(floor(var_2.b.x))) <= var_2.c.c.x, arg_0.x, !(!(!all(arg_0))));
    let var_4 = ~(~(~(~1u)) & ~(arg_1.x ^ _wgslsmith_clamp_u32(4294967295u, u_input.c.x, 0u)));
    return _wgslsmith_dot_vec4_u32(select(var_2.c.d, vec4<u32>(countOneBits(select(19156u, var_4, true)), ~(19708u ^ var_4), arg_1.x, 1u), true | (~0u != countOneBits(u_input.b))), ~reverseBits(~firstLeadingBit(var_2.c.d)));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: bool) -> Struct_4 {
    global1 = array<Struct_2, 9>();
    var var_0 = Struct_3(~u_input.b, -397f, arg_0.b.b.x, arg_0.b.c.d.yw, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -5250i, (14160i >> (1u % 32u)) | (u_input.e << (103988u % 32u))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.e), vec3<i32>(-2147483647i, 18139i, -4580i)) >> (vec3<u32>(arg_0.b.c.a, 4294967295u, arg_0.b.c.a) % vec3<u32>(32u)))));
    var var_1 = -_wgslsmith_sub_vec2_i32(func_3().yx, _wgslsmith_add_vec2_i32(vec2<i32>(0i, -var_0.e), vec2<i32>(-87541i, abs(var_0.e))));
    let var_2 = ~vec3<i32>(-46592i, -16766i, -(~u_input.a << (var_0.a % 32u)));
    var var_3 = (_wgslsmith_mod_vec3_u32(arg_0.b.c.d.zzy, _wgslsmith_clamp_vec3_u32(~vec3<u32>(17117u, 27586u, arg_0.b.c.a), vec3<u32>(var_0.d.x, 0u, 26462u), select(vec3<u32>(u_input.c.x, 22912u, var_0.d.x), vec3<u32>(0u, var_0.d.x, 4294967295u), vec3<bool>(arg_2, arg_2, arg_0.a.x)))) >> ((~(~arg_0.b.c.d.xyz) ^ ~vec3<u32>(u_input.d.x, 1u, u_input.c.x)) % vec3<u32>(32u))) << (firstTrailingBit(arg_0.b.c.d.www) % vec3<u32>(32u));
    return Struct_4(min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_1.x), var_2), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, var_1.x, -1i), var_2), firstTrailingBit(var_2), false)) >> (~(~arg_0.b.c.d.yzy) % vec3<u32>(32u)), _wgslsmith_clamp_u32(abs(arg_0.b.c.d.x), _wgslsmith_add_u32(~var_0.a, u_input.d.x), arg_0.b.c.d.x ^ ~4294967295u) << (var_0.a % 32u));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(u_input.b & min(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 8688u), ~u_input.c.x), 1u), _wgslsmith_f_op_f32(round(-619f)), vec2<f32>(159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), ~vec4<u32>(u_input.b, abs(_wgslsmith_sub_u32(u_input.d.x, 23958u)), 0u >> (~u_input.d.x % 32u), u_input.c.x), -291f);
    let var_1 = var_0.d | ~(~(~var_0.d));
    var var_2 = func_4(Struct_5(vec3<bool>(false, all(vec3<bool>(true, false, true)), func_2(vec2<bool>(false, false), vec3<u32>(u_input.b, 57766u, 0u)) >= 54670u), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, -1206f, -481f))), var_0)), _wgslsmith_div_f32(var_0.b, -950f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.x, var_0.e))) * _wgslsmith_f_op_f32(floor(var_0.e))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + -595f), _wgslsmith_f_op_f32(231f * _wgslsmith_div_f32(var_0.c.x, 450f))));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-197f, 602f) * var_0.c.x) - _wgslsmith_f_op_f32(-var_0.c.x))), 336f, true && any(vec2<bool>(true, true))));
    var var_4 = 65256u;
    return var_0.c.x;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1688f) + 1799f))), vec3<f32>(511f, arg_0, 1000f), Struct_1(u_input.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_0)))), vec4<u32>(~u_input.b, u_input.c.x, 1u, ~(~1u)), arg_2.x));
    var var_1 = arg_0;
    var var_2 = Struct_2(arg_0, var_0.b, var_0.c);
    var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.c.d.x, 34446u), 4294967295u), reverseBits(39940u) | firstLeadingBit(var_0.c.d.x)) << (~var_0.c.d.x % 32u), 9u)];
    let var_3 = var_0;
    return Struct_1(~countOneBits(abs(23724u) & _wgslsmith_dot_vec2_u32(var_2.c.d.zw, vec2<u32>(u_input.d.x, var_2.c.d.x))), 664f, arg_2, ~_wgslsmith_sub_vec4_u32(var_2.c.d, abs(vec4<u32>(var_3.c.a, var_3.c.a, 2218u, 5765u))), _wgslsmith_f_op_f32(round(arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_1()), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true))), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, true)), true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1190f)) * _wgslsmith_f_op_f32(func_1())) * 1348f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-497f, -1464f))))))), vec4<i32>(-37834i, ~_wgslsmith_sub_i32(~u_input.e, u_input.e), 1i, i32(-1i) * -1i));
    let var_1 = Struct_4(-select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, 70500i), vec3<i32>(-20423i, u_input.e, -1i)) ^ -vec3<i32>(u_input.a, u_input.e, u_input.e), vec3<i32>(_wgslsmith_sub_i32(-20140i, 0i), -1i, u_input.e), true), _wgslsmith_div_u32(var_0.a, ~(~(~u_input.c.x))));
    var var_2 = Struct_2(1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_0.c.x, var_0.e) - vec3<f32>(var_0.e, var_0.b, var_0.e)), vec3<f32>(var_0.b, -1881f, 1306f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, var_0.c.x, var_0.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, -529f, 1000f))), true)))), func_5(_wgslsmith_f_op_f32(var_0.e + -1655f), vec2<bool>(all(vec2<bool>(true, true)) | true, select(-1i > var_1.a.x, true, true)), _wgslsmith_f_op_vec2_f32(abs(var_0.c)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-26117i, -1i, 2147483647i, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.e, 8681i, var_1.a.x))));
    let var_3 = _wgslsmith_f_op_f32(353f - var_2.b.x);
    let var_4 = _wgslsmith_sub_vec3_u32(var_0.d.wxw, abs(~vec3<u32>(1u, 4294967295u, _wgslsmith_mod_u32(62107u, var_0.d.x))));
    let var_5 = Struct_5(select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), any(vec2<bool>(true, true)))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), false), true), global1[_wgslsmith_index_u32(~1u, 9u)]);
    global0 = !all(var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(719f * -309f), 857f, _wgslsmith_div_f32(-681f, 390f), var_5.b.b.x) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.b.b.x, var_2.b.x, 533f, var_0.b) + vec4<f32>(-356f, -1000f, var_3, var_5.b.b.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_5.b.c.b, var_2.c.e, var_5.a.x)), var_5.b.a, _wgslsmith_f_op_f32(min(var_5.b.a, var_0.b)), _wgslsmith_f_op_f32(step(-820f, var_3))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_5.b.a, -1000f, var_0.b, -305f), vec4<f32>(317f, var_0.b, var_2.c.c.x, 234f))))))), var_1.a, ~(~(var_2.c.d.xxz ^ (vec3<u32>(var_5.b.c.d.x, var_1.b, var_2.c.a) ^ vec3<u32>(11428u, 21102u, var_5.b.c.d.x)))));
}

