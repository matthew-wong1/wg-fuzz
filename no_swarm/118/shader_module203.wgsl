struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 84418u;

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(46384u, 31155u, 104830u, 48442u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 167258u, 114454u, 1u)), Struct_1(vec4<u32>(4294967295u, 0u, 27216u, 64866u)), vec3<i32>(-45842i, -1i, i32(-2147483648)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool) -> vec4<u32> {
    global0 = countOneBits(0u);
    var var_0 = ~u_input.b.x;
    global3 = Struct_2(Struct_1(reverseBits(vec4<u32>(arg_0, global3.b.a.x, 72809u, u_input.d.x)) ^ global3.a.a), Struct_1(countOneBits(vec4<u32>(min(arg_0, 27407u), ~51160u, 24454u, ~u_input.b.x))), global3.c);
    var_0 = ~(~1u);
    global3 = Struct_2(global3.a, Struct_1(vec4<u32>(1u, ~min(1u, global3.a.a.x), ~global3.a.a.x, min(_wgslsmith_div_u32(global2.a.x, global3.a.a.x), _wgslsmith_clamp_u32(4294967295u, global2.a.x, 1u)))), vec3<i32>(i32(-1i) * -global3.c.x, 15376i, global3.c.x));
    return _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global2.a.x, _wgslsmith_div_u32(1553u, _wgslsmith_div_u32(54887u, u_input.d.x)), arg_0), vec4<u32>(~(~1u), min(arg_0 & 1u, _wgslsmith_sub_u32(global2.a.x, 0u)), global3.b.a.x, _wgslsmith_div_u32(global3.b.a.x, arg_0 ^ global3.b.a.x)), _wgslsmith_add_vec4_u32(global2.a, max(vec4<u32>(1u, arg_0, 11152u, 37753u) & vec4<u32>(global3.b.a.x, global3.a.a.x, 58089u, global3.a.a.x), vec4<u32>(4786u, 62147u, u_input.a, 36493u) >> (vec4<u32>(31684u, 86818u, 42910u, 28505u) % vec4<u32>(32u))))), vec4<u32>(_wgslsmith_mod_u32(global3.a.a.x, ~firstLeadingBit(89260u)), countOneBits(global3.b.a.x | _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), ~global3.a.a.x, 15280u));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> vec4<u32> {
    var var_0 = vec2<i32>(2147483647i, firstTrailingBit(-1i));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~(firstTrailingBit(global2.a.x) ^ 17917u), 4294967295u, u_input.d.x), vec3<u32>(_wgslsmith_mod_u32(~u_input.a, ~41692u), firstLeadingBit(select(~u_input.b.x, global2.a.x << (0u % 32u), all(vec4<bool>(false, true, true, false)))), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(36987u, 55145u), abs(vec2<u32>(u_input.e, global2.a.x))))));
    let var_2 = Struct_2(Struct_1(abs(u_input.b)), Struct_1(u_input.b), _wgslsmith_clamp_vec3_i32(~(firstLeadingBit(vec3<i32>(u_input.c, 66981i, u_input.c)) >> (abs(vec3<u32>(global3.b.a.x, 3767u, 29611u)) % vec3<u32>(32u))), vec3<i32>(abs(global3.c.x) | firstLeadingBit(arg_0.x), min(2135i, ~arg_0.x), 0i), firstLeadingBit(arg_0.yww | vec3<i32>(-1i, var_0.x, -13502i)) ^ vec3<i32>(~1i, reverseBits(-2147483647i), -12303i)));
    var var_3 = var_2;
    let var_4 = 1066f;
    return vec4<u32>(func_3(firstLeadingBit(~1u), select(any(vec2<bool>(false, true)), 113f < var_4, true) && any(vec4<bool>(true, true, true, true))).x, _wgslsmith_mult_u32(0u, u_input.b.x), select(_wgslsmith_mult_u32(u_input.d.x, 1095u), 4294967295u, true), ~41468u >> (~(~u_input.d.x) % 32u));
}

fn func_2() -> u32 {
    global1 = array<vec2<i32>, 18>();
    var var_0 = func_4(select(-vec4<i32>(~u_input.c, global3.c.x ^ global3.c.x, u_input.c, -global3.c.x), ~abs(vec4<i32>(-6968i, -16649i, u_input.c, -16855i)), false), _wgslsmith_dot_vec4_u32(~global3.b.a, (func_3(4494u, true) & select(global3.a.a, global3.a.a, vec4<bool>(true, false, false, true))) | u_input.b));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-170f, -972f, false)), _wgslsmith_div_f32(1520f, 119f))) - 1524f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-260f)))))), 541f, -451f);
    let var_2 = Struct_2(global3.a, Struct_1(vec4<u32>(func_4(~vec4<i32>(u_input.c, -1i, 36829i, -2147483647i), 1u).x, ~u_input.e, 29707u ^ u_input.e, u_input.a)), min(global3.c, ~global3.c));
    let var_3 = Struct_2(Struct_1(~func_3(_wgslsmith_dot_vec4_u32(global3.a.a, u_input.b), true)), Struct_1(vec4<u32>(_wgslsmith_sub_u32(~global3.b.a.x, abs(4294967295u)), 19272u, _wgslsmith_div_u32(global3.a.a.x, abs(u_input.e)), 0u)), global3.c);
    return 103539u;
}

fn func_1() -> i32 {
    let var_0 = false;
    global0 = ~(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zx, abs(vec2<u32>(50690u, 0u))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global3.b.a.yw, vec2<u32>(29357u, global2.a.x)), _wgslsmith_sub_vec2_u32(u_input.d.zx, global3.a.a.xw))) | global2.a.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 229f), 1054f))) - 455f);
    let var_2 = firstTrailingBit(~4294967295u);
    let var_3 = vec3<u32>(~global3.a.a.x, global2.a.x, _wgslsmith_mult_u32(global2.a.x, func_2()));
    return 1275i;
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = ~countOneBits(arg_3);
    var var_1 = (~vec3<u32>(func_2(), _wgslsmith_clamp_u32(var_0, 4294967295u, arg_3), arg_3) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(~18765u, 41017u, arg_3), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 38206u, 3970u), vec3<u32>(0u, 59449u, u_input.d.x)), vec3<u32>(var_0, 4294967295u, global2.a.x)))) | _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(global3.b.a.ywz, _wgslsmith_clamp_vec3_u32(func_3(u_input.d.x, true).zwx, global3.b.a.xyw, global3.a.a.wxw)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(arg_3, 4294967295u, u_input.b.x)) << (countOneBits(vec3<u32>(31022u, 1u, 17750u)) % vec3<u32>(32u)), vec3<u32>(5396u, reverseBits(global3.a.a.x), 1u)));
    global2 = global3.a;
    let var_2 = Struct_2(global3.b, Struct_1(u_input.b | u_input.b), arg_0);
    var var_3 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<i32>(min(-2147483647i << (global2.a.x % 32u), 19177i) >> (u_input.e % 32u), 25579i, global3.c.x), min(abs(i32(-1i) * -31524i), _wgslsmith_clamp_i32(global3.c.x << (1u % 32u), global3.c.x, u_input.c)) & global3.c.x, -vec4<i32>(func_1() | global3.c.x, -2147483647i, global3.c.x & global3.c.x, firstTrailingBit(select(-60704i, u_input.c, false))), global2.a.x);
    let var_1 = ~vec2<i32>(~2147483647i, var_0.c.x) & select(func_5(~select(global3.c, vec3<i32>(u_input.c, global3.c.x, global3.c.x), true), u_input.c, vec4<i32>(-1i) * -vec4<i32>(-7750i, global3.c.x, 0i, var_0.c.x), 16229u).c.zz, vec2<i32>(45686i, -942i), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)) && any(vec2<bool>(true, true)));
    var var_2 = any(vec3<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), false, !any(vec3<bool>(true, false, false))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(770f - -1480f), -522f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-170f, -1391f)), _wgslsmith_f_op_f32(trunc(-1345f)))))) * _wgslsmith_f_op_f32(1f * 395f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-422f))))));
    var var_4 = Struct_1(~(~vec4<u32>(78806u, 100331u, 0u, u_input.a) << (var_0.b.a % vec4<u32>(32u))));
    var var_5 = vec2<u32>(~(~4294967295u), ~reverseBits(_wgslsmith_sub_u32(1u | global3.b.a.x, var_4.a.x)));
    var var_6 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(f32(-1f) * -1414f)));
}

