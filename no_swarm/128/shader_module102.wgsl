struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<i32>(1i, -52373i, 14344i), vec4<bool>(false, false, true, true), 227f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1608f, -738f) * vec2<f32>(global0.a.c, global0.a.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, 1341f)) + vec2<f32>(global0.a.c, global0.a.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-127f, global0.a.c))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-995f, global0.a.c)), vec2<f32>(global0.a.c, _wgslsmith_f_op_f32(ceil(global0.a.c)))))));
    var var_1 = false;
    let var_2 = 57175u;
    global0 = Struct_3(Struct_1(firstLeadingBit(global0.a.a), global0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.c)) + _wgslsmith_f_op_f32(var_0.x - global0.a.c)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, global0.a.c)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-524f + var_0.x), _wgslsmith_f_op_f32(trunc(global0.a.c)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(1000f, global0.a.c, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(909f, var_0.x, 1000f, 1405f) * vec4<f32>(var_0.x, global0.a.c, 2277f, var_0.x))))));
    return ~u_input.b;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = vec4<u32>(func_3(), u_input.b, func_3(), ~u_input.b | 1u);
    var var_1 = _wgslsmith_f_op_f32(global0.a.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(floor(-601f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-481f)), _wgslsmith_f_op_f32(-1030f - global0.a.c))) - _wgslsmith_f_op_f32(global0.a.c * _wgslsmith_f_op_f32(select(global0.a.c, global0.a.c, arg_1)))));
    var_0 = countOneBits(~max(min(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), vec4<u32>(69474u, 1u, 4294967295u, arg_0) | vec4<u32>(0u, arg_0, u_input.b, 23357u)) >> (firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, 0u, 0u), vec4<u32>(4294967295u, arg_0, arg_0, arg_0))) % vec4<u32>(32u)));
    var_0 = select(vec4<u32>(~select(4294967295u, 26719u, true), 4294967295u, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 23499u, u_input.b), ~vec3<u32>(arg_0, u_input.b, var_0.x))) | countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.b, arg_0, var_0.x), vec4<u32>(40644u, arg_0, 1u, u_input.b)))), select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_0.x, 64117u, var_0.x, arg_0)) >> (select(vec4<u32>(1u, u_input.b, 1u, 104554u), vec4<u32>(arg_0, 40755u, u_input.b, u_input.b), global0.a.b) % vec4<u32>(32u)), vec4<u32>(~u_input.b, arg_0, ~0u, countOneBits(u_input.b))), ~vec4<u32>(reverseBits(var_0.x), u_input.b & 22917u, var_0.x, 4294967295u), true), !vec4<bool>(false, all(vec2<bool>(arg_1, global0.a.b.x)), all(vec4<bool>(false, arg_1, true, global0.a.b.x)) && (global0.a.a.x <= global0.a.a.x), global0.a.b.x && !global0.a.b.x));
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(12179u, arg_0), var_0.yy), firstLeadingBit(vec2<u32>(var_0.x, arg_0))), ~35388u, firstLeadingBit(0u), var_0.x), vec4<u32>(u_input.b, 4294967295u, _wgslsmith_clamp_u32(78665u, u_input.b, 43198u), 1961u) ^ vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 0u, 40120u), u_input.b, ~var_0.x)), _wgslsmith_mod_vec4_u32((~vec4<u32>(4294967295u, 5057u, 4294967295u, 90869u) >> (~vec4<u32>(73706u, arg_0, 4294967295u, arg_0) % vec4<u32>(32u))) >> ((~vec4<u32>(26083u, u_input.b, 0u, u_input.b) ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, var_0.x, 1u, arg_0), vec4<u32>(u_input.b, 46718u, 19525u, 1u))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, arg_0, var_0.x, u_input.b) ^ vec4<u32>(arg_0, 0u, var_0.x, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, 1u))));
    return Struct_2(vec4<u32>(reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0, 1u, var_0.x), _wgslsmith_add_u32(1u, var_0.x))), min(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 76426u), var_0.yw), abs(_wgslsmith_sub_u32(58993u, 30372u))), 55834u, ~_wgslsmith_mod_u32(1u, max(arg_0, 37325u))), vec3<i32>(1i, countOneBits(global0.a.a.x), select(global0.a.a.x, -79302i >> (abs(var_0.x) % 32u), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(784f, global0.a.c))))) - global0.a.c), global0.a, Struct_1(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(567i, global0.a.a.x, -44275i, u_input.a), vec4<i32>(u_input.a, 1i, global0.a.a.x, -10828i)), global0.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.a.x, global0.a.a.x, global0.a.a.x), global0.a.a)), !vec4<bool>(all(vec4<bool>(false, true, global0.a.b.x, global0.a.b.x)), arg_1, !arg_1, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c + global0.a.c)))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec4<u32> {
    var var_0 = func_2(u_input.b, !(select(2147483647i, -global0.a.a.x, global0.a.b.x) > -global0.a.a.x)).d;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-437f)), var_0.c, var_0.c, _wgslsmith_div_f32(global0.a.c, -773f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c * arg_1.e.c), 1000f, _wgslsmith_div_f32(var_0.c, arg_2), _wgslsmith_f_op_f32(max(arg_2, global0.a.c)))))));
    var var_2 = arg_1.a.yxx;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(select(~u_input.b, 1362u, global0.a.a.x == arg_1.e.a.x), true).d.c, 668f, -479f) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(-global0.a.c)))), -885f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.c + arg_1.e.c), 253f))));
    var_2 = arg_1.a.wxz;
    return vec4<u32>(~1u, min(arg_1.a.x, var_2.x), 29734u, arg_1.a.x << (_wgslsmith_mult_u32(49304u, 0u) % 32u));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(vec3<i32>(1i, -2147483647i, global0.a.a.x), select(global0.a.b, func_2(56266u, true).e.b, !any(vec2<bool>(false, arg_1.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(200f, _wgslsmith_f_op_f32(566f + arg_1.a.c), false)))));
    var var_1 = vec3<bool>(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, -1i), arg_2.a.a.x)) >= firstLeadingBit(1i), !global0.a.b.x, arg_2.a.b.x);
    let var_2 = false;
    let var_3 = Struct_1(vec3<i32>(firstLeadingBit(0i), arg_1.a.a.x, u_input.a), arg_1.a.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(804f, _wgslsmith_f_op_f32(round(-873f)))), func_2(~_wgslsmith_mod_u32(24408u, arg_0.x), true).c)));
    var var_4 = var_3.c;
    return Struct_3(func_2(countOneBits(firstTrailingBit(arg_0.x)), any(select(arg_1.a.b.wxw, vec3<bool>(false, var_2, false), var_3.b.zww))).e);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = 10022u;
    global0 = func_5(func_4(-630f > arg_1, func_2(~1u, true), _wgslsmith_f_op_f32(-arg_1)), Struct_3(Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(33044i, -41003i, -1i), global0.a.a), global0.a.a >> (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(global0.a.a, global0.a.a, global0.a.a)), vec4<bool>(global0.a.b.x, true, arg_0, !arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.c + arg_1), 597f)))), Struct_3(func_2(_wgslsmith_mod_u32(u_input.b, 28376u), global0.a.b.x).d));
    let var_1 = vec4<i32>(abs(global0.a.a.x), _wgslsmith_div_i32(~reverseBits(-1i), 36908i), -_wgslsmith_div_i32(_wgslsmith_div_i32(-global0.a.a.x, 1i), u_input.a), -1i);
    let var_2 = func_5(_wgslsmith_mod_vec4_u32(select(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 51959u, 4294967295u), vec4<u32>(59399u, u_input.b, 4294967295u, 10324u)), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)), vec4<u32>(~u_input.b, u_input.b, u_input.b, 4294967295u), 1u >= ~u_input.b), reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 23466u, 1u, 42931u), vec4<u32>(u_input.b, u_input.b, 41669u, u_input.b)))), Struct_3(Struct_1(func_5(vec4<u32>(15299u, 51109u, u_input.b, 24372u) | vec4<u32>(4294967295u, u_input.b, 60215u, u_input.b), Struct_3(global0.a), func_5(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_3(global0.a), Struct_3(Struct_1(global0.a.a, global0.a.b, 967f)))).a.a, vec4<bool>(any(global0.a.b), u_input.b <= u_input.b, all(vec3<bool>(true, false, true)), all(global0.a.b.wx)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -365f))), func_5(vec4<u32>(32898u, max(u_input.b, u_input.b) ^ u_input.b, 4294967295u, u_input.b), Struct_3(global0.a), func_5(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 16973u, 4930u), vec4<u32>(47133u, 29924u, 8720u, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 28887u, u_input.b, 0u), vec4<u32>(1u, 1u, 4294967295u, 18152u)), false), func_5(select(vec4<u32>(0u, u_input.b, 4294967295u, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), true), func_5(vec4<u32>(u_input.b, u_input.b, u_input.b, 936u), Struct_3(Struct_1(var_1.xxx, global0.a.b, 941f)), Struct_3(Struct_1(vec3<i32>(0i, u_input.a, u_input.a), global0.a.b, arg_1))), func_5(vec4<u32>(u_input.b, 54154u, u_input.b, 0u), Struct_3(Struct_1(vec3<i32>(global0.a.a.x, -1i, u_input.a), global0.a.b, 879f)), Struct_3(global0.a))), func_5(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), func_5(vec4<u32>(u_input.b, 63368u, u_input.b, 0u), Struct_3(Struct_1(var_1.xyx, vec4<bool>(arg_0, arg_0, false, arg_0), global0.a.c)), Struct_3(Struct_1(global0.a.a, vec4<bool>(global0.a.b.x, true, false, true), -1068f))), func_5(vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), Struct_3(global0.a), Struct_3(global0.a))))));
    let var_3 = func_2(u_input.b, !(var_2.a.b.x & false)).a.x > 17812u;
    return func_2(u_input.b, !(_wgslsmith_f_op_f32(floor(416f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.c))))).d;
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global0 = Struct_3(arg_1.e);
    var var_0 = func_2(abs(abs(21791u)), true && global0.a.b.x);
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) + vec2<f32>(arg_2, -407f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1402f, arg_2), vec2<f32>(-621f, arg_2)))))));
    var var_3 = abs(vec2<i32>(global0.a.a.x, -24698i));
    return arg_1;
}

fn func_7(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = global0.a;
    var var_1 = vec4<bool>(false, false, global0.a.b.x, all(vec3<bool>(!(u_input.b != 1u), var_0.b.x, arg_0.e.b.x)));
    global0 = Struct_3(Struct_1(~(vec3<i32>(arg_0.b.x, -5346i, u_input.a) << (~vec3<u32>(52463u, arg_0.a.x, u_input.b) % vec3<u32>(32u))), select(arg_0.d.b, var_0.b, func_1(any(var_0.b.yz), _wgslsmith_f_op_f32(-arg_0.c)).b.x), var_0.c));
    global0 = Struct_3(func_2(countOneBits(~u_input.b), func_5(~(~arg_0.a), Struct_3(global0.a), Struct_3(global0.a)).a.b.x).e);
    var_1 = vec4<bool>(true, func_5(select(~func_2(0u, arg_0.d.b.x).a, arg_0.a, !func_2(20569u, false).e.b), func_5(abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, 0u, 1u, arg_0.a.x), arg_0.a)), func_5(~vec4<u32>(19079u, 4294967295u, arg_0.a.x, 4294967295u), func_5(vec4<u32>(975u, 1u, u_input.b, 4294967295u), Struct_3(Struct_1(vec3<i32>(-2147483647i, -2147483647i, global0.a.a.x), var_0.b, -800f)), Struct_3(Struct_1(var_0.a, vec4<bool>(false, true, false, false), arg_0.c))), Struct_3(arg_0.d)), Struct_3(arg_0.e)), func_5(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 39924u, 46963u, 1u), arg_0.a), ~vec4<u32>(1u, u_input.b, 0u, u_input.b), arg_0.a), Struct_3(Struct_1(arg_0.d.a, global0.a.b, var_0.c)), Struct_3(Struct_1(global0.a.a, arg_0.e.b, arg_0.d.c)))).a.b.x, true, any(global0.a.b));
    return func_5(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, ~4294967295u, ~(~arg_0.a.x), 4294967295u), _wgslsmith_add_vec4_u32(arg_0.a, firstTrailingBit(countOneBits(vec4<u32>(u_input.b, 49877u, arg_0.a.x, 71997u))))), Struct_3(global0.a), func_5(func_6(true, func_6(var_1.x, Struct_2(vec4<u32>(u_input.b, arg_0.a.x, u_input.b, 68134u), arg_0.b, 1000f, arg_0.d, Struct_1(var_0.a, vec4<bool>(var_0.b.x, true, var_0.b.x, var_1.x), 1605f)), arg_0.d.c), 465f).a & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, arg_0.a.x, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 111001u), vec4<u32>(2038u, 0u, u_input.b, 27859u)), ~arg_0.a), Struct_3(func_5(countOneBits(vec4<u32>(u_input.b, arg_0.a.x, u_input.b, u_input.b)), func_5(arg_0.a, Struct_3(arg_0.e), Struct_3(Struct_1(arg_0.d.a, arg_0.d.b, arg_0.c))), Struct_3(Struct_1(vec3<i32>(-22518i, var_0.a.x, arg_0.e.a.x), vec4<bool>(false, true, false, arg_0.e.b.x), var_0.c))).a), func_5(_wgslsmith_mod_vec4_u32(~arg_0.a, vec4<u32>(4294967295u, 10250u, arg_0.a.x, 0u) << (vec4<u32>(u_input.b, 1u, arg_0.a.x, u_input.b) % vec4<u32>(32u))), Struct_3(Struct_1(arg_0.b, vec4<bool>(arg_1.x, false, true, arg_1.x), arg_0.e.c)), Struct_3(arg_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(func_6((~u_input.b << (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)) >= _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 4294967295u, 92381u)), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), Struct_2(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) >> (vec4<u32>(0u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u))), global0.a.a, global0.a.c, func_1(true, global0.a.c), Struct_1(_wgslsmith_mod_vec3_i32(global0.a.a, global0.a.a), func_1(false, global0.a.c).b, -478f)), func_2(select(_wgslsmith_mult_u32(12756u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(27280u, u_input.b, u_input.b)), global0.a.b.x), global0.a.b.x).c), !(!(!global0.a.b.wxy)));
    let var_0 = func_6(all(global0.a.b.zyz), func_2(u_input.b, func_1(!global0.a.b.x, global0.a.c).b.x), global0.a.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c));
    var var_2 = func_1(select(true, global0.a.b.x, !func_7(func_6(false, var_0, -185f), var_0.e.b.wxz).a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_0.e.c)));
    var var_3 = func_5(~vec4<u32>(~var_0.a.x, 90217u, 62740u, 0u), func_7(func_2(~(~18007u), !(!var_0.e.b.x)), !(!var_0.d.b.ywz)), Struct_3(Struct_1(vec3<i32>(func_1(false, 614f).a.x, countOneBits(-23896i), var_2.a.x ^ -10196i), var_0.d.b, -1853f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(all(var_3.a.b.ww), func_6(!(var_0.c == 912f), var_0, _wgslsmith_div_f32(1951f, _wgslsmith_f_op_f32(997f * var_3.a.c))), 1228f).x, abs(vec4<i32>(~(-2147483647i), -2531i, -firstTrailingBit(u_input.a), var_0.b.x)), vec2<u32>(73349u, _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, var_0.a.x) & var_0.a.zx), vec2<u32>(var_0.a.x, func_4(true, var_0, var_2.c).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.c - -1000f))) - _wgslsmith_f_op_f32(-var_2.c)));
}

