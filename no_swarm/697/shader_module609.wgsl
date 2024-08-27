struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, 46710i), vec4<i32>(2147483647i, -1i, 32011i, 42633i), vec2<u32>(1u, 34069u)), vec3<i32>(101i, -50600i, -86646i), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<i32>(13566i, 13105i, 363i, 0i), vec2<u32>(26479u, 0u)));

var<private> global1: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = vec2<i32>(0i, 0i) >> (~_wgslsmith_mod_vec2_u32(u_input.d, select(vec2<u32>(u_input.d.x, arg_0) & u_input.c.xx, abs(vec2<u32>(4294967295u, 1u)), true)) % vec2<u32>(32u));
    global1 = array<vec3<bool>, 28>();
    let var_1 = select(vec4<bool>(true, true, any(vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), true)), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(true, all(vec2<bool>(false, false)), true)), select(vec4<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, true)), all(global1[_wgslsmith_index_u32(0u, 28u)]), true), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), true), vec4<bool>(1i <= _wgslsmith_div_i32(40800i, var_0.x), true, false, !all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), arg_1.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1108f - -928f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1501f)), _wgslsmith_f_op_f32(sign(1185f))))))));
    global1 = array<vec3<bool>, 28>();
    return (~(~vec4<u32>(u_input.a, global0.c.c.x, 54939u, 19155u)) | vec4<u32>(~u_input.c.x << (~1u % 32u), _wgslsmith_mod_u32(arg_0, 4294967295u ^ global0.a.c.x), ~select(0u, 4294967295u, var_1.x), _wgslsmith_mult_u32(8145u, ~4294967295u))) >> (~(~(~(vec4<u32>(21066u, 4294967295u, global0.a.c.x, arg_0) ^ vec4<u32>(0u, 0u, 46599u, 0u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> f32 {
    let var_0 = arg_1.xy;
    let var_1 = arg_0.yxw;
    global1 = array<vec3<bool>, 28>();
    var var_2 = 2147483647i;
    var var_3 = ~select(_wgslsmith_sub_vec4_u32(func_3(_wgslsmith_add_u32(global0.c.c.x, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, var_0.x, 458f))), firstLeadingBit(vec4<u32>(global0.a.c.x, 0u, 24505u, 37755u)) >> (~vec4<u32>(4294967295u, global0.a.c.x, 810u, 1u) % vec4<u32>(32u))), ~(~(vec4<u32>(18860u, 0u, u_input.a, global0.c.c.x) ^ vec4<u32>(28657u, 26303u, 57866u, 36313u))), any(global1[_wgslsmith_index_u32(select(566u, 25565u, true), 28u)]));
    return -1101f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = ~select(abs(~abs(1u)), u_input.d.x, true);
    global0 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(global0.a.a, vec2<i32>(-u_input.e, -17105i)), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-19015i, 0i, global0.a.a.x, u_input.b), vec4<i32>(10542i, -1i, global0.c.a.x, -2885i), global0.c.b), max(~_wgslsmith_mult_vec2_u32(global0.c.c, u_input.d), u_input.d)), _wgslsmith_clamp_vec3_i32(~global0.b << (abs(u_input.c) % vec3<u32>(32u)), -(vec3<i32>(-1i, global0.a.a.x, -2147483647i) >> (u_input.c % vec3<u32>(32u))), global0.c.b.zzy) << (~_wgslsmith_add_vec3_u32(vec3<u32>(102473u, global0.a.c.x, 22187u), min(u_input.c, u_input.c)) % vec3<u32>(32u)), Struct_1(vec2<i32>(-2147483647i << (~u_input.c.x % 32u), ~2147483647i), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(1i, u_input.b, -14985i), max(u_input.b, 0i)), 1i, global0.c.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, 0i, global0.c.b.x, 0i), vec4<i32>(u_input.e, -2147483647i, u_input.b, 52723i)), vec4<i32>(-2147483647i, global0.c.a.x, global0.a.b.x, -15507i))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(1u, 1u)), u_input.d.x >> (global0.a.c.x % 32u)), u_input.c.x)));
    global0 = Struct_2(Struct_1(abs(-(~global0.b.zz)), vec4<i32>(u_input.b, global0.a.b.x, -u_input.e, 2147483647i), global0.a.c), vec3<i32>(-30807i, 30754i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, -2211i), global0.a.b.x, firstTrailingBit(-2147483647i)), -select(global0.a.b.xxw, vec3<i32>(global0.c.b.x, -1i, u_input.b), true))), Struct_1(reverseBits(_wgslsmith_div_vec2_i32(global0.b.xx, vec2<i32>(-1i, 2147483647i))), _wgslsmith_clamp_vec4_i32(-(global0.c.b | global0.c.b), vec4<i32>(-global0.a.b.x, 1i, 54280i, ~global0.a.b.x), global0.a.b), vec2<u32>(~59740u, func_3(~37930u, arg_2.xxy).x)));
    global0 = Struct_2(global0.c, global0.b, Struct_1(min(vec2<i32>(select(u_input.b, u_input.b, true), -2147483647i), ~vec2<i32>(global0.c.b.x, global0.b.x)), _wgslsmith_div_vec4_i32(global0.a.b, global0.c.b), func_3(_wgslsmith_sub_u32(global0.c.c.x, u_input.a), _wgslsmith_f_op_vec3_f32(arg_2.wxz + _wgslsmith_f_op_vec3_f32(ceil(arg_2.wzz)))).wx));
    global1 = array<vec3<bool>, 28>();
    return Struct_2(global0.a, global0.a.b.ywz, global0.c);
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, false), vec4<f32>(-737f, -327f, -2349f, -618f))) + -950f))), _wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-323f, -221f, -457f, -624f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1203f - -1228f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f) * _wgslsmith_f_op_f32(floor(-1194f)))), _wgslsmith_f_op_f32(-230f + _wgslsmith_f_op_f32(f32(-1f) * -759f)), _wgslsmith_f_op_f32(-256f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2157f, 869f)), _wgslsmith_f_op_f32(max(-1000f, -564f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1256f * _wgslsmith_f_op_f32(trunc(1192f))), _wgslsmith_f_op_f32(select(-1000f, -1000f, true))))));
    global0 = Struct_2(Struct_1(global0.b.xz & var_0.a.a, reverseBits(var_0.a.b), vec2<u32>(min(~24033u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, var_0.a.c.x, 4294967295u), vec4<u32>(0u, 25667u, 70139u, 0u))), var_0.c.c.x)), vec3<i32>(u_input.e, func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1089f, 395f) * _wgslsmith_f_op_f32(-613f + -1622f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -154f) * _wgslsmith_div_f32(1417f, 815f)), vec4<f32>(_wgslsmith_f_op_f32(round(1036f)), _wgslsmith_f_op_f32(floor(-1233f)), _wgslsmith_f_op_f32(557f * 1123f), _wgslsmith_f_op_f32(floor(569f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1228f, -1059f, -3061f, 704f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-280f, -276f, 590f, -265f))))).b.x, ~(40938i ^ var_0.b.x)), func_4(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) * _wgslsmith_f_op_f32(round(-964f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1562f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, -1408f, 183f, -390f)), vec4<f32>(1019f, _wgslsmith_div_f32(1408f, 822f), 351f, _wgslsmith_f_op_f32(907f * -887f)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, -311f, -1224f, -1114f) * vec4<f32>(-1628f, -1701f, -986f, -1250f))))).a);
    var var_1 = !vec4<bool>(true, true, any(global1[_wgslsmith_index_u32(0u, 28u)]), true);
    var var_2 = Struct_4(vec3<i32>(_wgslsmith_clamp_i32(abs(~(-23345i)), 488i, abs(1i)), -28560i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.b.x, ~(-1i)), u_input.e, ~reverseBits(global0.b.x))), u_input.b, ~4294967295u);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(872f + -908f), _wgslsmith_f_op_f32(f32(-1f) * -812f)) - vec2<f32>(-371f, _wgslsmith_f_op_f32(round(633f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-842f, -190f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(369f, -435f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1973f, -1226f), vec2<f32>(-237f, 938f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1312f, 788f))), vec2<f32>(-323f, _wgslsmith_f_op_f32(trunc(-1319f))))));
    return Struct_3(1i, select(var_1.xwy, select(var_1.wyy, !var_1.yyy, !select(vec3<bool>(true, var_1.x, var_1.x), global1[_wgslsmith_index_u32(var_0.a.c.x, 28u)], vec3<bool>(true, var_1.x, true))), all(var_1.xw)), var_2.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> i32 {
    global1 = array<vec3<bool>, 28>();
    let var_0 = Struct_1((_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, u_input.e), global0.a.a >> (vec2<u32>(3516u, 0u) % vec2<u32>(32u))) ^ global0.c.a) | firstLeadingBit(vec2<i32>(35418i, -6875i)), vec4<i32>(_wgslsmith_sub_i32(0i, -_wgslsmith_div_i32(-31130i, -21971i)), global0.a.a.x, countOneBits(firstLeadingBit(-39685i)), u_input.b), vec2<u32>(~(~_wgslsmith_add_u32(58898u, 32799u)), 11616u));
    var var_1 = arg_0;
    let var_2 = min(_wgslsmith_clamp_vec3_u32(u_input.c, ~vec3<u32>(_wgslsmith_sub_u32(0u, var_0.c.x), var_0.c.x, ~87007u), ~(~select(u_input.c, u_input.c, vec3<bool>(arg_0.b.x, arg_0.b.x, var_1.b.x)))), vec3<u32>(select(arg_2, 4294967295u, (arg_1.x & arg_0.b.x) || all(vec4<bool>(var_1.b.x, var_1.b.x, arg_1.x, arg_0.b.x))), _wgslsmith_div_u32(u_input.d.x, 25204u), 4294967295u));
    var var_3 = !(!(!select(select(vec4<bool>(true, var_1.b.x, arg_1.x, false), vec4<bool>(false, arg_1.x, arg_0.b.x, var_1.b.x), false), !vec4<bool>(var_1.b.x, arg_0.b.x, false, arg_0.b.x), vec4<bool>(arg_0.b.x, false, arg_0.b.x, true))));
    return -_wgslsmith_div_i32(~func_1().c, arg_0.c);
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    global1 = array<vec3<bool>, 28>();
    global1 = array<vec3<bool>, 28>();
    global1 = array<vec3<bool>, 28>();
    var var_0 = global0.c;
    global1 = array<vec3<bool>, 28>();
    return Struct_1(-firstTrailingBit(-func_4(-599f, -603f, vec4<f32>(-743f, -860f, -1000f, -1211f), vec4<f32>(-185f, 1469f, -873f, 604f)).b.zx), select(vec4<i32>(~(-2147483647i), _wgslsmith_mult_i32(abs(arg_3.a.x), var_0.b.x << (arg_3.c % 32u)), select(-26578i, global0.a.b.x, false) << (~arg_0.x % 32u), _wgslsmith_div_i32(max(-8702i, u_input.b), _wgslsmith_mod_i32(0i, 30228i))), abs(vec4<i32>(-var_0.b.x, 1i, select(36289i, arg_3.b, false), -1i)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true))), vec2<u32>(~_wgslsmith_mult_u32(global0.c.c.x, ~var_0.c.x), global0.c.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_6(u_input.c, u_input.c, 1u & global0.a.c.x, Struct_4(vec3<i32>(_wgslsmith_add_i32(global0.c.a.x, global0.b.x), global0.b.x, 31472i), func_5(func_1(), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), ~u_input.a, _wgslsmith_f_op_f32(-505f + 1253f)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.c.x), global0.c.c))), global0.c.b.wwy << (_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(u_input.d.x), ~17916u, u_input.d.x), ~vec3<u32>(58952u, 16670u, u_input.d.x)) % vec3<u32>(32u)), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(global0.a.b.x & global0.a.a.x, u_input.b), vec2<i32>(i32(-1i) * -2147483647i, -2147483647i)), vec4<i32>(2147483647i, global0.a.b.x, global0.a.a.x, ~global0.b.x), ~(vec2<u32>(0u, 30043u) & global0.a.c)));
    var var_0 = vec4<u32>(_wgslsmith_add_u32(global0.c.c.x >> (4294967295u % 32u), 4294967295u), reverseBits(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, u_input.d.x, global0.a.c.x), vec4<u32>(global0.c.c.x, u_input.a, 4294967295u, 0u)), countOneBits(global0.a.c.x ^ 37958u))), ~global0.c.c.x, u_input.d.x);
    let var_1 = !((u_input.c.x | ~(~global0.c.c.x)) <= ~global0.c.c.x);
    global0 = Struct_2(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1005f - 603f))), _wgslsmith_f_op_f32(f32(-1f) * -531f))), -1736f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-367f, _wgslsmith_f_op_f32(step(-1645f, -499f)), _wgslsmith_f_op_f32(-1967f * 342f), -2087f) * vec4<f32>(_wgslsmith_div_f32(874f, -1001f), _wgslsmith_f_op_f32(floor(-701f)), 842f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, 506f, -1943f, 297f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, 341f, 466f, -584f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(606f, -333f, 245f, 726f), vec4<f32>(-156f, 1828f, 1000f, 467f))))))).c, vec3<i32>(-8192i, 42314i, func_6(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), u_input.c), u_input.c, reverseBits(global0.a.c.x), Struct_4(-vec3<i32>(-37091i, -7106i, 10806i), u_input.b, u_input.a)).a.x), global0.c);
    var var_2 = Struct_2(Struct_1(vec2<i32>(-2147483647i >> (1u % 32u), ~(-35213i)) >> (abs(u_input.c.xy) % vec2<u32>(32u)), min(global0.a.b | global0.c.b, -global0.a.b), ~vec2<u32>(0u << (global0.a.c.x % 32u), _wgslsmith_div_u32(var_0.x, global0.a.c.x))), abs(min(~_wgslsmith_add_vec3_i32(global0.b, global0.b), vec3<i32>(_wgslsmith_dot_vec4_i32(global0.a.b, global0.c.b), global0.b.x, 1i))), global0.a);
    let var_3 = Struct_4(vec3<i32>(abs(1i), 42026i, global0.a.b.x), global0.c.a.x, 1u);
    let var_4 = _wgslsmith_dot_vec4_u32(~vec4<u32>(66585u, func_4(-1016f, 1f, vec4<f32>(-167f, 193f, 679f, -645f), vec4<f32>(-987f, -2666f, 1246f, 629f)).a.c.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(161u, 0u), 0u), ~var_0.x), firstTrailingBit(vec4<u32>(~0u, 52198u, 4294967295u, ~4294967295u) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_3.c, var_2.a.c.x, 25343u, 1u), vec4<u32>(var_2.a.c.x, global0.c.c.x, 1u, global0.c.c.x)) % vec4<u32>(32u))));
    var_2 = Struct_2(var_2.a, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.x >> (global0.c.c.x % 32u), var_2.a.b.x, func_4(-191f, 444f, vec4<f32>(763f, -606f, 1201f, -1000f), vec4<f32>(898f, 309f, 422f, -423f)).a.b.x), _wgslsmith_sub_vec3_i32(var_3.a, min(vec3<i32>(var_3.a.x, u_input.e, var_2.b.x), global0.a.b.wxx))), vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, 513i), vec2<i32>(var_3.a.x, 11280i))), _wgslsmith_mod_i32(34905i, _wgslsmith_mod_i32(1i, -40159i)), _wgslsmith_sub_i32(-1711i, select(u_input.e, var_2.b.x, var_1)))), global0.a);
    var var_5 = all(select(!global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(817f)), _wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(104f, -563f) - _wgslsmith_f_op_f32(-1288f - 925f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-734f, -447f, -690f, 1105f) * vec4<f32>(-404f, 180f, 432f, -248f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-756f, 2031f, -1477f, 530f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(843f, -449f, -394f, -1376f), vec4<f32>(-1968f, 866f, -1445f, -451f)))))).a.c.x, 28u)], !global1[_wgslsmith_index_u32(~(~9418u), 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-120f, reverseBits(global0.c.b.ww) >> (_wgslsmith_clamp_vec2_u32(~var_0.zy, select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.c, var_0.x), vec2<u32>(var_4, 0u)), vec2<u32>(0u, 47741u), !var_1), countOneBits(var_0.yx ^ vec2<u32>(41125u, var_0.x))) % vec2<u32>(32u)), _wgslsmith_mod_u32(var_4, 1u), var_3.a.x & 26357i);
}

