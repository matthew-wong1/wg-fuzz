struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<u32>(41137u, 1u), 0i, 1085f), Struct_1(vec2<u32>(18225u, 22349u), i32(-2147483648), 690f), Struct_1(vec2<u32>(76927u, 4294967295u), -26594i, 996f), Struct_1(vec2<u32>(0u, 4294967295u), -20078i, -1000f), Struct_1(vec2<u32>(1u, 22885u), -30874i, 210f), Struct_1(vec2<u32>(15635u, 1u), 14967i, -1396f), Struct_1(vec2<u32>(24362u, 4294967295u), 1i, -383f), Struct_1(vec2<u32>(0u, 20185u), 38730i, -294f), Struct_1(vec2<u32>(35862u, 30719u), 1i, 2472f), Struct_1(vec2<u32>(62517u, 29309u), 6507i, 1589f), Struct_1(vec2<u32>(0u, 1u), -40965i, -522f), Struct_1(vec2<u32>(1u, 68587u), 2843i, -945f), Struct_1(vec2<u32>(0u, 17702u), 2147483647i, -593f), Struct_1(vec2<u32>(4294967295u, 19458u), -34888i, 675f), Struct_1(vec2<u32>(0u, 0u), -21438i, -960f), Struct_1(vec2<u32>(101063u, 31258u), -19712i, -256f), Struct_1(vec2<u32>(5518u, 1u), -13764i, -274f), Struct_1(vec2<u32>(18u, 25602u), 21436i, -1000f), Struct_1(vec2<u32>(4294967295u, 1u), 2147483647i, 597f), Struct_1(vec2<u32>(0u, 4294967295u), 30503i, 910f), Struct_1(vec2<u32>(4294967295u, 45932u), 41720i, -1951f), Struct_1(vec2<u32>(4294967295u, 0u), 0i, -150f), Struct_1(vec2<u32>(11016u, 21306u), 1i, 705f), Struct_1(vec2<u32>(4294967295u, 0u), 2147483647i, -1761f), Struct_1(vec2<u32>(7627u, 4294967295u), i32(-2147483648), -895f), Struct_1(vec2<u32>(0u, 73816u), 1i, 619f), Struct_1(vec2<u32>(14682u, 4294967295u), -6024i, 599f), Struct_1(vec2<u32>(1u, 0u), 23874i, 1365f), Struct_1(vec2<u32>(52037u, 1u), 57976i, 753f), Struct_1(vec2<u32>(1u, 24567u), -1i, 473f));

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_1 = arg_1;
    var_0 = Struct_1(~_wgslsmith_sub_vec2_u32(abs(global1.zz), ~vec2<u32>(var_0.a.x, 1u)), i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, var_1.b), -var_1.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-509f)) - _wgslsmith_f_op_f32(sign(var_0.c))), var_0.c) + var_0.c));
    var var_2 = vec2<bool>(!arg_0, arg_0);
    var var_3 = var_2.x;
    return -(~(-8349i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(~(~firstLeadingBit(~arg_0.a)), ~func_3(true, Struct_1(arg_0.a, u_input.b, -880f)) | 35657i, -139f);
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_1 = all(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), vec4<bool>(true, all(vec2<bool>(true, true)) == true, false, !all(vec4<bool>(false, true, true, false))), vec4<bool>(all(vec3<bool>(true, true, true)), true, countOneBits(40871u) < _wgslsmith_clamp_u32(global1.x, 4294967295u, arg_0.a.x), true)));
    return var_0.b;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = abs(vec2<i32>(_wgslsmith_div_i32(-(~arg_3.b), 1i | reverseBits(u_input.b)), arg_1.b));
    var_0 = -max(vec2<i32>(arg_2, func_2(Struct_1(vec2<u32>(arg_3.a.x, arg_0), arg_1.b, 1575f), arg_1)), firstLeadingBit(abs(~vec2<i32>(-2147483647i, -27241i))));
    global1 = vec3<u32>(130291u, arg_3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.x, 0u << (1u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, global1.x, 34966u)), vec3<u32>(arg_0, arg_0, arg_0)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, global1.x, arg_3.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, arg_1.a.x, arg_1.a.x, 1u), vec4<u32>(global1.x, 45414u, 62921u, 4294967295u)))), select(firstLeadingBit(vec4<u32>(arg_1.a.x, 61322u, arg_3.a.x, 40638u)), ~(~vec4<u32>(0u, 4820u, arg_0, arg_1.a.x)), true)));
    let var_1 = arg_3;
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 0u, var_1.a.x, global1.x)), vec4<u32>(_wgslsmith_sub_u32(global1.x, 47990u), 52766u, ~4294967295u, global1.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(143515u, 33827u, 1u, var_1.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(55459u, 0u, 53811u, arg_3.a.x), firstTrailingBit(vec4<u32>(1u, 1u, 1u, global1.x))))), ~(abs(var_0.x) ^ -1264i), -427f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, max(~0u, _wgslsmith_add_u32(4294967295u, global1.x)), global1.x), vec3<u32>(global1.x, ~0u, ~4294967295u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(~global1.x, max(1u, 1u), _wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.x, global1.x), vec3<u32>(1u, global1.x, 31542u)) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(global1.x, 77921u, 4294967295u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 21388u, 60548u), vec3<u32>(4294967295u, global1.x, 12033u))), func_1(global1.x, Struct_1(vec2<u32>(1u, 1u), -16823i, _wgslsmith_f_op_f32(575f + 1512f)), _wgslsmith_div_i32(-40282i, -2147483647i) ^ u_input.b, Struct_1(~global1.yy, 18929i, _wgslsmith_f_op_f32(max(1107f, -844f)))))), 30u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_0.c, var_0.c), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) + var_0.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1869f, _wgslsmith_f_op_f32(max(207f, var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f + 560f) + var_0.c))))));
    let var_2 = _wgslsmith_dot_vec4_i32(-max(vec4<i32>(-41579i, var_0.b, var_0.b, 1i), vec4<i32>(0i, 2147483647i, var_0.b, -33033i)) & ~(-vec4<i32>(-8553i, u_input.b, var_0.b, u_input.b)), ~vec4<i32>(1i << (1u % 32u), var_0.b, max(-73829i, 61875i), max(-44369i, u_input.a))) >> (_wgslsmith_mod_u32(~0u, ~_wgslsmith_clamp_u32(global1.x, firstTrailingBit(64044u), firstTrailingBit(var_0.a.x))) % 32u);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c + var_1.x), _wgslsmith_div_f32(var_0.c, var_1.x), -1600f)))));
    var var_3 = vec4<bool>(true || all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), any(!vec3<bool>(all(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false)))), true, select(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec4<bool>(all(vec2<bool>(true, true)), true, true, 2147483647i < u_input.b)), func_1(~(~1u), Struct_1(select(vec2<u32>(33717u, global1.x), var_0.a, false), u_input.a >> (34848u % 32u), -1031f), 1i, Struct_1(reverseBits(global1.yx), abs(-7968i), var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec4_i32(vec4<i32>(41182i, var_0.b, 2147483647i, var_2), min(vec4<i32>(-44668i, var_0.b, 1i, var_2), vec4<i32>(-38693i, var_2, var_2, 56653i)), ~vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i)) | (max(-vec4<i32>(-2147483647i, 0i, 1i, -1i), vec4<i32>(2147483647i, var_0.b, 1i, -1i)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, global1.x, global1.x, 0u), vec4<u32>(18994u, 9955u, var_0.a.x, global1.x) | vec4<u32>(var_0.a.x, var_0.a.x, 1u, global1.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) * _wgslsmith_f_op_f32(var_0.c - 604f)))) + var_0.c), countOneBits(global1.x), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 785f) + _wgslsmith_f_op_f32(round(-538f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1163f)) + 771f)), 2607f));
}

