struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(false, vec2<bool>(true, false), vec2<f32>(745f, 607f)), Struct_2(false, vec2<bool>(false, true), vec2<f32>(-300f, 2156f)), Struct_2(false, vec2<bool>(false, true), vec2<f32>(1178f, 265f)), Struct_2(true, vec2<bool>(true, true), vec2<f32>(609f, -1219f)), Struct_2(true, vec2<bool>(false, false), vec2<f32>(-573f, -112f)), Struct_2(true, vec2<bool>(false, true), vec2<f32>(511f, 520f)), Struct_2(true, vec2<bool>(true, true), vec2<f32>(-682f, -557f)), Struct_2(false, vec2<bool>(true, false), vec2<f32>(1325f, 524f)), Struct_2(true, vec2<bool>(false, true), vec2<f32>(-2005f, 158f)), Struct_2(true, vec2<bool>(false, true), vec2<f32>(1867f, -272f)), Struct_2(false, vec2<bool>(false, false), vec2<f32>(-215f, -1875f)), Struct_2(true, vec2<bool>(true, false), vec2<f32>(1000f, 896f)));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 2147483647i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> i32 {
    var var_0 = Struct_3(max(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global1.a.x, -72074i) ^ -vec3<i32>(-1i, 12175i, 2962i), vec3<i32>(-1i, u_input.d.x ^ 2929i, -29126i)), ~u_input.a), select(select(vec3<bool>(false, arg_2.x, true), vec3<bool>(false, !arg_2.x, arg_0.x <= u_input.a.x), true), !vec3<bool>(arg_2.x, false, false), !arg_2.x), Struct_1(-countOneBits(vec4<i32>(1i, 0i, arg_0.x, 0i)) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(26995u, arg_1.x, u_input.c, 29430u), vec4<u32>(67565u, u_input.c, u_input.b, u_input.c))) % vec4<u32>(32u))), select(max(~vec3<u32>(53018u, 16179u, arg_1.x), vec3<u32>(u_input.c | 23140u, select(35532u, 1u, arg_2.x), ~u_input.c)), vec3<u32>((u_input.c << (u_input.c % 32u)) | arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.x) & arg_1, _wgslsmith_mult_vec2_u32(arg_1, arg_1)), abs(1u)), false), _wgslsmith_clamp_vec4_u32(abs(abs(vec4<u32>(arg_1.x, 64565u, 0u, 26218u)) & abs(vec4<u32>(u_input.b, 76725u, u_input.b, 23588u))), max(select(~vec4<u32>(1u, arg_1.x, arg_1.x, u_input.b), ~vec4<u32>(arg_1.x, arg_1.x, 7968u, u_input.c), !vec4<bool>(false, arg_2.x, false, false)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(17037u, arg_1.x, arg_1.x, 16200u), vec4<u32>(u_input.b, u_input.c, 4294967295u, 4294967295u), vec4<bool>(arg_2.x, false, true, true)), ~vec4<u32>(u_input.b, u_input.c, 4294967295u, arg_1.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 35466u, u_input.c), vec4<u32>(arg_1.x, 4294967295u, u_input.b, u_input.c)), abs(vec4<u32>(42903u, 4294967295u, u_input.b, 4294967295u))), 4294967295u, _wgslsmith_div_u32(~arg_1.x, _wgslsmith_dot_vec2_u32(arg_1, arg_1)), arg_1.x)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-373f, 134f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1233f, 546f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1351f)), _wgslsmith_f_op_f32(-660f - 396f)))))), _wgslsmith_f_op_f32(select(-1000f, 2398f, any(vec4<bool>(true, 29442u == u_input.b, select(arg_2.x, arg_2.x, true), arg_2.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 235f) + vec2<f32>(var_1.x, 526f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(537f, var_1.x), vec2<f32>(861f, var_1.x))) * vec2<f32>(-1000f, -514f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-127f, _wgslsmith_f_op_f32(abs(1f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(246f + -288f) * -372f), -445f)));
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(~1u >> (0u % 32u), 1u), arg_1.x);
    var var_3 = var_0.c;
    return reverseBits(var_0.c.a.x);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(1i, ~1i);
    let var_1 = ~(~firstLeadingBit(vec4<i32>(-33415i, func_3(vec2<i32>(17692i, -32299i), vec2<u32>(u_input.b, u_input.c), vec2<bool>(false, arg_0.x)), global1.a.x, ~21349i)));
    var var_2 = Struct_3(vec3<i32>(reverseBits(firstLeadingBit(-2147483647i)), firstTrailingBit(1i), ~(-52226i) << (~(u_input.c >> (u_input.c % 32u)) % 32u)), select(select(!select(vec3<bool>(false, true, arg_0.x), arg_0, true), arg_0, select(select(vec3<bool>(true, true, arg_0.x), arg_0, arg_0), select(arg_0, arg_0, false), 2147483647i < global1.a.x)), select(arg_0, select(select(arg_0, vec3<bool>(arg_0.x, false, arg_0.x), false), arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0), !(!arg_0.x & (arg_0.x || false))), Struct_1(reverseBits(-vec4<i32>(57299i, 1i, 34763i, 0i))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(3194u, u_input.b) | ~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b, u_input.b), select(1u, 34876u, arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, u_input.b)))), u_input.c, u_input.c), _wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.c, 58053u, 4294967295u, u_input.c), vec4<u32>(14537u & u_input.b, min(4294967295u, u_input.c), ~u_input.b, 26290u), arg_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(24266u, ~4880u, u_input.b, u_input.c), firstTrailingBit(abs(vec4<u32>(u_input.c, 4294967295u, 50430u, u_input.b))))));
    let var_3 = -(firstLeadingBit(_wgslsmith_mod_vec2_i32(-var_2.c.a.yw, min(vec2<i32>(0i, -1i), global1.a.xw))) ^ var_1.yz);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-951f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1190f));
    return Struct_1(var_2.c.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    let var_0 = Struct_1(global1.a);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(abs(-230f)), _wgslsmith_f_op_f32(max(-1925f, 1000f)), _wgslsmith_f_op_f32(step(554f, 452f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-181f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1602f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1024f, 370f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-480f, -114f)), _wgslsmith_f_op_f32(752f * -309f)))))));
    global0 = array<Struct_2, 12>();
    return Struct_1(_wgslsmith_clamp_vec4_i32(global1.a, select(select(~vec4<i32>(26693i, u_input.d.x, 1i, var_0.a.x), _wgslsmith_add_vec4_i32(var_0.a, arg_0.a), all(vec2<bool>(false, false))), arg_0.a, !any(vec4<bool>(true, false, true, false))), vec4<i32>(-(u_input.d.x ^ 0i), u_input.d.x, -2147483647i, ~_wgslsmith_sub_i32(19844i, global1.a.x))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_4(func_2(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 4294967295u, 1u, 82958u), vec4<u32>(4294967295u, 10084u, 18029u, arg_0)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), ~0u, arg_0, 40620u)), ~vec4<u32>(1u, abs(arg_0), 10441u, 0u)));
    global0 = array<Struct_2, 12>();
    let var_1 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(all(vec4<bool>(false, false, true, false)), true, true & (4294967295u < arg_0)), _wgslsmith_sub_i32(global1.a.x, u_input.a.x) == u_input.a.x), false);
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, select(-u_input.d.x, global1.a.x, var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d.x), _wgslsmith_mod_vec2_i32(u_input.a.yz, vec2<i32>(global1.a.x, global1.a.x))), global1.a.x), global1.a) ^ vec4<i32>(func_3(_wgslsmith_mult_vec2_i32(~u_input.d, -vec2<i32>(global1.a.x, 11656i)), select(vec2<u32>(u_input.b, 84989u), vec2<u32>(4294967295u, 4294967295u), !vec2<bool>(var_1.x, true)), vec2<bool>(true, true)), _wgslsmith_div_i32(var_0.a.x, -12652i), _wgslsmith_sub_i32(select(0i, var_0.a.x, var_1.x), _wgslsmith_sub_i32(var_0.a.x, 77386i)) >> ((arg_0 | 1u) % 32u), var_0.a.x);
    var var_3 = var_0.a.x;
    return Struct_1(var_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = global1.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(427f, 710f, false)))) * 252f), arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1712f + -492f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2114f, -1349f, arg_2)), vec3<f32>(arg_2, 386f, arg_2)), vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(arg_2, arg_2)), _wgslsmith_f_op_f32(-arg_1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -937f, arg_1.x), vec3<f32>(-322f, -320f, 379f)))))));
    var_0 = -10985i;
    var_0 = 0i;
    var var_2 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(!any(vec4<bool>(true, true, false, true)), true), false);
    return !vec4<bool>(any(select(vec2<bool>(var_2.x, var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true)), !vec2<bool>(false, var_2.x))), true, true, any(select(!vec4<bool>(var_2.x, true, var_2.x, var_2.x), select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(false, true, false, var_2.x), var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-40439i, reverseBits(2147483647i));
    let var_1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, false)), true, select(true, true, true)), func_5(func_1(1u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1749f, 462f))), 1000f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1050f, 1000f, -1000f), vec3<f32>(-133f, 662f, 276f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-512f, 171f, 1306f), vec3<f32>(551f, -169f, -734f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(251f, 515f, -1786f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(846f, 2437f, 1666f)))))));
    var var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(ceil(-200f)) > _wgslsmith_f_op_f32(trunc(var_2.x))), var_1, var_1);
    global1 = Struct_1(-(~vec4<i32>(~(-2147483647i), _wgslsmith_sub_i32(global1.a.x, u_input.a.x), 1i, _wgslsmith_mod_i32(global1.a.x, u_input.a.x))));
    let var_4 = global1.a;
    var_0 = ~max(countOneBits(_wgslsmith_clamp_i32(-4843i, global1.a.x | u_input.a.x, global1.a.x)), -reverseBits(u_input.d.x));
    var var_5 = ~((vec3<u32>(1u, u_input.b, 0u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(13367u, 4294967295u, 256u), vec3<u32>(u_input.b, 4294967295u, u_input.c), vec3<u32>(16593u, 1u, 0u)) % vec3<u32>(32u))) >> ((~vec3<u32>(u_input.c, u_input.b, 1u) << (vec3<u32>(6158u, u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ abs(firstTrailingBit(vec3<u32>(select(0u, u_input.b, true), u_input.b, max(401u, u_input.c))));
    var_5 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(47464u | var_5.x, u_input.c, 74366u), _wgslsmith_mult_vec3_u32(vec3<u32>(53879u, 68533u, 6714u), vec3<u32>(var_5.x, u_input.c, 10261u)) >> ((vec3<u32>(3135u, var_5.x, 4294967295u) & vec3<u32>(u_input.c, 0u, var_5.x)) % vec3<u32>(32u))), vec3<u32>(1u, reverseBits(3240u), var_5.x)), ~vec3<u32>(_wgslsmith_mult_u32(~var_5.x, _wgslsmith_clamp_u32(19298u, u_input.b, 1897u)), 1u, ~(u_input.c & u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(~4294967295u) << (_wgslsmith_div_u32(~19535u, 4294967295u) % 32u), abs(u_input.a >> ((~vec3<u32>(var_5.x, 25686u, 4294967295u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.b, 4294967295u), vec3<u32>(0u, 63829u, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

