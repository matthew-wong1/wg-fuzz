struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 33370u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1555u, 47262u, 41046u), vec3<u32>(45685u, 21700u, 1u), vec3<u32>(94908u, 0u, 1u), vec3<u32>(21691u, 0u, 535u), vec3<u32>(68587u, 3305u, 1u), vec3<u32>(32147u, 0u, 39062u), vec3<u32>(1u, 4294967295u, 51224u), vec3<u32>(6530u, 4294967295u, 16692u), vec3<u32>(0u, 1u, 12527u), vec3<u32>(20754u, 0u, 39061u), vec3<u32>(0u, 4294967295u, 34285u), vec3<u32>(1u, 32693u, 17161u), vec3<u32>(10088u, 33202u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(32035u, 2130u, 4294967295u), vec3<u32>(4294967295u, 39622u, 25886u), vec3<u32>(14259u, 24767u, 0u), vec3<u32>(8117u, 1u, 0u), vec3<u32>(74522u, 4294967295u, 6755u), vec3<u32>(55778u, 1u, 50823u), vec3<u32>(0u, 11180u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(23964u, 51839u, 50389u), vec3<u32>(22430u, 0u, 1u), vec3<u32>(38467u, 4294967295u, 0u));

var<private> global2: i32 = 53433i;

var<private> global3: Struct_4 = Struct_4(1i);

var<private> global4: Struct_4;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = 22285i;
    let var_1 = false;
    let var_2 = arg_0;
    global3 = Struct_4(abs(-2147483647i));
    let var_3 = Struct_2(_wgslsmith_mod_vec3_i32(firstTrailingBit(reverseBits(vec3<i32>(global4.a, 1i, global4.a)) & ~u_input.a.xww), ~min(vec3<i32>(-2147483647i, -39424i, global3.a), vec3<i32>(28280i, 1i, var_0)) | ~vec3<i32>(-25873i, arg_1.a, global3.a)), Struct_1(false, -u_input.e.zwz, !(!vec3<bool>(true, false, var_1)), global0[_wgslsmith_index_u32(~u_input.b.x, 12u)], vec3<u32>(32231u, 23028u, u_input.d)), 4294967295u);
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_4(0i);
    global1 = array<vec3<u32>, 29>();
    let var_1 = Struct_4(1i);
    var var_2 = (((_wgslsmith_add_u32(28801u, arg_0.e.x) >= ~4294967295u) & false) | all(vec3<bool>(true, arg_0.a, arg_0.a))) && arg_0.a;
    var_2 = any(vec4<bool>(arg_0.c.x, !all(vec3<bool>(arg_0.c.x, false, arg_0.d.x)), false, false | (_wgslsmith_f_op_f32(min(263f, -1505f)) >= _wgslsmith_f_op_f32(select(546f, 748f, arg_0.a)))));
    return 526f;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1452f + -166f)) * 1000f), -1202f);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.b, _wgslsmith_div_f32(622f, 1385f), _wgslsmith_f_op_f32(-488f * var_0.a)), Struct_4(-u_input.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))))), _wgslsmith_f_op_f32(-var_0.a));
    var var_2 = Struct_2(u_input.e.yww, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + -1339f))) < _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-var_0.b), any(vec3<bool>(false, true, true)))), _wgslsmith_mod_vec3_i32(u_input.a.zwx, countOneBits(_wgslsmith_clamp_vec3_i32(u_input.e.www, vec3<i32>(10218i, arg_1, arg_1), vec3<i32>(-9645i, -34486i, arg_1)))), vec3<bool>(true, countOneBits(-2147483647i) > global3.a, true), vec2<bool>(1u > (1u << (u_input.b.x % 32u)), true), _wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), _wgslsmith_mod_u32(4294967295u, 32501u)), u_input.b)), ~(~(~(u_input.d & 0u))));
    var var_3 = _wgslsmith_div_vec2_u32(u_input.b.zx, vec2<u32>(u_input.d, var_2.b.e.x));
    let var_4 = _wgslsmith_mult_i32(arg_0.x, ~(_wgslsmith_mult_i32(~arg_1, _wgslsmith_sub_i32(u_input.e.x, arg_1)) << (var_3.x % 32u)));
    return Struct_3(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.b, _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_2.a.x, 2147483647i, -6639i)), ~vec3<i32>(-2085i, arg_0.x, arg_1))))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    global3 = Struct_4(-min(-2147483647i, countOneBits(0i)));
    global1 = array<vec3<u32>, 29>();
    let var_0 = Struct_1((all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))) | false) == !select(true, false, true), vec3<i32>(-1i, ~global4.a, ~(-_wgslsmith_dot_vec2_i32(u_input.e.wx, vec2<i32>(27439i, arg_2)))), !vec3<bool>(all(vec3<bool>(false, true, true)), _wgslsmith_div_f32(arg_1.a, arg_1.b) < 1998f, true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u >> (u_input.d % 32u), arg_0), 1u), 12u)], ~(vec3<u32>(max(u_input.d, u_input.b.x), 18981u, ~arg_0) ^ ~vec3<u32>(u_input.b.x, u_input.b.x, arg_0)));
    return Struct_2(-var_0.b >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16493u, 1u, 1u, var_0.e.x), ~vec4<u32>(u_input.b.x, arg_0, var_0.e.x, arg_0)), _wgslsmith_mult_u32(u_input.b.x, var_0.e.x) & 4294967295u, ~20713u) % vec3<u32>(32u)), var_0, _wgslsmith_add_u32(7489u, var_0.e.x));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(!all(select(func_4(18437u, Struct_3(-220f, 671f), arg_2.b.b.x, Struct_3(433f, 151f)).b.c, arg_2.b.c, !arg_2.b.c)), ~_wgslsmith_div_vec3_i32(reverseBits(~u_input.a.yxw), _wgslsmith_add_vec3_i32(arg_2.b.b, ~u_input.a.zwz)), vec3<bool>(arg_2.b.d.x, !all(select(vec4<bool>(arg_2.b.c.x, arg_2.b.a, arg_2.b.c.x, false), vec4<bool>(arg_2.b.c.x, arg_2.b.a, false, arg_2.b.d.x), false)), arg_2.b.d.x), !vec2<bool>(any(!vec2<bool>(arg_2.b.d.x, false)), u_input.b.x < select(arg_0, arg_0, arg_2.b.a)), vec3<u32>(firstTrailingBit(121597u), 16194u, arg_2.c));
    global0 = array<vec2<bool>, 12>();
    let var_1 = Struct_2(countOneBits(vec3<i32>(arg_1, -12428i, arg_1)), arg_2.b, ~u_input.b.x);
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, 2811f, 478f)), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(false, true, false), var_0.c, var_1.b.d.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1085f, -945f, -148f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-495f, -1012f, -1949f), vec3<f32>(446f, 329f, 712f), var_1.b.c)) - vec3<f32>(-347f, -561f, 123f)), vec3<f32>(_wgslsmith_f_op_f32(max(749f, 1877f)), _wgslsmith_f_op_f32(361f + -296f), -579f))));
    return Struct_2(arg_2.b.b, Struct_1(true && !(!arg_2.b.d.x), var_0.b, func_4(_wgslsmith_mod_u32(arg_0 | arg_0, _wgslsmith_div_u32(0u, var_0.e.x)), Struct_3(-119f, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_clamp_i32(min(var_0.b.x, var_1.a.x), 2147483647i, -1i), func_1(abs(arg_2.b.b.yz), _wgslsmith_mod_i32(arg_2.a.x, 10839i))).b.c, select(var_1.b.d, select(vec2<bool>(var_0.c.x, true), var_0.c.zz, func_4(var_1.b.e.x, Struct_3(var_3.x, 1000f), global3.a, Struct_3(var_3.x, -1474f)).b.c.xz), 0i >= ~global4.a), vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 0u, 82793u, arg_2.c), vec4<u32>(153619u, 0u, arg_0, arg_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(31103u, arg_2.b.e.x, 1u, 0u), vec4<u32>(89076u, 18382u, 57104u, 5484u))), ~(~0u), arg_0 ^ reverseBits(var_0.e.x))), _wgslsmith_div_u32(_wgslsmith_div_u32(select(u_input.d, var_0.e.x, any(arg_2.b.d)), _wgslsmith_sub_u32(select(4294967295u, u_input.b.x, false), 33303u)), arg_0));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> u32 {
    let var_0 = vec3<f32>(-1841f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -867f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_1.b, vec3<i32>(2147483647i, 5831i, u_input.a.x))))))) + func_1(func_4(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec3<u32>(u_input.d, arg_1.b.e.x, u_input.d)), Struct_3(-1000f, -836f), countOneBits(-11958i), Struct_3(704f, 1446f)).a.xz, arg_1.b.b.x).b));
    global3 = Struct_4(_wgslsmith_add_i32(global4.a, select(_wgslsmith_sub_i32(19607i, 0i) << (_wgslsmith_mod_u32(1u, 36176u) % 32u), countOneBits(_wgslsmith_clamp_i32(2147483647i, -2147483647i, 38105i)), !(arg_1.b.d.x || true))));
    let var_1 = Struct_3(346f, _wgslsmith_f_op_f32(-1873f + 1000f));
    var var_2 = arg_3;
    global1 = array<vec3<u32>, 29>();
    return ~_wgslsmith_add_u32(arg_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 24131u) >> (u_input.b.yz % vec2<u32>(32u)), ~abs(vec2<u32>(5494u, 0u))));
}

fn func_7(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = u_input.e.xw;
    let var_1 = ~(-arg_2.x);
    global1 = array<vec3<u32>, 29>();
    var var_2 = Struct_2(select(countOneBits(_wgslsmith_mult_vec3_i32(arg_2, _wgslsmith_div_vec3_i32(arg_2, vec3<i32>(0i, 45568i, global4.a)))), u_input.a.yxz, func_5(17203u, 2147483647i, Struct_2(min(vec3<i32>(arg_2.x, global4.a, arg_2.x), arg_2), func_4(arg_1, Struct_3(160f, -2068f), -37436i, Struct_3(248f, 1643f)).b, arg_1 & u_input.b.x)).b.c), func_5(~(~(~1u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.e.x, 0i, 8762i)), vec4<i32>(arg_2.x, -27110i, -24008i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(27995i, 41020i) ^ vec2<i32>(arg_2.x, u_input.e.x), _wgslsmith_div_vec2_i32(u_input.a.zw, vec2<i32>(u_input.e.x, 2147483647i)))), Struct_2(u_input.e.wzz, func_4(36152u, Struct_3(253f, -1041f), -56518i, func_1(vec2<i32>(var_0.x, -2147483647i), var_1)).b, func_6(firstLeadingBit(u_input.e.zy), func_5(1u, 1i, Struct_2(vec3<i32>(var_1, -1i, var_0.x), Struct_1(arg_0, u_input.a.zzx, vec3<bool>(arg_0, false, arg_0), vec2<bool>(arg_0, arg_0), vec3<u32>(u_input.d, 14222u, 30264u)), 4294967295u)), i32(-1i) * -28751i, Struct_4(-1i)))).b, 13056u ^ ~func_6(~vec2<i32>(var_1, global3.a), Struct_2(vec3<i32>(global4.a, -7225i, 0i), Struct_1(arg_0, arg_2, vec3<bool>(true, arg_0, false), vec2<bool>(arg_0, arg_0), vec3<u32>(arg_1, arg_1, 1u)), arg_1), func_5(0u, 69331i, Struct_2(vec3<i32>(0i, u_input.a.x, u_input.e.x), Struct_1(arg_0, vec3<i32>(global4.a, u_input.c, u_input.e.x), vec3<bool>(arg_0, false, false), vec2<bool>(arg_0, arg_0), global1[_wgslsmith_index_u32(16783u, 29u)]), 4294967295u)).b.b.x, Struct_4(18654i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1758f - -104f), _wgslsmith_f_op_f32(f32(-1f) * -440f), -1537f, _wgslsmith_f_op_f32(701f + 1086f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1795f, -313f, -4265f, 1243f), vec4<f32>(-1078f, 215f, -803f, -313f), vec4<bool>(arg_0, var_2.b.d.x, true, arg_0))) + vec4<f32>(757f, 761f, -1678f, 992f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1231f, 521f, 1356f, -1112f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-796f, 1416f, 993f, -489f) - vec4<f32>(-667f, 394f, -324f, 232f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1590f, -780f, 1476f, -1090f), vec4<f32>(-682f, -1000f, 1043f, -926f), arg_0))))))));
    return Struct_2(vec3<i32>(arg_2.x, abs(var_0.x), global3.a), Struct_1(arg_0, max(~vec3<i32>(var_0.x, 4012i, u_input.a.x), vec3<i32>(1i, var_1, u_input.c) << (vec3<u32>(1u, 1u, arg_1) % vec3<u32>(32u))), !var_2.b.c, select(!vec2<bool>(arg_0, var_2.b.a), !func_4(30404u, Struct_3(var_3.x, var_3.x), 7270i, Struct_3(1000f, 1325f)).b.c.yy, var_2.b.a), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, arg_1, arg_1), global1[_wgslsmith_index_u32(4294967295u, 29u)]), global1[_wgslsmith_index_u32(u_input.d, 29u)]), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 43351u, var_2.c, 0u), vec4<u32>(u_input.d, arg_1, var_2.c, 13402u)), arg_1 >> (0u % 32u), arg_1))), (u_input.d << (u_input.b.x % 32u)) & u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x;
    let var_1 = ~(~firstLeadingBit(vec4<u32>(4294967295u << (0u % 32u), ~u_input.b.x, countOneBits(u_input.b.x), _wgslsmith_mult_u32(60742u, u_input.b.x))));
    global2 = u_input.a.x;
    let var_2 = vec2<bool>(!(_wgslsmith_div_u32(max(var_1.x, 1u), _wgslsmith_dot_vec4_u32(var_1, var_1)) < ~39206u), true);
    let var_3 = true;
    var var_4 = func_7(true, func_6(u_input.e.zw, func_5(~_wgslsmith_div_u32(u_input.b.x, var_1.x), max(~2147483647i, 8974i), func_4(~var_1.x, Struct_3(308f, 462f), ~global3.a, func_1(vec2<i32>(global4.a, 0i), global3.a))), var_0, Struct_4(global3.a)), u_input.a.yyy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-767f * _wgslsmith_f_op_f32(f32(-1f) * -1330f)), 155f), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b.xz, max(var_1.wx, vec2<u32>(var_4.b.e.x, var_1.x))), max(firstLeadingBit(vec2<u32>(u_input.d, 4294967295u)), max(vec2<u32>(39618u, 0u), var_4.b.e.xy)) | select(u_input.b.yz, var_1.wx, true)));
}

