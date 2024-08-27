struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(319f, 167f, -612f, 1573f);

var<private> global1: array<vec4<u32>, 8>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    return Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.e.x, u_input.b) << (vec4<u32>(u_input.c.x, u_input.b, u_input.e.x, 17438u) % vec4<u32>(32u)), u_input.e) & global1[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_add_u32(1u, u_input.d), 8u)], countOneBits(vec4<u32>(u_input.a, u_input.a, _wgslsmith_mod_u32(u_input.b, 29940u), _wgslsmith_add_u32(u_input.c.x, u_input.c.x)))), any(vec4<bool>(true, true, true, true)), vec3<i32>(-(~0i), _wgslsmith_add_i32(arg_1.x, -23351i), arg_1.x));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = true;
    var var_1 = 1u;
    global1 = array<vec4<u32>, 8>();
    var_1 = u_input.a;
    var var_2 = Struct_5(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(17219i, 39507i, -2147483647i)), select(vec3<i32>(-1i, 13085i, -2147483647i), vec3<i32>(47617i, 1i, -49110i), vec3<bool>(var_0, false, var_0))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-4930i, 2147483647i), vec2<i32>(44687i, -1681i)), -2767i), ~max(u_input.e.xzw, u_input.e.xwy) & select(u_input.e.xyw >> (u_input.e.xzw % vec3<u32>(32u)), ~vec3<u32>(u_input.c.x, 0u, u_input.d), vec3<bool>(var_0, true, var_0))), ~abs(u_input.d), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -489f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * global0.x)), Struct_2(Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(36459i, 1i, -14256i), vec3<i32>(5649i, -7121i, -1i)), countOneBits(u_input.e.xwx)), select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, true), var_0), select(vec3<bool>(false, var_0, false), !vec3<bool>(var_0, true, var_0), any(vec4<bool>(false, var_0, false, var_0))), any(vec2<bool>(true, false)))));
    return ~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, var_2.d.a.b.x, 0u), ~global1[_wgslsmith_index_u32(var_2.d.a.b.x, 8u)]), _wgslsmith_clamp_u32(u_input.b, var_2.a.b.x, 0u) | ~1u, 60767u));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<i32>(~8107i, -11516i, _wgslsmith_mult_i32(-2147483647i, 0i)), func_3(_wgslsmith_f_op_f32(-global0.x))), vec3<bool>(false, !func_1(1000f, vec3<i32>(-58027i, 2147483647i, 32440i)).b, (665f < global0.x) | all(vec4<bool>(true, true, true, false)))), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), vec3<bool>(-1i < arg_0.x, arg_2 < 26446i, true), false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, u_input.b > u_input.b, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), 19361i != arg_0.x)), u_input.a < u_input.c.x), Struct_1(vec3<i32>(1387i >> (u_input.d % 32u), -2147483647i & arg_1, -1i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 69684u, u_input.d), max(u_input.e.zyw, vec3<u32>(u_input.d, u_input.c.x, u_input.a))) % vec3<u32>(32u)), u_input.e.wxz), 1i, select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true), all(vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(-2147483647i, arg_1, false) < ~arg_2), any(vec2<bool>(true, true))));
    let var_1 = reverseBits(~(~(~u_input.e.yzy)) << (~vec3<u32>(u_input.e.x, _wgslsmith_add_u32(u_input.c.x, 0u), 1u << (u_input.b % 32u)) % vec3<u32>(32u)));
    var_0 = Struct_3(var_0.a, select(var_0.a.b, vec3<bool>(true, true, all(var_0.e)), !(!(!var_0.b))), var_0.a.a, -2147483647i, select(var_0.a.b.zz, !var_0.e, vec2<bool>(!any(var_0.b.yy), true)));
    let var_2 = Struct_5(var_0.c, 8879u, 369f, Struct_2(var_0.c, var_0.a.b));
    global1 = array<vec4<u32>, 8>();
    return select(!vec3<bool>(false, !(-969f <= var_2.c), all(var_0.a.b.xy) && true), var_0.b, true);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(countOneBits(-vec4<i32>(arg_2.a.a.a.x, -1i, arg_2.d, 8008i)), -countOneBits(vec4<i32>(arg_0.c.x, 0i, 85449i, arg_2.c.a.x))), vec4<i32>(_wgslsmith_sub_i32(max(36803i, -6878i), arg_2.c.a.x), firstLeadingBit(arg_2.a.a.a.x), 0i, -(i32(-1i) * -1i)) | firstLeadingBit(select(vec4<i32>(-2147483647i, arg_0.c.x, -8055i, arg_2.c.a.x), vec4<i32>(arg_2.a.a.a.x, arg_2.c.a.x, arg_0.c.x, 0i), any(vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.a.a.a, vec3<i32>(abs(-arg_0.c.x), arg_0.c.x, arg_0.c.x)), abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.c.x, var_0.x), var_0.yzx), var_0.xww)));
    return u_input.e.xzw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 8>();
    let var_0 = Struct_5(Struct_1(vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-132i, -51693i, -15450i, -39691i), vec4<i32>(0i, -1i, 8847i, 2147483647i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 15389i), vec2<i32>(18722i, 0i)), abs(_wgslsmith_sub_i32(-26482i, 5258i))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 128200u, u_input.b), u_input.e.wwz), func_4(func_1(global0.x, vec3<i32>(-9091i, -1835i, -66571i)), func_2(vec2<i32>(-1i, -2147483647i), -3939i, -1341i), Struct_3(Struct_2(Struct_1(vec3<i32>(15998i, 0i, -2147483647i), u_input.e.xzz), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), Struct_1(vec3<i32>(-2147483647i, 49268i, -54074i), vec3<u32>(0u, u_input.c.x, u_input.d)), -26901i, vec2<bool>(false, false))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e.x, 0u, u_input.c.x), vec3<u32>(24529u, u_input.b, u_input.d)))), 1u, global0.x, Struct_2(Struct_1(_wgslsmith_div_vec3_i32(-vec3<i32>(-45868i, 18538i, -4530i), vec3<i32>(1i, 1i, 1i)), countOneBits(u_input.e.wyw)), !vec3<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, false)))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.yz))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global0.zx, global0.zy), vec2<f32>(501f, -267f)))))), _wgslsmith_f_op_vec2_f32(-global0.yz));
    let var_2 = reverseBits(var_0.d.a.b.x);
    var var_3 = _wgslsmith_mod_u32(u_input.c.x, 9757u);
    var var_4 = 4294967295u;
    let var_5 = func_1(_wgslsmith_f_op_f32(-2124f - -1182f), var_0.a.a).c.x;
    let var_6 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(trunc(global0.x)), -359f == _wgslsmith_div_f32(global0.x, var_1.x))), -1000f), firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(58875i, var_6.a.a.x, var_5, 2147483647i), vec4<i32>(var_0.d.a.a.x, var_5, -1i, 13304i), vec4<i32>(var_0.a.a.x, var_0.a.a.x, -22399i, 1i)), -vec4<i32>(var_6.a.a.x, 40886i, var_0.a.a.x, 15855i)), ~vec4<i32>(-36186i, 8876i, var_0.a.a.x, -1i))), vec2<f32>(global0.x, var_0.c));
}

