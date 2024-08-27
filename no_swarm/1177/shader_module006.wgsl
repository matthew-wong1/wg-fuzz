struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(18743i, -8685i), vec2<i32>(i32(-2147483648), 46766i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(46999i, -1i), vec2<i32>(-1i, 1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> bool {
    global1 = array<vec2<i32>, 5>();
    var var_0 = Struct_2(_wgslsmith_add_u32(70738u | u_input.d.x, _wgslsmith_add_u32(u_input.d.x, ~(~4294967295u))), arg_0.e.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], arg_0.c, arg_0.b.d.c.x) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], arg_0.b.d.c.x, global0[_wgslsmith_index_u32(1u, 32u)])))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.b.d.c), _wgslsmith_f_op_vec3_f32(-arg_0.e.c)))))), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_0.a, vec4<i32>(0i, 11026i, u_input.b.x, -5187i))) ^ abs(1i), 0i, ~arg_0.e.b.b), arg_0.e.e);
    let var_1 = ~(vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a), vec2<i32>(arg_0.a.x, -14114i)), u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-27230i, var_0.b.b), min(vec2<i32>(6322i, 48042i), arg_0.b.d.d.zz)), var_0.d.x << (~0u % 32u)) ^ arg_0.a);
    var var_2 = Struct_3(vec3<bool>(!all(select(arg_0.b.a, arg_0.b.a, arg_0.b.a)), false, true), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.zyw, -u_input.b), var_1.zwz) >> (arg_0.b.d.b.a.yxy % vec3<u32>(32u)), !arg_0.b.a.x, Struct_2(1u, Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, var_0.b.a.x, 102050u), u_input.d), _wgslsmith_dot_vec4_i32(-vec4<i32>(-115i, 2147483647i, var_1.x, -1i), arg_0.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.e.b.a.x, 32u)], global0[_wgslsmith_index_u32(arg_0.d.x, 32u)], arg_0.b.d.c.x) * _wgslsmith_f_op_vec3_f32(-arg_0.e.c)), var_0.c)), ~vec3<i32>(-60388i, abs(-70822i), arg_0.a.x ^ 45043i), Struct_1(u_input.d, u_input.b.x)));
    let var_3 = Struct_1(vec4<u32>(u_input.d.x, ~u_input.d.x | u_input.d.x, 0u, _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.e.a.x, 1u, 23680u), arg_0.d)), ~8320u, var_0.b.a.x)), var_0.e.b);
    return true;
}

fn func_2() -> Struct_3 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_0 = vec4<bool>(any(vec3<bool>(true, true, true)) == !func_3(Struct_4(vec4<i32>(u_input.c, -32895i, u_input.b.x, 2147483647i), Struct_3(vec3<bool>(false, true, true), vec3<i32>(-1i, 2147483647i, u_input.b.x), true, Struct_2(u_input.d.x, Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), u_input.b.x), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], -1000f, -809f), vec3<i32>(u_input.b.x, 12321i, u_input.b.x), Struct_1(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 102084u), 1i))), global0[_wgslsmith_index_u32(u_input.d.x, 32u)], u_input.d.xxx, Struct_2(u_input.d.x, Struct_1(u_input.d, 1i), vec3<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u), u_input.c)))), func_3(Struct_4(select(vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, -1i), vec4<i32>(-1i, u_input.b.x, -34664i, u_input.a.x), true), Struct_3(vec3<bool>(true, false, true), vec3<i32>(2147483647i, -1i, u_input.b.x), false, Struct_2(4294967295u, Struct_1(vec4<u32>(u_input.d.x, 12611u, 39318u, 15202u), -2147483647i), vec3<f32>(global0[_wgslsmith_index_u32(17575u, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec3<i32>(u_input.a.x, -5595i, -1i), Struct_1(u_input.d, u_input.b.x))), _wgslsmith_f_op_f32(trunc(1374f)), u_input.d.xxw, Struct_2(u_input.d.x, Struct_1(vec4<u32>(1u, u_input.d.x, u_input.d.x, 1u), u_input.c), vec3<f32>(1356f, 1091f, 1936f), u_input.b, Struct_1(vec4<u32>(7953u, 0u, u_input.d.x, 0u), u_input.a.x)))) && !all(vec4<bool>(false, true, false, true)), global0[_wgslsmith_index_u32(~66434u, 32u)] >= global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~13185u), 1u), 32u)], true);
    let var_1 = vec4<bool>(var_0.x, any(select(vec2<bool>(any(var_0.xwx), true), !(!vec2<bool>(var_0.x, true)), select(select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, true)))), (global0[_wgslsmith_index_u32(10546u, 32u)] <= global0[_wgslsmith_index_u32(1u, 32u)]) && var_0.x, _wgslsmith_f_op_f32(473f - 868f) == global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 1u), vec4<u32>(u_input.d.x, 0u, 4294967295u, 4294967295u))) >> (u_input.d.x % 32u), 32u)]);
    let var_2 = Struct_4(vec4<i32>(abs(u_input.c), -19691i, 1i, -u_input.c), Struct_3(var_0.zwz, u_input.b, !(min(u_input.d.x, 0u) >= u_input.d.x), Struct_2(12093u, Struct_1(~vec4<u32>(u_input.d.x, 1u, 59397u, u_input.d.x), u_input.c & u_input.a.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), vec3<f32>(406f, -1817f, global0[_wgslsmith_index_u32(u_input.d.x, 32u)]))))), vec3<i32>(u_input.a.x ^ -41169i, _wgslsmith_div_i32(1i, u_input.c), _wgslsmith_clamp_i32(0i, 3536i, u_input.b.x)), Struct_1(u_input.d, 15502i))), _wgslsmith_f_op_f32(324f - 1448f), u_input.d.wxx, Struct_2(10720u, Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(35492u, 4294967295u, 55007u, u_input.d.x), vec4<u32>(u_input.d.x, 0u, u_input.d.x, 0u)), abs(u_input.d)), u_input.a.x >> (_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) % 32u)), vec3<f32>(global0[_wgslsmith_index_u32(~(~u_input.d.x), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(736u, 32u)] - -2335f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 32u)] * global0[_wgslsmith_index_u32(u_input.d.x, 32u)])))), vec3<i32>(reverseBits(u_input.b.x), firstLeadingBit(u_input.a.x), u_input.b.x), Struct_1(countOneBits(u_input.d), select(28854i, 0i, false) & u_input.a.x)));
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_5(u_input.d.x, arg_0.d, !select(arg_0.a.xx, func_2().a.xx, arg_0.c), Struct_4(_wgslsmith_sub_vec4_i32(abs(-vec4<i32>(u_input.c, -1i, 25231i, arg_0.d.d.x)), max(~vec4<i32>(0i, 0i, u_input.b.x, 11203i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-27077i, u_input.b.x, 10271i, arg_0.b.x), vec4<i32>(-8844i, -4895i, u_input.c, arg_0.d.b.b), vec4<i32>(arg_0.d.d.x, 2147483647i, u_input.b.x, arg_0.d.e.b)))), Struct_3(vec3<bool>(true, false, true), max(vec3<i32>(0i, u_input.c, -63070i), u_input.b), true, Struct_2(_wgslsmith_sub_u32(4294967295u, 9279u), Struct_1(arg_0.d.b.a, u_input.a.x), arg_1.yxz, arg_0.d.d >> (vec3<u32>(arg_0.d.b.a.x, 61500u, 49619u) % vec3<u32>(32u)), func_2().d.b)), 1000f, vec3<u32>(11987u, 157208u, ~1u), Struct_2(75780u, arg_0.d.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.wyw + vec3<f32>(arg_1.x, 966f, 1000f)) - _wgslsmith_f_op_vec3_f32(-arg_1.zyz)), vec3<i32>(-u_input.c, ~2147483647i, u_input.c), Struct_1(vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 1u) << (u_input.d % vec4<u32>(32u)), arg_0.b.x))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1683f)) + _wgslsmith_f_op_f32(-676f - -830f)))));
    global1 = array<vec2<i32>, 5>();
    let var_1 = _wgslsmith_mult_u32(var_0.a, 1u);
    let var_2 = abs(firstTrailingBit(u_input.d.x));
    var var_3 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(func_2().b.x, i32(-1i) * -var_0.d.a.x), firstTrailingBit(~var_0.b.d.zy) & min(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.d.x, -15015i), u_input.b.zy), -vec2<i32>(u_input.c, var_0.d.e.e.b))), global1[_wgslsmith_index_u32(~(var_0.b.a << (~firstTrailingBit(var_2) % 32u)), 5u)], true);
    return var_0.b.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(abs(firstTrailingBit(4294967295u))) | _wgslsmith_add_u32(countOneBits(~4294967295u) >> (_wgslsmith_dot_vec4_u32(arg_3.b.a, vec4<u32>(13233u, 4294967295u, u_input.d.x, arg_1.a) ^ u_input.d) % 32u), _wgslsmith_mod_u32(~(~arg_3.b.a.x), ~countOneBits(arg_1.a)));
    let var_1 = select(!vec4<bool>(false, true, any(vec2<bool>(true, true)) & (arg_2.x < arg_1.b.a.x), !(arg_3.a < 27364u)), select(vec4<bool>(all(vec4<bool>(true, false, true, true)), !all(vec4<bool>(true, true, true, false)), true, false), vec4<bool>(false, select(false, true, false) | true, true, func_2().c), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, func_3(Struct_4(arg_0, Struct_3(vec3<bool>(false, false, false), arg_0.ywz, true, arg_1), 492f, arg_3.b.a.wxx, arg_3)), true, all(vec2<bool>(true, true))))), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))) || !any(vec2<bool>(true, true)), select(~38021u >= u_input.d.x, !(arg_3.c.x <= arg_3.c.x), true), !(arg_3.b.b == firstLeadingBit(2147483647i)), true));
    return func_4(Struct_3(var_1.zwx, abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 12583i, -2147483647i), -vec3<i32>(0i, arg_3.b.b, 10708i), arg_0.wyx ^ vec3<i32>(arg_1.d.x, -11629i, -1i))), false, func_2().d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(316f, -619f, -250f, 409f) * vec4<f32>(arg_3.c.x, 489f, arg_3.c.x, 1387f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1958f, arg_1.c.x, global0[_wgslsmith_index_u32(1u, 32u)], 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, 328f, 438f, 984f) - vec4<f32>(arg_1.c.x, 1074f, 2014f, -1591f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-396f, arg_1.c.x, arg_1.c.x, global0[_wgslsmith_index_u32(35671u, 32u)]) + vec4<f32>(global0[_wgslsmith_index_u32(arg_2.x, 32u)], 1035f, global0[_wgslsmith_index_u32(u_input.d.x, 32u)], arg_3.c.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 727f, 556f))))))), true);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = func_5(vec4<i32>(-3391i, ~u_input.b.x, u_input.c << (u_input.d.x % 32u), 3564i ^ _wgslsmith_add_i32(countOneBits(-36776i), firstTrailingBit(u_input.c))), Struct_2(_wgslsmith_add_u32(0u, ~abs(u_input.d.x)), func_4(func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1295f, -658f, 3110f, 935f) * vec4<f32>(global0[_wgslsmith_index_u32(517u, 32u)], -1000f, 1122f, global0[_wgslsmith_index_u32(27328u, 32u)]))), false), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], -1091f, global0[_wgslsmith_index_u32(55732u, 32u)]), vec3<f32>(global0[_wgslsmith_index_u32(96089u, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)])) + vec3<f32>(global0[_wgslsmith_index_u32(24853u, 32u)], -252f, 2084f)))), u_input.b, func_4(Struct_3(arg_0.zwx, vec3<i32>(u_input.a.x, 0i, 51831i), select(true, false, arg_0.x), Struct_2(u_input.d.x, Struct_1(u_input.d, u_input.c), vec3<f32>(-298f, -1585f, 1065f), vec3<i32>(1i, -2147483647i, u_input.b.x), Struct_1(u_input.d, u_input.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1683f, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)], -233f) + vec4<f32>(global0[_wgslsmith_index_u32(48215u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 629f, 2809f)) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 457f, global0[_wgslsmith_index_u32(u_input.d.x, 32u)], 1069f)), true)), ~vec2<u32>(4294967295u, u_input.d.x ^ func_4(Struct_3(vec3<bool>(true, arg_0.x, arg_0.x), u_input.b, arg_0.x, Struct_2(u_input.d.x, Struct_1(u_input.d, 72543i), vec3<f32>(205f, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), u_input.b, Struct_1(vec4<u32>(32403u, 76614u, 4294967295u, 62164u), -3973i))), vec4<f32>(-725f, 843f, global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), arg_0.x).a.x), func_2().d);
    global0 = array<f32, 32>();
    let var_1 = _wgslsmith_f_op_f32(-func_2().d.c.x);
    global1 = array<vec2<i32>, 5>();
    let var_2 = Struct_5(var_0.a.x, Struct_2(countOneBits(var_0.a.x) & _wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(var_0.a.x, u_input.d.x) | var_0.a.xw), func_5((vec4<i32>(u_input.b.x, u_input.c, var_0.b, u_input.c) & vec4<i32>(-49030i, 0i, 1i, 41i)) >> ((vec4<u32>(u_input.d.x, u_input.d.x, 96968u, u_input.d.x) << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u)), func_2().d, vec2<u32>(firstLeadingBit(u_input.d.x), u_input.d.x), func_2().d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(379u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), 299f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(28522u, 32u)]))), ~vec3<i32>(u_input.b.x, reverseBits(24517i), 2147483647i), func_2().d.b), arg_0.xx, Struct_4(vec4<i32>(-3394i, _wgslsmith_div_i32(6899i, min(3263i, 1i)), -2147483647i, 42372i), func_2(), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), func_2().d.b.a.xzx, Struct_2(~(~4294967295u), Struct_1(u_input.d & vec4<u32>(1u, var_0.a.x, 10270u, 69729u), 29394i), vec3<f32>(_wgslsmith_f_op_f32(ceil(-835f)), global0[_wgslsmith_index_u32(min(0u, var_0.a.x), 32u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 32u)])), -u_input.b >> (abs(var_0.a.yyw) % vec3<u32>(32u)), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().d.c.x + global0[_wgslsmith_index_u32(func_4(func_2(), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, var_1, 797f, var_1))), false).a.x, 32u)])));
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    let var_0 = vec3<bool>(true, false, true);
    let var_1 = u_input.a.x;
    global0 = array<f32, 32>();
    let var_2 = Struct_3(!(!var_0), u_input.b, !var_0.x, func_1(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))));
    global1 = array<vec2<i32>, 5>();
    var var_3 = vec4<u32>(var_2.d.a, func_1(!vec4<bool>(true, all(vec4<bool>(true, var_2.c, false, true)), var_1 >= 9431i, false)).a, func_4(Struct_3(func_2().a, var_2.d.d, select(func_2().c, all(vec3<bool>(var_2.c, true, true)), true), var_2.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.c.x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(32815u, 32u)], -382f), _wgslsmith_f_op_f32(var_2.d.c.x - 806f), _wgslsmith_f_op_f32(min(var_2.d.c.x, var_2.d.c.x)))), (_wgslsmith_f_op_f32(min(192f, global0[_wgslsmith_index_u32(31205u, 32u)])) >= -695f) | !var_2.c).a.x, firstTrailingBit(min(1u, 63870u)) ^ _wgslsmith_div_u32(4294967295u, max(~var_2.d.a, 1u)));
    global1 = array<vec2<i32>, 5>();
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(2329f)), _wgslsmith_div_vec4_u32(func_5(-(~vec4<i32>(u_input.b.x, 26396i, 31987i, 0i)), var_2.d, firstLeadingBit(var_3.xz) ^ var_2.d.b.a.wx, func_1(vec4<bool>(false, var_0.x, false, true))).a, _wgslsmith_sub_vec4_u32(abs(~var_2.d.e.a), reverseBits(~var_2.d.e.a))), _wgslsmith_f_op_vec3_f32(min(var_2.d.c, _wgslsmith_f_op_vec3_f32(-var_2.d.c))));
}

