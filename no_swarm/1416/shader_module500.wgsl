struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(504f, 343f, -303f, 1065f, 214f, -1000f, -1107f, 2487f, 1479f, -1310f, -145f, -503f, 213f, -628f, 1000f, 863f, 804f, 756f, 988f, -1145f, -281f, 445f, 198f, -655f, 1176f, 1512f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    return Struct_2(reverseBits(max(_wgslsmith_mod_i32(min(-20418i, -31979i), -31594i), arg_2.x)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_5(any(arg_2) || (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1122f, global0[_wgslsmith_index_u32(9142u, 26u)])) != _wgslsmith_f_op_f32(-arg_1.b)), vec4<u32>(~35092u, 0u, min(_wgslsmith_clamp_u32(0u, 0u, 73255u), firstLeadingBit(20505u)), ~(~5573u)) | vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(11954u, 21442u, 1u, 0u), vec4<u32>(64482u, 46109u, 1u, 82564u)), ~vec4<u32>(4294967295u, 23370u, 0u, 1775u)), 32891u, 1u, firstLeadingBit(21114u)), select(_wgslsmith_div_vec2_u32(abs(firstLeadingBit(vec2<u32>(4294967295u, 40782u))), vec2<u32>(1u, ~69261u)), vec2<u32>(1u, 1u), select(select(arg_2.yy, select(vec2<bool>(arg_2.x, false), vec2<bool>(true, false), true), arg_0), select(vec2<bool>(arg_2.x, true), vec2<bool>(false, true), arg_0), arg_0)));
    var var_1 = _wgslsmith_mult_u32(~(var_0.c.x >> (select(countOneBits(var_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.b.x, 0u, 3435u), vec4<u32>(1u, var_0.c.x, 6946u, 0u)), true) % 32u)), 1u);
    var var_2 = Struct_4(arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-442f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(19747u, 26u)], global0[_wgslsmith_index_u32(114178u, 26u)])) + -681f)))), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 26u)]);
    global0 = array<f32, 26>();
    let var_3 = var_2.a;
    return var_0.b;
}

fn func_1() -> vec4<u32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(89933u, 26u)] + _wgslsmith_f_op_f32(step(711f, -289f)))))), global0[_wgslsmith_index_u32(~min(1u, 4294967295u), 26u)], -(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -47854i, 3542i), vec4<i32>(31891i, u_input.c.x, u_input.a, 2147483647i))));
    let var_1 = Struct_5(!((i32(-1i) * -2147483647i) == u_input.a) && false, ~max(~vec4<u32>(1u, 4294967295u, 0u, 61729u), func_3(false, Struct_4(Struct_2(1i), -744f, global0[_wgslsmith_index_u32(8036u, 26u)]), vec3<bool>(false, false, false))) << (reverseBits(reverseBits(firstLeadingBit(vec4<u32>(1u, 4294967295u, 0u, 1u)))) % vec4<u32>(32u)), firstLeadingBit(vec2<u32>(0u, ~(~4294967295u))));
    var_0 = Struct_2(~abs(var_0.a));
    let var_2 = -731f;
    var_0 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-204f, global0[_wgslsmith_index_u32(~var_1.b.x, 26u)], 0u != var_1.b.x)) * 1341f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.b.x, 26u)]), global0[_wgslsmith_index_u32(4294967295u, 26u)], all(!(!vec4<bool>(var_1.a, true, var_1.a, var_1.a))))), ~u_input.d);
    return ~_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.b.x, var_1.b.x, 1u, var_1.c.x), select(var_1.b, max(var_1.b, var_1.b), select(var_1.a, var_1.a, var_1.a))) & var_1.b;
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> f32 {
    var var_0 = ~vec2<i32>(reverseBits(abs(u_input.a)), _wgslsmith_mod_i32(abs(u_input.b), _wgslsmith_add_i32(~32040i, -5044i)));
    global0 = array<f32, 26>();
    var var_1 = vec2<i32>(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a & 0i, -2147483647i, max(-27715i, -2147483647i)), u_input.c.yyz), (u_input.a & -1i) >> (func_1().x % 32u), _wgslsmith_div_i32(func_2(768f, global0[_wgslsmith_index_u32(arg_1.b.x, 26u)], vec4<i32>(var_0.x, var_0.x, 19299i, var_0.x)).a | ~(-1i), ~(i32(-1i) * -2147483647i))));
    let var_2 = vec3<u32>(~arg_1.b.x, 62929u, ~_wgslsmith_mult_u32(11729u, min(arg_1.b.x, arg_1.c.x)) >> (~4940u % 32u));
    var var_3 = vec2<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(((0i & var_1.x) | -u_input.b) >> (46829u % 32u), _wgslsmith_clamp_i32(firstLeadingBit(var_1.x >> (var_2.x % 32u)), 16700i, _wgslsmith_add_i32(1i, -var_0.x))));
    return global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.c.x, 0u), 26u)];
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> vec3<bool> {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = 52559u;
    return vec3<bool>(true, any(vec4<bool>(abs(var_0) <= reverseBits(var_0), arg_0.x, false, any(vec3<bool>(true, arg_0.x, arg_0.x)))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.d, 46838u, vec3<bool>(true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))) && true), 19295u, func_5(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, false, false)), vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, select(false, false, true))), _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(1u, 26u)], Struct_5(true, func_1(), firstTrailingBit(vec2<u32>(71355u, 20753u))))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, countOneBits(30497u)), 26u)]));
    global0 = array<f32, 26>();
    let var_1 = vec4<bool>(!((select(var_0.a.x, var_0.a.x, var_0.c.x) >> (~1u % 32u)) <= ((var_0.a.x & var_0.a.x) >> (4294967295u % 32u))), false, true, !(!var_0.c.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-325f, global0[_wgslsmith_index_u32(~1132u ^ func_1().x, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1798f * 2271f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3003f, global0[_wgslsmith_index_u32(var_0.d, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)])))))))));
    var var_3 = vec4<f32>(1f, 426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d, 26u)])), -1318f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(474f, 789f)))) + 1000f));
    var var_4 = vec2<u32>(_wgslsmith_mult_u32(var_0.b, _wgslsmith_mult_u32(func_3(true, Struct_4(Struct_2(u_input.a), var_3.x, -2118f), vec3<bool>(var_0.c.x, var_1.x, var_0.e.x)).x, var_0.d ^ 58348u)) >> (var_0.d % 32u), 4294967295u);
    let var_5 = vec3<i32>(u_input.c.x, -_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(-var_0.a.x, u_input.b)), -_wgslsmith_mod_i32(0i, u_input.e & _wgslsmith_sub_i32(23750i, -40185i)));
    var var_6 = -var_5.x;
    var var_7 = Struct_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_4.x), 26u)], _wgslsmith_f_op_f32(-var_2.x), vec4<i32>(u_input.c.x, u_input.c.x, var_5.x, -26292i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.d, 26u)] + _wgslsmith_f_op_f32(-713f - -736f))), var_2.x), _wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(select(3628u, var_0.b, var_1.x), 1u), ~vec2<u32>(3497u, 19638u) & func_1().ww) << (max(vec2<u32>(var_4.x | 1u, ~39399u), func_1().zw) % vec2<u32>(32u)));
}

