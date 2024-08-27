struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-1227f, 0u), Struct_1(-1234f, 32135u), Struct_1(705f, 31422u), Struct_1(103f, 88489u), Struct_1(731f, 0u), Struct_1(-1065f, 4294967295u), Struct_1(634f, 0u), Struct_1(-517f, 1u), Struct_1(-1000f, 39994u), Struct_1(525f, 4294967295u), Struct_1(-612f, 18933u), Struct_1(-737f, 4294967295u));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-228f, 4294967295u), Struct_1(-446f, 4294967295u), Struct_1(1130f, 72475u), Struct_1(-435f, 4294967295u), Struct_1(-498f, 1u), Struct_1(-170f, 55064u), Struct_1(729f, 67143u), Struct_1(-896f, 2131u), Struct_1(1000f, 1u), Struct_1(-1203f, 52757u), Struct_1(235f, 1u), Struct_1(-281f, 12310u), Struct_1(-473f, 7265u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    global1 = array<Struct_1, 13>();
    let var_0 = any(!vec2<bool>(any(select(vec2<bool>(true, arg_0.x), arg_0.zy, arg_0.x)), any(arg_0) || true));
    var var_1 = -2147483647i;
    let var_2 = arg_0.wyw;
    let var_3 = false;
    return vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(38089u, 48744u, 4294967295u))), ~vec3<u32>(countOneBits(u_input.c), u_input.c, 16899u)));
}

fn func_2() -> u32 {
    var var_0 = (countOneBits(vec4<i32>(~u_input.a, u_input.b, -1i, u_input.b)) | firstLeadingBit(abs(vec4<i32>(u_input.a, -1i, -1i, u_input.a)))) & ~(~(-vec4<i32>(-20993i, u_input.b, -2147483647i, u_input.a)) >> (firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 68364u, 3194u) >> (vec4<u32>(17445u, u_input.c, 4294967295u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_add_vec2_u32(~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 34976u), vec2<u32>(u_input.c, 15708u)))), (~func_3(vec4<bool>(true, true, false, true)) & (~vec2<u32>(1u, u_input.c) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 16843u), vec2<u32>(u_input.c, 21687u)) % vec2<u32>(32u)))) | abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, u_input.c), select(vec2<u32>(u_input.c, 1u), vec2<u32>(4294967295u, 63069u), vec2<bool>(false, true)), ~vec2<u32>(1u, 4294967295u))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(33657u, _wgslsmith_add_u32(~63353u, u_input.c), ~35663u), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4467u, u_input.c, 4294967295u)) >> (vec3<u32>(1u, var_1.x, 4294967295u) % vec3<u32>(32u)))), ~firstTrailingBit(vec3<u32>(0u, u_input.c, 34456u) & select(vec3<u32>(u_input.c, u_input.c, var_1.x), vec3<u32>(u_input.c, u_input.c, 1u), false))), 12u)];
    global1 = array<Struct_1, 13>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - _wgslsmith_div_f32(-1472f, _wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_dot_vec2_u32(var_1, vec2<u32>(48813u, ~(var_1.x << (var_2.b % 32u)))));
    return 3839u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 12>();
    global1 = array<Struct_1, 13>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 521f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-291f, arg_0.a, arg_0.a), vec3<f32>(arg_0.a, 1243f, arg_0.a)))))));
    return Struct_1(_wgslsmith_f_op_f32(floor(var_0.x)), ~func_2());
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_3.a * -1000f);
    var var_1 = ~_wgslsmith_sub_vec4_u32(min((vec4<u32>(arg_3.b, 0u, 15766u, u_input.c) | vec4<u32>(arg_1, arg_0.b, 42619u, 0u)) >> (reverseBits(vec4<u32>(arg_3.b, 228u, u_input.c, arg_1)) % vec4<u32>(32u)), ~select(vec4<u32>(u_input.c, 8518u, 4294967295u, 0u), vec4<u32>(arg_1, arg_0.b, arg_3.b, u_input.c), vec4<bool>(false, true, false, true))), vec4<u32>(countOneBits(abs(49843u)), func_2(), arg_0.b, ~func_3(vec4<bool>(true, false, false, false)).x));
    let var_2 = Struct_1(-787f, ~(func_2() >> (firstTrailingBit(countOneBits(1u)) % 32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_div_u32(u_input.c, 27159u) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4980u, 27809u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.b, 4294967295u, 4268u, 17513u), vec4<u32>(var_2.b, 0u, 1u, 21033u))) % 32u));
    var_1 = ~vec4<u32>(18291u, ~1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.c, 1u), 1u << (func_2() % 32u), u_input.c), var_1.x);
    return Struct_1(416f, countOneBits(_wgslsmith_clamp_u32(~min(20223u, 1u), var_2.b, u_input.c)));
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = 0i & u_input.b;
    var var_1 = Struct_1(-429f, _wgslsmith_sub_u32(firstTrailingBit(abs(4294967295u)), u_input.c) & (arg_0.b << (~37461u % 32u)));
    var var_2 = global1[_wgslsmith_index_u32(func_4(func_1(arg_0, vec4<bool>(true, true, true, true)), ~u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-arg_0.a))) - -173f), func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), firstTrailingBit(74620u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))))).b, 13u)];
    let var_3 = global0[_wgslsmith_index_u32(~(~(~(~u_input.c))), 12u)];
    let var_4 = func_1(global0[_wgslsmith_index_u32(firstLeadingBit(59978u >> (firstLeadingBit(u_input.c) % 32u)), 12u)], vec4<bool>(true, false, true, reverseBits(u_input.a & 0i) != (-u_input.a >> (0u % 32u))));
    return _wgslsmith_f_op_f32(f32(-1f) * -565f);
}

fn func_6(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = max(reverseBits(u_input.c), reverseBits(u_input.c)) | _wgslsmith_clamp_u32((firstLeadingBit(u_input.c) ^ 0u) >> (min(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), vec4<u32>(1u, 63953u, u_input.c, 17301u))) % 32u), 35034u, u_input.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_5(func_4(func_4(global1[_wgslsmith_index_u32(max(u_input.c, u_input.c), 13u)], 0u, 788f, Struct_1(arg_1, 62436u)), 1u, arg_1, Struct_1(arg_1, 49187u >> (0u % 32u))))), u_input.c);
    let var_2 = all(!vec3<bool>(select(select(arg_0, arg_0, arg_0), false, all(vec4<bool>(arg_0, arg_0, false, true))), _wgslsmith_f_op_f32(-var_1.a) == _wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(var_1.a * 147f) == _wgslsmith_f_op_f32(-var_1.a)));
    let var_3 = 13437i;
    global1 = array<Struct_1, 13>();
    return Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), func_1(func_1(Struct_1(241f, var_1.b), !(!vec4<bool>(arg_0, false, var_2, var_2))), select(vec4<bool>(true, 1000f <= arg_1, arg_0 || arg_0, arg_1 > -970f), vec4<bool>(var_1.a >= 1000f, false, any(vec2<bool>(true, arg_0)), arg_0), !(!vec4<bool>(arg_0, true, true, arg_0)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(true, _wgslsmith_f_op_f32(func_5(func_4(func_1(global0[_wgslsmith_index_u32(abs(54645u), 12u)], vec4<bool>(true, true, true, false)), func_2(), -420f, Struct_1(_wgslsmith_f_op_f32(trunc(823f)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(12195u, 1u)))))));
    global1 = array<Struct_1, 13>();
    let var_1 = 53563u;
    global0 = array<Struct_1, 12>();
    var var_2 = 14119i;
    var_2 = abs(select(i32(-1i) * -2147483647i, firstLeadingBit(-(-1i << (u_input.c % 32u))), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))));
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(reverseBits(var_0.b) ^ func_6(any(vec4<bool>(false, false, false, true)), 276f).b, _wgslsmith_mult_u32(var_0.b, _wgslsmith_div_u32(~u_input.c, ~var_0.b))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 1i, u_input.b)), -vec3<i32>(2147483647i, 8732i, u_input.a)));
}

