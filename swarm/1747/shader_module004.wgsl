struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, true, false)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(max(-485f, 101f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1426f, -843f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f * -783f)));
    var_0 = Struct_3(~vec2<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(arg_0.x, -13013i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.b.x), u_input.b), u_input.b.x)));
    var var_2 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 10588u, 1310u)), vec4<u32>(11195u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(0u, 66384u, 25280u)), u_input.a, 75704u & u_input.a), vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, min(u_input.a, 0u), 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 18692u, 39389u)), _wgslsmith_div_u32(firstLeadingBit(7541u), ~34435u), u_input.a, ~(u_input.a >> (u_input.a % 32u))));
    var var_3 = countOneBits(_wgslsmith_dot_vec2_i32(var_0.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, var_0.a.x), vec2<i32>(var_0.a.x, arg_2.a.x), vec2<i32>(-1i, 800i)) << (vec2<u32>(7979u, 65470u) % vec2<u32>(32u)))) >= ~_wgslsmith_mod_i32(u_input.b.x, -56112i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) - 487f));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> vec3<bool> {
    let var_0 = Struct_1(vec4<bool>(true, arg_2, true, true));
    global0 = array<Struct_1, 17>();
    let var_1 = -abs(vec2<i32>(-(1i ^ u_input.d), u_input.b.x << (4294967295u % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b, -44665i, Struct_3(var_1)))), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.wzx, _wgslsmith_f_op_vec3_f32(-arg_1.yww))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_1.zwx, _wgslsmith_f_op_vec3_f32(arg_1.xzy * _wgslsmith_f_op_vec3_f32(-arg_1.yxy)), var_0.a.yxw)), arg_1.xxw, all(vec2<bool>(false, select(false, true, arg_2))))));
    return select(select(!vec3<bool>(any(var_0.a.zzz), !arg_2, var_0.a.x), select(var_0.a.yyz, vec3<bool>(true, var_0.a.x, arg_0 > 59995u), u_input.a < _wgslsmith_mult_u32(14088u, 1u)), !select(var_0.a.wyz, var_0.a.ywx, false)), !var_0.a.wxx, !(!select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, false, var_0.a.x), select(var_0.a.wxx, vec3<bool>(false, false, true), false))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    global0 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(976f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(400f, 142f) * -589f))))));
    let var_1 = -1524f;
    let var_2 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, 67943i) << (abs(vec2<u32>(37869u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(27444i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 1i, arg_2.a.x)))), -8807i, ~u_input.d >> (~0u % 32u), arg_2.a.x);
    var var_3 = Struct_2(0u);
    return Struct_3(-max(var_2.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 4960i), vec2<i32>(var_2.x, u_input.d))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(select(!vec4<bool>(select(true, arg_0.x, arg_0.x), any(arg_0), !arg_0.x, 68881i <= arg_2.a.x), !select(vec4<bool>(arg_0.x, arg_0.x, false, false), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true), true), arg_0.x), select(vec4<bool>(true, all(arg_0.zz), false, func_2(4294967295u, vec4<f32>(-1883f, -274f, 1567f, 1300f), arg_0.x).x), select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, arg_0.x), !vec4<bool>(arg_0.x, false, false, arg_0.x)), vec4<bool>(true, arg_0.x, true, true))));
    let var_1 = true;
    var_0 = global0[_wgslsmith_index_u32(reverseBits(20573u) << (_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(arg_1, arg_1), ~arg_1) % 32u), 17u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f + 1530f));
    let var_3 = Struct_1(select(var_0.a, var_0.a, select(vec4<bool>(var_1, -421f <= var_2, var_1, -2147483647i == arg_2.a.x), !vec4<bool>(true, true, false, var_0.a.x), var_0.a)));
    return var_3;
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = u_input.c;
    let var_1 = func_5(!(!(!vec3<bool>(arg_0, false, true))), abs(firstTrailingBit(max(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, 4294967295u))) | _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(19458u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a))), func_4(max(~_wgslsmith_sub_u32(u_input.a, u_input.a), ~(~25664u)), !any(func_2(u_input.a, vec4<f32>(763f, -136f, 1527f, 254f), true)), Struct_3(var_0)));
    let var_2 = select(func_5(select(!vec3<bool>(arg_0, var_1.a.x, false), vec3<bool>(arg_0 | false, true, arg_0), false), _wgslsmith_mod_vec2_u32(vec2<u32>(select(u_input.a, 18961u, true), _wgslsmith_clamp_u32(0u, 1u, 4294967295u)), ~vec2<u32>(4294967295u, 1u)), Struct_3(abs(countOneBits(vec2<i32>(u_input.d, u_input.b.x))))).a.wx, vec2<bool>(true, true), true);
    global0 = array<Struct_1, 17>();
    var var_3 = Struct_2(~countOneBits(u_input.a));
    return vec4<i32>(-1i, countOneBits(-1i), reverseBits(-1i), select(u_input.b.x, var_0.x, -1i == u_input.c.x) ^ (_wgslsmith_clamp_i32(-2147483647i, -var_0.x, 1i) << (firstLeadingBit(u_input.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(u_input.b.x), -(~u_input.c.x), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), ~_wgslsmith_sub_i32(u_input.b.x, u_input.c.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(0i, u_input.d, u_input.b.x, u_input.d)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x)), -reverseBits(vec4<i32>(2775i, u_input.d, -1i, -1i)))), func_1(select(all(vec3<bool>(true, true, true)), select(false, false, false) && all(vec3<bool>(false, true, true)), true)));
    var var_1 = Struct_2((~u_input.a << (~(~u_input.a) % 32u)) & ~(~0u));
    var var_2 = Struct_3(var_0.yz);
    var var_3 = Struct_1(vec4<bool>(true, true, !func_2(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, 115f, -188f, 1431f)), false).x, abs(~78141u) <= var_1.a));
    var var_4 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.a, 4294967295u), 15355u), var_1.a, _wgslsmith_mod_u32(22912u, var_1.a) >> (~1u % 32u)) >> (~(vec3<u32>(_wgslsmith_mod_u32(var_1.a, var_1.a), u_input.a, 4294967295u) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, var_1.a, var_1.a), vec3<u32>(4294967295u, 9487u, u_input.a), vec3<u32>(var_1.a, 0u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_1 = Struct_2(u_input.a);
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~max(max(countOneBits(vec3<u32>(24543u, 50731u, 4294967295u)), ~vec3<u32>(var_4.x, 49935u, 36841u)), vec3<u32>(var_1.a, firstLeadingBit(35507u), _wgslsmith_div_u32(var_4.x, var_4.x))), var_0.zxx, -(~vec4<i32>(var_2.a.x, reverseBits(var_2.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), u_input.b.zy), -1788i)), -2147483647i);
}

