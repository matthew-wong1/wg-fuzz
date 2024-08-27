struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<f32>(1182f, -1000f, 909f), vec2<u32>(12030u, 4294967295u)), Struct_1(vec3<f32>(1045f, -1606f, -790f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<f32>(-1983f, 199f, 375f), vec2<u32>(1u, 1u)), Struct_1(vec3<f32>(269f, -757f, 478f), vec2<u32>(53187u, 32271u)), Struct_1(vec3<f32>(-761f, 1000f, 996f), vec2<u32>(17572u, 29319u)), Struct_1(vec3<f32>(385f, -691f, -750f), vec2<u32>(4294967295u, 91470u)), Struct_1(vec3<f32>(-804f, -1387f, -498f), vec2<u32>(9126u, 48335u)), Struct_1(vec3<f32>(-1226f, 1013f, 961f), vec2<u32>(60180u, 122487u)), Struct_1(vec3<f32>(1214f, -1619f, 1042f), vec2<u32>(27551u, 35390u)), Struct_1(vec3<f32>(1056f, 644f, 667f), vec2<u32>(46501u, 0u)), Struct_1(vec3<f32>(-172f, -1107f, -1081f), vec2<u32>(10082u, 0u)), Struct_1(vec3<f32>(453f, -504f, 2925f), vec2<u32>(24378u, 34111u)), Struct_1(vec3<f32>(-1853f, 755f, 911f), vec2<u32>(89344u, 23667u)), Struct_1(vec3<f32>(918f, -455f, -1307f), vec2<u32>(60598u, 0u)), Struct_1(vec3<f32>(-1176f, -1893f, -373f), vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(359f, 1000f, -368f), vec2<u32>(38312u, 100900u)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_3(reverseBits(u_input.c.x) ^ ~firstTrailingBit(24431u), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -arg_2.b, vec2<i32>(2147483647i << (~arg_2.a % 32u), i32(-1i) * -arg_2.b.x)), _wgslsmith_f_op_f32(round(-1000f)), ~_wgslsmith_sub_u32(30887u, _wgslsmith_mod_u32(91709u, min(u_input.c.x, 0u))));
    var var_1 = arg_2;
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(72823u, var_0.a, u_input.c.x, 1023u)), firstTrailingBit(vec4<u32>(~49320u, abs(arg_2.d), ~var_1.d, var_0.a & u_input.c.x))), 16u)];
    var_1 = Struct_3(34615u, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 21100i, arg_2.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 18084i, var_1.b.x), vec3<i32>(var_1.b.x, var_0.b.x, 2147483647i))), abs(var_1.b.x) >> (69541u % 32u)), ~u_input.b), -1000f, _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(~25379u, 0u)), _wgslsmith_clamp_u32(arg_2.d, countOneBits(firstTrailingBit(var_0.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(34934u, u_input.c.x), ~vec2<u32>(4294967295u, 0u)))));
    var_0 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f - arg_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(616f))))) * arg_0) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1079f + 108f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c)) + _wgslsmith_f_op_f32(f32(-1f) * -450f))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> vec3<bool> {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1095f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -434f, -619f, 372f))) + vec4<f32>(591f, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) + _wgslsmith_div_f32(arg_0.c, 1000f)), _wgslsmith_f_op_f32(floor(arg_2)))), arg_0));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, arg_2))))))) * -658f);
    var var_1 = Struct_2(762f, 1u, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    return !var_1.c;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 16>();
    let var_0 = ~u_input.c.x;
    var var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !func_2(Struct_3(u_input.c.x, vec2<i32>(1i, -2147483647i), 406f, var_0), u_input.c.xx, -1165f)), select(select(func_2(Struct_3(17534u, vec2<i32>(-1i, -48716i), 429f, 57491u), u_input.c.zx, -1682f), func_2(Struct_3(11039u, vec2<i32>(u_input.a, u_input.d), -1000f, 7157u), u_input.c.zx, 104f), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), vec3<bool>(any(vec3<bool>(true, true, true)), true, var_0 <= var_0), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec3<bool>(true, select(false, true, true) && true, 23313u >= _wgslsmith_div_u32(36204u, u_input.c.x)));
    var_1 = !(!(!(!select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), true))));
    global0 = array<Struct_1, 16>();
    return Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(434f, 1983f, 477f, 993f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(506f, -187f, 253f, 194f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(901f, 639f, -1234f, 1329f)))), Struct_3(_wgslsmith_clamp_u32(36425u, 31494u, 1u) & 4294967295u, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.d, 1i)), -u_input.b), -1000f, 37927u))), u_input.c.x, vec3<bool>(var_1.x, any(vec3<bool>(false, false, true)), !(_wgslsmith_f_op_f32(sign(158f)) <= _wgslsmith_f_op_f32(max(1502f, -1769f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = func_1();
    var_0 = func_1();
    global0 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a - -531f), func_1().a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = !vec3<bool>(true && all(vec4<bool>(true, true, true, true)), false, any(vec4<bool>(u_input.c.x <= u_input.c.x, true, true, false)));
    global0 = array<Struct_1, 16>();
    let var_1 = ~abs(~firstLeadingBit(vec3<u32>(22816u, u_input.c.x, 29096u))) ^ firstTrailingBit(u_input.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-888f)), _wgslsmith_f_op_f32(func_4(select(vec3<i32>(2147483647i, u_input.a, u_input.b.x) ^ vec3<i32>(-14040i, -3249i, 0i), -vec3<i32>(2147483647i, u_input.b.x, u_input.a), !var_0.x), func_1(), Struct_2(_wgslsmith_f_op_f32(select(1282f, -109f, var_0.x)), ~1u, vec3<bool>(false, var_0.x, false)))), -1551f) * vec3<f32>(565f, 645f, -1012f));
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(u_input.a, reverseBits(u_input.b.x)), ~_wgslsmith_mult_u32(16823u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, var_1.x, var_1.x, 0u), ~vec4<u32>(var_1.x, 25028u, u_input.c.x, u_input.c.x))), -359f, -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 2557i) >> (vec4<u32>(53172u, u_input.c.x, u_input.c.x, 4477u) % vec4<u32>(32u)), ~vec4<i32>(23053i, u_input.d, -1i, u_input.b.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.d, u_input.a, 2147483647i, 2147483647i)), vec4<i32>(-38448i, u_input.a, u_input.b.x, u_input.b.x))));
}

