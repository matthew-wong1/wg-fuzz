struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = global0.c.x;
    return vec4<i32>(-1i) * -abs(-vec4<i32>(u_input.c, global0.c.x, u_input.c, -37970i));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_3(Struct_2(all(select(select(vec4<bool>(false, global0.e, global0.e, true), vec4<bool>(global0.d.a, global0.e, true, false), global0.d.a), select(vec4<bool>(global0.d.a, false, global0.d.a, false), vec4<bool>(global0.d.a, global0.e, true, false), global0.d.a), !vec4<bool>(global0.e, global0.d.a, global0.e, global0.d.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, global0.a, global0.a), vec3<f32>(-123f, global0.a, global0.a), vec3<bool>(false, global0.d.a, global0.d.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 407f, global0.a)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2591f, -717f) + vec3<f32>(159f, global0.a, global0.a))), vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(global0.a)), 293f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, -493f), vec3<f32>(-1604f, 364f, 196f))))))));
    let var_2 = select(select(!vec3<bool>(var_0.a.a, true, all(vec4<bool>(true, global0.e, var_0.a.a, false))), vec3<bool>(select(global0.e, select(var_0.a.a, false, false), select(true, var_0.a.a, global0.d.a)), any(select(vec3<bool>(false, false, var_0.a.a), vec3<bool>(global0.e, global0.e, global0.e), vec3<bool>(global0.e, false, var_0.a.a))), select(all(vec4<bool>(global0.e, true, var_0.a.a, true)), false, true)), vec3<bool>(true, !var_0.a.a, all(!vec3<bool>(false, var_0.a.a, false)))), !select(select(!vec3<bool>(var_0.a.a, global0.e, global0.e), vec3<bool>(false, true, global0.e), select(vec3<bool>(false, global0.e, true), vec3<bool>(true, false, true), global0.d.a)), vec3<bool>(!var_0.a.a, false, var_0.a.a | global0.d.a), (90968u << (global0.b.x % 32u)) == countOneBits(global0.b.x)), global0.d.a);
    var_0 = Struct_3(global0.d);
    let var_3 = true;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)))));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_i32(reverseBits(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a, -1000f), vec2<f32>(814f, global0.a))), Struct_5(vec4<bool>(true, global0.e, global0.e, global0.d.a)), vec4<bool>(global0.d.a, true, false, false), global0.d)), vec4<i32>(-1i) * -vec4<i32>(11268i, 1i, -737i, -1i)) & -_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.x, ~(-6078i), u_input.c | 2147483647i, ~u_input.c), firstTrailingBit(select(vec4<i32>(u_input.c, -12181i, 2235i, -27817i), vec4<i32>(global0.c.x, 0i, 71993i, 0i), vec4<bool>(false, global0.e, false, true))));
    var var_1 = countOneBits(vec4<u32>(~_wgslsmith_div_u32(4294967295u, global0.b.x), ~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(24764u, u_input.a.x), 33876u) ^ global0.b.x, global0.b.x));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(reverseBits((u_input.c & -49700i) >> (1u % 32u)), -37897i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 28927i, -2147483647i, -1i), vec4<i32>(-2147483647i ^ global0.c.x, -4216i, _wgslsmith_mult_i32(u_input.c, global0.c.x), -43223i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -2147483647i), ~(6795i << (var_1.x % 32u))), firstLeadingBit(global0.c.x)));
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global0.c.x)), _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_div_f32(global0.a, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(-874f, global0.a)))), firstLeadingBit(vec2<u32>(~0u, 1u)), var_0.ww, Struct_2(true), true);
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-1453f, global0.a)), global0.a), _wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, ~46179u), var_1.yw), global0.c, global0.d, any(select(!(!vec2<bool>(false, global0.e)), select(select(vec2<bool>(false, false), vec2<bool>(true, global0.d.a), global0.d.a), select(vec2<bool>(true, false), vec2<bool>(false, false), global0.e), vec2<bool>(global0.d.a, false)), true)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), firstTrailingBit(u_input.a), abs(-countOneBits(-var_0.xw)), Struct_2(true), false);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = 73952u;
    global0 = func_1();
    let var_1 = ~(~abs(~reverseBits(92015u)));
    global0 = Struct_4(-676f, select(global0.b, abs(firstLeadingBit(~global0.b)), global0.d.a), _wgslsmith_mod_vec2_i32(~func_1().c, ~(-(vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(u_input.c, u_input.c)))), Struct_2(all(select(!vec4<bool>(false, arg_1.d.a, global0.d.a, arg_1.e), select(vec4<bool>(false, false, global0.e, false), vec4<bool>(global0.e, false, arg_1.e, global0.d.a), vec4<bool>(false, false, false, arg_2.a)), true))), any(select(select(vec2<bool>(arg_1.d.a, arg_2.a), !vec2<bool>(arg_1.e, false), arg_1.e), vec2<bool>(!arg_1.d.a, arg_1.d.a), !all(vec2<bool>(false, arg_2.a)))));
    global0 = arg_1;
    return Struct_2(any(select(select(select(vec4<bool>(global0.e, global0.e, false, true), vec4<bool>(true, arg_1.d.a, global0.d.a, false), vec4<bool>(arg_1.d.a, true, false, global0.d.a)), vec4<bool>(arg_2.a, false, arg_2.a, arg_2.a), !vec4<bool>(global0.e, false, false, false)), !select(vec4<bool>(arg_2.a, false, true, global0.d.a), vec4<bool>(false, true, arg_1.e, arg_2.a), vec4<bool>(true, arg_1.d.a, arg_2.a, global0.d.a)), !(!vec4<bool>(true, arg_1.d.a, true, true)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    global0 = func_1();
    global0 = func_1();
    global0 = func_1();
    let var_0 = firstLeadingBit(_wgslsmith_add_i32(-13263i, select(~(-2147483647i), reverseBits(u_input.c) << (abs(u_input.e.x) % 32u), arg_2.a.a)));
    global0 = Struct_4(-1211f, _wgslsmith_clamp_vec2_u32(u_input.d, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global0.b, _wgslsmith_div_vec2_u32(global0.b, vec2<u32>(4294967295u, 1u))), _wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(20230u, arg_1), vec2<u32>(u_input.a.x, 46061u))), ~(~(vec2<u32>(4294967295u, arg_1) ^ vec2<u32>(4294967295u, arg_1)))), global0.c, Struct_2(arg_0.a), func_1().d.a);
    return Struct_2(any(vec3<bool>(all(vec3<bool>(false, global0.d.a, arg_2.a.a)), any(vec3<bool>(arg_0.a, false, global0.d.a)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(func_4(_wgslsmith_clamp_i32(global0.c.x, select(global0.c.x, 2147483647i, global0.e), -2147483647i), func_1(), global0.d, u_input.a.x), 0u, Struct_3(func_1().d)));
    var var_1 = Struct_1(true, !(!vec2<bool>(global0.d.a, !var_0.a.a)), _wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(2147483647i, u_input.c, global0.c.x)), vec3<i32>(2147483647i, 80113i, _wgslsmith_add_i32(22774i, u_input.c))) ^ _wgslsmith_sub_i32(-(~global0.c.x), 2633i), select(vec3<bool>(!(global0.a < -1021f), !any(vec4<bool>(global0.e, true, var_0.a.a, true)), false), vec3<bool>(!var_0.a.a, var_0.a.a, true), select(vec3<bool>(false || var_0.a.a, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, var_0.a.a), vec3<bool>(true, true, false)), !vec3<bool>(var_0.a.a, var_0.a.a, true), global0.d.a), vec3<bool>(false, global0.e, true && global0.e))), u_input.c);
    var_1 = Struct_1(true, vec2<bool>(global0.d.a, 1u >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.b, vec2<u32>(u_input.a.x, 40990u)), 0u, ~global0.b.x)), func_2(vec2<f32>(global0.a, func_1().a), Struct_5(!select(vec4<bool>(global0.e, true, false, global0.d.a), vec4<bool>(true, false, var_1.d.x, var_0.a.a), var_0.a.a)), select(select(vec4<bool>(var_1.a, false, global0.e, var_0.a.a), vec4<bool>(global0.d.a, var_0.a.a, false, global0.d.a), all(var_1.d.zz)), vec4<bool>(var_1.a, var_1.b.x & var_0.a.a, var_0.a.a, true), true), var_0.a).x, !select(!vec3<bool>(var_1.b.x, true, false), var_1.d, vec3<bool>(global0.b.x > 12901u, !global0.e, -56064i > global0.c.x)), 0i);
    var var_2 = _wgslsmith_mod_vec4_u32(u_input.e, _wgslsmith_div_vec4_u32(u_input.e, u_input.e) ^ u_input.e);
    let var_3 = Struct_1(false, var_1.b, global0.c.x, !vec3<bool>(true, (global0.a >= -1000f) && (var_1.d.x || var_0.a.a), var_1.b.x), ~u_input.c);
    var_1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(476f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) + _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_mult_i32(-14370i, var_3.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 1f, _wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -1519f, global0.a)))), func_1().b);
}

