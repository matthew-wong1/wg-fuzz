struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: array<i32, 31>;

var<private> global2: array<vec2<i32>, 5>;

var<private> global3: vec4<u32> = vec4<u32>(1u, 28777u, 0u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_2(true, Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 22615u), vec2<u32>(7800u, 4294967295u)), _wgslsmith_mult_u32(14608u, 6348u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, global3.x), global3.yzw) % 32u)), abs(1i | u_input.a), _wgslsmith_mult_u32(~firstTrailingBit(48236u), firstLeadingBit(global3.x)), abs(~vec4<u32>(global3.x, 4294967295u, global3.x, global3.x)) & (~vec4<u32>(global3.x, 4294967295u, global3.x, 35408u) >> (~vec4<u32>(1u, global3.x, global3.x, global3.x) % vec4<u32>(32u))), vec4<u32>(global3.x, global3.x, ~max(global3.x, 1u), _wgslsmith_add_u32(~global3.x, reverseBits(global3.x)))));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(max(-865f, -148f)), -226f)));
    var_1 = var_0.b;
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -423f)), 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, var_2.x) - vec3<f32>(-306f, var_2.x, var_2.x))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1889f, -158f, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(975f, -891f, var_2.x))))))));
    return true;
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, 91790u, 36397u, global3.x), vec4<u32>(abs(~firstTrailingBit(69117u)), arg_0.x, global3.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3.xxy, vec3<u32>(global3.x, 61601u, 23292u)), min(arg_0.x, 34160u)), arg_0.x << (4294967295u % 32u))));
    var var_0 = 1u;
    global2 = array<vec2<i32>, 5>();
    let var_1 = -1668f;
    global3 = vec4<u32>(1u, min(_wgslsmith_mod_u32(~0u, 1u), min(select(~global3.x, arg_0.x, true), ~arg_0.x ^ (12284u << (arg_0.x % 32u)))), ~79398u | ~global3.x, _wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, global3.x, 44971u), global3.yxx), vec3<u32>(arg_0.x, global3.x, ~arg_0.x)), global3.xwy));
    return !vec4<bool>(false | all(vec3<bool>(true, true, true)), any(vec4<bool>(all(vec2<bool>(false, true)), global3.x != 1u, true, func_3(var_1))), false, func_3(-104f));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5) -> Struct_3 {
    var var_0 = true;
    var var_1 = arg_1.a;
    let var_2 = Struct_3(Struct_2(!var_1.x, arg_1.c), Struct_2(!any(!vec3<bool>(arg_1.a.x, false, arg_1.b)), arg_1.c), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~arg_1.c.e.xxw, arg_1.c.e.zww) ^ (37237u | _wgslsmith_add_u32(4294967295u, arg_1.c.a)), 31u)], arg_1.c.b, 1i, _wgslsmith_div_i32(u_input.a, 1i)));
    var_0 = any(func_2(max(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 41647u), vec2<u32>(var_2.a.b.e.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(var_2.b.b.e.wx, vec2<u32>(arg_1.c.a, arg_0.x), vec2<u32>(arg_0.x, global3.x))) & arg_1.c.e.wx).wxw);
    global0 = array<vec3<i32>, 15>();
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<f32>) -> bool {
    global0 = array<vec3<i32>, 15>();
    var var_0 = arg_3;
    var var_1 = Struct_5(arg_2, all(!vec2<bool>(!arg_2.x, arg_2.x)), Struct_1(~(~firstLeadingBit(24178u)), 0i & _wgslsmith_mult_i32(-1i, reverseBits(arg_0.b.b.b)), ~min(1u, global3.x), abs(vec4<u32>(29088u, global3.x, arg_0.b.b.e.x, 42785u)) >> (~vec4<u32>(32741u, 1u, global3.x, 4294967295u) % vec4<u32>(32u)), arg_0.b.b.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, var_0.x, arg_3.x, -193f) * vec4<f32>(arg_3.x, var_0.x, var_0.x, 1029f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-607f, 312f, 1447f, 1491f) + vec4<f32>(-1137f, -1000f, var_0.x, arg_3.x)))))));
    let var_2 = Struct_1(_wgslsmith_clamp_u32(3126u, _wgslsmith_mod_u32(max(_wgslsmith_clamp_u32(2063u, var_1.c.a, 0u), ~1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.c.d.x, 52276u), _wgslsmith_mult_u32(global3.x, global3.x))), ~(~var_1.c.e.x)), _wgslsmith_sub_i32(arg_0.b.b.b ^ ~2147483647i, firstLeadingBit(arg_1)), var_1.c.e.x | ~global3.x, ~vec4<u32>(_wgslsmith_add_u32(arg_0.a.b.c, global3.x), global3.x | 4294967295u, 52185u, arg_0.a.b.a) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.c, _wgslsmith_mult_u32(arg_0.a.b.a, 27762u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(41485u, arg_0.b.b.c)), _wgslsmith_mult_u32(var_1.c.d.x, 0u)), vec4<u32>(var_1.c.d.x, 49902u >> (global3.x % 32u), ~48207u, _wgslsmith_div_u32(var_1.c.e.x, arg_0.a.b.a))) % vec4<u32>(32u)), var_1.c.d);
    var_1 = Struct_5(select(!var_1.a, select(!func_2(vec2<u32>(global3.x, var_2.d.x)), select(select(vec4<bool>(false, arg_2.x, false, var_1.b), vec4<bool>(true, true, false, arg_0.b.a), arg_2.x), func_2(vec2<u32>(0u, 4294967295u)), arg_0.b.a), false), var_1.a.x), false, Struct_1(var_1.c.d.x, 1i, 8622u, var_2.e, firstTrailingBit(var_2.d)), vec4<f32>(-737f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-540f + -2174f))) * 864f), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.d.x, var_1.d.x))))));
    return arg_0.b.a;
}

fn func_1() -> vec4<i32> {
    global0 = array<vec3<i32>, 15>();
    var var_0 = u_input.a;
    var var_1 = func_5(func_4(vec4<u32>(~(~global3.x), 1u, global3.x, 1u), Struct_5(func_2(vec2<u32>(1u, global3.x) >> (global3.xw % vec2<u32>(32u))), all(func_2(vec2<u32>(6159u, global3.x))), Struct_1(global3.x, firstLeadingBit(36334i), global3.x, _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, global3.x, 0u, global3.x), vec4<u32>(global3.x, 8311u, 92878u, global3.x)), vec4<u32>(4294967295u, global3.x, 0u, global3.x) >> (vec4<u32>(global3.x, global3.x, 4294967295u, global3.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, 874f, -1000f, 1541f)), vec4<f32>(1618f, 1814f, -343f, -1676f)))), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1892u, 31u)], 22339i & global1[_wgslsmith_index_u32(15309u, 31u)]), !vec4<bool>(false, !(global1[_wgslsmith_index_u32(45551u, 31u)] <= global1[_wgslsmith_index_u32(global3.x, 31u)]), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), vec3<f32>(-675f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-449f)), _wgslsmith_f_op_f32(-1217f * -1157f))), _wgslsmith_f_op_f32(max(-101f, -1691f))), _wgslsmith_div_f32(-1336f, 517f)));
    let var_2 = max(-18453i, 24033i);
    let var_3 = -1240f;
    return vec4<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_2, global1[_wgslsmith_index_u32(global3.x, 31u)]), u_input.a, -66021i)), firstTrailingBit(global1[_wgslsmith_index_u32(~abs(~16568u), 31u)]), abs(max(func_4(vec4<u32>(global3.x, global3.x, global3.x, global3.x), Struct_5(vec4<bool>(false, true, false, false), true, Struct_1(26838u, -38027i, 4294967295u, vec4<u32>(47889u, global3.x, global3.x, global3.x), vec4<u32>(4294967295u, global3.x, global3.x, global3.x)), vec4<f32>(var_3, 908f, -500f, var_3))).c.x, min(-24619i, -19055i) | _wgslsmith_add_i32(global1[_wgslsmith_index_u32(global3.x, 31u)], global1[_wgslsmith_index_u32(global3.x, 31u)]))), _wgslsmith_sub_i32(abs(14499i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(22784u, global3.x), vec2<u32>(global3.x, 103982u)), global3.x), 31u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<i32, 31>();
    let var_1 = i32(-1i) * -max(-(2147483647i << (global3.x % 32u)), firstTrailingBit(abs(2147483647i)));
    let var_2 = select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, false), true), select(select(!func_2(vec2<u32>(6366u, 0u)).wy, func_2(~vec2<u32>(global3.x, global3.x)).xw, func_3(977f)), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(u_input.a >= -28710i, true), true), false), true);
    global2 = array<vec2<i32>, 5>();
    global2 = array<vec2<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(-min(-16222i, var_1), 1i), -2147483647i), var_0.xw, _wgslsmith_f_op_f32(-1503f + -401f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(979f, -1115f, true))), _wgslsmith_f_op_f32(step(-101f, 2804f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-909f, 1008f), vec2<f32>(-138f, 863f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -466f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1244f, -126f), vec2<f32>(326f, 438f))) - vec2<f32>(1811f, -1629f))), var_2.x)));
}

