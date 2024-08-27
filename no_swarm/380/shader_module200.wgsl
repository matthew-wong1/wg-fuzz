struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = ~1i;
    let var_1 = min(arg_2.b, arg_2.b);
    global1 = var_0 < (35147i ^ -min(-1i, u_input.c.x));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.x))));
    var var_2 = arg_2;
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(53791u, 4294967295u, var_2.d, var_1.x), var_1)), vec4<u32>(_wgslsmith_mod_u32(arg_2.b.x, 4881u), var_1.x, var_2.d & 0u, 1u >> (1u % 32u))) & var_2.b, ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_1.x, 1u, var_2.b.x, u_input.b)), abs(countOneBits(vec4<u32>(var_1.x, 4294967295u, var_1.x, 7494u)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = u_input.b;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_div_vec4_u32(countOneBits(arg_0.b >> (arg_0.b % vec4<u32>(32u))) >> (func_3(vec2<f32>(605f, arg_0.a), _wgslsmith_f_op_f32(-arg_0.a), arg_0) % vec4<u32>(32u)), abs(abs(vec4<u32>(4294967295u, 1u, 0u, u_input.e)) & ~arg_0.b)), all(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0.c), false)) || false, ~_wgslsmith_clamp_u32(2014u, u_input.e | _wgslsmith_sub_u32(u_input.e, 0u), 61635u), select(select(!select(false, arg_0.e, false), all(!vec2<bool>(false, arg_0.e)), true), true, all(vec4<bool>(-604f == arg_0.a, all(vec3<bool>(arg_0.e, false, arg_0.c)), select(true, true, arg_0.e), !arg_0.c))));
    var var_3 = vec4<i32>(-(~countOneBits(~u_input.c.x)), u_input.a.x, u_input.d, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(66353i, -1i), u_input.a.xx) << (1u % 32u)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_1(315f, abs(~var_2.b), arg_0.c, u_input.b, arg_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = 37998u;
    var var_1 = u_input.c.yz;
    var var_2 = func_2(func_2(arg_0));
    global0 = _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(930f + var_2.a))))));
    var var_3 = func_2(arg_0);
    return var_2.a;
}

fn func_1() -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_1(601f, vec4<u32>(53957u, u_input.b, 25548u, 0u), false, 58862u, true)), 0u >> (u_input.e % 32u), -19143i, 4294967295u)))));
    var var_0 = false;
    var_0 = all(!vec4<bool>(false, false, true, all(vec3<bool>(true, true, true))));
    var var_1 = func_2(func_2(func_2(func_2(func_2(Struct_1(1369f, vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), true, u_input.e, false))))));
    var var_2 = func_2(func_2(Struct_1(var_1.a, _wgslsmith_clamp_vec4_u32(var_1.b, vec4<u32>(1u, var_1.d, 81426u, var_1.b.x), var_1.b) & ~vec4<u32>(0u, var_1.b.x, 0u, 1u), func_2(Struct_1(var_1.a, var_1.b, false, var_1.d, var_1.e)).c, u_input.b, true)));
    return vec3<bool>(~38343u > var_1.d, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.b, 1u)), vec2<u32>(u_input.e, 1u)), vec2<u32>(42494u, select(1u, ~u_input.b, true) & _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, 0u), select(vec2<u32>(13756u, 44879u), vec2<u32>(1u, u_input.e), false))), true);
    global1 = any(!func_1());
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(func_2(Struct_1(-463f, vec4<u32>(var_0.x, u_input.e, 23930u, 1u), true, var_0.x, true))), var_0.x << (u_input.e % 32u), u_input.d, max(func_2(Struct_1(-703f, vec4<u32>(111258u, var_0.x, u_input.b, u_input.e), true, u_input.b, true)).d, var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-325f, 878f)), _wgslsmith_f_op_f32(func_4(Struct_1(-250f, vec4<u32>(23884u, u_input.b, u_input.b, 94846u), false, 1u, true), 42316u, -1i, var_0.x))))), ~(~(~(vec4<u32>(u_input.b, 0u, 43830u, 74624u) ^ vec4<u32>(var_0.x, u_input.e, 44403u, 1u)))), all(!func_1().xz), 4294967295u, true && any(func_1()));
    let var_2 = var_1;
    let var_3 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(587f, var_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) + var_1.a), func_2(Struct_1(483f, vec4<u32>(1u, 26585u, var_2.d, 65832u), true, var_1.d, true))).x), _wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_div_i32(u_input.c.x, 30792i)), _wgslsmith_clamp_i32(0i, ~(-1i), max(u_input.d, 26363i)), max(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 2147483647i), u_input.d), u_input.a.x), _wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(1i, -33206i, 1i, 5164i)), vec4<i32>(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-27711i, u_input.d, u_input.a.x, u_input.a.x), vec4<i32>(15264i, u_input.a.x, -30845i, u_input.a.x)), 0i, u_input.c.x << (8873u % 32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_2.a, 1375f) + vec3<f32>(-1544f, 672f, 205f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a, 160f, 653f), vec3<f32>(930f, -2229f, var_2.a))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, var_2.a, var_2.a))))))), select(firstLeadingBit(var_2.b ^ ~var_1.b), _wgslsmith_add_vec4_u32(countOneBits(var_2.b << (vec4<u32>(40765u, var_1.d, var_0.x, 1u) % vec4<u32>(32u))), var_1.b), select(!all(vec4<bool>(false, true, var_1.e, false)), any(select(vec4<bool>(true, var_3, true, var_2.e), vec4<bool>(var_2.e, var_2.e, var_1.c, false), var_1.e)), !(1i < u_input.d))), ~(~func_2(func_2(Struct_1(var_2.a, var_1.b, false, u_input.b, true))).b));
}

