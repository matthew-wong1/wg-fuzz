struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(10835u, 28260u, 57204u, 4294967295u, 22445i), vec4<u32>(4294967295u, 38505u, 4294967295u, 29122u), vec3<i32>(-22655i, 38326i, 36803i), Struct_1(64697u, 22667u, 49464u, 0u, 6462i))), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(0u, 85544u, 1u, 0u, -1i), vec4<u32>(4294967295u, 66744u, 29642u, 71065u), vec3<i32>(2147483647i, 9296i, 1i), Struct_1(26278u, 0u, 4294967295u, 0u, -11351i))), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(4294967295u, 0u, 4294967295u, 4294967295u, 2147483647i), vec4<u32>(4294967295u, 6275u, 0u, 0u), vec3<i32>(-63628i, 0i, 2147483647i), Struct_1(4294967295u, 0u, 0u, 881u, 25893i))), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(1u, 49002u, 4294967295u, 4294967295u, 6394i), vec4<u32>(0u, 114466u, 1u, 17973u), vec3<i32>(-30758i, i32(-2147483648), 0i), Struct_1(70217u, 26771u, 49233u, 4294967295u, i32(-2147483648)))));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> u32 {
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    let var_0 = Struct_1(select(u_input.b.x, u_input.b.x, !any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))), ~(~u_input.b.x), 730u, ~u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(reverseBits(~69166i), max(-1800i, select(-5814i, u_input.c.x, true)), ~_wgslsmith_add_i32(arg_1, u_input.a)), firstTrailingBit((arg_2 | arg_1) >> (~u_input.b.x % 32u))));
    global0 = array<Struct_3, 4>();
    return ~(~(~(~(~u_input.b.x))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    global0 = array<Struct_3, 4>();
    let var_0 = func_3(-559f, -22228i, countOneBits(u_input.a));
    var var_1 = _wgslsmith_f_op_f32(arg_2 + 409f);
    let var_2 = arg_1.x;
    var var_3 = ~u_input.b;
    return Struct_2(Struct_1(17760u & firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1214u, var_0), u_input.b.zx)), 2380u, 0u, min(u_input.b.x, arg_0), -20703i), firstTrailingBit(select(vec4<u32>(arg_0, arg_0, 1u, 13541u), ~vec4<u32>(4294967295u, u_input.b.x, 1u, var_0), select(vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(arg_3, false, false, false), vec4<bool>(arg_3, arg_3, arg_3, false))) >> ((~vec4<u32>(49837u, 33592u, arg_0, 51474u) & ~u_input.b) % vec4<u32>(32u))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.c.x, 30063i, u_input.c.x) >> (_wgslsmith_mod_vec3_u32(var_3.zxw, vec3<u32>(arg_0, u_input.b.x, var_0)) % vec3<u32>(32u))), select(~vec3<i32>(u_input.d, u_input.d, u_input.c.x), vec3<i32>(_wgslsmith_sub_i32(-10464i, -1i), -2147483647i, u_input.c.x), vec3<bool>(false, any(vec2<bool>(arg_3, arg_3)), false))), Struct_1(_wgslsmith_mod_u32(~4294967295u, 4294967295u << (func_3(arg_1.x, 1i, -1i) % 32u)), _wgslsmith_mod_u32(u_input.b.x, ~var_0), 31799u, var_3.x, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(u_input.a, u_input.c.x))), firstTrailingBit(reverseBits(u_input.c)))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(vec2<bool>(any(vec2<bool>(true, true)), select(min(u_input.d, u_input.a) > (u_input.c.x << (1371u % 32u)), true, false)), func_2(u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1028f * 1378f)), -620f), _wgslsmith_f_op_f32(f32(-1f) * -914f), all(vec3<bool>(true, false, false)) | (-u_input.a > -u_input.d)));
    var_0 = Struct_3(select(!vec2<bool>(all(var_0.a), true), select(var_0.a, var_0.a, var_0.a), vec2<bool>(any(vec4<bool>(true, false, var_0.a.x, false)) || true, all(select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, var_0.a.x), false)))), Struct_2(func_2(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(27626u, 32070u), u_input.b.zz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1788f, 1262f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f)), var_0.a.x).a, _wgslsmith_div_vec4_u32(abs(vec4<u32>(40956u, var_0.b.b.x, var_0.b.b.x, 0u)), max(var_0.b.b, var_0.b.b)) ^ select(vec4<u32>(0u, 4294967295u, 22724u, u_input.b.x), vec4<u32>(4294967295u, 20655u, 0u, 46292u), true), var_0.b.c | -_wgslsmith_add_vec3_i32(var_0.b.c, var_0.b.c), var_0.b.a));
    let var_1 = func_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, -1559f) - vec2<f32>(909f, 1195f)) - vec2<f32>(546f, -485f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-618f, 858f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, -281f)) * vec2<f32>(258f, 703f))))), 2017f, true).a;
    var var_2 = firstLeadingBit(min((_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -13316i, 0i, var_1.e), vec4<i32>(u_input.a, 38599i, u_input.c.x, u_input.a)) << (var_0.b.b % vec4<u32>(32u))) & firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-50678i, var_0.b.c.x, -2147483647i, var_1.e), vec4<i32>(-14254i, var_0.b.a.e, 1i, u_input.c.x))), vec4<i32>(var_0.b.c.x, -abs(u_input.c.x), countOneBits(var_1.e), var_0.b.c.x)));
    return func_2(71863u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1457f + -152f) - 1f))), -165f, !var_0.a.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_3(!(!vec2<bool>(true, any(vec4<bool>(true, false, false, false)))), Struct_2(func_1(), vec4<u32>(1u, var_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(70082u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(45132u, u_input.b.x), u_input.b.zy)), _wgslsmith_add_u32(~4294967295u, u_input.b.x)), ~firstLeadingBit(vec3<i32>(-32527i, -20594i, var_0.e) & vec3<i32>(var_0.e, u_input.a, u_input.a)), Struct_1(countOneBits(~1u), ~u_input.b.x, 4730u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, var_0.b), ~9523u, u_input.b.x), abs(2147483647i))));
    var var_2 = -var_1.b.c.x;
    var_0 = func_1();
    let var_3 = var_1.b.d;
    var var_4 = 70859u;
    let var_5 = Struct_3(vec2<bool>(var_1.a.x, true), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec2_i32(var_1.b.c.yx >> (vec2<u32>(var_3.b, 4294967295u) % vec2<u32>(32u)), vec2<i32>(13865i, 2147483647i) >> (vec2<u32>(38969u, var_0.a) % vec2<u32>(32u))) << (vec2<u32>(~var_3.d, min(u_input.b.x, 0u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(1639f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f * 1551f))))));
}

