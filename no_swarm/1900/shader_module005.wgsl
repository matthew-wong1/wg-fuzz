struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<u32> {
    let var_0 = max(vec3<u32>(~((19107u | u_input.a) ^ abs(1u)), u_input.a, u_input.b), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(45121u, 0u, u_input.a), vec3<u32>(u_input.b, 1413u, u_input.b)), vec3<u32>(u_input.a, 0u, 6981u) & vec3<u32>(17661u, 4294967295u, u_input.a))));
    global0 = array<f32, 32>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a, 32u)], -916f)), -1585f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_f_op_f32(step(-622f, global0[_wgslsmith_index_u32(u_input.a, 32u)]))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-543f)), global0[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_f32(178f + 1545f), global0[_wgslsmith_index_u32(0u, 32u)]), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 32u)] * global0[_wgslsmith_index_u32(u_input.b, 32u)]), _wgslsmith_f_op_f32(-843f - global0[_wgslsmith_index_u32(u_input.b, 32u)]), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.x, 32u)], -1408f, true)), _wgslsmith_f_op_f32(round(-1215f))))), Struct_1(u_input.b, u_input.a, arg_0), Struct_2(_wgslsmith_div_i32(arg_0, -18758i), Struct_1(1u, ~u_input.b, 0i)));
    global0 = array<f32, 32>();
    let var_2 = var_1.c;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.b), min(vec4<u32>(1u, 0u, u_input.a, 4294967295u), vec4<u32>(47064u, 1u, 63251u, 29696u))), ~(vec4<u32>(var_2.b.b, u_input.a, var_2.b.b, 1u) & vec4<u32>(u_input.b, 26375u, u_input.a, u_input.a))), ~46198u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(33106u, 0u, u_input.a, var_0.x)), vec4<u32>(var_1.b.a, reverseBits(var_0.x), 1u, var_0.x << (21012u % 32u)))), ~_wgslsmith_mult_vec3_u32(var_0, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, var_1.c.b.b), var_0), vec3<u32>(u_input.b, 0u, 23141u), countOneBits(vec3<u32>(var_1.c.b.b, var_2.b.b, var_2.b.a)))));
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_0 = Struct_3(vec3<u32>(~abs(u_input.a), _wgslsmith_sub_u32(u_input.a, ~u_input.a), 0u) ^ func_3(~27337i, ~reverseBits(0i)), vec3<u32>(u_input.a, u_input.a, 0u), Struct_2(abs(_wgslsmith_clamp_i32(-451i, -10424i, 2404i)) & -(i32(-1i) * -237i), Struct_1(u_input.a, u_input.a, -(i32(-1i) * -24113i))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(89781u, 4294967295u, u_input.a, u_input.b), ~vec4<u32>(u_input.a, 4294967295u, 1u, u_input.b)), _wgslsmith_sub_u32(~1u, ~u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 16433u, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a), u_input.b), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 6799u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, 1u, 61031u)))), _wgslsmith_mod_i32(select(1i, _wgslsmith_clamp_i32(-1i, 2147483647i, -1i), all(vec2<bool>(false, true))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -11805i, 20218i), vec3<i32>(59867i, -1i, -4892i)), vec3<i32>(17566i, 0i, 0i)))), -8684i);
    let var_1 = Struct_3(firstTrailingBit(_wgslsmith_add_vec3_u32(reverseBits(max(vec3<u32>(var_0.c.b.a, var_0.c.b.b, u_input.b), var_0.b)), abs(vec3<u32>(17725u, 0u, 4294967295u)))), vec3<u32>(4294967295u, 17494u, var_0.d.a), Struct_2(~1i, Struct_1(114106u, var_0.d.b, countOneBits(2147483647i))), Struct_1(0u, u_input.b, _wgslsmith_div_i32(var_0.d.c, -21675i)), min(-30285i, _wgslsmith_mult_i32(abs(var_0.e), var_0.c.b.c)));
    var var_2 = abs(select(vec3<u32>(0u >> (u_input.b % 32u), 53691u << (1u % 32u), ~20932u), var_1.b, vec3<bool>(true, true, true))) & vec3<u32>(~var_0.b.x, 5288u, var_0.d.b);
    return Struct_2(abs(var_1.d.c), Struct_1(4294967295u, ~func_3(_wgslsmith_clamp_i32(var_1.e, 33487i, 19725i), var_1.e).x, var_0.c.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(i32(-1i) * -8764i, func_2().b);
    var var_1 = all(!(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true))));
    var var_2 = false;
    var var_3 = func_2();
    let var_4 = func_2().b;
    return var_3.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = 1i;
    let var_1 = Struct_2(~_wgslsmith_mult_i32(arg_1.c, reverseBits(~(-15936i))), Struct_1(arg_1.a, arg_2.a, arg_3.x));
    let var_2 = func_2().b;
    let var_3 = ~firstTrailingBit(_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, 54733u, arg_2.a)), ~countOneBits(vec3<u32>(0u, 37013u, 43521u))));
    var var_4 = ~_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(arg_3, -arg_3), vec3<i32>(-1i, 2147483647i, 1i ^ arg_2.c));
    return 34533u;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-312f, arg_2, -267f, global0[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-641f))), Struct_1(1u, select(u_input.b, 0u, false), i32(-1i) * -14836i), func_4(func_2(), func_2().b, 1664u), vec3<i32>(func_2().a, select(-2147483647i, -2147483647i, arg_0), -26381i)), 32u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-872f - _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(30171u, 32u)]))), -1000f, -2607f, arg_1.x)));
    var var_1 = Struct_3(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(32909u, u_input.b), vec2<u32>(9724u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(40327u, 4294967295u))), abs(~u_input.a), 1u), vec3<u32>(abs(select(4294967295u, 0u, false)), u_input.b, ~u_input.a)), ~vec3<u32>(u_input.b, 0u, ~abs(u_input.a)), func_2(), Struct_1(~u_input.b, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(1174i, -1i)), 48971i), vec3<i32>(1i, 1i, 1i))), -(i32(-1i) * -2147483647i));
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - 636f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-383f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + var_0.x)), -596f), func_2().b, Struct_2(-reverseBits(1i), func_4(var_1.c, var_1.c.b, abs(_wgslsmith_sub_u32(u_input.b, u_input.b)))));
    let var_3 = !select(vec3<bool>(arg_0, true, true == any(vec4<bool>(arg_0, true, false, arg_0))), select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, false, arg_0), !vec3<bool>(true, arg_0, arg_0)), select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), true)), vec3<bool>(u_input.a <= 0u, any(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, false), arg_0)), true));
    var var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, var_2.c.b.c, var_2.b.c, -1i) & select(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.c, 1i, 0i, var_1.d.c), vec4<i32>(22991i, 2147483647i, var_1.d.c, -1i)), vec4<i32>(var_2.b.c, var_2.c.b.c, -10487i, 16727i) >> (vec4<u32>(48071u, u_input.b, u_input.b, 1u) % vec4<u32>(32u))), ~(-vec4<i32>(var_1.e, 1i, 24524i, 2147483647i)), var_3.x), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(45497i, -2147483647i, 2147483647i, -55236i) & vec4<i32>(2147483647i, -2147483647i, var_2.b.c, var_2.b.c), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, -1i, var_2.c.b.c, var_1.d.c), vec4<i32>(var_1.e, var_2.c.a, -7282i, -30587i)), var_2.b.c, 6114i, min(var_2.b.c, var_1.d.c))), vec4<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.c, 1i, var_1.c.b.c), vec3<i32>(var_1.e, var_1.c.b.c, var_1.c.a)), firstLeadingBit(var_2.c.a)), 0i, var_1.d.c)));
    return ~select(var_1.b, vec3<u32>(10711u, _wgslsmith_mult_u32(0u, 1u), ~4294967295u) >> (var_1.a % vec3<u32>(32u)), false);
}

fn func_6(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = 2147483647i;
    global0 = array<f32, 32>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), global0[_wgslsmith_index_u32(u_input.b, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1791f + 591f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 32u)]))));
    let var_2 = global0[_wgslsmith_index_u32(4753u, 32u)];
    let var_3 = Struct_3(_wgslsmith_add_vec3_u32(min(arg_0, vec3<u32>(u_input.b, u_input.b, 24601u) & min(arg_0, vec3<u32>(arg_0.x, 0u, 0u))), vec3<u32>(select(u_input.b, _wgslsmith_mult_u32(arg_0.x, arg_0.x), true), 57774u, u_input.a)), ~select(_wgslsmith_mod_vec3_u32(arg_0 | arg_0, ~vec3<u32>(arg_0.x, arg_0.x, u_input.b)), ~arg_0, vec3<bool>(true, true, true)), func_2(), Struct_1(7401u >> (func_3(_wgslsmith_mult_i32(-1i, 53542i), _wgslsmith_dot_vec3_i32(vec3<i32>(8398i, -13959i, var_0), vec3<i32>(0i, 17592i, 0i))).x % 32u), arg_0.x & ~67799u, ~18365i), var_0);
    return func_2().b;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_3 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_0 = vec2<bool>(firstTrailingBit(595i) <= -2147483647i, (all(vec3<bool>(true, true, true)) | (_wgslsmith_dot_vec2_i32(vec2<i32>(-53416i, arg_0.c), vec2<i32>(23130i, arg_0.c)) != abs(arg_0.c))) || true);
    var var_1 = 278f;
    var_0 = vec2<bool>(any(vec4<bool>(all(vec2<bool>(var_0.x, false)), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), false, !all(vec2<bool>(true, var_0.x)))), true);
    return Struct_3(arg_1, abs(arg_1), Struct_2(41580i, func_2().b), Struct_1(0u, 2004u, select(18293i, arg_0.c >> (~95817u % 32u), !(arg_0.c != -2147483647i))), -arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(_wgslsmith_add_vec3_u32(~func_1(false, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -549f, global0[_wgslsmith_index_u32(0u, 32u)], 629f), global0[_wgslsmith_index_u32(35803u, 32u)]), abs(vec3<u32>(u_input.a, u_input.b, u_input.b)) & firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 11046u))), !(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 32u)])) > _wgslsmith_div_f32(821f, global0[_wgslsmith_index_u32(u_input.a, 32u)]))), countOneBits(vec3<u32>(min(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(20512u, u_input.b, u_input.b), vec3<u32>(21681u, 0u, 3003u))), u_input.a ^ 17354u, u_input.b)), vec4<f32>(289f, -411f, global0[_wgslsmith_index_u32(~u_input.a & 31033u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]));
    let var_1 = var_0.d.c;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(~(-660i), ~(func_2().b.c >> (1u % 32u)), ~17721i), vec3<i32>(var_0.e, ~_wgslsmith_div_i32(firstLeadingBit(2147483647i), 18786i), -firstTrailingBit(-15227i ^ var_0.c.a)));
    var_0 = Struct_3(var_0.b, select(_wgslsmith_add_vec3_u32(func_7(var_0.d, vec3<u32>(var_0.a.x, u_input.b, u_input.a), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 1643f, -415f, -783f)).b, var_0.b), _wgslsmith_sub_vec3_u32(var_0.b, var_0.b) ^ vec3<u32>(0u, 16670u, 30455u), vec3<bool>(true, true, true)) | firstTrailingBit((var_0.b | var_0.b) << (~var_0.a % vec3<u32>(32u))), var_0.c, Struct_1(~func_7(func_4(var_0.c, Struct_1(u_input.b, var_0.b.x, var_0.e), u_input.a), var_0.a, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(33664u, 32u)], 218f)).c.b.a, var_0.b.x << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), var_0.a.x) % 32u), -16262i), _wgslsmith_clamp_i32(17582i, 2147483647i << (_wgslsmith_add_u32(abs(u_input.b), ~var_0.b.x) % 32u), select(var_2.x, ~33883i, true)));
    global0 = array<f32, 32>();
    var_0 = Struct_3(~(vec3<u32>(_wgslsmith_sub_u32(20504u, 0u), 0u, select(var_0.b.x, var_0.d.a, true)) | var_0.a), ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(9202u, var_0.c.b.a, 6781u)), (vec3<u32>(var_0.b.x, 1u, u_input.b) << (var_0.a % vec3<u32>(32u))) >> ((var_0.a >> (var_0.b % vec3<u32>(32u))) % vec3<u32>(32u))), var_0.c, func_6(_wgslsmith_mod_vec3_u32(var_0.a, ~(vec3<u32>(57797u, u_input.a, 1328u) >> (var_0.b % vec3<u32>(32u)))), all(vec3<bool>(true, true, false))), _wgslsmith_add_i32(var_2.x >> (~101537u % 32u), _wgslsmith_div_i32(-16346i, var_2.x)));
    let var_3 = _wgslsmith_dot_vec4_i32(abs(~(~vec4<i32>(var_0.c.b.c, -49013i, var_2.x, var_2.x))), countOneBits(vec4<i32>(-1i) * -abs(vec4<i32>(var_0.d.c, var_0.d.c, var_2.x, 1i))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1000f, global0[_wgslsmith_index_u32(min(u_input.a, 0u & u_input.a), 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)])) + 250f)));
    let var_5 = func_7(var_0.d, vec3<u32>(var_0.a.x, 0u, var_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(var_0.d.a, 32u)], -1547f, var_4.x, var_4.x), vec4<f32>(1000f, -211f, 977f, -1000f), vec4<bool>(false, false, true, false))))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(4294967295u << (u_input.a % 32u)))), ~1u, -64891i, 1f, var_4.x);
}

