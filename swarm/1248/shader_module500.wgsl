struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec2<i32>(countOneBits(41815i), reverseBits(abs(-1i)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0))), arg_0));
    var_0 = max(~(vec2<i32>(77392i, var_0.x) & vec2<i32>(-11565i, var_0.x)) >> (u_input.a.xy % vec2<u32>(32u)), -(vec2<i32>(var_0.x, 36341i) ^ vec2<i32>(1i, 1i))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x ^ u_input.b.x), u_input.b.ww, ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a.x) << (u_input.a.yx % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 6906u))) % vec2<u32>(32u));
    let var_1 = u_input.a;
    return var_0.x;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-162f, 293f));
    global0 = -1350f;
    let var_0 = func_3(-1457f);
    global0 = -126f;
    return Struct_3(957f, arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(411f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-455f, -329f)))));
}

fn func_1() -> Struct_2 {
    var var_0 = 446f > _wgslsmith_f_op_f32(round(159f));
    global0 = 406f;
    var_0 = _wgslsmith_div_u32(u_input.b.x, u_input.a.x) <= 61062u;
    global0 = _wgslsmith_div_f32(-759f, 662f);
    var var_1 = func_2(u_input.b.x);
    return Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(all(vec2<bool>(false, true)), false, true)), -10495i), Struct_1(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), ~(-1i)), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, false)), true, true)), -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-746f, _wgslsmith_f_op_f32(-131f + 578f))))), _wgslsmith_f_op_f32(-1006f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.x - -1037f)))), !select(vec2<bool>(true, false), vec2<bool>(true, true), !(var_1.a != 694f)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(36543u, 21713u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 6244u, arg_3.x), arg_1.xxx)), firstLeadingBit(~abs(arg_3.xzz))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(840f)), func_2(1u).a, arg_2.e.x))), arg_3.x, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_0 + arg_2.d.x), func_1().d.x)))), Struct_2(arg_2.b, arg_2.a, func_1().a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), -1783f, -361f))), func_1().b.a.xy));
    var_0 = Struct_4(abs(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(arg_3.x, 76314u))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(274f * arg_0) * _wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_div_u32(~0u, 1u) & u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.c))), Struct_2(func_1().a, Struct_1(arg_2.c.a, -4164i), func_1().a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1055f, arg_2.d.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -748f, var_0.c.d.x) * vec3<f32>(-1050f, var_0.b.a, -1364f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2176f, arg_2.d.x, arg_0) - vec3<f32>(-315f, var_0.b.a, -1382f)) - vec3<f32>(arg_2.d.x, arg_2.d.x, var_0.b.a)), var_0.c.b.a.x)), arg_2.b.a.xx));
    let var_1 = func_1().a.a;
    global0 = arg_2.d.x;
    global0 = _wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.d.x, _wgslsmith_f_op_f32(929f * _wgslsmith_f_op_f32(-arg_0))))));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-904f, _wgslsmith_f_op_f32(min(-742f, 282f))))))), _wgslsmith_mod_vec4_u32(select(u_input.b, _wgslsmith_add_vec4_u32(u_input.a, u_input.b) << (u_input.a % vec4<u32>(32u)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), false)), u_input.a), func_1(), reverseBits(vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(abs(u_input.b.x), _wgslsmith_add_u32(u_input.b.x, u_input.a.x)), 4294967295u, 56516u)));
    var var_1 = (~u_input.a << ((u_input.a >> (vec4<u32>(13044u, _wgslsmith_mult_u32(u_input.a.x, u_input.b.x), func_2(0u).b, ~u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (vec4<u32>(118310u, ~1u, u_input.a.x, abs(u_input.b.x ^ ~u_input.b.x)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(745f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(max(1000f, 2191f)))) - _wgslsmith_f_op_f32(-func_1().d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f)), -1408f)));
    global0 = _wgslsmith_f_op_f32(abs(func_2(u_input.b.x).c.x));
    let var_3 = func_1();
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(666f))));
    let var_4 = var_3.d.x;
    var var_5 = ~(~(-(~max(vec2<i32>(2147483647i, var_0.b), vec2<i32>(var_3.c.b, 2147483647i)))));
    var_5 = vec2<i32>(abs(-2147483647i), ~(~_wgslsmith_div_i32(23120i, _wgslsmith_mod_i32(var_0.b, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)))), var_1.xzy, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i ^ var_5.x, var_3.c.b), var_3.b.b, -_wgslsmith_clamp_i32(var_3.b.b, var_3.b.b, -2147483647i)), (firstTrailingBit(vec3<i32>(var_0.b, var_0.b, -41399i)) ^ vec3<i32>(var_3.c.b, var_3.a.b, var_0.b)) & select(vec3<i32>(1i, var_0.b, 74567i), select(vec3<i32>(-2147483647i, var_0.b, var_3.a.b), vec3<i32>(-80655i, var_3.a.b, var_0.b), vec3<bool>(false, var_3.b.a.x, false)), func_4(var_3.d.x, vec4<u32>(8759u, 38381u, 0u, 0u), var_3, u_input.a).a.zww)), _wgslsmith_f_op_f32(-var_4), _wgslsmith_div_vec3_f32(vec3<f32>(var_4, var_3.d.x, -796f), vec3<f32>(1f, -492f, var_3.d.x)));
}

