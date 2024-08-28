struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 53579u;

var<private> global1: i32;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> vec3<f32> {
    global2 = _wgslsmith_mult_i32(arg_1.a, u_input.e.x) << (1u % 32u);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.b, 943f) + vec2<f32>(arg_1.d.b, arg_1.d.b)))), _wgslsmith_div_vec2_f32(vec2<f32>(-174f, -232f), vec2<f32>(-1000f, 881f)), vec2<bool>(true, arg_1.b.x)))));
    global2 = u_input.d.x;
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), 176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b)))));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-537f, 227f))) + _wgslsmith_f_op_f32(max(-1434f, -855f))) - 1707f), abs(u_input.e.wzy), Struct_1(false));
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(-25012i, (i32(-1i) * -21419i) & firstTrailingBit(-22321i)), u_input.d.x), vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(abs(u_input.d.x), var_0.c.x)), 1i));
    let var_1 = 1i;
    let var_2 = Struct_4(-2147483647i, select(vec2<bool>(all(vec3<bool>(true, false, var_0.d.a)) & (0u < var_0.a.x), any(vec2<bool>(true, true))), !vec2<bool>(var_0.d.a, true), select(vec2<bool>(true, true), !select(vec2<bool>(var_0.d.a, true), vec2<bool>(var_0.d.a, true), vec2<bool>(var_0.d.a, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(69102u, u_input.a, u_input.b.x, 13615u), vec4<u32>(var_0.a.x, var_0.a.x, u_input.c, 1678u)) != firstLeadingBit(u_input.b.x))), vec2<bool>(var_0.d.a, var_0.d.a), Struct_2(_wgslsmith_div_vec4_u32(~select(vec4<u32>(var_0.a.x, u_input.a, 149976u, var_0.a.x), vec4<u32>(var_0.a.x, u_input.c, u_input.b.x, 0u), true), vec4<u32>(0u, ~0u, _wgslsmith_div_u32(4294967295u, 4294967295u), ~var_0.a.x)), 1000f, _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), ~var_0.c.x, 2147483647i), vec3<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-33279i, -19108i, -1i, 0i), vec4<i32>(u_input.d.x, u_input.e.x, 28082i, var_1)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1, u_input.d.x, var_0.c.x), u_input.e))), Struct_1(!(true || var_0.d.a))));
    let var_3 = Struct_4(~max(12150i, var_0.c.x), select(!(!(!vec2<bool>(var_2.d.d.a, true))), select(var_2.b, !vec2<bool>(var_0.d.a, var_2.b.x), !vec2<bool>(var_0.d.a, var_2.d.d.a)), !(!(!vec2<bool>(true, var_0.d.a)))), var_2.c, Struct_2(~countOneBits(u_input.b), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mod_u32(~0u, ~var_0.a.x), Struct_4(2147483647i, var_2.b, !var_2.c, Struct_2(vec4<u32>(var_0.a.x, 35752u, 11177u, u_input.a), 731f, vec3<i32>(1i, -2147483647i, -21496i), var_0.d)))).x, ~firstTrailingBit(vec3<i32>(2147483647i, u_input.e.x, 32229i)), var_2.d.d));
    return u_input.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> i32 {
    let var_0 = Struct_4(~arg_2.c.x, vec2<bool>(true, true), !(!vec2<bool>(arg_0.x < arg_0.x, arg_2.d.a || true)), Struct_2(vec4<u32>(_wgslsmith_mod_u32(arg_2.a.x, 7140u), func_3(), 44064u, ~(arg_2.a.x >> (1u % 32u))), arg_2.b, vec3<i32>(~abs(u_input.d.x), 1i, reverseBits(~2147483647i)), Struct_1(true)));
    global0 = var_0.d.a.x;
    global0 = _wgslsmith_mult_u32(65317u, u_input.c);
    global0 = ~(~_wgslsmith_add_u32(u_input.b.x, ~(~arg_2.a.x)));
    global2 = -60311i;
    return var_0.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_4 {
    global1 = 25120i;
    let var_0 = Struct_2(vec4<u32>(34030u, 15263u, ~(~(~u_input.c)), ~(0u ^ u_input.c) ^ reverseBits(u_input.b.x)), arg_0.x, _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, u_input.e.x, u_input.d.x | 1904i), firstTrailingBit(vec3<i32>(-1i, u_input.e.x, arg_1.x))) >> ((firstLeadingBit(u_input.b.wzy) << (vec3<u32>(_wgslsmith_div_u32(1u, 13156u), ~u_input.a, ~u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(!any(vec3<bool>(true, true, false))));
    global2 = _wgslsmith_div_i32(_wgslsmith_div_i32(-20225i, reverseBits(~(~u_input.d.x))), 47625i);
    global2 = min(u_input.d.x | arg_1.x, 3614i);
    return Struct_4(u_input.e.x, !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, var_0.d.a)), !vec2<bool>(var_0.d.a, var_0.d.a), select(vec2<bool>(true, var_0.d.a), vec2<bool>(true, var_0.d.a), var_0.d.a))), vec2<bool>(true, any(vec3<bool>(var_0.d.a, true, all(vec3<bool>(true, var_0.d.a, var_0.d.a))))), var_0);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global1 = _wgslsmith_mod_i32(arg_1.c.x, _wgslsmith_sub_i32(u_input.e.x, u_input.e.x)) & (1i | _wgslsmith_mult_i32(~_wgslsmith_add_i32(arg_1.c.x, 6693i), ~2147483647i));
    var var_0 = arg_0;
    global2 = -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(abs(u_input.e.yyy)), vec3<i32>(firstTrailingBit(arg_0.a), _wgslsmith_mult_i32(var_0.a, -2147483647i), -u_input.d.x)), var_0.d.c);
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, var_0.d.b, arg_1.b)), _wgslsmith_f_op_vec3_f32(min(arg_3.www, vec3<f32>(arg_1.b, var_0.d.b, -816f))))))), ~(~vec4<i32>(var_0.d.c.x, 0i, u_input.d.x, -1i)) >> (u_input.b % vec4<u32>(32u)));
    let var_2 = _wgslsmith_div_f32(arg_0.d.b, _wgslsmith_f_op_f32(max(-233f, 431f)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))));
    global1 = firstLeadingBit(abs(u_input.d.x));
    global1 = 1i;
    let var_1 = vec4<u32>(reverseBits(~u_input.b.x >> (u_input.c % 32u)), countOneBits(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(1u, u_input.b.x) >> (max(50112u, 58454u) % 32u))), func_5(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1228f, -1081f, 1135f))), _wgslsmith_f_op_vec3_f32(func_1(70808u, Struct_4(2147483647i, vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), Struct_2(vec4<u32>(12347u, 4294967295u, u_input.b.x, u_input.c), -954f, u_input.e.yzy, var_0))))), vec4<i32>(~(-1i), -1i >> (u_input.b.x % 32u), func_2(vec3<f32>(-233f, 1441f, 811f), var_0, Struct_2(vec4<u32>(u_input.a, 0u, u_input.b.x, u_input.c), -497f, vec3<i32>(u_input.e.x, -2985i, u_input.e.x), var_0), u_input.c), 1i)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-552f, 245f, -862f)))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.e.xyy, vec3<i32>(u_input.e.x, 1i, u_input.d.x)), -2147483647i, 32577i, abs(u_input.e.x))).d, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, 201f, -1153f) + vec3<f32>(1f, 1f, 1f)), -(vec4<i32>(-44158i, 2147483647i, 18667i, u_input.e.x) | u_input.e)).d.d, vec4<f32>(_wgslsmith_f_op_f32(trunc(-643f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 131f) - 222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f * 683f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2318f, -788f))))), ~_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(u_input.b.x, 83141u)) | firstLeadingBit(_wgslsmith_mult_u32(1u, 5371u)));
    global1 = -u_input.e.x;
    global0 = 66320u ^ countOneBits(var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~0i, abs(~var_1.x));
}

