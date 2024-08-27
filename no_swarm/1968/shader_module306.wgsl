struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: Struct_1;

var<private> global4: i32 = -1i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(firstLeadingBit(45567i), _wgslsmith_clamp_i32(u_input.c.x, 0i, u_input.a)), u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, -20332i), vec3<i32>(u_input.b.x, u_input.b.x, 1i))), vec4<i32>(-33300i >> (u_input.d % 32u), -1i, firstLeadingBit(9577i), -16480i) | vec4<i32>(u_input.e, -2147483647i, 1i, ~u_input.a), ~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.c), -48027i, ~(-2147483647i), firstTrailingBit(-1i))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 56616i, u_input.e, -57483i), vec4<i32>(u_input.b.x, u_input.c.x, 18529i, u_input.e)), ~vec4<i32>(-7183i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), 1i, u_input.b.x)));
    global0 = select(vec3<bool>(select(true, all(vec3<bool>(global0.x, false, global0.x)), ~var_0.x == ~(-1028i)), true, any(global0.yx)), !select(vec3<bool>(all(vec4<bool>(false, true, global0.x, true)), global3.c <= -687f, true), vec3<bool>(global0.x, false, true), vec3<bool>(true, any(global0.xy), !global0.x)), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, global0.x), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(true, 4959u < u_input.d, any(vec4<bool>(global0.x, true, true, global0.x))), !vec3<bool>(global0.x, global0.x, global0.x)));
    global4 = select(~_wgslsmith_div_i32(u_input.c.x, i32(-1i) * -2147483647i) << (1u % 32u), var_0.x, global0.x);
    global3 = Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global3.a, 18391u, global3.a, 0u) | vec4<u32>(10428u, global3.a, global3.a, global3.a)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(19591u, u_input.d, global3.a, global3.a), vec4<u32>(u_input.d, u_input.d, global3.a, 4294967295u)), firstTrailingBit(select(firstLeadingBit(vec4<u32>(49655u, u_input.d, u_input.d, 4294967295u)), vec4<u32>(36060u, u_input.d, 38121u, 38117u) ^ vec4<u32>(u_input.d, 168719u, 1u, 1u), !vec4<bool>(false, global0.x, global0.x, global0.x)))), -387f, 783f);
    var var_1 = vec2<u32>(3958u, 0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-global3.b)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a | countOneBits(4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(floor(648f))), _wgslsmith_div_f32(-1954f, _wgslsmith_div_f32(1036f, arg_0.c)))))));
    global3 = var_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-416f * -227f))) * global3.c), 210f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -823f), global3.b, -1205f)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -116f), _wgslsmith_f_op_f32(abs(935f))))), _wgslsmith_f_op_f32(max(-1351f, _wgslsmith_div_f32(var_1.x, 747f))), _wgslsmith_f_op_f32(step(-1888f, 839f)));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = arg_0;
    global2 = array<vec2<f32>, 18>();
    global0 = vec3<bool>(!global0.x, all(select(select(!vec4<bool>(false, true, arg_2.x, true), vec4<bool>(false, arg_2.x, false, false), select(vec4<bool>(global0.x, global0.x, true, arg_2.x), vec4<bool>(arg_2.x, false, false, true), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, false, global0.x, arg_2.x), vec4<bool>(global0.x, arg_2.x, true, arg_2.x), arg_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, var_1.a), vec3<u32>(4294967295u, 24737u, 4294967295u)) < ~35620u)), 4294967295u <= (_wgslsmith_sub_u32(~arg_1.a, var_1.a) & abs(30228u & u_input.d)));
    let var_2 = arg_2;
    return Struct_1(4294967295u, -660f, _wgslsmith_f_op_f32(round(-1090f)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, global3.c, global3.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2206f, arg_0.c, arg_0.b)))), vec3<f32>(-1000f, 1745f, -1000f), (-2918i ^ u_input.e) <= ~u_input.e)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1055f, global3.c, 894f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.c, global3.b))))))));
    var_1 = vec3<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(418f))), -1000f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~10727u >> (~(11195u << (arg_0.a % 32u)) % 32u), 18u)]);
    let var_3 = _wgslsmith_f_op_f32(exp2(func_2(arg_0).c));
    return func_2(func_2(Struct_1(global3.a, var_1.x, _wgslsmith_f_op_f32(-var_3))));
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(reverseBits(u_input.d), 18u)]);
    var var_1 = arg_0;
    let var_2 = func_5(func_2(func_5(Struct_1(48988u, _wgslsmith_f_op_f32(-var_0.x), -216f))));
    var var_3 = vec2<i32>(i32(-1i) * -7413i, -28407i);
    let var_4 = arg_0;
    return arg_0;
}

fn func_1() -> Struct_1 {
    return func_6(func_5(func_4(func_2(Struct_1(0u, -108f, -699f)), func_2(func_2(Struct_1(global3.a, -1000f, global3.b))), !vec3<bool>(global0.x, false, false), func_2(func_2(Struct_1(44413u, -700f, global3.b))))), 907f);
}

fn func_7(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(i32(-1i) * -(~arg_1.x), 0i), _wgslsmith_mod_i32(0i, ~u_input.a));
    global2 = array<vec2<f32>, 18>();
    var_0 = u_input.e;
    return _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~(vec2<i32>(-21556i, -12747i) | u_input.b) ^ arg_1, vec2<i32>(1i, 2147483647i)), arg_1);
}

fn func_8(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = func_2(Struct_1(global3.a, -3092f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(951f)))), global3.b)));
    var var_1 = -arg_0.x;
    global3 = func_1();
    var var_2 = global3.a;
    var var_3 = var_0;
    return func_6(func_4(var_0, Struct_1(var_3.a, 1318f, -1085f), vec3<bool>(global0.x, all(select(vec2<bool>(true, global0.x), global0.yz, true)), true), func_6(var_0, _wgslsmith_f_op_f32(-func_1().b))), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(33966u, global3.a, 80359u), vec3<u32>(23375u, u_input.d, global3.a)), ~vec3<u32>(global3.a, u_input.d, global3.a)), -362f, global3.b), vec2<i32>(u_input.a, -9301i), func_1()), 33861u, vec3<i32>(17823i, 52586i, (~1i | (u_input.a >> (45634u % 32u))) & _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.b.x), vec2<i32>(u_input.c.x, u_input.e)), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(52606i, 21399i)))));
    let var_1 = func_1();
    var_0 = var_1;
    var var_2 = ~vec4<u32>(~(~(~u_input.d)), ~(~0u), ~78378u & func_4(func_4(var_1, Struct_1(global3.a, 933f, 818f), vec3<bool>(global0.x, true, false), Struct_1(var_0.a, var_1.c, -999f)), func_4(Struct_1(var_0.a, global3.c, global3.b), var_1, vec3<bool>(true, false, global0.x), Struct_1(83197u, var_1.b, var_0.c)), vec3<bool>(global0.x, global0.x, global0.x), Struct_1(global3.a, 1611f, -792f)).a, func_8(_wgslsmith_mod_vec2_i32(u_input.c, -u_input.c), _wgslsmith_add_u32(_wgslsmith_add_u32(21385u, var_1.a), abs(global3.a)), vec3<i32>(u_input.e, abs(-26907i), -u_input.e)).a);
    var var_3 = global3.a;
    global2 = array<vec2<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(1i, u_input.b.x, -select(-u_input.a, select(26005i, u_input.b.x, false), true)), abs((i32(-1i) * -u_input.b.x) | (u_input.e >> (func_6(var_1, 1931f).a % 32u))));
}

