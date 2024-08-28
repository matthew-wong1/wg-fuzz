struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 27>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec2<u32>, 27>();
    var var_0 = Struct_2(-162f, any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(true, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(2117i >= u_input.a, all(vec3<bool>(false, false, false))))));
    global0 = 2147483647i;
    var var_1 = Struct_1(vec3<bool>(true, !select(false, var_0.b & false, any(vec2<bool>(false, true))), all(vec4<bool>(false, var_0.b, true, select(false, false, false)))), -1000f);
    var_0 = Struct_2(var_1.b, !(!any(vec4<bool>(false, var_1.a.x, true, true))) || false);
    return firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 0i, u_input.b, -35468i) ^ -vec4<i32>(u_input.b, u_input.a, -17440i, -55548i), abs(-vec4<i32>(1i, 1i, u_input.a, u_input.a)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global1 = array<vec2<u32>, 27>();
    var var_0 = vec4<f32>(308f, -1706f, _wgslsmith_div_f32(arg_0.x, arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f - arg_0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(967f, arg_3.b, 2078f, 3364f), vec4<f32>(var_0.x, 801f, arg_3.b, arg_2.b)), vec4<f32>(-558f, arg_2.b, -766f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-182f, arg_3.b, -1000f, arg_2.b), vec4<f32>(arg_2.b, 487f, arg_0.x, var_0.x), vec4<bool>(arg_3.a.x, true, false, false)))))));
    var var_2 = _wgslsmith_f_op_f32(trunc(-267f));
    global1 = array<vec2<u32>, 27>();
    return _wgslsmith_clamp_vec4_i32(select(func_3(), vec4<i32>(-17262i, _wgslsmith_sub_i32(-27381i, 7786i), u_input.a >> (u_input.e % 32u), u_input.a << (u_input.e % 32u)), arg_3.a.x) & _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(23926i, 16262i, -19914i, u_input.a) & vec4<i32>(u_input.a, u_input.b, u_input.a, 2147483647i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.b, u_input.a, u_input.b, -29095i)), ~1i, ~u_input.a, -u_input.b)), func_3(), min(-(~firstTrailingBit(vec4<i32>(0i, u_input.b, u_input.a, 2147483647i))), vec4<i32>(firstTrailingBit(u_input.b), abs(u_input.a), abs(abs(u_input.a)), -2147483647i)));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global0 = _wgslsmith_dot_vec4_i32(-reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b, 2147483647i), vec4<i32>(-51008i, u_input.b, 11251i, -2147483647i)), -vec4<i32>(u_input.a, 1i, u_input.b, u_input.b))), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), 731f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(524f, arg_0)), vec2<bool>(false, u_input.b >= u_input.b))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-299f - 494f)))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(488f))))));
    global0 = u_input.a;
    var var_0 = Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_1 = Struct_1(var_0.a, 1357f);
    let var_2 = all(vec2<bool>(true, select(all(vec2<bool>(var_0.a.x, true)), any(vec2<bool>(var_0.a.x, var_0.a.x)), !(var_1.a.x != false))));
    return !select(select(select(select(vec4<bool>(var_2, false, false, var_2), vec4<bool>(var_1.a.x, var_0.a.x, var_1.a.x, true), false), select(vec4<bool>(true, var_0.a.x, var_1.a.x, false), vec4<bool>(false, var_1.a.x, true, false), true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(var_0.a.x, true, false, true), vec4<bool>(false, false, true, var_2), true), select(vec4<bool>(var_2, false, var_2, false), vec4<bool>(true, var_2, false, false), vec4<bool>(var_1.a.x, var_2, var_0.a.x, true)), any(var_0.a.yy)), true), !(!vec4<bool>(true, var_1.a.x, true, false)), !(!(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(select(vec4<i32>(-u_input.b, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a), _wgslsmith_div_i32(u_input.b, -2147483647i)), _wgslsmith_clamp_i32(select(u_input.a, u_input.a, true), _wgslsmith_sub_i32(1088i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -78198i, u_input.b, -2147483647i), vec4<i32>(u_input.a, 0i, -1i, 0i))), ~_wgslsmith_mod_i32(74101i, -2147483647i)), ~(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) | vec4<i32>(~49425i, u_input.a, u_input.a, i32(-1i) * -58316i), select(vec4<bool>(any(vec2<bool>(true, true)), true, true, true), !func_1(611f), true)), reverseBits(select(-vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b) ^ (vec4<i32>(u_input.b, -2147483647i, u_input.b, -2777i) << (vec4<u32>(u_input.d, 32014u, u_input.c, 0u) % vec4<u32>(32u))), abs(-vec4<i32>(0i, u_input.a, 2147483647i, -17740i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), true))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(1f + -487f), select(select(all(vec4<bool>(true, true, false, true)) && true, true, firstTrailingBit(57106i) <= (-2147483647i << (u_input.c % 32u))), all(func_1(_wgslsmith_f_op_f32(trunc(965f))).zxw), all(vec2<bool>(true, true))));
    let var_2 = 34280u;
    var var_3 = Struct_1(vec3<bool>(true, any(vec2<bool>(any(vec2<bool>(false, var_1.b)), any(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)))), select(any(vec2<bool>(var_1.b, true)), true, func_1(var_1.a).x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1331f, _wgslsmith_f_op_f32(-var_1.a)))))));
    var var_4 = select(~u_input.c | _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.d, 27u)] & vec2<u32>(15324u, var_2), global1[_wgslsmith_index_u32(4294967295u, 27u)] | global1[_wgslsmith_index_u32(66635u, 27u)]), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(reverseBits(var_2), 27u)], abs(vec2<u32>(0u, u_input.c)))), 27267u, var_3.a.x);
    let var_5 = select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, min(11344i, -17762i)) ^ vec2<i32>(reverseBits(10459i), 1i & u_input.b), -(~(vec2<i32>(-2147483647i, u_input.a) ^ vec2<i32>(u_input.b, var_0.x)))), vec2<i32>(_wgslsmith_sub_i32(u_input.b, ~_wgslsmith_mult_i32(27869i, 1i)), u_input.a), vec2<bool>(true, var_1.b));
    let var_6 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b - 194f) - _wgslsmith_f_op_f32(trunc(var_3.b))))))), var_1.b & all(select(select(vec2<bool>(var_1.b, var_3.a.x), var_3.a.yy, var_3.a.x), func_1(var_3.b).xz, !vec2<bool>(var_3.a.x, var_1.b))));
    var_3 = Struct_1(var_3.a, var_6.a);
    var var_7 = Struct_2(_wgslsmith_f_op_f32(max(912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 316f)))))), var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1284f, 1581f, 753f, var_1.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_7.a, var_1.a, var_1.a, 187f)), vec4<f32>(-1160f, var_1.a, -724f, var_3.b)))), _wgslsmith_f_op_f32(-1756f - _wgslsmith_div_f32(1374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.b))))), _wgslsmith_f_op_f32(-179f + var_1.a));
}

