struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = ~35870u;
    var var_0 = max(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.a, -941i, 1i)), max(vec4<i32>(5888i, -35720i, u_input.a, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))), u_input.a), u_input.a) ^ (-firstTrailingBit(-2147483647i) ^ ~(-(~u_input.b)));
    let var_1 = ~9937u >> (~_wgslsmith_add_u32(select(1u, 12962u, true) ^ 4294967295u, ~abs(95002u)) % 32u);
    let var_2 = !all(select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))));
    var_0 = reverseBits(~u_input.b);
    return var_1;
}

fn func_2() -> Struct_4 {
    global0 = ~_wgslsmith_add_u32(49422u, func_3());
    let var_0 = vec3<u32>(~_wgslsmith_sub_u32(~15000u, _wgslsmith_dot_vec2_u32(vec2<u32>(25063u, 78582u), select(vec2<u32>(56831u, 34298u), vec2<u32>(51324u, 41659u), vec2<bool>(false, true)))), ~abs(~firstLeadingBit(83674u)), 0u);
    var var_1 = select((true && (true || any(vec3<bool>(true, false, true)))) && (((u_input.a & u_input.b) > -2613i) == true), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), all(vec2<bool>(true, true)))));
    global0 = ~39999u;
    var var_2 = 0u;
    return Struct_4(Struct_3(Struct_1(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), false), max(~vec3<i32>(u_input.a, u_input.b, 2147483647i), vec3<i32>(-13616i, u_input.a, u_input.a)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), false), 4294967295u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1.a.a.a;
    global0 = 0u & _wgslsmith_mod_u32(arg_2.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(arg_2.yzw, vec3<u32>(69281u, 1u, arg_2.x)), arg_1.a.a.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f));
    var_0 = !select(func_2().a.a.a, arg_3.a, arg_3.a);
    let var_2 = ~arg_3.d >= 24852u;
    return arg_2.x ^ ~(~(~(arg_1.a.a.d << (10521u % 32u))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global0 = ~func_4(select(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), func_2(), vec4<u32>(func_2().a.a.d, ~_wgslsmith_clamp_u32(56822u, 0u, 2425u), 1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 33207u), 1u)), Struct_1(vec4<bool>(985f < arg_0.x, true, false, true), vec3<i32>(~2147483647i, countOneBits(u_input.b), 26773i), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), func_2().a.a.c, true), firstTrailingBit(4294967295u) & _wgslsmith_dot_vec4_u32(vec4<u32>(36756u, 4294967295u, 767u, 61440u), vec4<u32>(0u, 56874u, 35005u, 23781u))));
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(-9666i, countOneBits(-u_input.b), reverseBits(1i) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 37297i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(select(true, true, false), false, true)), 1u), func_2().a.a, func_2().a.a, vec4<bool>(true || !func_2().a.a.c.x, !(!all(vec2<bool>(true, true))), true, true));
    let var_1 = 4294967295u;
    global0 = (12353u & (var_0.b.d >> (~(35318u ^ var_1) % 32u))) << (~firstTrailingBit(_wgslsmith_clamp_u32(var_1, var_0.c.d, abs(var_1))) % 32u);
    var var_2 = all(var_0.a.a);
    return Struct_2(Struct_1(vec4<bool>(false, !var_0.b.a.x, select(true, all(var_0.a.c.zy), var_0.c.a.x), false), ~var_0.c.b, select(vec3<bool>(var_0.a.c.x, var_0.d.x != var_0.b.a.x, true), vec3<bool>(false, var_0.a.c.x, !var_0.a.a.x), vec3<bool>(false && var_0.c.a.x, var_0.d.x, 2147483647i <= u_input.b)), 4294967295u), func_2().a.a, var_0.b, select(vec4<bool>(false, any(var_0.d), var_0.d.x, u_input.a < _wgslsmith_div_i32(-87126i, var_0.c.b.x)), !(!select(var_0.d, vec4<bool>(true, var_0.b.c.x, var_0.d.x, var_0.a.c.x), var_0.d.x)), !var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~max(52465u, ~4294967295u)));
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1643f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-923f, -453f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, -1000f))))));
    global0 = var_0.b.d;
    global0 = 1u;
    let var_1 = var_0;
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(260f, -268f), _wgslsmith_f_op_f32(ceil(-959f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(455f * 515f), -1684f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(412f, 646f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.a.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-476f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 1293f)), vec2<f32>(746f, -1359f))))), (~1u & var_1.c.d) << (0u % 32u), vec4<u32>(abs(~(~35815u)), 1u, abs(43740u), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.c.d, 0u), ~13841u & func_2().a.a.d)), var_1.a.d);
}

