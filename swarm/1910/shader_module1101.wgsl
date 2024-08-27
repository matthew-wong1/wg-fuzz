struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<i32>;

var<private> global2: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = true;
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(arg_0.b.xx, -_wgslsmith_mult_vec2_i32(arg_0.b.xx, vec2<i32>(34764i, 2147483647i))) | arg_0.b.zx);
    global1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(-var_0.x, 20749i), vec2<i32>(global1.x << (46876u % 32u), -35389i) << (_wgslsmith_div_vec2_u32(vec2<u32>(36678u, u_input.d.x), vec2<u32>(u_input.a.x, 20282u)) % vec2<u32>(32u))) << (abs(_wgslsmith_mod_vec2_u32(vec2<u32>(~79918u, 4294967295u), u_input.a.zx)) % vec2<u32>(32u));
    global2 = select(true, any(vec2<bool>(select(all(vec4<bool>(false, false, true, true)), true, true), true)), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))) && false);
    global1 = vec2<i32>(global1.x, 1i ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.x), var_0 << (vec2<u32>(arg_0.c, arg_0.c) % vec2<u32>(32u))));
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global2 = any(vec3<bool>(1u > _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 18522u, 1u, 4294967295u), vec4<u32>(29054u, 103922u, var_0.c, 4294967295u)), vec4<u32>(72663u, var_0.c, 7921u, 2488u)), true, true));
    global2 = false;
    let var_1 = 37579u;
    let var_2 = select(vec4<bool>(any(vec2<bool>(true, false)) != true, any(vec3<bool>(true, true, true)) & true, true, all(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), true))), select(vec4<bool>((11170u ^ arg_1.c) > u_input.d.x, any(vec4<bool>(true, true, true, true)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !vec4<bool>(any(vec2<bool>(true, true)), false, false, any(vec2<bool>(true, true))));
    return abs(arg_1.c);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(7381u, 27793u);
    var var_1 = vec4<i32>(reverseBits(u_input.c), _wgslsmith_add_i32(max(arg_3.b.x, arg_3.b.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.x, u_input.c, u_input.c), arg_3.b & arg_3.b)), u_input.c, -u_input.c);
    var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.a.zz), ~71904u) & ~(~64803u), u_input.a.x, _wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.b, u_input.d.x), 46344u));
    var_0 = 15134u;
    let var_2 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(189f, arg_2.x, arg_0)), vec3<i32>(abs(arg_1.x), -u_input.c, func_2(arg_3).b.x), ~arg_3.c << (1u % 32u))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(-arg_3.a.x), 1000f), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1160f, arg_3.a.x, -258f)), vec3<i32>(_wgslsmith_sub_i32(-17340i, -9424i), -2147483647i, 13868i), ~var_2.c)).b, reverseBits(~var_2.c << (0u % 32u)));
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(449f, _wgslsmith_f_op_f32(ceil(-1374f))))) < 856f;
    let var_0 = ~(~(~(~(~52540u))));
    let var_1 = 134f;
    let var_2 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(353f * 1141f))), vec4<i32>(~(u_input.c & -2147483647i) >> (func_3(-173f, func_2(Struct_1(vec3<f32>(var_1, 180f, var_1), vec3<i32>(-3795i, global1.x, global1.x), 0u))) % 32u), reverseBits(_wgslsmith_clamp_i32(-845i, u_input.c ^ global1.x, _wgslsmith_div_i32(u_input.c, 18946i))), 9171i, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1)))), var_1, var_1) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 280f, -1887f)))), func_2(func_2(Struct_1(vec3<f32>(var_1, 527f, 915f), ~vec3<i32>(global1.x, 3759i, 13688i), func_2(Struct_1(vec3<f32>(var_1, var_1, 813f), vec3<i32>(-10913i, 4847i, -2147483647i), 7491u)).c))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(1229f - _wgslsmith_f_op_f32(var_2.a.x * 2205f)), _wgslsmith_f_op_f32(-483f * _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_2.a.x + 619f))))));
    return Struct_1(func_2(var_2).a, _wgslsmith_sub_vec3_i32(firstLeadingBit(var_2.b), var_2.b), 81371u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~firstTrailingBit(37017u), min(~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~(~u_input.d.x)), max(~_wgslsmith_sub_u32(4294967295u, 39835u), ~26195u) >> (min(u_input.b, _wgslsmith_add_u32(1u, u_input.d.x ^ 1u)) % 32u));
    let var_1 = func_1();
    global0 = false;
    global1 = _wgslsmith_div_vec2_i32(var_1.b.yy, var_1.b.zz);
    let var_2 = global1.x;
    let var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~countOneBits(var_3 >> (u_input.d.x % 32u))));
}

