struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(434f, -770f), vec2<u32>(1u, 4294967295u));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-674f, -249f), vec2<u32>(3881u, 15324u));

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a.x)), global0.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global0.a.x, 967f))))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_div_vec2_f32(global1.a, global2.a), global2.b);
    var var_0 = firstTrailingBit(~25349u) << (0u % 32u);
    var var_1 = !vec2<bool>(~(~u_input.b) >= _wgslsmith_dot_vec3_u32(~vec3<u32>(19134u, 1u, 41067u), vec3<u32>(0u, 45597u, 1u)), select(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)), true | all(vec2<bool>(false, true)), true | all(vec3<bool>(false, false, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), global1.a, vec2<bool>(all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !var_1.x))))), global1.b);
    let var_3 = _wgslsmith_sub_i32(-(abs(u_input.c.x << (71680u % 32u)) >> (_wgslsmith_add_u32(var_2.b.x, _wgslsmith_sub_u32(global1.b.x, global2.b.x)) % 32u)), _wgslsmith_clamp_i32(~2147483647i, abs(u_input.c.x), ~_wgslsmith_mod_i32(u_input.c.x, u_input.c.x)) | reverseBits(-1i));
    return Struct_1(global1.a, vec2<u32>(reverseBits(~(~global1.b.x)), ~(~(~49899u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(vec3<u32>(4294967295u, _wgslsmith_div_u32(global0.b.x, ~arg_1), 49052u) ^ _wgslsmith_clamp_vec3_u32(select(vec3<u32>(global1.b.x, 77410u, global2.b.x), vec3<u32>(u_input.b, 94155u, 75372u), vec3<bool>(false, false, true)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_2.b.x, global0.b.x), vec3<u32>(1u, 0u, global2.b.x)) % vec3<u32>(32u)), vec3<u32>(global0.b.x, 27391u, max(42492u, 4294967295u)), abs(~vec3<u32>(11453u, global1.b.x, 48501u))));
    let var_1 = select(vec2<bool>(true, !any(vec2<bool>(false, false))), vec2<bool>(false, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), vec2<bool>(true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), false))));
    var var_2 = func_2(Struct_4(_wgslsmith_f_op_f32(min(global2.a.x, func_2(Struct_4(934f)).a.x))));
    let var_3 = select(!select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, true, true, var_1.x || false), vec4<bool>(true, all(vec4<bool>(true, var_1.x, true, false)), true, false)), !select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(false, true, var_1.x | var_1.x, false), true), var_1.x);
    let var_4 = abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, var_0.x)) ^ ~0u, max(arg_1, 28511u)) & (vec2<u32>(~49611u, abs(1u)) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, arg_1, 5678u, 1u), vec4<u32>(25367u, arg_2.b.x, arg_2.b.x, arg_2.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b.x, arg_2.b.x), vec3<u32>(1u, 0u, 27752u)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(652f + 1110f), 698f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, global0.a.x) + arg_2.a) + _wgslsmith_f_op_vec2_f32(arg_2.a * vec2<f32>(1000f, global2.a.x))))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(arg_1, 4294967295u), var_2.b));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: i32, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_u32(global0.b.x, ~((~u_input.b >> (global1.b.x % 32u)) | 1u));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1712f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-403f, global2.a.x)))), _wgslsmith_div_vec2_u32(global0.b, ~(~vec2<u32>(0u, 1u))));
    global1 = func_4(u_input.c, ~(~firstLeadingBit(global1.b.x) & _wgslsmith_mod_u32(global2.b.x ^ global1.b.x, 42047u)), func_2(Struct_4(global0.a.x)));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(func_3())), func_2(Struct_4(global2.a.x)).b);
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.a.x)), 1000f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.x, -482f), func_2(Struct_4(global1.a.x)).a, select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))))) + _wgslsmith_f_op_vec2_f32(-global0.a)), ~min(vec2<u32>(global1.b.x, arg_1.x) & vec2<u32>(arg_1.x, 1u), global0.b & global0.b) << (abs(vec2<u32>(var_0, min(1u, 17972u))) % vec2<u32>(32u)));
    return !(!select(!vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(arg_0, true, false), !vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, arg_0))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(all(vec4<bool>(false, false, true, true)) & false, false, (42952u < firstTrailingBit(70722u)) | true, all(select(vec3<bool>(true, true, false), func_1(false, vec2<u32>(14285u, u_input.b), u_input.c.x, vec2<i32>(1i, -38635i)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-195f)))) * -151f));
    var_0 = vec4<bool>(true, abs(_wgslsmith_mult_u32(12083u, ~global0.b.x)) >= global2.b.x, var_0.x & var_0.x, var_0.x && any(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, var_0.x, true), var_0.x))));
    var_1 = Struct_4(_wgslsmith_f_op_f32(-1231f - 349f));
    var_0 = select(!vec4<bool>(true, any(var_0.zzy), false, var_0.x), select(select(select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, true, false, var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), !(!var_0.x)), vec4<bool>(true, !(global2.b.x >= 55967u), false, true), vec4<bool>(select(var_0.x, var_0.x & true, !var_0.x), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true, var_0.x)), true);
    global1 = func_4(~(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), vec3<i32>(-2147483647i, 14138i, u_input.c.x))), 4294967295u, func_4(_wgslsmith_sub_vec3_i32(select(u_input.c, -u_input.c, select(var_0.yyy, vec3<bool>(false, false, var_0.x), var_0.wxz)), ~select(vec3<i32>(u_input.c.x, u_input.c.x, -21806i), vec3<i32>(u_input.c.x, -3096i, 8867i), vec3<bool>(false, var_0.x, var_0.x))), global2.b.x, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.a))), firstTrailingBit(global2.b >> (vec2<u32>(2092u, global0.b.x) % vec2<u32>(32u))))));
    let var_2 = func_1(false, select(_wgslsmith_mult_vec2_u32(~select(global1.b, vec2<u32>(4294967295u, 61025u), var_0.x), ~global2.b), vec2<u32>(0u | global1.b.x, _wgslsmith_clamp_u32(abs(global0.b.x), global1.b.x >> (4294967295u % 32u), ~global1.b.x)), func_1(true, firstLeadingBit(~global1.b), -1i, ~u_input.c.yx).x), _wgslsmith_add_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, 0i, -55766i)), _wgslsmith_add_i32(u_input.c.x, u_input.c.x)), 15277i) | 0i, firstLeadingBit(min(_wgslsmith_clamp_vec2_i32(~u_input.c.yx, vec2<i32>(u_input.c.x, -1i), _wgslsmith_add_vec2_i32(u_input.c.zz, vec2<i32>(-1i, u_input.c.x))), vec2<i32>(-14830i, ~37076i)))).x;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a))), max(abs(abs(global1.b)), ~(~global2.b)) & select(~(global0.b ^ vec2<u32>(1u, 5450u)), _wgslsmith_mult_vec2_u32(vec2<u32>(21851u, u_input.b), global1.b), !func_1(false, global2.b, -1i, vec2<i32>(u_input.c.x, 1i)).zz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.x, 4294967295u, u_input.b, 0u) & max(vec4<u32>(4294967295u, u_input.b, global2.b.x, 38946u), vec4<u32>(u_input.a, 50571u, u_input.d, 41195u)), vec4<u32>(~0u, global2.b.x, ~global1.b.x, u_input.d)), 4294967295u), u_input.c.x, _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, global0.b.x, global1.b.x, global1.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, u_input.a, global2.b.x, global1.b.x) >> (vec4<u32>(27657u, 33464u, 1u, u_input.d) % vec4<u32>(32u)), vec4<u32>(global2.b.x, 40639u, global2.b.x, 1u))) | vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(12415u, global0.b.x), func_4(u_input.c, 4443u, Struct_1(global1.a, global1.b)).b.x), 32063u, global1.b.x), _wgslsmith_sub_vec2_u32(global2.b, global1.b), _wgslsmith_div_u32(~(1u >> (1u % 32u)) | countOneBits(~u_input.b), global0.b.x));
}

