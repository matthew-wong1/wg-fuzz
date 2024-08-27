struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(false, -1147f);

var<private> global3: array<vec2<bool>, 27>;

var<private> global4: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(651f, -183f, 576f, -244f), vec4<f32>(-306f, 1273f, 2095f, 289f), vec4<f32>(1000f, 464f, -1250f, -1037f), vec4<f32>(422f, -621f, 507f, 1658f), vec4<f32>(988f, 470f, 363f, -949f), vec4<f32>(-442f, 1030f, 457f, -1191f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    global4 = array<vec4<f32>, 6>();
    global1 = _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 3068i, u_input.a, -(~(-10821i))), vec4<i32>(-9904i, abs(global1.x), _wgslsmith_div_i32(u_input.a, ~arg_0) | 27692i, -1i));
    var var_0 = vec4<i32>(0i, u_input.a, max(40002i, ~_wgslsmith_add_i32(max(-2147483647i, -24783i), max(2147483647i, global1.x))), countOneBits(1i));
    global4 = array<vec4<f32>, 6>();
    global2 = Struct_1(all(select(select(vec3<bool>(true, arg_1, true), !vec3<bool>(global2.a, global2.a, true), !vec3<bool>(arg_1, false, true)), !(!vec3<bool>(arg_1, global2.a, false)), !vec3<bool>(arg_1, arg_1, global2.a))), 191f);
    return ~_wgslsmith_mult_i32(-var_0.x, var_0.x);
}

fn func_2() -> vec4<bool> {
    global2 = Struct_1((u_input.a >> (_wgslsmith_mod_u32(12775u, u_input.d) % 32u)) <= func_3(global1.x, !(true == global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + global2.b) - 1040f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - _wgslsmith_f_op_f32(f32(-1f) * -1054f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))));
    var var_0 = _wgslsmith_mult_i32(u_input.a, u_input.a);
    var var_1 = -1i;
    let var_2 = Struct_2(~(_wgslsmith_sub_vec3_u32(min(u_input.b, vec3<u32>(u_input.c.x, 0u, 4294967295u)), ~u_input.b) << (u_input.b % vec3<u32>(32u))), select(vec4<bool>(_wgslsmith_f_op_f32(-1000f - global2.b) < _wgslsmith_f_op_f32(-global2.b), select(!global2.a, all(vec3<bool>(true, global2.a, global2.a)), any(vec4<bool>(true, true, global2.a, true))), !global2.a && global2.a, ~u_input.a >= u_input.a), !(!(!vec4<bool>(true, true, global2.a, global2.a))), vec4<bool>(false, global2.a || global2.a, !all(global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), true)), Struct_1(!global2.a != global2.a, global2.b));
    global2 = Struct_1(!any(select(vec2<bool>(var_2.b.x, true), select(global3[_wgslsmith_index_u32(22592u, 27u)], vec2<bool>(true, true), var_2.c.a), select(var_2.c.a, true, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(var_2.c.b * -368f)), global2.b)));
    return var_2.b;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = 465f;
    let var_2 = Struct_2(~u_input.b, func_2(), Struct_1(global2.a, global2.b));
    let var_3 = var_2;
    var var_4 = 1i;
    return Struct_3(var_3, ~(~global1.wy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-531f, global2.b), vec2<f32>(var_3.c.b, var_3.c.b), arg_2.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-285f, global2.b)))), vec2<f32>(_wgslsmith_div_f32(-369f, global2.b), _wgslsmith_f_op_f32(abs(var_3.c.b)))), var_3.c);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(func_1(0u, arg_2.a.a, arg_2.a.b, 1u).c.x, func_1(4294967295u, vec3<u32>(8370u, u_input.b.x, 1085u), arg_2.a.b, arg_2.a.a.x).c.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c.b, 1964f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c), vec2<f32>(322f, -677f))))));
    global4 = array<vec4<f32>, 6>();
    let var_1 = arg_2.a.a;
    let var_2 = all(arg_2.a.b.wyy);
    var var_3 = ~(arg_0 ^ max(_wgslsmith_mult_i32(0i, arg_0), -2147483647i)) << (arg_2.a.a.x % 32u);
    return func_1(var_1.x, arg_2.a.a, vec4<bool>((var_2 == false) || global2.a, firstLeadingBit(abs(arg_2.a.a.x)) <= ~0u, all(!vec4<bool>(global2.a, false, false, arg_2.a.c.a)) && arg_2.d.a, !arg_2.a.b.x), 48248u);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = true;
    var var_1 = ~(~vec4<u32>(3480u, reverseBits(0u >> (1u % 32u)), ~arg_3.a.a.x | u_input.c.x, arg_3.a.a.x));
    var var_2 = countOneBits(vec4<i32>(_wgslsmith_mod_i32(reverseBits(arg_3.b.x), ~(-arg_3.b.x)), 1i, -6861i, global1.x));
    var_1 = vec4<u32>(0u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1.x, arg_3.a.a.x, arg_3.a.a.x)), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_1.x, u_input.d, u_input.d)), var_1.yyz)) << (~_wgslsmith_clamp_u32(_wgslsmith_add_u32(113384u, 6009u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 6659u, 0u), vec4<u32>(var_1.x, 18202u, 22085u, u_input.c.x))) % 32u), 4294967295u, select(~4294967295u, abs(arg_3.a.a.x) & _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, arg_3.a.a.x, var_1.x), var_1.zyx, vec3<u32>(12069u, 0u, 0u)), var_1.zyy), arg_3.a.c.a));
    var var_3 = Struct_1(arg_3.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(select(2394f, -1813f, arg_3.d.a))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1008f)))));
    return Struct_1(var_3.a, arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-925f, select(-2147483647i, u_input.a, true), global4[_wgslsmith_index_u32(u_input.c.x, 6u)], func_4(~(~(~(-592i))), firstLeadingBit(_wgslsmith_add_i32(min(u_input.a, -2147483647i), ~5293i)), func_1(1u >> (u_input.d % 32u), ~(u_input.b >> (u_input.b % vec3<u32>(32u))), !vec4<bool>(true, global2.a, global2.a, global2.a), 45055u), global4[_wgslsmith_index_u32(firstLeadingBit((11676u ^ u_input.d) ^ ~u_input.b.x), 6u)]));
    let var_1 = global1.x;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 1000f, -971f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) - vec3<f32>(-329f, var_0.b, global2.b))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 426f, -765f) + vec3<f32>(_wgslsmith_f_op_f32(932f - var_0.b), global2.b, global2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, global2.b, -1145f)))))));
    global1 = -firstLeadingBit(select(vec4<i32>(-5445i, global1.x, u_input.a, 63220i), select(-vec4<i32>(global1.x, global1.x, 1i, global1.x), ~vec4<i32>(u_input.a, -8292i, global1.x, global1.x), !vec4<bool>(global2.a, false, false, var_0.a)), !(-1i != global1.x)));
    var var_3 = vec2<f32>(1471f, -2070f);
    let var_4 = Struct_2(~u_input.b << (~u_input.b % vec3<u32>(32u)), !(!select(!vec4<bool>(false, global2.a, global2.a, false), vec4<bool>(false, true, false, true), false)), var_0);
    let var_5 = func_1(_wgslsmith_clamp_u32(0u, ~1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_4.a.x, 18171u), var_4.a.x)), abs(var_4.a), var_4.b, _wgslsmith_add_u32(0u, 1u)).a.b.zyx;
    let var_6 = false & (_wgslsmith_f_op_f32(-func_1(u_input.c.x, vec3<u32>(55571u, 4294967295u, 9322u), vec4<bool>(var_0.a, var_5.x, true, true), _wgslsmith_clamp_u32(4000u, 4294967295u, 4294967295u)).a.c.b) <= _wgslsmith_f_op_f32(min(var_2.x, func_4(firstTrailingBit(global1.x), _wgslsmith_clamp_i32(global1.x, -2104i, -1i), Struct_3(var_4, vec2<i32>(global1.x, global1.x), vec2<f32>(var_2.x, var_0.b), Struct_1(true, global2.b)), _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(4294967295u, 6u)] * vec4<f32>(-787f, global2.b, global2.b, global2.b))).a.c.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(15096u, 117301u, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_4.a.x, 0u, 1u, u_input.c.x)), vec4<u32>(4254u, 6057u, var_4.a.x, u_input.c.x))));
}

