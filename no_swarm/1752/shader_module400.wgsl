struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool;

var<private> global2: f32;

var<private> global3: i32 = 65461i;

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> i32 {
    return -2147483647i;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    let var_0 = ~(~vec3<u32>(1u, 7510u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(u_input.b, 24394u)), u_input.b << (u_input.b % 32u), ~4294967295u)));
    let var_1 = 15837u >> (u_input.b % 32u);
    let var_2 = vec2<u32>(~0u, ~var_0.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2237f, arg_0, arg_0, 2030f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 892f, 715f, global4.x), vec4<f32>(global4.x, arg_0, global4.x, global4.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(356f, -453f, 1188f, global4.x) * vec4<f32>(global4.x, arg_0, arg_0, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), 591f, _wgslsmith_f_op_f32(-global4.x), arg_0))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.x, 308f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -2191f))))));
    return _wgslsmith_mod_u32(10856u & (abs(~var_2.x) | firstTrailingBit(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(107701u, 1u, 58766u)))), 19592u & var_1);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    global0 = Struct_3(abs(u_input.b), Struct_1(global0.c.a), Struct_1(arg_0.a), 1u, global0.e);
    var var_0 = ~global0.a;
    global3 = _wgslsmith_div_i32(firstTrailingBit(1i), 1i);
    let var_1 = global4.x;
    var var_2 = max(-2147483647i, ~(-1i));
    return arg_2.x | _wgslsmith_add_i32(arg_2.x, -30951i);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = func_4(Struct_1(!select(global0.b.a, global0.b.a, global0.b.a.x)), func_3(global4.x, select(!vec3<bool>(global0.c.a.x, global0.c.a.x, false), !vec3<bool>(global0.c.a.x, false, global0.b.a.x), true)), vec2<i32>(u_input.a, 2147483647i)) >> (_wgslsmith_div_u32(u_input.b >> (firstTrailingBit(1u) % 32u), global0.a & (~u_input.b << (1u % 32u))) % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(1401f, _wgslsmith_f_op_f32(-746f * global4.x), all(global0.c.a))), global4.x))));
    let var_2 = var_1.x;
    global3 = -10323i;
    return Struct_2(-5370i, global0.b);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(5544u, global0.c, Struct_1(!func_2(countOneBits(vec3<i32>(0i, arg_0.a, arg_0.a))).b.a), global0.d, ~reverseBits(firstTrailingBit(global0.e)));
    var var_1 = -968f;
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.x + global4.x), _wgslsmith_div_f32(global4.x, -669f))))))));
    let var_3 = Struct_1(vec3<bool>(false, ~u_input.a == ~arg_0.a, all(vec3<bool>(arg_0.b.a.x, true, arg_0.b.a.x)) & (true | (var_2.a > 1i))));
    return arg_0;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, -(~(arg_1.a | 1i))), _wgslsmith_sub_vec3_i32(countOneBits(-vec3<i32>(arg_1.a, arg_1.a, arg_1.a) >> (vec3<u32>(u_input.b, global0.e, 84065u) % vec3<u32>(32u))), vec3<i32>(u_input.a, arg_1.a, (u_input.a | arg_1.a) & u_input.a)));
    var var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(67373u, global0.a, u_input.b, 26219u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, 1u), vec4<u32>(0u, u_input.b, global0.a, 57097u))), u_input.b), ~firstTrailingBit(~(~vec2<u32>(u_input.b, global0.a))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.b), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, 72825u))));
    var_1 = abs(~(abs(vec2<u32>(u_input.b, 9780u)) ^ ~vec2<u32>(0u, 4294967295u)) & vec2<u32>(~(~u_input.b), 4294967295u));
    var var_2 = _wgslsmith_add_u32(1u, u_input.b);
    let var_3 = arg_0;
    return Struct_3(u_input.b, Struct_1(global0.b.a), Struct_1(select(!(!vec3<bool>(true, arg_1.b.a.x, false)), !vec3<bool>(global0.b.a.x, true, false), select(!vec3<bool>(arg_1.b.a.x, true, global0.b.a.x), select(vec3<bool>(true, arg_1.b.a.x, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), global0.c.a.x))), _wgslsmith_sub_u32(56791u, ~(~global0.e)), _wgslsmith_add_u32(reverseBits(u_input.b ^ _wgslsmith_mod_u32(74278u, var_1.x)), 47185u));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    let var_0 = reverseBits(4294967295u);
    let var_1 = func_5(func_2(-(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_3.x, arg_3.x), vec3<i32>(u_input.a, u_input.a, 1i)) ^ (vec3<i32>(u_input.a, arg_1, 22529i) ^ vec3<i32>(2147483647i, 26478i, arg_1)))));
    global3 = min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.a, arg_1), arg_1) & _wgslsmith_mod_i32(~var_1.a, i32(-1i) * -2147483647i), u_input.a), -_wgslsmith_sub_i32(arg_1, _wgslsmith_div_i32(i32(-1i) * -2147483647i, var_1.a)));
    let var_2 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, 316f, 1177f, 497f) + vec4<f32>(global4.x, 1000f, global4.x, global4.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(443f, -929f, -1000f, 466f)))), vec4<f32>(global4.x, _wgslsmith_f_op_f32(sign(global4.x)), global4.x, _wgslsmith_f_op_f32(-global4.x)))), func_2(countOneBits(vec3<i32>(~44691i, ~56059i, ~(-2147483647i)))));
    global1 = true;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = max(func_7(global0.b, firstTrailingBit(func_1()) >> (0u % 32u), func_6(vec4<f32>(_wgslsmith_f_op_f32(-1318f + 134f), global4.x, -1015f, -337f), func_5(func_2(vec3<i32>(21004i, 43396i, u_input.a)))), vec2<i32>(-1i, _wgslsmith_add_i32(min(u_input.a, u_input.a), u_input.a | u_input.a))), func_1());
    let var_0 = _wgslsmith_div_u32(global0.d, ~_wgslsmith_div_u32(u_input.b, global0.a));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(~u_input.a, u_input.a ^ u_input.a, min(u_input.a, 0i), max(u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(firstLeadingBit(select(vec4<i32>(3420i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -20936i), global0.b.a.x)), vec4<i32>(0i, u_input.a, ~u_input.a, u_input.a >> (4294967295u % 32u)))), func_2(vec3<i32>(-8040i, -(u_input.a >> (u_input.b % 32u)), u_input.a)).b);
    var var_2 = abs(vec4<i32>(_wgslsmith_add_i32(-func_2(vec3<i32>(-11485i, 1i, 26627i)).a, reverseBits(26820i)), -2147483647i, reverseBits(u_input.a), ~_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), 0i)));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1129f), _wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.x, 1269f, -877f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -950f, -562f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-954f - 599f))), _wgslsmith_f_op_f32(f32(-1f) * -1598f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, global4.x)))), !func_5(func_2(vec3<i32>(var_1.a, -12585i, 2147483647i))).b.a)));
    global0 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(var_0, global0.a, global0.e, 9668u)), vec4<u32>(1u, var_0, global0.e, ~1u)), ~min(global0.e, 4294967295u)), Struct_1(vec3<bool>(true, any(func_2(var_2.wxx).b.a), global0.c.a.x && true)), func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-729f, global4.x, global4.x, -359f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-674f, global4.x, -857f, 1529f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(980f)), _wgslsmith_f_op_f32(global4.x + global4.x), 526f, _wgslsmith_f_op_f32(-var_3.x))), Struct_2(func_4(Struct_1(vec3<bool>(true, global0.b.a.x, true)), ~var_0, ~vec2<i32>(-2147483647i, u_input.a)), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, var_1.b.a.x, var_1.b.a.x), vec3<bool>(var_1.b.a.x, global0.c.a.x, global0.c.a.x))))).c, _wgslsmith_mult_u32(abs(u_input.b), ~var_0), global0.d);
    let var_4 = _wgslsmith_div_i32(-34384i, func_1());
    global3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(48666i);
}

