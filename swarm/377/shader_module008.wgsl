struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2406f;

var<private> global1: Struct_2;

var<private> global2: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.b, global1.d, false))))), _wgslsmith_f_op_f32(f32(-1f) * -1042f), global1.c.a)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(956f, _wgslsmith_f_op_f32(f32(-1f) * -982f))))));
    var var_0 = global1.c;
    global1 = Struct_2(_wgslsmith_add_vec3_i32(reverseBits(global1.a), vec3<i32>(var_0.e, _wgslsmith_dot_vec2_i32(global1.a.xy, global1.a.yz << (vec2<u32>(9509u, global2.x) % vec2<u32>(32u))), -1i)), all(select(vec2<bool>(all(vec4<bool>(false, var_0.a, var_0.a, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(var_0.a, global1.b), var_0.a), !vec2<bool>(false, global1.c.a), !vec2<bool>(var_0.a, var_0.a)), !vec2<bool>(global1.b, var_0.a))), global1.c, var_0.b);
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.d, global1.c.c, var_0.c), vec3<f32>(-456f, 1175f, 1575f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, global1.c.b, -1184f)))))), vec3<f32>(-966f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_div_f32(334f, var_0.c)))), -523f));
    var var_2 = Struct_2(~vec3<i32>(-_wgslsmith_sub_i32(global1.c.d, u_input.b), ~var_0.e, min(~global1.a.x, -592i)), false, Struct_1(true, var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x))), 1i, ~global1.c.d), var_1.b.x);
    return select(vec4<bool>(false, !(!(!global1.c.a)), false, var_2.c.a), !select(!select(vec4<bool>(var_2.c.a, true, var_2.c.a, false), vec4<bool>(false, var_2.c.a, true, var_0.a), vec4<bool>(false, global1.b, false, var_2.b)), select(vec4<bool>(global1.c.a, global1.b, var_0.a, false), vec4<bool>(var_2.b, var_0.a, true, false), true), vec4<bool>(!var_2.b, true, false || var_2.c.a, true)), !select(!global1.c.a || var_0.a, !global1.b || var_0.a, true));
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = select(!select(vec4<bool>(global2.x != 40231u, all(vec4<bool>(global1.b, true, global1.b, global1.b)), all(vec4<bool>(global1.c.a, true, true, true)), true), !vec4<bool>(global1.c.a, false, global1.b, false), vec4<bool>(select(true, global1.b, true), false != global1.b, global1.c.a, global1.b)), !select(!func_3(), !select(vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(false, true, true, global1.c.a)), true), any(vec2<bool>(any(!vec2<bool>(global1.b, global1.c.a)), false)));
    let var_1 = global1.c;
    let var_2 = select(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(19383i, -2147483647i, 0i), global1.a), -1i, global1.a.x, _wgslsmith_add_i32(var_1.e, global1.c.d & var_1.d)), vec4<i32>(min(-31040i << (u_input.a % 32u), _wgslsmith_mod_i32(global1.a.x, 4814i)), _wgslsmith_div_i32(global1.a.x, u_input.b), 1i, -global1.c.d << (~global2.x % 32u))), ~(-48376i), func_3().x);
    var var_3 = true & var_0.x;
    let var_4 = arg_0;
    return global1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    global2 = ~firstTrailingBit(vec2<u32>(1u, 1u) | vec2<u32>(36146u, _wgslsmith_dot_vec2_u32(vec2<u32>(29628u, 115040u), vec2<u32>(4294967295u, 18103u))));
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, ~(~(-1i))), _wgslsmith_add_vec2_i32(-(arg_2.a.xx | global1.a.xy), arg_0.a.zz ^ ~arg_0.a.yx)), -(~global1.a.zx));
    var var_1 = (1u << (global2.x % 32u)) | countOneBits(global2.x);
    global2 = vec2<u32>(abs(u_input.a), 31864u);
    global2 = vec2<u32>(_wgslsmith_add_u32(global2.x & ~(~4294967295u), 78219u), ~_wgslsmith_mult_u32(abs(global2.x << (978u % 32u)), u_input.c));
    return Struct_2(~arg_1.wxy, !((true == (true && arg_0.c.a)) & false), global1.c, arg_2.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec2<u32> {
    global1 = func_4(Struct_2(func_2(Struct_3(vec3<f32>(-1000f, -152f, global1.d))), any(select(vec4<bool>(arg_0.x, global1.b, global1.b, global1.b), !vec4<bool>(false, false, arg_0.x, arg_0.x), global1.c.a == false)), global1.c, _wgslsmith_f_op_f32(-global1.c.b)), vec4<i32>(_wgslsmith_mult_i32(~(-2147483647i), firstLeadingBit(arg_1)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b, 22139i), firstTrailingBit(18283i), global1.a.x), -1i, ~u_input.b ^ u_input.b) & -abs(-vec4<i32>(arg_2.x, 16633i, 33107i, arg_2.x)), Struct_2(global1.a, true, global1.c, global1.c.b));
    var var_0 = vec3<i32>(~reverseBits(-1i ^ _wgslsmith_div_i32(arg_2.x, 16812i)), global1.a.x, _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.a.xx, global1.a.zx), _wgslsmith_add_vec2_i32(global1.a.yy, vec2<i32>(2147483647i, arg_2.x))), global1.a.x | global1.c.e));
    var var_1 = ~global2.x;
    let var_2 = vec2<bool>(true, true);
    let var_3 = global1.c;
    return ~(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, global2.x) | vec2<u32>(global2.x, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 39993u), vec2<u32>(4294967295u, global2.x)), ~vec2<u32>(32376u, 1u)), ~select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(6400u, 0u), arg_0.yz), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(192f, global1.d))), vec2<f32>(global1.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1510f)) + _wgslsmith_f_op_f32(f32(-1f) * -309f)), 1006f, true))));
    var var_1 = vec3<bool>(global1.c.a, global1.c.a, all(!vec4<bool>(global1.b, global1.a.x >= global1.c.e, any(vec2<bool>(global1.b, true)), false)));
    let var_2 = false;
    var var_3 = ~((vec2<u32>(12349u, ~1u) >> (firstTrailingBit(~vec2<u32>(18412u, global2.x)) % vec2<u32>(32u))) | ~func_1(!vec3<bool>(global1.c.a, false, var_2), u_input.b, ~vec4<i32>(u_input.b, global1.a.x, 2147483647i, -2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1039f, -104f) * vec2<f32>(-164f, global1.d))));
    var_3 = max(vec2<u32>(global2.x, global2.x), select(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 41730u) << (vec2<u32>(44569u, u_input.a) % vec2<u32>(32u)), vec2<u32>(var_3.x, 0u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 1812u), vec2<u32>(global2.x, var_3.x))), func_1(vec3<bool>(global1.b, any(vec3<bool>(var_1.x, var_2, true)), true), ~(-26654i), -vec4<i32>(global1.a.x, global1.a.x, 1i, -36955i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, global1.c.c), vec2<f32>(global1.c.b, 1468f))))), !func_3().yz));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, global1.d)))))));
    var var_5 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-651f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_4.a.xy, var_4.a.xx)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(~52904u, 1u, 0u), ~56474u, 20278u, 0u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_4.a)), vec3<f32>(global1.d, -364f, -1079f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), -395f, _wgslsmith_f_op_f32(f32(-1f) * -550f)) - vec3<f32>(-1006f, 2275f, _wgslsmith_f_op_f32(exp2(var_4.a.x))))), -563f, global1.a.zy);
}

