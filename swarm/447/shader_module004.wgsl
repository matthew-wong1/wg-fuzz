struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(2147483647i, 23866i, -58350i, i32(-2147483648)), vec4<i32>(2147483647i, -6336i, 83281i, -13529i), vec4<i32>(-20481i, 35639i, -21186i, 5203i), vec4<i32>(12732i, 1i, 2147483647i, -1i), vec4<i32>(-12074i, -1i, -23113i, -1i), vec4<i32>(-37464i, -44216i, -1i, 1i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 0i, -9471i), vec4<i32>(-26846i, 0i, -1i, 2147483647i), vec4<i32>(10376i, 84666i, -1i, i32(-2147483648)), vec4<i32>(0i, -24019i, -45114i, 1i), vec4<i32>(0i, i32(-2147483648), -1i, -1746i), vec4<i32>(31571i, -1i, -4975i, i32(-2147483648)), vec4<i32>(28666i, -33097i, -29077i, 0i), vec4<i32>(-1i, -10353i, -13234i, 0i), vec4<i32>(i32(-2147483648), -7530i, -47045i, 1i), vec4<i32>(-1i, 8489i, 24002i, 38934i), vec4<i32>(i32(-2147483648), -10633i, 46438i, -30888i), vec4<i32>(-11284i, i32(-2147483648), -7237i, 1i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: bool) -> i32 {
    global0 = Struct_5(global0.a, Struct_2(vec3<u32>(31277u, 1u, 3899u), abs(~4294967295u), -1i), arg_3);
    var var_0 = !(!(!vec4<bool>(arg_3, false, any(vec3<bool>(arg_3, false, false)), false && arg_3)));
    return reverseBits(-2147483647i);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> vec4<bool> {
    let var_0 = ~global0.b.c;
    let var_1 = Struct_2(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0 ^ 93369u, _wgslsmith_add_u32(arg_0, u_input.b), ~arg_1), vec3<u32>(0u, 37530u, arg_2) & ~vec3<u32>(arg_0, arg_1, arg_2), ~vec3<u32>(48740u, 75493u, 10065u) << (abs(u_input.c.xyy) % vec3<u32>(32u)))), arg_2, global0.a);
    let var_2 = Struct_2(global0.b.a | vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c.zyz, global0.b.a), 4294967295u | arg_2), arg_2, arg_2), arg_0, func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1093f, _wgslsmith_f_op_f32(trunc(768f)), _wgslsmith_f_op_f32(f32(-1f) * -1532f), 1241f), _wgslsmith_div_vec4_f32(vec4<f32>(124f, 1000f, 1309f, 656f), _wgslsmith_div_vec4_f32(vec4<f32>(1685f, 390f, -1000f, -1238f), vec4<f32>(394f, 358f, 617f, 146f))))), var_1.a.xx, abs(~select(vec4<u32>(4294967295u, 15643u, 33425u, arg_2), u_input.c, global0.c)), false));
    var var_3 = firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~reverseBits(~u_input.c.x), _wgslsmith_mod_u32(1u, reverseBits(var_1.b))), 19u)]);
    return !vec4<bool>(global0.c, global0.c, (~0u << (_wgslsmith_dot_vec2_u32(global0.b.a.yy, vec2<u32>(arg_1, global0.b.b)) % 32u)) <= (1u >> ((arg_2 >> (arg_2 % 32u)) % 32u)), !select(true, true, 2725u <= global0.b.a.x));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<f32> {
    global0 = Struct_5(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(global0.a, -2147483647i)) | vec2<i32>(1i, global0.a), ~firstTrailingBit(vec2<i32>(global0.b.c, -11061i) | vec2<i32>(1i, global0.a))), global0.b, ~u_input.a.x <= _wgslsmith_sub_u32(20848u, _wgslsmith_sub_u32(global0.b.b, u_input.c.x) | global0.b.a.x));
    var var_0 = 1i ^ func_2(vec4<f32>(_wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 390f), _wgslsmith_f_op_f32(arg_0.x * arg_1.x), u_input.a.x >= 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), global0.b.a.zx, countOneBits(u_input.c), -4817i == global0.a);
    var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(462f - _wgslsmith_f_op_f32(-arg_0.x)) - -465f) + _wgslsmith_f_op_f32(-arg_1.x)));
    let var_2 = Struct_3(Struct_1(arg_1.x, global0.b.b, vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(6813i, global0.a, 2147483647i), vec3<i32>(0i, -16218i, global0.b.c)), vec2<i32>(_wgslsmith_div_i32(global0.a, firstLeadingBit(global0.b.c)), select(16630i, i32(-1i) * -1i, false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 164f, -805f, -1599f), arg_0) - arg_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -1146f, arg_1.x, arg_0.x)) + vec4<f32>(arg_0.x, arg_0.x, -414f, 1113f))), arg_1, vec4<bool>(global0.c, true, !any(vec2<bool>(global0.c, true)), any(vec4<bool>(false, global0.c, global0.c, global0.c))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * -126f))), arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1648f, var_2.a.a, 1742f)))) + _wgslsmith_f_op_vec3_f32(arg_1.zxx * var_2.b.wyx)), !select(vec3<bool>(true, global0.c, true), !vec3<bool>(global0.c, false, global0.c), vec3<bool>(false, false, true)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global0 = Struct_5(arg_3.a.d.x, Struct_2(vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(100400u, 34660u, arg_3.a.b, 34691u)), ~arg_3.a.b ^ arg_2.a.b, arg_3.a.b), ~min(~0u, 1u), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-748f, 565f, -330f, arg_1.x) + arg_3.b), vec2<u32>(global0.b.b, _wgslsmith_sub_u32(arg_3.a.b, 20978u)), select(u_input.c, _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(arg_3.a.b, arg_3.a.b, 4294967295u, arg_2.a.b)), any(vec3<bool>(global0.c, global0.c, global0.c))), arg_2.b.x == _wgslsmith_f_op_f32(f32(-1f) * -1667f))), false);
    global0 = Struct_5(~1i, Struct_2(vec3<u32>(_wgslsmith_div_u32(global0.b.a.x | 80694u, 0u), arg_3.a.b, 2921u ^ max(arg_3.a.b, arg_3.a.b)), 8760u, ~func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, arg_1.x, arg_3.b.x, arg_2.b.x) + arg_2.b), global0.b.a.yy, vec4<u32>(59351u, arg_3.a.b, 1u, 62020u), all(vec3<bool>(false, global0.c, global0.c)))), func_1(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(26287u, 1u, global0.b.b, u_input.c.x)), _wgslsmith_mod_u32(firstLeadingBit(1u), arg_3.a.b)), reverseBits(arg_3.a.b), ~arg_2.a.b).x);
    global1 = array<vec4<i32>, 19>();
    let var_0 = arg_3.b.wz;
    return any(vec2<bool>(true, global0.c)) | !any(func_1(_wgslsmith_add_u32(1u, 29365u), min(arg_2.a.b, u_input.c.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_1(26451u, ~(global0.b.a.x | global0.b.b), _wgslsmith_div_u32(abs(1u), global0.b.b)), func_1(4294967295u, 15745u & _wgslsmith_add_u32(u_input.c.x, global0.b.b), _wgslsmith_mult_u32(~global0.b.b, 1u)), !select(!vec4<bool>(global0.c, true, false, false), vec4<bool>(false, false, false, false), global0.c)), vec4<bool>(~190u > ~(~global0.b.a.x), global0.c, all(!(!vec3<bool>(global0.c, false, true))), true), func_4(_wgslsmith_sub_i32(-abs(-102i), -14294i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1562f, 2021f, 1116f))) + _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(786f, -828f, -1285f, 486f), vec4<f32>(1497f, -153f, -1556f, 1054f)))), vec3<f32>(-642f, _wgslsmith_f_op_f32(f32(-1f) * -1171f), _wgslsmith_f_op_f32(f32(-1f) * -303f))), Struct_3(Struct_1(_wgslsmith_div_f32(-760f, 1000f), 4294967295u >> (u_input.b % 32u), vec3<i32>(global0.b.c, 2147483647i, global0.a) & vec3<i32>(-13448i, global0.b.c, global0.b.c), -vec2<i32>(2147483647i, global0.b.c)), _wgslsmith_div_vec4_f32(vec4<f32>(-188f, 410f, 1000f, -365f), vec4<f32>(-1213f, 695f, 643f, 564f))), Struct_3(Struct_1(1257f, _wgslsmith_mod_u32(u_input.c.x, 0u), firstLeadingBit(vec3<i32>(23309i, -1i, 17003i)), ~vec2<i32>(global0.a, global0.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1415f, 286f, -634f, -1000f))))));
    global1 = array<vec4<i32>, 19>();
    let var_1 = ~39334i;
    var var_2 = 1000f;
    var var_3 = Struct_1(751f, 14506u, _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(var_1, -3369i, var_1), vec3<i32>(0i, var_1, -1i)) ^ min(-vec3<i32>(30710i, global0.a, -2147483647i), -vec3<i32>(global0.b.c, var_1, var_1)), ~countOneBits(reverseBits(vec3<i32>(-15299i, 0i, 31673i)))), -(~(-vec2<i32>(global0.a, 1i))));
    global0 = Struct_5(_wgslsmith_div_i32(-2147483647i, -var_1), global0.b, !global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global0.b.b, global0.b.a.x, u_input.a.x, global0.b.b), vec4<u32>(global0.b.b, 5020u, 4294967295u, var_3.b))), firstLeadingBit(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 30532u, 40900u, 0u), u_input.c), firstLeadingBit(u_input.c), select(var_0, var_0, vec4<bool>(var_0.x, var_0.x, var_0.x, global0.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a, var_3.a, var_3.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.a, -223f)))), _wgslsmith_mod_vec3_i32(vec3<i32>(65787i, global0.b.c, 0i), var_3.c), -abs(~abs(-5971i)), firstTrailingBit(0u << (~var_3.b % 32u)));
}

