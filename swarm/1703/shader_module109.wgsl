struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_3(false, vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), Struct_1(18980u, 1u, vec4<f32>(-698f, 582f, -233f, -1837f), vec3<u32>(0u, 7253u, 0u), false)), vec3<f32>(699f, -620f, 573f), 12575i, 345f, vec4<u32>(44891u, 1u, 9117u, 1u)), Struct_4(Struct_3(true, vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), Struct_1(15497u, 34565u, vec4<f32>(-900f, 323f, -1000f, -219f), vec3<u32>(4294967295u, 78939u, 1u), false)), vec3<f32>(-112f, -811f, 531f), 1i, -257f, vec4<u32>(1u, 32507u, 10675u, 0u)), Struct_4(Struct_3(false, vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), Struct_1(0u, 1585u, vec4<f32>(869f, 377f, -324f, -227f), vec3<u32>(8919u, 65525u, 1u), true)), vec3<f32>(175f, 1282f, 154f), 27764i, -1000f, vec4<u32>(8126u, 60697u, 29419u, 24168u)), Struct_4(Struct_3(false, vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), Struct_1(0u, 0u, vec4<f32>(-1180f, -339f, 411f, 784f), vec3<u32>(21533u, 1u, 18234u), true)), vec3<f32>(-371f, 485f, -1208f), -1i, -1161f, vec4<u32>(0u, 97911u, 0u, 4294967295u)), Struct_4(Struct_3(true, vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), Struct_1(44324u, 0u, vec4<f32>(-1000f, -1229f, -944f, -207f), vec3<u32>(24014u, 1u, 4294967295u), false)), vec3<f32>(-1113f, 755f, -1720f), 0i, 1193f, vec4<u32>(1u, 4294967295u, 4294967295u, 64082u)), Struct_4(Struct_3(true, vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), Struct_1(42633u, 82472u, vec4<f32>(-1439f, -299f, 481f, -461f), vec3<u32>(20565u, 10929u, 34101u), true)), vec3<f32>(845f, 1937f, 1822f), -1i, 1856f, vec4<u32>(1u, 4294967295u, 0u, 1509u)), Struct_4(Struct_3(false, vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), Struct_1(0u, 4294967295u, vec4<f32>(597f, 371f, 1136f, 1999f), vec3<u32>(71515u, 89721u, 1u), true)), vec3<f32>(-985f, -1609f, 206f), -1i, -1032f, vec4<u32>(1214u, 4294967295u, 1u, 4294967295u)), Struct_4(Struct_3(false, vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), Struct_1(1u, 1u, vec4<f32>(-1307f, 763f, 1382f, 1411f), vec3<u32>(1u, 46839u, 7991u), false)), vec3<f32>(583f, 1085f, 1272f), 0i, 905f, vec4<u32>(0u, 33742u, 1u, 34626u)), Struct_4(Struct_3(false, vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), Struct_1(1572u, 3253u, vec4<f32>(1418f, 665f, -3600f, -1263f), vec3<u32>(1u, 4294967295u, 1u), true)), vec3<f32>(-792f, 1197f, 1083f), 45014i, -937f, vec4<u32>(1u, 4294967295u, 4935u, 1u)), Struct_4(Struct_3(true, vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), Struct_1(1u, 33729u, vec4<f32>(-1743f, -1854f, -1232f, -475f), vec3<u32>(4294967295u, 1u, 1u), false)), vec3<f32>(2233f, -1000f, -141f), -1i, -1180f, vec4<u32>(1u, 38824u, 11322u, 2037u)));

var<private> global1: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_4, 10>();
    global1 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(reverseBits(u_input.a), 0i), select(u_input.a, ~u_input.b.x | ~(-16240i), true));
    let var_0 = arg_0;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e.c.x, -381f)))), 1268f, -366f, _wgslsmith_f_op_f32(select(arg_0.e.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1370f)) * -1430f), _wgslsmith_f_op_f32(arg_0.e.c.x * _wgslsmith_f_op_f32(-325f - arg_1.c.x))), any(arg_0.c.zx))));
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2() -> vec3<u32> {
    var var_0 = ~(~abs(vec4<u32>(0u, ~u_input.d, max(26360u, u_input.d), 26233u)));
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(1i, u_input.b.x, -8084i, -59778i)) | vec4<i32>(1i, 41525i, 12668i, 0i)), _wgslsmith_div_vec4_i32(~select(vec4<i32>(1i, u_input.a, u_input.c, 37698i), vec4<i32>(-14207i, 14598i, u_input.b.x, 2147483647i), false), abs(vec4<i32>(u_input.b.x, u_input.a, 0i, -47433i)))), ~vec4<i32>(~7965i, min(14184i, 2147483647i), ~_wgslsmith_mult_i32(u_input.a, 4547i), firstTrailingBit(~u_input.b.x)), ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.c, u_input.a, u_input.b.x, 0i), vec4<i32>(u_input.a, -2147483647i, u_input.b.x, -30431i)), ~vec4<i32>(-57569i, -19789i, u_input.a, 20791i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.c, u_input.a, u_input.a, -1i), vec4<i32>(u_input.c, u_input.a, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.a), vec4<i32>(-15007i, u_input.c, u_input.b.x, u_input.a))));
    let var_2 = Struct_3(false, vec3<bool>(true, false, false), !(!vec3<bool>(true, any(vec3<bool>(true, false, true)), true)), select(vec3<bool>(!all(vec2<bool>(false, true)), !(66868u < u_input.d), false), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), true), Struct_1(1u, ~firstTrailingBit(var_0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(241f, 990f, 509f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, 177f, -130f, -579f)))), vec4<f32>(939f, _wgslsmith_f_op_f32(abs(168f)), -124f, _wgslsmith_f_op_f32(func_3(Struct_3(false, vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), Struct_1(65260u, u_input.d, vec4<f32>(2123f, -945f, -694f, -498f), var_0.xwy, false)), Struct_1(0u, u_input.d, vec4<f32>(1734f, -1740f, -1371f, -1897f), var_0.wxy, true))))), var_0.wxz, true));
    var var_3 = Struct_2(!(!select(vec2<bool>(true, var_2.a), select(vec2<bool>(var_2.e.e, true), vec2<bool>(var_2.d.x, var_2.e.e), true), all(vec4<bool>(var_2.c.x, var_2.e.e, true, false)))));
    var var_4 = Struct_2(vec2<bool>(any(vec4<bool>(!var_2.e.e, var_2.b.x, true, select(false, false, true))), any(vec2<bool>(true, true))));
    return max(var_2.e.d, firstLeadingBit(~(~var_0.zxy))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(abs(1u), 1u, _wgslsmith_div_u32(u_input.d, ~1u)), vec3<u32>(abs(~u_input.d), ~_wgslsmith_clamp_u32(var_2.e.a, var_0.x, 101593u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, 7066u), _wgslsmith_add_u32(60473u, var_2.e.b))));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    global1 = -24993i;
    let var_0 = func_2();
    let var_1 = Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(arg_0.e, arg_0.e, true)), arg_0.e), select(select(vec2<bool>(arg_0.e, arg_0.e), vec2<bool>(false, true), vec2<bool>(arg_0.e, true)), !vec2<bool>(arg_0.e, arg_0.e), any(vec4<bool>(arg_0.e, arg_0.e, true, arg_0.e)))), vec2<bool>(!arg_0.e, !arg_0.e), select(!vec2<bool>(true, arg_0.e), !select(vec2<bool>(arg_0.e, true), vec2<bool>(arg_0.e, arg_0.e), true), !select(vec2<bool>(arg_0.e, true), vec2<bool>(false, arg_0.e), vec2<bool>(arg_0.e, arg_0.e)))));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1488f * -1276f), -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(622f, arg_0.c.x) - _wgslsmith_div_f32(320f, arg_0.c.x))), _wgslsmith_f_op_f32(trunc(-468f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(360f * -849f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_f_op_f32(func_3(Struct_3(var_1.a.x, vec3<bool>(var_1.a.x, var_1.a.x, true), vec3<bool>(false, false, var_1.a.x), vec3<bool>(false, arg_0.e, arg_0.e), Struct_1(arg_0.d.x, 0u, arg_0.c, arg_0.d, false)), arg_0)), var_1.a.x)))))), arg_0.c.x, _wgslsmith_f_op_f32(1000f * -478f));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_2(vec2<bool>(true, _wgslsmith_div_f32(-949f, _wgslsmith_f_op_f32(min(arg_1.c.x, -539f))) >= arg_1.c.x));
    let var_1 = Struct_2(!(!var_0.a));
    var var_2 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_2, _wgslsmith_sub_u32(4294967295u, arg_1.d.x), u_input.d, arg_1.b) ^ ~vec4<u32>(61642u, 4294967295u, 4294967295u, 49623u)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, arg_2, 1u) & (vec4<u32>(4294967295u, 1u, arg_2, arg_1.a) >> (vec4<u32>(arg_1.a, arg_1.d.x, 15652u, 40132u) % vec4<u32>(32u))), ~(~vec4<u32>(14433u, arg_2, 37525u, 4294967295u))), vec4<u32>(u_input.d, u_input.d, 13223u, _wgslsmith_mod_u32(arg_2, arg_1.d.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, arg_1.a, u_input.d, u_input.d), vec4<u32>(arg_2, 6295u, 0u, 1u), max(vec4<u32>(43790u, u_input.d, 93130u, 4294967295u), vec4<u32>(1u, 40474u, arg_2, arg_2))) % vec4<u32>(32u))));
    var var_3 = arg_3.x;
    var var_4 = var_1.a.x && var_1.a.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -2198f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(_wgslsmith_mod_i32(reverseBits(~u_input.a ^ _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(60747i, u_input.c, 1i), vec3<i32>(u_input.a, -24570i, u_input.c)), vec3<i32>(u_input.c, u_input.b.x, 0i)) >> (~(~u_input.d) % 32u)));
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    var var_0 = countOneBits(_wgslsmith_div_u32(u_input.d ^ ((101559u & u_input.d) ^ min(51344u, 63351u)), 0u));
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    var var_1 = _wgslsmith_f_op_f32(-1350f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(932f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(step(527f, 1426f))), true)) - _wgslsmith_f_op_f32(func_4(~(-27424i), Struct_1(~1u, 24329u >> (1u % 32u), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.d, 4294967295u, vec4<f32>(535f, -181f, -889f, -1279f), vec3<u32>(u_input.d, u_input.d, 434u), false))), select(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(22872u, u_input.d, u_input.d), vec3<bool>(false, false, true)), false), 1u, (vec4<i32>(1i, u_input.a, 1i, u_input.c) | vec4<i32>(1i, u_input.c, 2147483647i, 33721i)) >> ((vec4<u32>(3754u, 46560u, u_input.d, u_input.d) << (vec4<u32>(0u, 1u, u_input.d, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))))));
    let var_2 = min(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) & _wgslsmith_div_vec4_u32(vec4<u32>(39376u, u_input.d, u_input.d, 4294967295u), vec4<u32>(3103u, 1u, u_input.d, u_input.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4932u, 1u) | vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u), countOneBits(vec4<u32>(u_input.d, 69198u, 11178u, 1u)))), ~(~(~(vec4<u32>(u_input.d, u_input.d, 31669u, u_input.d) << (vec4<u32>(u_input.d, 24323u, u_input.d, u_input.d) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~min(u_input.a, u_input.a)), min(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-115769i, 2598i, u_input.c, u_input.c), vec4<i32>(-2147483647i, -48940i, -1i, u_input.c)), _wgslsmith_div_i32(2147483647i, u_input.c)), u_input.a), _wgslsmith_mult_vec4_u32(min(_wgslsmith_add_vec4_u32(~var_2, vec4<u32>(4294967295u, u_input.d, u_input.d, var_2.x)), var_2), max(vec4<u32>(u_input.d, _wgslsmith_mult_u32(35543u, 0u), var_2.x, _wgslsmith_dot_vec3_u32(var_2.wwx, vec3<u32>(var_2.x, u_input.d, 17785u))), vec4<u32>(max(var_2.x, u_input.d), _wgslsmith_clamp_u32(var_2.x, 85480u, var_2.x), u_input.d, var_2.x))));
}

