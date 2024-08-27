struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true));

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<f32>(1000f, 1000f)), Struct_3(vec2<f32>(1720f, -185f)), Struct_3(vec2<f32>(1390f, -928f)), Struct_3(vec2<f32>(390f, 506f)), Struct_3(vec2<f32>(-879f, 422f)), Struct_3(vec2<f32>(-668f, 109f)), Struct_3(vec2<f32>(-459f, -911f)), Struct_3(vec2<f32>(2227f, -1000f)), Struct_3(vec2<f32>(-1072f, -654f)), Struct_3(vec2<f32>(265f, -944f)), Struct_3(vec2<f32>(-1817f, 365f)), Struct_3(vec2<f32>(721f, 1070f)), Struct_3(vec2<f32>(677f, 844f)), Struct_3(vec2<f32>(853f, -1026f)), Struct_3(vec2<f32>(1905f, -1000f)), Struct_3(vec2<f32>(410f, 359f)), Struct_3(vec2<f32>(-619f, -238f)), Struct_3(vec2<f32>(-418f, -2379f)), Struct_3(vec2<f32>(746f, 804f)), Struct_3(vec2<f32>(-1047f, 754f)));

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_4(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 51605u, 0u), vec3<u32>(52082u, arg_0.a, 21300u)), 1u), abs(vec3<u32>(arg_0.a, 796u, arg_0.a)) | (vec3<u32>(arg_0.a, u_input.a, 13685u) ^ vec3<u32>(arg_0.a, u_input.a, 4294967295u))));
    let var_1 = global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~arg_0.a, ~(~3410u), ~14556u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(select(var_0.a, 0u, global2.x), var_0.a), _wgslsmith_sub_u32(arg_0.a, var_0.a))), countOneBits(select(abs(arg_0.a >> (5959u % 32u)), ~u_input.a, global2.x | !global2.x)), (true && any(vec2<bool>(false, global2.x))) != all(global2.xyw)), 20u)];
    var var_2 = vec3<u32>(max(9227u, 1u), ~(~_wgslsmith_mod_u32(arg_0.a, arg_0.a)), 4294967295u) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(48783u), ~0u, select(arg_0.a, u_input.a, false)), vec3<u32>(0u, 1u, u_input.a), ~vec3<u32>(0u, 1u, arg_0.a));
    global0 = array<vec4<bool>, 21>();
    global1 = array<Struct_3, 20>();
    return _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, -8614i, -2147483647i)), vec3<i32>(abs(5144i), _wgslsmith_mod_i32(5047i, -12720i), reverseBits(-2147483647i))), -1i), 1i, 1i);
}

fn func_2() -> Struct_4 {
    var var_0 = ~min(~vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(func_3(Struct_2(3865u)), -1i >> (u_input.a % 32u), abs(0i), min(-31361i, 30870i)));
    var var_1 = ~abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, -22406i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -17232i, var_0.x), firstTrailingBit(var_0.zww)), var_0.wyy));
    var_1 = -countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 26414i), -vec2<i32>(var_1.x, 52865i)), abs(1i), 20306i));
    global1 = array<Struct_3, 20>();
    var var_2 = firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_0.x, firstLeadingBit(2147483647i), var_1.x & var_0.x));
    return Struct_4(u_input.a);
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = func_2();
    global0 = array<vec4<bool>, 21>();
    global1 = array<Struct_3, 20>();
    global0 = array<vec4<bool>, 21>();
    var var_1 = global1[_wgslsmith_index_u32(func_2().a, 20u)];
    return vec2<f32>(-672f, _wgslsmith_f_op_f32(f32(-1f) * -2159f));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    global0 = array<vec4<bool>, 21>();
    var var_0 = Struct_1(vec4<bool>(select(true, !global2.x, any(select(global0[_wgslsmith_index_u32(16578u, 21u)], global0[_wgslsmith_index_u32(arg_1, 21u)], vec4<bool>(global2.x, global2.x, true, global2.x)))), global2.x, arg_0.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -922f)), true), vec4<f32>(arg_3, arg_3, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3)))), 817f), vec4<bool>(true, _wgslsmith_f_op_vec2_f32(func_1(u_input.a)).x > arg_3, _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(ceil(282f)))) == _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(arg_3 + 1113f)), abs(_wgslsmith_dot_vec3_i32(arg_2, arg_2)) <= arg_2.x), abs(select(select(countOneBits(vec4<i32>(arg_2.x, 1i, 21551i, arg_2.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-99710i, -1i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, 3930i)), select(vec4<bool>(true, global2.x, false, global2.x), global0[_wgslsmith_index_u32(u_input.a, 21u)], false)), vec4<i32>(arg_2.x << (u_input.a % 32u), arg_2.x, -arg_2.x, arg_2.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 25028u, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, arg_1, 3670u, 1u))), 21u)])), (-1163f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-300f)) - _wgslsmith_f_op_f32(-arg_0.a.x))) || global2.x);
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1, ~firstLeadingBit(0u << (arg_1 % 32u))), 21u)];
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_2 = Struct_5(true, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, abs(59162u), 1166u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 39279u, 0u), vec4<u32>(arg_1, 0u, u_input.a, arg_1)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, arg_1, 55156u, 107281u), vec4<u32>(47784u, u_input.a, 36421u, 1u) << (~vec4<u32>(52670u, arg_1, 4294967295u, 0u) % vec4<u32>(32u)))), Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(-608f, arg_3))))));
    return Struct_2(_wgslsmith_mod_u32(61458u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_2.b.x, var_2.b.x), ~1u), vec2<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, 4294967295u)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -232f))) - -961f));
    var var_1 = global2.x;
    let var_2 = Struct_2(firstTrailingBit(111286u));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(~arg_2.yy), ~select(~arg_2.zx, firstTrailingBit(vec2<u32>(u_input.a, 1u)), global2.yy) ^ countOneBits(countOneBits(~vec2<u32>(var_2.a, 1u)))), 20u)];
    global2 = !vec4<bool>(all(!(!vec4<bool>(false, global2.x, global2.x, global2.x))), global2.x, all(global2.zx), true);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<f32>(2151f, _wgslsmith_f_op_f32(324f + _wgslsmith_f_op_f32(-1711f + _wgslsmith_f_op_f32(f32(-1f) * -1340f))), 967f, _wgslsmith_f_op_f32(565f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f - 1872f) + _wgslsmith_div_f32(831f, -1000f)))), func_4(Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(4217u))))), u_input.a, vec3<i32>(1i, -53579i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -420f)), _wgslsmith_add_vec3_u32((~vec3<u32>(55281u, 0u, u_input.a) >> (_wgslsmith_div_vec3_u32(vec3<u32>(116431u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 19503u)) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), ~vec3<u32>(4294967295u, u_input.a, 22634u)) % vec3<u32>(32u)), ~vec3<u32>(~4294967295u, firstLeadingBit(0u), 0u | u_input.a)));
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    var var_1 = ~(17004u << (countOneBits(_wgslsmith_mult_u32(4294967295u, func_4(Struct_3(vec2<f32>(518f, -138f)), u_input.a, vec3<i32>(-1i, -13695i, -1i), -2176f).a)) % 32u));
    global0 = array<vec4<bool>, 21>();
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(1u, 21u)], vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1(4294967295u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(1317f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1035f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1454f))), select(select(!vec4<bool>(true, true, global2.x, global2.x), select(vec4<bool>(true, true, true, global2.x), !vec4<bool>(global2.x, true, true, false), all(global2.wx)), global0[_wgslsmith_index_u32(1u, 21u)]), select(select(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), global0[_wgslsmith_index_u32(118714u, 21u)], vec4<bool>(global2.x, global2.x, false, global2.x)), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, global2.x, false, global2.x), global2.x), true), global0[_wgslsmith_index_u32(func_2().a ^ 4294967295u, 21u)], !all(vec3<bool>(true, global2.x, global2.x))), !global2.x), vec4<i32>(-_wgslsmith_clamp_i32(41405i, 67431i, 0i) | max(-4151i, _wgslsmith_add_i32(2147483647i, -3875i)), max(~_wgslsmith_sub_i32(-18749i, -2147483647i), 11685i), 2147483647i, 60737i), any(!(!select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), global0[_wgslsmith_index_u32(var_0.a, 21u)], global2.x))));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(~reverseBits(abs(vec3<u32>(63966u, 90669u, 1u))), ~vec3<u32>(~1u, firstTrailingBit(u_input.a), 30269u)), ~(~(~(~45055u))), u_input.a);
    var_2 = Struct_1(vec4<bool>(global2.x, select(false, !global2.x, !var_2.c.x), global2.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), var_2.b.x)), vec4<bool>(global2.x, all(vec4<bool>(any(vec4<bool>(var_2.a.x, false, global2.x, global2.x)), var_2.a.x, global2.x == var_2.a.x, global2.x & false)), var_2.a.x, !var_2.a.x), var_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2245f, _wgslsmith_f_op_f32(1581f + 589f))) * 452f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.b.x, var_2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1568f, var_2.b.zz);
}

