struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<Struct_3, 22>;

var<private> global2: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_i32(arg_0.x >> (~u_input.a.x % 32u), abs(arg_0.x)), select(select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, true, true, true), arg_1), select(!vec4<bool>(arg_1, false, true, true), select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1)), all(vec4<bool>(false, false, true, arg_1))), vec4<bool>(false || arg_1, false, true, any(global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))), reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.xzy, vec3<u32>(u_input.b.x, 58817u, u_input.b.x)), 31511u)), abs(max(max(arg_0.wy, vec2<i32>(arg_0.x, -4156i)), select(arg_0.xx, arg_0.zx, true))), _wgslsmith_sub_u32(u_input.b.x, ~u_input.a.x)), !select(select(vec4<bool>(true, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_1, false, arg_1, arg_1)), true), vec4<bool>(true, false, true, arg_1), vec4<bool>(arg_1, all(vec2<bool>(false, false)), any(vec4<bool>(false, arg_1, false, true)), false)), ~_wgslsmith_clamp_vec4_u32(~u_input.b, u_input.a, vec4<u32>(~65780u, 0u, 0u ^ u_input.b.x, firstTrailingBit(40433u))), u_input.b.xww, Struct_1(2147483647i, select(vec4<bool>(!arg_1, arg_1, !arg_1, arg_1), select(select(vec4<bool>(arg_1, true, false, false), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, true, false, arg_1)), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, false, arg_1, false), false), arg_1), select(!vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, true, arg_1, false), !arg_1)), ~u_input.b.x, arg_0.wx, u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(867f, -549f, true)), -1234f)) - _wgslsmith_f_op_f32(floor(1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -452f)))));
    var var_2 = ~(~u_input.a.yyw);
    var var_3 = _wgslsmith_mult_u32(u_input.b.x, 50280u);
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(~(~(~4294967295u)), 53324u);
    let var_1 = true & all(vec3<bool>(true, func_3(-vec4<i32>(67392i, 0i, 46884i, -7144i), any(vec3<bool>(true, false, false))), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-314f * _wgslsmith_f_op_f32(step(103f, 194f))), 180f)), -1260f, 1f, _wgslsmith_f_op_f32(max(-743f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(select(-1456f, 906f, false))))))));
    var var_3 = 61370u;
    var_0 = 0u;
    return Struct_1(~abs(select(~(-19389i), _wgslsmith_add_i32(5942i, 18964i), true)), !select(select(vec4<bool>(true, true, var_1, var_1), select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(false, var_1, false, false), vec4<bool>(false, var_1, true, false)), false), !vec4<bool>(var_1, false, var_1, var_1), select(true, select(var_1, var_1, var_1), false)), ~u_input.b.x, vec2<i32>(-6117i << ((abs(u_input.a.x) >> ((u_input.b.x ^ 51312u) % 32u)) % 32u), 1i), 1u);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_3(func_2(), Struct_1(arg_0.x, select(!func_2().b, vec4<bool>(true, true, true, true), true), 71427u, vec2<i32>(~arg_0.x << (~0u % 32u), 2147483647i), ~_wgslsmith_sub_u32(u_input.b.x ^ 54375u, _wgslsmith_mult_u32(0u, u_input.b.x))), arg_0.x, func_2(), !vec4<bool>(false | select(false, true, false), false, all(vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20530u, u_input.a.x, u_input.a.x), u_input.a) != (48144u >> (u_input.a.x % 32u))));
    var var_1 = Struct_2(Struct_1(var_0.a.d.x, select(!(!var_0.b.b), var_0.b.b, var_0.a.b), 242u & ~(~u_input.a.x), -abs(vec2<i32>(arg_0.x, 0i)), firstLeadingBit(abs(1u))), !var_0.b.b, u_input.a, vec3<u32>(1u, 1u, 67942u), Struct_1(~abs(var_0.b.d.x) >> (reverseBits(~4294967295u) % 32u), var_0.d.b, min(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, 48968u)), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x & var_0.b.e, _wgslsmith_mult_u32(var_0.a.e, 6640u))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0.b.d.x), max(var_0.d.d, vec2<i32>(2147483647i, -58252i))) >> (_wgslsmith_add_vec2_u32(select(u_input.a.xw, vec2<u32>(0u, u_input.b.x), var_0.a.b.x), vec2<u32>(var_0.b.e, 1u)) % vec2<u32>(32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.wyy, u_input.b.zwy), countOneBits(vec3<u32>(1u, u_input.b.x, var_0.a.e))), _wgslsmith_add_u32(u_input.a.x, 4294967295u) ^ ~var_0.d.e)));
    global2 = false;
    var var_2 = var_1.a.b.x;
    let var_3 = true;
    return Struct_2(var_0.a, select(!vec4<bool>(true, true, !var_0.e.x, true), func_2().b, any(select(!vec3<bool>(true, var_0.e.x, true), var_0.b.b.zxy, !vec3<bool>(var_3, var_0.a.b.x, true)))), ~_wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(var_1.e.c, var_1.a.c, 14509u, var_0.b.e))), var_1.d, Struct_1(reverseBits(var_0.c), vec4<bool>(!func_2().b.x, true, any(func_2().b), any(vec4<bool>(true, true, false, true))), 18849u, arg_0, var_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 14>();
    let var_0 = func_1(abs(firstLeadingBit(~vec2<i32>(-1i, -2147483647i)) ^ vec2<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, -47542i), abs(-18700i))));
    global1 = array<Struct_3, 22>();
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b.x, 55239u, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(9108u, 14257u), 47127u), _wgslsmith_div_u32(~1u, var_0.a.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(975f)), -1445f, _wgslsmith_f_op_f32(-2213f * 1340f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(105f, -2778f, -270f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-827f, -1209f, -936f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, 1000f, 1000f) + vec3<f32>(-712f, 1420f, -504f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-538f, -153f, 779f), vec3<f32>(1598f, -2358f, 938f), true))))), -16569i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, -276f), _wgslsmith_div_vec3_f32(vec3<f32>(-713f, -2093f, -1681f), vec3<f32>(813f, 138f, -847f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(1026f + 1270f), -541f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(985f, 1364f, 720f))))));
}

