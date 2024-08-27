struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: vec4<i32> = vec4<i32>(-1i, 2147483647i, 1i, 1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    global1 = -(~vec4<i32>(-40105i, ~global1.x, 2147483647i, countOneBits(max(6205i, 0i))));
    return _wgslsmith_f_op_f32(select(1f, arg_0.b.x, !arg_2.x));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(firstTrailingBit(48321u), u_input.b);
    var var_1 = Struct_3(Struct_1(517f, vec2<f32>(-1000f, -1512f)), vec4<i32>(2147483647i, -(~_wgslsmith_mult_i32(30291i, 35779i)), global1.x, ~global1.x), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(Struct_1(-1008f, vec2<f32>(-287f, 300f)), 1i, vec2<bool>(false, true)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1038f, -187f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, -511f)))))), reverseBits(firstLeadingBit(global1.x)), Struct_2(Struct_1(184f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1033f, 359f), vec2<f32>(392f, 2012f), false)))), ~(~(-2851i)), Struct_1(-748f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2470f, 194f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-602f, -267f)) + -828f), vec2<f32>(-1000f, 214f)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(430f - 827f), _wgslsmith_f_op_f32(select(289f, -2347f, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2069f, -193f)))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.e.c.a, var_1.e.c.a)))) + var_1.a.b)), var_1.b, Struct_1(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.e.c.a, var_1.e.d.a)))))), min(global1.x, 0i ^ global1.x), Struct_2(var_1.a, var_1.d, Struct_1(var_1.a.b.x, vec2<f32>(675f, _wgslsmith_f_op_f32(-var_1.e.c.b.x))), var_1.a, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-477f)))), vec2<f32>(var_1.e.e.b.x, _wgslsmith_f_op_f32(-1000f * 174f)))));
    var var_3 = max(_wgslsmith_clamp_i32(firstLeadingBit(-var_2.d), global1.x, -1i), 2147483647i);
    var_3 = var_2.d;
    return Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.b.x)) + _wgslsmith_f_op_f32(var_1.e.a.b.x + -601f)), -1736f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_2.e.c.a)), _wgslsmith_f_op_f32(sign(-876f)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(func_2());
    let var_1 = ~arg_1;
    var var_2 = Struct_2(var_0.a, abs(-1i), arg_3, var_0.a, Struct_1(_wgslsmith_f_op_f32(ceil(-436f)), arg_2));
    global0 = array<vec3<i32>, 8>();
    var var_3 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.a, 0u)), select(vec2<u32>(var_1, 26561u), vec2<u32>(41371u, u_input.a), true) | vec2<u32>(0u, 45586u), vec2<u32>(1u, _wgslsmith_clamp_u32(37477u, u_input.a, 4294967295u))), abs(countOneBits(~vec2<u32>(var_1, u_input.b))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    global0 = array<vec3<i32>, 8>();
    let var_0 = vec4<bool>(-479f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x, any(vec4<bool>(true, true, true, true)))), true, true, all(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, true, true)))));
    var var_1 = -15456i << (~(~u_input.a) % 32u);
    global1 = vec4<i32>(arg_1.x, 39222i << (_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(54524u, u_input.b >> (u_input.a % 32u))) % 32u), min(-(~(-2147483647i) >> (_wgslsmith_clamp_u32(u_input.a, 4917u, u_input.b) % 32u)), -69826i), 0i);
    let var_2 = var_0.yyz;
    return Struct_2(Struct_1(483f, vec2<f32>(-2154f, _wgslsmith_f_op_f32(f32(-1f) * -881f))), -2147483647i, arg_0, arg_0, func_1(abs(vec4<i32>(-1i, _wgslsmith_div_i32(0i, global1.x), arg_1.x ^ 16581i, -36075i)), 4294967295u, _wgslsmith_f_op_vec2_f32(ceil(arg_0.b)), arg_0));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -1306f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e.a * 1000f), _wgslsmith_f_op_f32(-arg_1.a.a))), arg_1.c.a, -287f, -734f));
    var_0 = arg_0;
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1152f), -396f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1295f, -275f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_1(vec4<i32>(arg_1.b, -1i, -2147483647i, 38112i), u_input.a, arg_0.yy, arg_1.c).b.x), _wgslsmith_f_op_f32(-func_1(vec4<i32>(-43205i, global1.x, 0i, arg_1.b), 0u, arg_1.c.b, arg_1.e).a))), var_0.x)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(1f * arg_1.d.a), arg_0.yw), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(18258i, arg_1.b, global1.x), vec3<i32>(global1.x, arg_1.b, global1.x)), abs(global1.x), ~_wgslsmith_mod_i32(0i, -1i), _wgslsmith_div_i32(-1i, ~(-58560i))), -select(vec4<i32>(-1i, -2147483647i, 1i, global1.x) | vec4<i32>(0i, -164i, arg_1.b, -47288i), ~vec4<i32>(arg_1.b, 2147483647i, -1i, 0i), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_f32(min(255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1056f)))), arg_1.a.b), -4087i, arg_1);
    var var_2 = reverseBits(-countOneBits(_wgslsmith_add_i32(var_1.d, -1492i))) < ~firstLeadingBit(reverseBits(1i));
    return func_4(Struct_1(1008f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yz) * _wgslsmith_f_op_vec2_f32(max(arg_1.a.b, vec2<f32>(-471f, arg_1.d.a)))))), vec2<i32>(_wgslsmith_div_i32(2147483647i, firstTrailingBit(arg_1.b)), var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1720f, -1532f, -109f, 2732f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(329f, -157f, 1677f, -1879f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, -473f, 1051f, 787f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, -741f, 634f, 1108f)))))), func_4(func_1(vec4<i32>(global1.x, 3880i, 0i, -1i), ~54859u, vec2<f32>(_wgslsmith_f_op_f32(-224f * -2098f), 1519f), Struct_1(-1275f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2256f, 328f) * vec2<f32>(199f, 324f)))), -firstTrailingBit(vec2<i32>(global1.x, -18793i))), 4294967295u ^ min(1u, max(u_input.a, u_input.a)), vec4<u32>(~(~(~4294967295u)), abs(u_input.b), u_input.b, ~max(u_input.b, 0u)));
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(global1.xx, ~firstLeadingBit(vec2<i32>(-2147483647i, var_1.b)) << (vec2<u32>(8304u, select(u_input.a, u_input.b, false)) % vec2<u32>(32u))), vec2<i32>(-1i, -48019i));
    let var_3 = Struct_3(Struct_1(-128f, var_1.e.b), _wgslsmith_mult_vec4_i32(~firstLeadingBit(min(vec4<i32>(2147483647i, global1.x, -1i, var_1.b), vec4<i32>(2147483647i, global1.x, 44280i, -2147483647i))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-56830i, -1i, var_1.b, -8324i), ~vec4<i32>(1i, -1i, -2147483647i, var_1.b), ~vec4<i32>(1i, 2147483647i, var_2.x, 2147483647i)), select(vec4<i32>(global1.x, var_2.x, 1i, 8594i), vec4<i32>(var_1.b, -2147483647i, global1.x, -6300i), vec4<bool>(false, false, false, false)) | (vec4<i32>(var_1.b, -1521i, global1.x, global1.x) >> (vec4<u32>(34993u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))), Struct_1(_wgslsmith_f_op_f32(ceil(769f)), var_1.d.b), var_2.x, Struct_2(var_1.a, -countOneBits(reverseBits(var_1.b)), Struct_1(_wgslsmith_f_op_f32(var_1.c.b.x * _wgslsmith_f_op_f32(trunc(var_1.c.a))), vec2<f32>(_wgslsmith_f_op_f32(-367f + -1299f), _wgslsmith_f_op_f32(trunc(-1168f)))), Struct_1(1729f, vec2<f32>(var_1.d.a, _wgslsmith_f_op_f32(max(-428f, 458f)))), var_1.d));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1594f * func_2().b.x));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.a, _wgslsmith_div_f32(-1610f, var_3.a.b.x), var_1.a.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.a, -1000f, 235f), vec3<f32>(var_1.c.b.x, var_3.e.a.a, 1309f))), vec3<f32>(var_3.a.a, -1849f, var_3.c.b.x))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a, var_3.e.c.b.x, var_3.a.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.x, 692f, var_1.e.b.x))))));
    let var_6 = var_3.e;
    global0 = array<vec3<i32>, 8>();
    let var_7 = Struct_4(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068f, var_7.a.b.x, var_5.x, _wgslsmith_f_op_f32(-158f - var_7.a.a)))));
}

