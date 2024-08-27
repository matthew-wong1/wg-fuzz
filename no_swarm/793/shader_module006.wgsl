struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec2<i32>(38806i, 0i), 334f, vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(0i, 6954i), 25158u), 51674i, vec3<u32>(4294967295u, 0u, 8110u), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec2<i32>(-1i, 8884i), 276f, vec3<u32>(20439u, 4294967295u, 0u), vec2<i32>(-1i, 0i), 4294967295u), -72644i, vec3<u32>(29777u, 4294967295u, 4294967295u), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec2<i32>(0i, -43507i), 1247f, vec3<u32>(1u, 29961u, 0u), vec2<i32>(i32(-2147483648), -5789i), 0u), 53420i, vec3<u32>(77304u, 4053u, 4294967295u), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), -266f, vec3<u32>(20477u, 53860u, 86783u), vec2<i32>(0i, 25725i), 35759u), i32(-2147483648), vec3<u32>(1u, 7990u, 11897u), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), -1266f, vec3<u32>(42435u, 14332u, 26079u), vec2<i32>(-1i, -833i), 0u), -2568i, vec3<u32>(4294967295u, 4294967295u, 1u), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<i32>(0i, -1i), -237f, vec3<u32>(4294967295u, 11503u, 5543u), vec2<i32>(1i, -1i), 0u), 2147483647i, vec3<u32>(61519u, 1u, 43613u), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<i32>(21000i, 7509i), 1000f, vec3<u32>(4549u, 34248u, 0u), vec2<i32>(7103i, -29359i), 96138u), -1i, vec3<u32>(1u, 0u, 0u), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<i32>(-60241i, 10552i), -1421f, vec3<u32>(0u, 1u, 12981u), vec2<i32>(2147483647i, i32(-2147483648)), 0u), -35654i, vec3<u32>(33344u, 4294967295u, 4294967295u), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 176f, vec3<u32>(14545u, 0u, 3973u), vec2<i32>(1i, i32(-2147483648)), 4294967295u), i32(-2147483648), vec3<u32>(1u, 4294967295u, 1u), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec2<i32>(4764i, 42963i), 1804f, vec3<u32>(82785u, 1u, 0u), vec2<i32>(i32(-2147483648), 1i), 0u), i32(-2147483648), vec3<u32>(0u, 18109u, 4294967295u), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec2<i32>(0i, -1i), -888f, vec3<u32>(62614u, 4294967295u, 9682u), vec2<i32>(26232i, 4568i), 0u), 39279i, vec3<u32>(20005u, 4294967295u, 0u), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec2<i32>(14066i, i32(-2147483648)), -1451f, vec3<u32>(69218u, 14369u, 28348u), vec2<i32>(-1i, 839i), 64506u), i32(-2147483648), vec3<u32>(31088u, 0u, 0u), vec3<bool>(true, true, true)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.a.b, _wgslsmith_f_op_f32(243f + arg_1.a.b))))))), ~(-vec4<i32>(arg_1.b, arg_1.b, -13608i, arg_1.a.d.x) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(-13667i, arg_1.b, 2147483647i, 54582i), vec4<i32>(u_input.c.x, arg_1.a.d.x, u_input.c.x, 1833i))));
    return var_0.b.x;
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = array<Struct_2, 12>();
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(func_3(u_input.d.x, Struct_2(Struct_1(u_input.c.xy, arg_0, u_input.d.zwz, u_input.c.xz, u_input.a), u_input.c.x, vec3<u32>(u_input.b.x, u_input.d.x, 1u), vec3<bool>(false, false, true)), 31107u, vec3<bool>(false, false, true)) ^ u_input.c.x, u_input.c.x), u_input.c.x), u_input.c.x, abs(0i));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f * _wgslsmith_f_op_f32(select(-2098f, arg_0, true))))), vec4<i32>(reverseBits(-1i), _wgslsmith_sub_i32(~var_0.x >> (_wgslsmith_dot_vec3_u32(u_input.b.xzz, vec3<u32>(u_input.a, u_input.d.x, 4294967295u)) % 32u), u_input.c.x), min(43468i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, u_input.c.x), _wgslsmith_div_vec3_i32(u_input.c, var_0))), -17190i));
    return Struct_3(_wgslsmith_f_op_f32(249f + _wgslsmith_f_op_f32(-var_1.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.b.yww, var_0) | ~(-16027i), 20492i, var_1.b.x, ~u_input.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    global0 = -1i;
    let var_0 = Struct_1(u_input.c.xz, 515f, firstTrailingBit(~vec3<u32>(4294967295u, 43394u, 2019u)) << (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(u_input.b.yxz), u_input.d.wwx, u_input.b.ywz), u_input.b.yyz) % vec3<u32>(32u)), max(u_input.c.xx, vec2<i32>(-u_input.c.x, select(arg_0.b.x, ~71111i, arg_0.b.x != u_input.c.x))), 4294967295u);
    global0 = -1i;
    global1 = array<Struct_2, 12>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f))) * 486f));
    return Struct_1(-_wgslsmith_sub_vec2_i32(select(var_0.a & vec2<i32>(var_0.d.x, -29373i), _wgslsmith_sub_vec2_i32(u_input.c.yy, vec2<i32>(38267i, 2147483647i)), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, arg_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1819f)), func_2(1429f).a), min(abs(~vec3<u32>(85073u, arg_1.x, 1u)) ^ abs(~u_input.b.yxz), select(var_0.c, ~firstLeadingBit(var_0.c), vec3<bool>(true, true, true))), vec2<i32>(-1i) * -vec2<i32>(countOneBits(-13619i), func_3(arg_1.x, Struct_2(Struct_1(vec2<i32>(1i, -1i), 219f, vec3<u32>(1u, var_0.c.x, 4294967295u), var_0.a, 59930u), 32197i, vec3<u32>(arg_1.x, 0u, var_0.e), vec3<bool>(false, false, false)), 0u, vec3<bool>(false, true, true))), select(u_input.b.x, _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(u_input.a, 15429u, u_input.d.x, var_0.e)), false) & _wgslsmith_mod_u32(var_0.e, 1u));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = ~u_input.c.x;
    global1 = array<Struct_2, 12>();
    let var_1 = arg_2.a;
    let var_2 = Struct_1(func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b + 974f) - _wgslsmith_f_op_f32(-var_1.b))), vec2<u32>(abs(func_4(Struct_3(189f, vec4<i32>(1i, u_input.c.x, -2147483647i, u_input.c.x)), var_1.c.yz).c.x), ~4294967295u)).a, arg_2.a.b, ~vec3<u32>(countOneBits(~58258u), 1u, u_input.a), func_4(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b)))), ~vec2<u32>(arg_3.x, arg_3.x)).a, _wgslsmith_clamp_u32(arg_2.a.e, 1u, arg_3.x));
    let var_3 = arg_2;
    return func_4(func_2(1000f), _wgslsmith_div_vec2_u32(var_1.c.zx, var_2.c.xz));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    global0 = min(-53385i, ~(~_wgslsmith_dot_vec3_i32(u_input.c, u_input.c))) >> (4331u % 32u);
    global1 = array<Struct_2, 12>();
    let var_0 = func_5(!vec4<bool>(arg_0.x, max(4294967295u, u_input.a) < ~u_input.b.x, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x) > _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), true), false != any(select(arg_0, arg_0, any(vec2<bool>(arg_0.x, arg_0.x)))), Struct_2(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -2432f)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 37977u), u_input.d.yw)), u_input.c.x, ~_wgslsmith_mult_vec3_u32(u_input.b.yxz, u_input.b.ywz), !select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, false), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x))), u_input.b.yyx);
    let var_1 = var_0.c.xx;
    global1 = array<Struct_2, 12>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1473f)), -231f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true))))), 1913f);
    global1 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yyx);
}

