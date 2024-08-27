struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22>;

var<private> global1: f32;

var<private> global2: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(Struct_1((firstTrailingBit(vec4<i32>(u_input.d, u_input.d, 1i, -14534i)) | _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -18068i, u_input.b), vec4<i32>(34565i, u_input.b, -22525i, 33671i))) | ~(vec4<i32>(u_input.d, u_input.d, u_input.d, 2147483647i) | vec4<i32>(u_input.b, -32273i, u_input.d, u_input.b)), ~u_input.e.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.e.x & u_input.c.x) << (~(32141u >> (u_input.c.x % 32u)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f) - _wgslsmith_f_op_f32(-127f - -586f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(529f, -181f))), u_input.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-188f, 140f, 2245f, 842f))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_0.b.yxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.b.x, var_0.a.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1145f, var_0.a.d.x, var_0.a.d.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.d.x, var_0.a.d.x)) * -163f), var_0.a.d.x, -2134f)));
    global1 = -1872f;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-228f, var_1.x)) + -2099f), 1238f);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.x + -645f) + -1000f) + -654f), var_2.x, -183f));
    return vec4<i32>(u_input.d, var_0.a.a.x, 1i, var_0.a.a.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> vec4<i32> {
    var var_0 = func_3() << (max(~max(~vec4<u32>(7912u, u_input.c.x, 49558u, 9187u), max(vec4<u32>(87001u, u_input.c.x, u_input.c.x, u_input.e.x), vec4<u32>(26882u, u_input.a.x, u_input.c.x, u_input.a.x))), ~(~select(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(7251u, u_input.e.x, 4294967295u, 4294967295u), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)))) % vec4<u32>(32u));
    let var_1 = select(false | all(vec2<bool>(arg_0.x, true)), arg_0.x, select(any(vec4<bool>(!arg_0.x, true, !arg_0.x, false)), arg_0.x, arg_0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1016f, -1489f, -184f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(645f, 538f, arg_1), vec3<f32>(-422f, 466f, arg_1))), vec3<bool>(var_1, false, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))))));
    global2 = arg_1;
    let var_3 = Struct_2(Struct_1(vec4<i32>(min(~u_input.d, select(2147483647i, var_0.x, true)), _wgslsmith_mod_i32(40939i, -9369i) << ((u_input.c.x & u_input.e.x) % 32u), -1i, -(~u_input.d)), u_input.e.x | ~(~u_input.e.x), 4294967295u, var_2.yy, ~_wgslsmith_sub_vec2_u32(u_input.e, vec2<u32>(16590u, 38491u)) | ~countOneBits(vec2<u32>(u_input.e.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1211f, -863f, var_2.x, arg_1))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, arg_1, 1000f, var_2.x))))));
    return select(vec4<i32>(var_0.x, -_wgslsmith_mult_i32(-var_0.x, -22072i), -(-u_input.b | max(var_3.a.a.x, var_3.a.a.x)), _wgslsmith_div_i32(var_0.x, reverseBits(var_3.a.a.x) | u_input.d)), ~(~select(~var_3.a.a, select(var_3.a.a, var_3.a.a, true), select(vec4<bool>(true, var_1, false, true), vec4<bool>(var_1, true, arg_0.x, arg_0.x), arg_0.x))), all(select(arg_0, global0[_wgslsmith_index_u32(18988u, 22u)], true)));
}

fn func_1() -> Struct_3 {
    var var_0 = firstLeadingBit(reverseBits(~(vec4<i32>(2147483647i, u_input.d, 55158i, u_input.d) >> (vec4<u32>(u_input.a.x, 71369u, 4294967295u, 1051u) % vec4<u32>(32u)))) >> (_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 92429u, u_input.a.x, 0u), vec4<u32>(4294967295u, 0u, 8990u, u_input.a.x)), vec4<u32>(109345u, 4294967295u, ~u_input.a.x, u_input.e.x)) % vec4<u32>(32u)));
    var_0 = abs(func_2(!vec3<bool>(false, true, any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1639f))))));
    let var_1 = ~max(select(vec4<u32>(17290u, u_input.a.x, u_input.e.x, 4294967295u) ^ ~vec4<u32>(50366u, u_input.c.x, 79954u, u_input.a.x), vec4<u32>(34665u, countOneBits(u_input.a.x), u_input.a.x, firstTrailingBit(1u)), false), ~vec4<u32>(24562u, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(41841u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.e.x, u_input.c.x)), ~u_input.e.x));
    var var_2 = var_0.zyw;
    var var_3 = Struct_1(vec4<i32>(firstTrailingBit(1i), _wgslsmith_div_i32(~var_2.x, var_2.x), _wgslsmith_clamp_i32(u_input.d, min(var_2.x, -9366i), -5573i), var_0.x) << (firstLeadingBit(var_1) % vec4<u32>(32u)), reverseBits(_wgslsmith_mult_u32(~10279u, max(27068u, u_input.a.x))), u_input.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(291f, _wgslsmith_div_f32(-554f, 970f)), vec2<f32>(-1580f, _wgslsmith_f_op_f32(-777f * -1554f)), !(-2147483647i > var_2.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-403f, _wgslsmith_f_op_f32(-1160f - 986f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1242f, -418f)))), vec2<bool>(true, true))))), u_input.a);
    return Struct_3(vec2<f32>(var_3.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))))), true, Struct_1(firstTrailingBit(min(vec4<i32>(1i, var_3.a.x, -2147483647i, var_0.x), var_3.a) ^ _wgslsmith_mod_vec4_i32(var_3.a, vec4<i32>(2147483647i, var_3.a.x, var_2.x, 2147483647i))), ~(~var_1.x | 24543u), 42081u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.d, vec2<f32>(-566f, 1266f), vec2<bool>(false, false)))))), min(select(vec2<u32>(u_input.e.x, u_input.e.x), var_3.e, vec2<bool>(false, true)) & ~var_3.e, vec2<u32>(firstLeadingBit(var_3.b), abs(62646u)))), _wgslsmith_f_op_f32(abs(var_3.d.x)), Struct_1(-firstTrailingBit(vec4<i32>(var_3.a.x, 32600i, var_2.x, var_2.x)), _wgslsmith_sub_u32(~1u, u_input.a.x), var_3.e.x, var_3.d, abs(vec2<u32>(var_3.b, u_input.a.x & var_3.b))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    global0 = array<vec3<bool>, 22>();
    let var_0 = arg_0.b;
    var var_1 = Struct_1(vec4<i32>(countOneBits(-abs(arg_0.e.a.x)), -abs(50934i << (arg_2.c % 32u)), -1i, u_input.b), firstTrailingBit(4294967295u), (22740u | arg_2.e.x) << (_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(15804u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4390u, 10994u, arg_2.c, 1u), vec4<u32>(1u, arg_2.b, arg_0.c.e.x, u_input.e.x))), ~19628u >> (arg_2.c % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_2.d, _wgslsmith_f_op_vec2_f32(round(arg_1.yx)), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), 519f)), select(vec2<bool>(false, !var_0), vec2<bool>(var_0, arg_0.d > 377f), !var_0))), vec2<u32>(select(_wgslsmith_sub_u32(arg_0.e.c, _wgslsmith_dot_vec3_u32(vec3<u32>(20622u, 1u, arg_0.c.c), vec3<u32>(38028u, arg_0.e.b, arg_0.e.c))), func_1().e.b | arg_0.e.e.x, var_0), ~abs(reverseBits(arg_2.c))));
    let var_2 = Struct_2(arg_2, arg_1);
    let var_3 = false;
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_1(), vec4<f32>(1f, 1f, 1f, 1f), Struct_1(_wgslsmith_mult_vec4_i32(~(vec4<i32>(-1i, u_input.b, u_input.d, u_input.d) ^ vec4<i32>(25466i, u_input.b, u_input.b, -14381i)), _wgslsmith_div_vec4_i32(vec4<i32>(8385i, u_input.d, u_input.b, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(-47681i, 1i, -1i, u_input.b), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)))), u_input.a.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 38007u, 1u), vec3<u32>(18388u, 1u, 443u)), ~1u), vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(183f - 1157f), -660f))), u_input.e)));
    var var_1 = firstTrailingBit(4294967295u);
    var var_2 = Struct_2(Struct_1(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(u_input.b, u_input.d)), u_input.b, -4504i, u_input.b), abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, u_input.c.x), _wgslsmith_mod_u32(4294967295u, 15257u), _wgslsmith_sub_u32(u_input.a.x, u_input.e.x))), ~(~(0u | u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(325f, func_1().a.x) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1318f, -714f), vec2<f32>(1966f, -1000f))), func_1().a))), ~abs(u_input.e ^ u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1849f, -815f, 1109f, -855f) + vec4<f32>(1312f, -987f, -1400f, -1090f)), vec4<f32>(-1000f, 162f, -253f, -1657f))))));
    global0 = array<vec3<bool>, 22>();
    var var_3 = vec2<f32>(var_2.a.d.x, 910f);
    var_3 = func_1().a;
    let var_4 = ~(~firstLeadingBit((u_input.e & vec2<u32>(51878u, 3215u)) ^ u_input.a));
    let var_5 = vec2<u32>(var_2.a.e.x, firstLeadingBit(var_2.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(1u, min(var_2.a.a.zyz, var_2.a.a.yxw << (_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.c.x, 4294967295u, var_2.a.b), vec3<u32>(66709u, var_5.x, 1u)), vec3<u32>(var_2.a.b, 0u, 81402u)) % vec3<u32>(32u))), ~select(vec4<u32>(1u, 33499u, var_5.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, 0u, 25834u, 4294967295u), vec4<u32>(var_4.x, 1u, 49138u, 1u)), true) | (((vec4<u32>(var_4.x, var_4.x, 4294967295u, 13724u) | vec4<u32>(59328u, var_5.x, u_input.a.x, var_4.x)) >> (~vec4<u32>(19514u, var_5.x, var_2.a.c, var_5.x) % vec4<u32>(32u))) ^ select(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.e.x, var_4.x, var_5.x, 73343u), vec4<u32>(u_input.c.x, 59442u, u_input.a.x, 27582u)), ~vec4<u32>(0u, u_input.e.x, 4294967295u, 1u), vec4<bool>(true, true, true, true))));
}

