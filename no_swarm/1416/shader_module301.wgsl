struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global2: f32 = -1000f;

var<private> global3: array<vec3<f32>, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_2(vec2<bool>(!(u_input.a >= -2147483647i), true), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 57049u, 37947u), vec3<u32>(0u, 48961u, 0u)))), -660f);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(208f, var_0.c, var_0.c) * _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(max(~1u, _wgslsmith_div_u32(4294967295u, reverseBits(24401u))), 10u)]));
    var var_2 = var_0.c;
    let var_3 = select(!vec3<bool>(all(vec4<bool>(arg_0.x, var_0.a.x, false, arg_0.x)), false, any(var_0.a)), select(!select(!vec3<bool>(true, var_0.a.x, var_0.a.x), !vec3<bool>(true, var_0.a.x, var_0.a.x), !vec3<bool>(true, true, arg_0.x)), vec3<bool>(all(select(vec3<bool>(arg_0.x, arg_0.x, var_0.a.x), vec3<bool>(arg_0.x, var_0.a.x, arg_0.x), arg_0.x)), ~u_input.a >= u_input.a, true), true), select(vec3<bool>(arg_0.x, true, !(var_0.c > -500f)), vec3<bool>(!all(vec3<bool>(true, true, false)), true, false), _wgslsmith_clamp_i32(max(1i, u_input.a), reverseBits(11775i), -u_input.a) == 13178i));
    let var_4 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>) -> vec3<bool> {
    global0 = ~_wgslsmith_div_u32(countOneBits(max(global1.x, global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(13933u, 0u, u_input.c.x, 30259u), vec4<u32>(arg_0.x, 55616u, global1.x, global1.x)) >> (85466u % 32u));
    global0 = u_input.b;
    var var_0 = Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(19050u, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), min(vec2<u32>(0u, arg_0.x), vec2<u32>(4294967295u, 1u)))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.wwx, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 1u, 40874u), vec3<u32>(8210u, global1.x, 18578u))), arg_0.xyz)), Struct_2(vec2<bool>(all(vec3<bool>(true, true, true)), (-2147483647i & arg_1) <= arg_1), _wgslsmith_clamp_u32(countOneBits(global1.x), max(arg_0.x, 68277u), 69630u) ^ 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true)))))), vec2<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), false), countOneBits(~(arg_0.zw << (arg_0.zy % vec2<u32>(32u))) >> (~(~arg_0.yz) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(arg_0.yzy, vec3<u32>(select(~2490u, 4294967295u, all(vec4<bool>(true, true, true, true))), ~1u, u_input.b)));
    global2 = var_0.b.c;
    var_0 = Struct_4(var_0.e, var_0.b, select(vec2<bool>(false, !var_0.c.x || true), var_0.c, select(!select(vec2<bool>(false, var_0.c.x), var_0.c, vec2<bool>(false, false)), select(!var_0.c, !var_0.b.a, 0i >= arg_1), true)), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, var_0.d.x, arg_0.x), reverseBits(arg_0.wxy)), ~((0u << (var_0.e % 32u)) ^ ~arg_0.x)), _wgslsmith_mult_u32(~(1u | min(global1.x, global1.x)), reverseBits(var_0.a)));
    return select(vec3<bool>(!(_wgslsmith_clamp_i32(-70492i, 16445i, -63167i) >= max(2147483647i, arg_2.x)), any(vec2<bool>(true, true)), true | (var_0.b.a.x & var_0.c.x)), !select(!select(vec3<bool>(var_0.b.a.x, false, false), vec3<bool>(false, var_0.c.x, true), vec3<bool>(true, var_0.c.x, var_0.b.a.x)), !select(vec3<bool>(var_0.b.a.x, true, false), vec3<bool>(var_0.b.a.x, false, true), false), true), select(!(!select(vec3<bool>(var_0.b.a.x, false, false), vec3<bool>(true, true, var_0.b.a.x), vec3<bool>(var_0.c.x, var_0.c.x, false))), !select(!vec3<bool>(false, var_0.b.a.x, var_0.b.a.x), select(vec3<bool>(var_0.b.a.x, var_0.c.x, false), vec3<bool>(true, var_0.c.x, false), false), true), !(!select(vec3<bool>(var_0.b.a.x, var_0.c.x, true), vec3<bool>(true, var_0.c.x, var_0.b.a.x), vec3<bool>(false, var_0.b.a.x, true)))));
}

fn func_1() -> u32 {
    global3 = array<vec3<f32>, 10>();
    let var_0 = func_2(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, _wgslsmith_mult_u32(global1.x, u_input.b) << (_wgslsmith_sub_u32(global1.x, 4294967295u) % 32u), global1.x, select(~4294967295u, ~1u, false)), ~(~vec4<u32>(1u, 1u, 0u, u_input.b))), -(~_wgslsmith_sub_i32(min(2147483647i, u_input.a), 11828i)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(u_input.a, u_input.a), 13099i), u_input.a), -(~(-21056i)), ~min(u_input.a, -u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a)));
    var var_1 = Struct_4(select(~31600u, ~global1.x, var_0.x) & u_input.b, Struct_2(!select(var_0.yy, select(var_0.xz, var_0.zz, var_0.zz), true), reverseBits(u_input.c.x), 744f), select(var_0.xx, vec2<bool>(all(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x), var_0.xx), abs(vec2<u32>(u_input.c.x, 1u & ~u_input.b)), firstLeadingBit(22546u ^ global1.x) | abs(global1.x ^ ~u_input.c.x));
    return ~(~(~abs(_wgslsmith_add_u32(0u, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    let var_0 = Struct_1(-(-9286i & abs(u_input.a)) ^ _wgslsmith_mult_i32(u_input.a, -1i), vec2<bool>(true, any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), 807i, !all(vec4<bool>(true, true, true, true)) == !(70073u < func_1()));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(select(var_0.b, var_0.b, var_0.d), var_0.b, vec2<bool>(var_0.d, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1659f, 238f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -664f), -888f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -695f))))))));
    var var_2 = Struct_4(global1.x, Struct_2(var_0.b, _wgslsmith_sub_u32(u_input.c.x, global1.x), _wgslsmith_f_op_f32(-var_1)), select(vec2<bool>(var_0.d, false), !select(vec2<bool>(false, var_0.b.x), !vec2<bool>(var_0.d, true), false), func_2(~vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), _wgslsmith_add_i32(-2147483647i, u_input.a), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, u_input.a, u_input.a, -35432i), vec4<i32>(-1i, u_input.a, var_0.a, u_input.a), vec4<i32>(0i, -2147483647i, u_input.a, 1i)), vec4<i32>(u_input.a, -24770i, var_0.a, 28981i) | vec4<i32>(-28414i, u_input.a, -2147483647i, -4565i))).zx), vec2<u32>((~u_input.b ^ 53710u) | (~global1.x ^ ~u_input.b), firstLeadingBit((4294967295u | u_input.b) ^ 1u)), global1.x);
    var var_3 = _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(44209u, 35236u, 18097u), vec3<u32>(45766u, var_2.b.b, 15170u), vec3<bool>(var_0.b.x, var_2.b.a.x, false)), ~vec3<u32>(global1.x, global1.x, var_2.b.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~0u) & var_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1037f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1630f, 141f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1432f, var_1), vec2<f32>(var_1, var_1)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1396f, var_1), vec2<f32>(-897f, 184f)))))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 88029u, 25251u), _wgslsmith_add_vec3_u32(abs(vec3<u32>(2873u, global1.x, var_2.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 0u, 3878u), vec3<u32>(15636u, 0u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(56770u, 29581u, 71811u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(u_input.c.x, 41821u, 0u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c + 1104f)));
}

