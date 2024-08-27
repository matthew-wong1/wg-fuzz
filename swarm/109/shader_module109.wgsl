struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(0u, vec2<i32>(16286i, -1i));

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec2<u32>, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global0 = Struct_5(reverseBits(min(_wgslsmith_div_u32(global0.a, global0.a) << (~85036u % 32u), global0.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-1i), u_input.a >> (~global0.a % 32u)), ~abs(vec2<i32>(global0.b.x, u_input.a) | global0.b)));
    var var_0 = select(select(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), 14967u >= global0.a), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !(global0.a >= global0.a), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-751f, -1000f)) * _wgslsmith_div_f32(1391f, _wgslsmith_f_op_f32(trunc(-1075f)))) > -1290f);
    return min(u_input.a, global0.b.x) >> (85108u % 32u);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec4<u32> {
    global1 = func_3();
    var var_0 = Struct_1(-52673i, vec4<u32>(arg_1.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.b.b.x, arg_3.x), vec2<u32>(4294967295u, arg_3.x)), ~25941u, true), 4294967295u, 11292u) & vec4<u32>(arg_0.a.b.b.x, ~(~92457u), min(~1832u, 1u), 14791u >> (_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(4294967295u, 0u, arg_0.a.b.b.x)) % 32u)), 1i, vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.a.b.d, vec4<i32>(0i, _wgslsmith_mult_i32(u_input.a, u_input.a), 1i, u_input.a << (4294967295u % 32u))), -2147483647i, max(max(-1786i, global0.b.x), 9027i & u_input.a) << (21490u % 32u), arg_0.a.b.a), all(vec2<bool>(true, true)));
    global2 = array<vec2<u32>, 5>();
    let var_1 = _wgslsmith_f_op_f32(-1647f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)) + -1470f) + 1171f));
    global2 = array<vec2<u32>, 5>();
    return select(firstLeadingBit(vec4<u32>(~(~global0.a), 1u, abs(global0.a) >> (var_0.b.x % 32u), 0u >> (~var_0.b.x % 32u))), ~var_0.b, select(!vec4<bool>(!arg_0.a.b.e, all(vec3<bool>(arg_0.a.b.e, arg_0.a.b.e, true)), var_0.e, true || arg_0.a.b.e), !(!vec4<bool>(var_0.e, true, var_0.e, var_0.e)), !vec4<bool>(var_0.e, arg_0.a.a.x == 378f, true & var_0.e, !var_0.e)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = vec2<u32>(~(22273u | arg_0.b.x) << (~(~(~49750u)) % 32u), var_0.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(298f, 540f, -1000f, -201f), vec4<f32>(-1715f, -899f, 355f, 987f)))) - vec4<f32>(-1192f, _wgslsmith_f_op_f32(-2607f * -1000f), _wgslsmith_div_f32(-1176f, -872f), 867f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, -1472f, 446f, 1124f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-810f, 677f, -993f, -1000f) + vec4<f32>(1476f, 358f, -154f, 332f)))))));
    let var_3 = i32(-1i) * -48113i;
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-240f, var_2.x), var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_2.x, 240f)))), var_2.x) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), -925f, _wgslsmith_f_op_f32(-418f - 2339f), 886f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(2004f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -941f))), var_2.x, var_2.x))));
    return Struct_1(arg_0.d.x, vec4<u32>(~var_1.x, 1u, countOneBits(~_wgslsmith_sub_u32(global0.a, arg_0.b.x)), abs(16016u)), global0.b.x, min(~arg_0.d, _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(arg_0.d, vec4<i32>(var_0.c, 581i, -1510i, 32207i))), select(abs(vec4<i32>(var_3, 22335i, -30133i, u_input.a)), _wgslsmith_clamp_vec4_i32(var_0.d, vec4<i32>(-11280i, 2147483647i, 0i, var_3), var_0.d), select(vec4<bool>(arg_0.e, true, false, arg_0.e), vec4<bool>(var_0.e, true, arg_0.e, arg_2.x), vec4<bool>(arg_0.e, arg_0.e, false, var_0.e))))), arg_0.e);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global2 = array<vec2<u32>, 5>();
    let var_0 = max(~(-2147483647i), u_input.a) | -(~(-1i));
    global2 = array<vec2<u32>, 5>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_f_op_f32(1031f + -142f)) * _wgslsmith_f_op_f32(abs(1552f)))), func_4(Struct_1(_wgslsmith_mod_i32(-1i, -1i << (0u % 32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, global0.a, global0.a, global0.a), vec4<u32>(global0.a, global0.a, global0.a, 1u)) | func_2(Struct_4(Struct_2(vec3<f32>(-1000f, 858f, 385f), Struct_1(17923i, vec4<u32>(80647u, global0.a, 1u, global0.a), -2147483647i, vec4<i32>(54565i, var_0, -34166i, 1i), true))), vec3<u32>(55512u, 0u, global0.a), vec3<u32>(global0.a, 16175u, 4294967295u), vec2<u32>(global0.a, 22674u)), _wgslsmith_sub_i32(-1i, 1i), ~vec4<i32>(-5467i, -2147483647i, 2147483647i, -2147483647i), true), global0.a, !vec3<bool>(global0.a < 4294967295u, true, true)));
    let var_2 = all(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(-938f + var_1.a)) > -649f, all(!select(vec2<bool>(var_1.b.e, var_1.b.e), vec2<bool>(var_1.b.e, var_1.b.e), vec2<bool>(false, false))), select((var_1.b.a != 1i) == select(var_1.b.e, false, true), any(!vec4<bool>(var_1.b.e, true, true, var_1.b.e)), !(!var_1.b.e)), false));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(1u, countOneBits(vec2<i32>(global0.b.x >> (global0.a % 32u), 2147483647i) & min(global0.b, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, global0.b.x), global0.b))));
    global0 = Struct_5(4102u, firstLeadingBit(global0.b));
    let var_0 = _wgslsmith_f_op_f32(max(-1001f, _wgslsmith_f_op_f32(max(-1134f, -687f))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<i32>(_wgslsmith_mod_i32(~(-33866i), -2147483647i), firstLeadingBit(u_input.a) ^ global0.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, var_0), _wgslsmith_f_op_f32(-var_0))));
    global2 = array<vec2<u32>, 5>();
    global1 = global0.b.x;
    let var_2 = var_1.x <= var_0;
    let var_3 = ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(min(vec3<u32>(4294967295u, global0.a, 0u), vec3<u32>(35218u, 0u, global0.a))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, global0.a, 41457u), vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(0u, global0.a, 22201u))), global0.a & global0.a), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~func_4(Struct_1(u_input.a, vec4<u32>(var_3.x, 78961u, 1u, global0.a), global0.b.x, vec4<i32>(53262i, 14421i, u_input.a, -2147483647i), true), 34525u, vec3<bool>(true, var_2, var_2)).b.x), _wgslsmith_div_u32(4294967295u, ~select(0u, var_3.x, var_2)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, var_3.x, var_3.x, 0u) << (vec4<u32>(1u, 1u, 68651u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(max(37377u, 18106u), var_3.x, global0.a, _wgslsmith_mult_u32(1u, global0.a))), ~0u));
}

