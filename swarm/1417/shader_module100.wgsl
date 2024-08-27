struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
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

var<private> global0: Struct_4 = Struct_4(Struct_1(vec2<u32>(1u, 0u), vec3<u32>(26167u, 1u, 117799u), vec4<u32>(27280u, 29048u, 105505u, 53890u), vec3<u32>(28381u, 4294967295u, 2905u)), vec3<i32>(25250i, 26079i, -1i));

var<private> global1: f32;

var<private> global2: bool = false;

var<private> global3: array<vec2<i32>, 2>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_3(global0.a, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -295f, -459f)), global0.a, Struct_1(~global0.a.c.yw, ~(~global0.a.b), global0.a.c, _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.a.b.x, 72828u, arg_0), firstTrailingBit(vec3<u32>(0u, global0.a.c.x, arg_0)), ~vec3<u32>(u_input.b, u_input.d, 47373u))), global0.a));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(abs(var_0.b.a.x)), -1613f)))), var_0.b.a);
    global0 = Struct_4(global0.a, global0.b);
    global0 = Struct_4(Struct_1(vec2<u32>(31862u, _wgslsmith_mult_u32(0u, arg_0) >> (_wgslsmith_dot_vec4_u32(var_0.b.c.c, global0.a.c) % 32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(global0.a.c, reverseBits(vec4<u32>(1u, global0.a.a.x, var_0.b.c.d.x, u_input.b))), countOneBits(1u >> (var_0.a.c.x % 32u)), 64252u), global0.a.c, _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(27748u, 36663u, 158u), global0.a.c.zxy), abs(countOneBits(vec3<u32>(global0.a.c.x, 0u, arg_0))))), _wgslsmith_clamp_vec3_i32(global0.b, vec3<i32>(global0.b.x, reverseBits(~u_input.a.x), u_input.a.x | _wgslsmith_add_i32(global0.b.x, global0.b.x)), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, -2147483647i) & ~global0.b.x, 0i, i32(-1i) * -39352i)));
    var var_2 = var_0.b;
    return -1781i;
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<f32> {
    global0 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_add_u32(~25745u, 1u), _wgslsmith_add_u32(global0.a.a.x, ~global0.a.a.x)), vec3<u32>(_wgslsmith_div_u32(~91962u, _wgslsmith_dot_vec2_u32(global0.a.a, vec2<u32>(29353u, 4294967295u))), ~_wgslsmith_mod_u32(global0.a.c.x, global0.a.a.x), global0.a.b.x), abs(firstLeadingBit(global0.a.c) << (~vec4<u32>(global0.a.b.x, u_input.d, 39039u, 0u) % vec4<u32>(32u))), min(vec3<u32>(min(46838u, global0.a.a.x), 4294967295u >> (u_input.b % 32u), 1u), global0.a.c.zyz)), vec3<i32>(_wgslsmith_add_i32(func_3(global0.a.b.x), ~global0.b.x) | u_input.a.x, firstLeadingBit(-u_input.a.x >> (~4294967295u % 32u)), u_input.a.x));
    global0 = Struct_4(Struct_1(vec2<u32>(84121u, ~(~23057u)), vec3<u32>(4294967295u, 39370u, u_input.d) & firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.a.b.x, 1u), vec3<u32>(43118u, 43689u, global0.a.a.x))), ~(~vec4<u32>(0u, 20428u, global0.a.a.x, 4294967295u)), vec3<u32>(~firstTrailingBit(u_input.c), 10963u, min(max(global0.a.a.x, 69876u), 0u))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, -global0.b.x), _wgslsmith_mod_vec3_i32(global0.b, global0.b | vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x));
    global0 = Struct_4(global0.a, global0.b);
    var var_0 = ~50120u;
    global0 = Struct_4(global0.a, global0.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, arg_1)))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = arg_0.b;
    var var_1 = Struct_3(var_0.b, arg_0.b);
    global2 = true;
    var_1 = arg_0;
    global1 = arg_0.b.a.x;
    return Struct_2(var_1.b.a, global0.a, var_1.b.c, Struct_1(vec2<u32>(reverseBits(14044u), 70599u) << (abs(reverseBits(arg_0.a.d.yx)) % vec2<u32>(32u)), var_1.a.d, var_0.d.c | _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.a.x, var_1.b.d.b.x, 0u, var_0.d.b.x), ~var_1.a.c), var_1.a.d));
}

fn func_1(arg_0: vec3<u32>) -> Struct_5 {
    let var_0 = func_4(Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(29716u, global0.a.c.x), vec2<u32>(global0.a.b.x, u_input.c)) | _wgslsmith_mod_vec2_u32(arg_0.zx, vec2<u32>(u_input.b, 4294967295u)), vec3<u32>(min(4294967295u, u_input.c), 1u, min(global0.a.b.x, arg_0.x)), ~global0.a.c, arg_0), Struct_2(_wgslsmith_f_op_vec3_f32(func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1757f))), Struct_1(vec2<u32>(arg_0.x, global0.a.a.x) ^ vec2<u32>(global0.a.c.x, 26330u), global0.a.b, vec4<u32>(28577u, arg_0.x, 0u, 0u), ~vec3<u32>(u_input.b, 12812u, u_input.b)), global0.a, global0.a)), all(select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(select(true, false, false), false), u_input.a.x <= -1i)));
    var var_1 = _wgslsmith_mod_vec4_i32(-reverseBits(firstLeadingBit(vec4<i32>(u_input.a.x, global0.b.x, global0.b.x, 58915i))), vec4<i32>(_wgslsmith_clamp_i32(-16375i, u_input.a.x, 24051i), global0.b.x, _wgslsmith_mult_i32(42029i, reverseBits(firstTrailingBit(global0.b.x))), abs(-(u_input.a.x | u_input.a.x))));
    var var_2 = 1u;
    var var_3 = _wgslsmith_add_i32(abs(-u_input.a.x), ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(u_input.a, var_1.yy, vec2<bool>(true, true)), var_1.zx), countOneBits(global0.b.x)));
    var var_4 = select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), all(vec2<bool>(false, true))), any(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), false), vec4<bool>(_wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(global0.a.a.x, 51758u)) < ~_wgslsmith_clamp_u32(u_input.d, 27759u, 0u), select(any(vec2<bool>(true, true)) && (39511i == var_1.x), true, false), -504f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(647f))), true), vec4<bool>(var_0.b.b.x <= ~(~var_0.d.a.x), true, (1488f <= _wgslsmith_f_op_f32(ceil(1000f))) & true, false));
    return Struct_5(_wgslsmith_f_op_f32(max(-447f, func_4(Struct_3(Struct_1(vec2<u32>(10919u, 4294967295u), arg_0, vec4<u32>(0u, var_0.b.b.x, u_input.d, arg_0.x), vec3<u32>(25790u, arg_0.x, global0.a.d.x)), Struct_2(var_0.a, Struct_1(vec2<u32>(13281u, 1u), vec3<u32>(46031u, 0u, arg_0.x), vec4<u32>(global0.a.a.x, u_input.d, 1u, arg_0.x), vec3<u32>(arg_0.x, 47891u, var_0.b.d.x)), global0.a, global0.a)), !var_4.x || var_4.x).a.x)), true);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_5) -> bool {
    var var_0 = func_1(vec3<u32>(global0.a.d.x, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(29826u, u_input.c, 47141u, 0u) >> (global0.a.c % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.a.b.x, 20520u, u_input.d), global0.a.c)), ~(~vec4<u32>(10407u, 4294967295u, global0.a.b.x, 54194u))))).b;
    global3 = array<vec2<i32>, 2>();
    var_0 = all(!select(select(select(vec4<bool>(false, arg_1.b, arg_1.b, false), vec4<bool>(arg_1.b, true, arg_1.b, false), vec4<bool>(arg_1.b, true, true, arg_1.b)), select(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), false), 29823i == u_input.a.x), vec4<bool>(false, !arg_1.b, arg_1.b, false), arg_1.b));
    let var_1 = _wgslsmith_f_op_f32(select(-715f, func_1(global0.a.c.xxz).a, arg_1.b));
    var var_2 = min(u_input.a.x, u_input.a.x) == func_3(max(_wgslsmith_mod_u32(47413u ^ u_input.b, 8081u), abs(12406u)));
    return any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(arg_1.b, false), true), arg_1.b && true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(abs(global0.b.x), _wgslsmith_sub_i32(0i, select(u_input.a.x ^ ~u_input.a.x, ~select(global0.b.x, -1i, true), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-514f, -539f, 459f)), func_1(global0.a.c.wxx)))));
    global2 = true;
    var var_1 = select(select(vec2<bool>(false, _wgslsmith_f_op_f32(select(1728f, 115f, true)) == _wgslsmith_div_f32(668f, -1654f)), vec2<bool>(true, true), select(vec2<bool>(true, global0.a.d.x < u_input.b), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, false))))), select(vec2<bool>(func_1(~vec3<u32>(565u, 31398u, 4294967295u)).b, true), vec2<bool>(true, true), true), true);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-944f + -1056f))))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2)) - var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

