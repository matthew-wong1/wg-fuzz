struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(true && (_wgslsmith_f_op_f32(select(-1000f, 453f, true)) >= _wgslsmith_div_f32(-170f, 1000f)), ~u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-272f, 316f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, 771f)))))), Struct_1(true, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(52475u, u_input.d, u_input.d)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)), ~vec3<u32>(0u, 88092u, u_input.d))), vec2<f32>(1000f, 1f)));
    var var_1 = Struct_5(max(vec2<i32>(-29069i, u_input.b), ~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-28589i, -2147483647i)), -vec2<i32>(u_input.b, 43142i))), -firstLeadingBit(~vec2<i32>(u_input.b, 1i)), ~(~vec3<u32>(u_input.d, 8742u, 38829u)) ^ ~select(vec3<u32>(31614u, u_input.d, var_0.a.b) ^ vec3<u32>(var_0.b.b, 4294967295u, u_input.d), ~vec3<u32>(66428u, var_0.a.b, u_input.d), vec3<bool>(var_0.a.a, true, var_0.b.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -44689i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(2147483647i, -31684i, 1i)), u_input.a)), max(vec3<i32>(u_input.c, 0i, 66023i), abs(vec3<i32>(u_input.c, u_input.b, u_input.a))) ^ vec3<i32>(abs(u_input.c), 1i, 39720i)), u_input.d);
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-984f, -2499f, var_0.a.c.x) - vec3<f32>(var_0.b.c.x, var_0.b.c.x, -589f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.c.x, var_0.a.c.x, -675f), vec3<f32>(var_0.a.c.x, var_0.b.c.x, 925f), var_0.a.a))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.c.x, 367f, -714f))))) + vec3<f32>(-756f, _wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(519f * _wgslsmith_f_op_f32(var_0.b.c.x + var_0.b.c.x)))), var_0.b.a, Struct_1(!var_0.a.a, 11354u, var_0.b.c), var_1.c.yy);
    var var_3 = false;
    var var_4 = var_1.a.x;
    return ~(~(var_2.d & var_2.d));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, 927f, 210f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1695f, -1281f, 501f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1541f, -434f, 1186f), vec3<f32>(-1000f, -761f, -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1415f, -1000f, 1630f) * vec3<f32>(923f, 792f, -1772f))), all(vec2<bool>(false, true)) != all(vec2<bool>(true, true)))))), true, Struct_1(true, ~(~u_input.d), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1252f, -995f), _wgslsmith_f_op_vec2_f32(vec2<f32>(703f, 767f) + vec2<f32>(-607f, 1132f)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, 214f) + vec2<f32>(-219f, -494f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)))))), _wgslsmith_mult_vec2_u32(func_3(), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39265u), vec2<u32>(23364u, 67624u)) | firstLeadingBit(0u), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.d), u_input.d))));
    let var_1 = 0u;
    let var_2 = Struct_3(var_0.c, Struct_2(var_0.c, Struct_1(var_0.c.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.d, 40089u), vec3<u32>(30779u, var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x), var_0.c.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c.x, -1082f)))))), ~u_input.b, var_0.a.x, vec2<f32>(102f, _wgslsmith_f_op_f32(-500f * var_0.c.c.x)));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.c, _wgslsmith_mod_i32(-44672i, -1i >> (var_1 % 32u)) ^ ~(-38794i)), (vec2<i32>(_wgslsmith_sub_i32(u_input.b, -1i), _wgslsmith_mod_i32(1i, u_input.b)) | firstTrailingBit(~vec2<i32>(1i, u_input.b))) >> (vec2<u32>(1u, ~var_0.c.b) % vec2<u32>(32u)));
    var var_4 = -611f;
    return Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(74423i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, -30928i), vec2<i32>(u_input.b, var_3.x))), u_input.c) > 1i, ~firstTrailingBit(~firstLeadingBit(var_0.d.x)), var_0.c.c);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(min(select(vec4<i32>(-2147483647i, u_input.c, 46619i, 17202i), vec4<i32>(u_input.c, u_input.b, 7699i, u_input.a), arg_3.x), min(vec4<i32>(u_input.a, 57449i, -2147483647i, -2147483647i), vec4<i32>(9814i, 14362i, u_input.b, u_input.b))), -(~vec4<i32>(u_input.c, u_input.c, u_input.a, 1i))), select(firstTrailingBit(vec4<i32>(u_input.c, u_input.a, u_input.c, 41438i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.b, u_input.a) | vec4<i32>(u_input.b, 67653i, u_input.c, u_input.c), -vec4<i32>(-3809i, 13630i, -1i, u_input.c)), select(vec4<bool>(var_0.a, var_0.a, false, false), !vec4<bool>(false, false, true, var_0.a), true))), ~select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.a, u_input.b), vec4<i32>(u_input.c, -24764i, -1i, u_input.c)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.a, 78281i, u_input.c), vec4<i32>(-7012i, u_input.b, u_input.b, u_input.b)), ~(~vec4<i32>(-2147483647i, u_input.a, 1i, 49406i)), !vec4<bool>(arg_0, true, true, true)));
    var var_2 = abs(firstLeadingBit(vec2<i32>(1i, _wgslsmith_mult_i32(var_1.x, i32(-1i) * -1i))));
    var var_3 = Struct_3(var_0, Struct_2(func_2(), func_2()), 5338i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().c.x)), var_0.c);
    var var_4 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1547f)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(true, u_input.d, func_2(), vec2<bool>(true, true))), 155f, func_2().c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1724f + -465f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -min(-2147483647i, u_input.a), select(~1i, arg_0, any(vec4<bool>(false, false, true, true)))), u_input.b | arg_0, i32(-1i) * -2147483647i);
    var_1 = -58313i;
    var_1 = u_input.a;
    var_1 = reverseBits(firstLeadingBit(-22384i));
    return Struct_3(Struct_1(all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), ~115943u, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -162f), var_0.x)))), Struct_2(Struct_1(any(vec4<bool>(false, true, true, false)) & any(vec4<bool>(false, true, false, true)), u_input.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(var_0.zz))))), Struct_1(true, ~26067u & u_input.d, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(120f, 1125f), vec2<f32>(var_0.x, var_0.x))))))), _wgslsmith_mult_i32(u_input.c, arg_0 << (u_input.d % 32u)), var_0.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-329f, var_0.x))), vec2<f32>(var_0.x, -835f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-711f, var_0.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_i32(-1i, ~(-1i) | u_input.b));
    var var_1 = Struct_5(-reverseBits(max(vec2<i32>(u_input.b, u_input.a), vec2<i32>(10639i, 20633i))) & (vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, var_0.c), vec2<i32>(var_0.c, 1i), vec2<i32>(var_0.c, var_0.c))), vec2<i32>(_wgslsmith_div_i32(~u_input.b, i32(-1i) * -22534i), _wgslsmith_div_i32(-1i, i32(-1i) * -49532i)), vec3<u32>(~firstLeadingBit(func_1(var_0.c).a.b), abs(reverseBits(_wgslsmith_add_u32(4546u, u_input.d))), ~firstTrailingBit(56603u) & ~0u), vec3<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, var_0.c), vec3<i32>(u_input.c, 28755i, 26146i))), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_0.c, 19385i), vec2<i32>(func_1(2147483647i).c, ~u_input.c))), 47272u);
    var var_2 = vec3<u32>(~u_input.d, 21532u, u_input.d);
    let var_3 = reverseBits(vec4<i32>(var_0.c, abs(~1i), ~((u_input.c & var_1.a.x) & (var_0.c | 4807i)), abs(~select(2147483647i, 2147483647i, false))));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.e.x, var_0.d), var_0.e)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, -1827f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -428f, 993f))) - vec3<f32>(764f, var_4.x, var_4.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 1094f, var_4.x) + vec3<f32>(-416f, 1164f, var_0.a.c.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.x, -524f, var_0.e.x))), select(vec3<bool>(var_0.a.a, var_0.b.a.a, false), vec3<bool>(var_0.a.a, var_0.b.b.a, false), vec3<bool>(var_0.b.a.a, false, true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-484f, -244f, var_0.a.c.x) - vec3<f32>(2856f, var_4.x, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, var_0.b.b.c.x, var_4.x), vec3<f32>(var_0.e.x, var_4.x, var_0.e.x)))))), min(min(vec3<i32>(2147483647i, var_0.c, -2147483647i) >> (vec3<u32>(var_2.x, var_2.x, 87434u) % vec3<u32>(32u)), var_1.d & var_3.zxy) >> (~var_1.c % vec3<u32>(32u)), vec3<i32>(-abs(var_0.c), -u_input.a >> (41106u % 32u), countOneBits(-2147483647i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(857f - var_4.x) - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1744f - var_4.x)))));
}

