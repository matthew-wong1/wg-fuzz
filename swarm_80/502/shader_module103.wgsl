struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<vec2<bool>, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> vec4<i32> {
    var var_0 = Struct_2(arg_0.d, ~(~(~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 42311u, arg_0.c.e, 0u), vec4<u32>(arg_2, 1u, 4294967295u, 4294967295u)))), arg_0.d, Struct_1(_wgslsmith_clamp_u32(arg_0.b >> (1u % 32u), _wgslsmith_mult_u32(1u, arg_2), min(arg_0.b, arg_2)) | ~1u, vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a.b.x, arg_0.c.b.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(246f, arg_0.c.b.x), _wgslsmith_f_op_f32(sign(-440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1038f)) * -2494f), _wgslsmith_f_op_f32(-arg_0.c.b.x)), ~arg_2 << (_wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(arg_0.a.c, arg_0.b)) % 32u), arg_0.a.d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.c, select(65924u, arg_0.d.a, arg_0.a.d.x), ~arg_0.d.a, _wgslsmith_sub_u32(4294967295u, 0u)), vec4<u32>(69171u, ~arg_2, _wgslsmith_clamp_u32(4294967295u, arg_2, arg_2), 35405u))));
    let var_1 = u_input.a.x;
    var var_2 = arg_2;
    let var_3 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(13903u, 0u), vec2<u32>(27986u, arg_2), arg_0.c.d.xy), vec2<u32>(var_0.a.c, arg_2)), firstLeadingBit(vec2<u32>(arg_0.a.e, arg_0.a.a))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(abs(reverseBits(49274u)), var_0.a.c), vec2<u32>(~firstTrailingBit(14878u), var_0.d.a)) % vec2<u32>(32u));
    var_0 = arg_0;
    return u_input.a << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.a, abs(min(var_3.x, 1u)), arg_2, ~1u | select(arg_2, arg_2, true)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.e & 0u, var_0.d.e, var_3.x, ~4294967295u), countOneBits(vec4<u32>(31437u, arg_0.a.c, 8049u, 4294967295u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    global1 = array<vec2<bool>, 16>();
    var var_0 = min(vec4<i32>(0i & u_input.b.x, -u_input.a.x, -361i, u_input.a.x), func_3(arg_2, -u_input.a.x, _wgslsmith_mult_u32(51409u & arg_2.d.e, _wgslsmith_clamp_u32(arg_2.b, 4294967295u, ~arg_2.d.e))));
    let var_1 = Struct_2(arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.c, arg_0.d.e, arg_0.d.a, max(arg_2.d.e, arg_2.a.a)), ~(vec4<u32>(arg_0.a.c, 6348u, 1u, arg_0.b) ^ vec4<u32>(0u, arg_2.b, 1u, 9882u))) | ~1u, Struct_1(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1532f, arg_1, arg_0.d.d.x)), -1000f, _wgslsmith_f_op_f32(407f + 408f), _wgslsmith_f_op_f32(trunc(arg_0.c.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d.b * vec4<f32>(-790f, arg_2.c.b.x, 1000f, arg_0.c.b.x)))), 1u, !select(select(arg_0.d.d, vec4<bool>(arg_0.c.d.x, arg_0.d.d.x, arg_0.c.d.x, arg_2.a.d.x), false), vec4<bool>(true, true, true, false), !arg_0.c.d.x), abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.a.c, 45687u), vec2<u32>(791u, 1u), vec2<bool>(arg_0.c.d.x, false)), vec2<u32>(0u, arg_2.c.a)))), Struct_1(_wgslsmith_mult_u32(25852u, _wgslsmith_div_u32(arg_0.c.a, arg_2.c.a) & ~4294967295u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(arg_0.d.b, vec4<f32>(arg_2.d.b.x, arg_0.d.b.x, 1000f, arg_0.a.b.x))))))), ~select(arg_2.c.c, 302u, arg_0.a.d.x) & 18467u, vec4<bool>(true, true, true, true), arg_0.c.c));
    let var_2 = arg_0.c;
    var var_3 = var_2;
    return vec2<bool>(arg_2.a.d.x, !(!all(vec4<bool>(false, false, var_1.d.d.x, true)) == var_3.d.x));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = firstLeadingBit(-(~u_input.a.zxx));
    var var_1 = 31017i;
    var_0 = ~vec3<i32>(78266i, 7639i, abs(32824i));
    global1 = array<vec2<bool>, 16>();
    let var_2 = arg_1.yyz;
    return Struct_1(var_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, -397f, -1000f, -1000f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-240f, -1493f, -982f, 1262f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1498f, -1156f, 972f, -917f)))))), 28148u, select(vec4<bool>(all(func_2(Struct_2(Struct_1(14642u, vec4<f32>(451f, 1366f, 944f, -231f), var_2.x, vec4<bool>(false, true, true, true), 253u), 5516u, Struct_1(0u, vec4<f32>(1501f, -887f, -485f, -1494f), arg_1.x, vec4<bool>(false, false, true, false), var_2.x), Struct_1(arg_1.x, vec4<f32>(1072f, 855f, -825f, -1340f), arg_1.x, vec4<bool>(true, true, true, false), 4294967295u)), 343f, global0[_wgslsmith_index_u32(0u, 26u)], 492f)), true, true, ~1u == firstLeadingBit(var_2.x)), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(global0[_wgslsmith_index_u32(var_2.x, 26u)], -615f, Struct_2(Struct_1(arg_1.x, vec4<f32>(-603f, 949f, 358f, -1835f), arg_1.x, vec4<bool>(false, false, true, true), var_2.x), arg_1.x, Struct_1(19493u, vec4<f32>(-1000f, 1254f, 1006f, 1627f), arg_1.x, vec4<bool>(false, true, false, false), var_2.x), Struct_1(arg_1.x, vec4<f32>(-219f, 247f, 950f, 1302f), 1u, vec4<bool>(false, false, false, true), 65524u)), -771f).x, true, select(false, false, false), true), vec4<bool>(true, true, true, true)), true), (16498u | arg_1.x) | 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-abs(u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, ~4294967295u), ~38963u, 1u, 1u), vec4<u32>(_wgslsmith_mult_u32(12849u, _wgslsmith_clamp_u32(1u, 14646u, 9391u)), abs(1u) >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(59247u, 51048u), vec2<u32>(7985u, 0u))), 37460u)));
    var var_1 = ~abs(max(max(u_input.b.x, ~u_input.a.x), -_wgslsmith_mult_i32(u_input.a.x, u_input.b.x)));
    global0 = array<Struct_2, 26>();
    var var_2 = vec4<u32>(~(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, 34990u, 4294967295u, var_0.e), vec4<u32>(1u, var_0.c, var_0.c, var_0.a)), 1u) >> (countOneBits(~4294967295u) % 32u)), ~abs(var_0.c), ~3767u, ~var_0.e);
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-605f * var_0.b.x)))));
}

