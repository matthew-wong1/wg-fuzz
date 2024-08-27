struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 10096u), vec2<bool>(true, false)), 7224u, vec2<bool>(true, false), vec4<i32>(-26243i, 2147483647i, -20982i, 0i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = Struct_2(arg_1, ~firstLeadingBit(_wgslsmith_sub_u32(37221u, _wgslsmith_clamp_u32(72234u, arg_1.a.x, 79878u))), !arg_1.b, _wgslsmith_mult_vec4_i32(~countOneBits(global0.d) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 1u, 4294967295u, global0.b), vec4<u32>(4294967295u, 27217u, u_input.b.x, global0.b)), vec4<u32>(arg_3, arg_3, 41246u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, 22242i, 1i, 45504i), global0.d << (vec4<u32>(41820u, u_input.d.x, u_input.d.x, 1u) % vec4<u32>(32u))) & vec4<i32>(1669i, i32(-1i) * -2147483647i, -global0.d.x, global0.d.x)));
    global0 = Struct_2(Struct_1(~(~(vec2<u32>(1u, var_0.a.a.x) ^ vec2<u32>(22725u, arg_1.a.x))), vec2<bool>(true, !(!arg_1.b.x))), max(14177u, u_input.b.x) & select(var_0.b, var_0.b, global0.c.x), !vec2<bool>(false, !(!var_0.a.b.x)), global0.d ^ _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global0.d ^ vec4<i32>(-79398i, u_input.a, -29876i, u_input.a), global0.d), global0.d));
    var_0 = Struct_2(Struct_1(abs(global0.a.a), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1530f) >= _wgslsmith_f_op_f32(arg_2 + arg_2), all(vec3<bool>(global0.c.x, true, var_0.c.x)) & (true | global0.c.x))), ~55588u, vec2<bool>(all(select(select(var_0.a.b, var_0.a.b, false), select(vec2<bool>(var_0.c.x, var_0.c.x), global0.a.b, arg_1.b), select(vec2<bool>(false, global0.c.x), global0.a.b, var_0.a.b.x))), all(select(select(arg_1.b, global0.a.b, var_0.c), select(vec2<bool>(var_0.a.b.x, false), arg_1.b, global0.a.b), false))), u_input.c);
    global0 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.a.a.x, global0.b), vec2<u32>(23853u, 0u))), vec2<bool>(false, !select(false, arg_1.b.x, global0.c.x))), countOneBits(abs(_wgslsmith_add_u32(arg_1.a.x, _wgslsmith_mod_u32(arg_1.a.x, arg_3)))), select(!arg_1.b, select(arg_1.b, select(arg_1.b, select(vec2<bool>(global0.a.b.x, false), var_0.c, global0.c.x), true), !global0.a.b.x), vec2<bool>(false, !var_0.c.x)), ~global0.d);
    var_0 = Struct_2(var_0.a, select(~u_input.d.x & 5636u, reverseBits(~var_0.a.a.x), max(arg_3, u_input.b.x) != 4294967295u) >> (_wgslsmith_mod_u32(var_0.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.a.a.x, arg_1.a.x, u_input.d.x, 1u)), min(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_3, global0.b), vec4<u32>(8570u, 119132u, 9876u, u_input.b.x)))) % 32u), global0.c, global0.d & u_input.c);
    return select(firstTrailingBit(arg_3), _wgslsmith_mult_u32(arg_3, arg_1.a.x), arg_1.b.x);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = all(vec3<bool>(false || (_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.x, -6723i, 1i), vec3<i32>(-36135i, global0.d.x, var_1.d.x)) <= min(var_1.d.x, 2147483647i)), global0.c.x, var_0.a.a.x <= _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.b, 43981u), ~var_1.b)));
    var var_3 = var_1.a;
    let var_4 = abs(abs(max(var_1.d.zyw, vec3<i32>(~8682i, global0.d.x, var_0.d.x >> (93633u % 32u)))));
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global0.a, u_input.b.x, !select(vec2<bool>(all(vec3<bool>(true, true, true)), true), !vec2<bool>(global0.a.b.x, global0.a.b.x), global0.a.b), vec4<i32>(-_wgslsmith_div_i32(global0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, 16122i), vec4<i32>(u_input.a, global0.d.x, -1i, 17804i))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.d.x, 1i) ^ vec2<i32>(1i, 25469i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, global0.d.x), global0.d.xz, vec2<i32>(-69179i, u_input.c.x))), u_input.c.xz), -_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.d.x, 22936i, global0.d.x, -15179i), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-2147483647i, 38472i, u_input.c.x, global0.d.x))), -2147483647i));
    let var_1 = Struct_1(vec2<u32>(global0.b, var_0.a.a.x), vec2<bool>(!var_0.c.x, true));
    global0 = Struct_2(var_1, ~(func_4(func_3(-421f, var_0.a, -843f, 4294967295u), Struct_2(Struct_1(u_input.b, var_0.c), var_1.a.x, var_1.b, u_input.c)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, var_1.a.x, 4294967295u, var_1.a.x), abs(vec4<u32>(72358u, 67811u, 1u, 1u))) % 32u)), var_1.b, _wgslsmith_div_vec4_i32(~min(vec4<i32>(var_0.d.x, u_input.a, 2491i, u_input.a) ^ var_0.d, vec4<i32>(-1i, var_0.d.x, -21047i, -35162i) >> (vec4<u32>(67601u, global0.b, u_input.d.x, var_0.a.a.x) % vec4<u32>(32u))), global0.d));
    var_0 = Struct_2(var_0.a, var_1.a.x, !select(global0.c, var_1.b, select(global0.c, select(var_1.b, vec2<bool>(false, false), var_1.b.x), global0.c.x)), vec4<i32>(~1i, -36301i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(global0.d.x, -21542i, 2147483647i) & u_input.c.wxy), vec3<i32>(1i, ~40417i, var_0.d.x)), -34394i));
    let var_2 = firstLeadingBit(vec3<u32>(~24230u, var_0.b, min(~var_1.a.x, _wgslsmith_sub_u32(u_input.d.x, var_0.b))) | vec3<u32>(global0.a.a.x, _wgslsmith_mult_u32(~102559u, max(global0.a.a.x, 66148u)), _wgslsmith_add_u32(var_0.b, ~4294967295u)));
    return var_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = ~(-1i);
    global0 = Struct_2(func_2(), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.d.x, 67740u), abs(vec3<u32>(global0.b, 26184u, 39744u))) & (4294967295u ^ global0.a.a.x), vec2<bool>(false, true), vec4<i32>(min(_wgslsmith_clamp_i32(global0.d.x | var_0, -var_0, ~17856i), firstTrailingBit(-global0.d.x)), 18723i, ~2147483647i << (firstLeadingBit(global0.b << (u_input.b.x % 32u)) % 32u), -19491i));
    var var_1 = vec4<u32>(global0.a.a.x, ~_wgslsmith_div_u32(~global0.a.a.x >> (countOneBits(50548u) % 32u), ~4294967295u), ~((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 15036u, 0u), vec4<u32>(u_input.b.x, 1u, 1u, global0.b)) >> (abs(u_input.b.x) % 32u)) >> (0u % 32u)), u_input.d.x);
    var_1 = vec4<u32>(83062u, 1u, var_1.x, 72417u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-971f, 619f, -671f, 232f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, -131f, -271f, -390f)))))));
    return Struct_2(func_2(), u_input.d.x, vec2<bool>(true, false), vec4<i32>(31137i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global0.a.a.x, u_input.d.x, 4294967295u), vec4<u32>(45358u, global0.a.a.x, 0u, 4294967295u) | vec4<u32>(global0.a.a.x, global0.a.a.x, 0u, 0u)) % 32u), -(u_input.a ^ -1i), 42919i, _wgslsmith_add_i32(global0.d.x, global0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = global0.a;
    global0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, _wgslsmith_f_op_f32(1252f + 676f))))), 533f));
    var var_2 = Struct_2(Struct_1(~vec2<u32>(func_4(16885u, Struct_2(global0.a, 81022u, vec2<bool>(true, true), vec4<i32>(u_input.c.x, u_input.a, -5890i, global0.d.x))), u_input.d.x), vec2<bool>(true, true)), var_0.a.x, !vec2<bool>(!any(vec3<bool>(global0.a.b.x, true, false)), !global0.a.b.x), vec4<i32>(_wgslsmith_sub_i32(-countOneBits(u_input.a), _wgslsmith_div_i32(-6867i, u_input.c.x) | reverseBits(0i)), ~firstLeadingBit(~(-1791i)), -global0.d.x, -33467i));
    var var_3 = Struct_2(Struct_1(global0.a.a, var_0.b), var_0.a.x | _wgslsmith_div_u32(0u, abs(49476u ^ global0.a.a.x)), vec2<bool>(true, select(!(global0.a.b.x | true), !var_0.b.x, true)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, var_2.d.x, var_2.d.x, u_input.c.x) ^ u_input.c, vec4<i32>(global0.d.x, countOneBits(var_2.d.x), max(_wgslsmith_div_i32(-2147483647i, 66080i), _wgslsmith_sub_i32(var_2.d.x, u_input.c.x)), -17340i)));
    let var_4 = 18742u;
    let var_5 = min(-(var_3.d.x | 22921i) >> (88970u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, 1i, var_2.d.x, global0.d.x), vec4<i32>(1i, global0.d.x, global0.d.x, 8736i)), vec4<i32>(reverseBits(-29940i), var_3.d.x, ~1i, 1i), ~vec4<i32>(var_3.d.x, global0.d.x, 15407i, var_2.d.x)), _wgslsmith_add_vec4_i32(var_3.d, firstLeadingBit(global0.d))));
    var var_6 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_add_i32(1i, 66300i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), global0.d.xz), i32(-1i) * -14086i) ^ reverseBits(vec3<i32>(max(u_input.a, 6177i), ~global0.d.x, u_input.a)), ~global0.d.zyy);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(328f)) * -865f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-512f, _wgslsmith_f_op_f32(min(-1000f, -930f)))), _wgslsmith_f_op_f32(f32(-1f) * -241f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f - _wgslsmith_f_op_f32(max(1698f, -2453f))) * _wgslsmith_f_op_f32(max(-1677f, _wgslsmith_f_op_f32(888f * -1663f)))), _wgslsmith_f_op_f32(ceil(105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-603f, _wgslsmith_f_op_f32(floor(1464f)), false))), 340f), var_4);
}

