struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(i32(-2147483648));

var<private> global1: array<Struct_4, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = select(all(!select(vec3<bool>(arg_2, arg_2, true), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_3.a, true, arg_2), arg_2), any(vec2<bool>(arg_2, arg_3.a)))), true, arg_3.a);
    var var_1 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(11456u, arg_0, arg_0, arg_0), min(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.e.x), vec4<u32>(7752u, 0u, 4294967295u, 0u)))), vec4<u32>(_wgslsmith_div_u32(1u, ~(~arg_0)), _wgslsmith_clamp_u32(firstLeadingBit(1u), 132059u, arg_0) >> (arg_0 % 32u), u_input.e.x, max(22356u, arg_0)));
    var var_2 = reverseBits(abs(reverseBits(firstTrailingBit(arg_1.zx))));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.e.x, ~u_input.d), u_input.e);
    var_2 = max(vec2<i32>(abs(arg_1.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(16312i, 2147483647i)), -vec2<i32>(1365i, global0.a)), _wgslsmith_mod_i32(abs(global0.a), reverseBits(2147483647i)))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~var_2.x, var_2.x), 0i ^ (-9310i << (u_input.b.x % 32u))), vec2<i32>(var_2.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, arg_1.x, arg_1.x, var_2.x), vec4<i32>(-64181i, 24019i, var_2.x, u_input.a)))));
    return (_wgslsmith_clamp_vec2_u32(var_3.yy, (var_1.wz | vec2<u32>(var_1.x, arg_0)) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<u32>(~4294967295u, var_3.x)) >> (~vec2<u32>(firstLeadingBit(u_input.d), _wgslsmith_mult_u32(0u, arg_0)) % vec2<u32>(32u))) & reverseBits(min(vec2<u32>(1u, u_input.d << (arg_0 % 32u)), vec2<u32>(countOneBits(0u), 45414u)));
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_4, 11>();
    global0 = Struct_5(global0.a);
    global0 = Struct_5(global0.a);
    return _wgslsmith_div_vec2_u32(~u_input.e.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), ~_wgslsmith_mod_vec2_u32(u_input.e.xy | u_input.e.xz, func_3(u_input.e.x, u_input.c, true, Struct_1(false)))));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(abs(func_2()), vec2<u32>(0u, 34314u)), u_input.b.zx);
    let var_1 = arg_0.zwx;
    global1 = array<Struct_4, 11>();
    let var_2 = -global0.a;
    global1 = array<Struct_4, 11>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(max(u_input.d, func_1(vec4<bool>(true, true, false, false)) << (94064u % 32u))) >= func_3(func_2().x, reverseBits(vec3<i32>(16242i | global0.a, firstLeadingBit(u_input.a), -13619i)), any(vec3<bool>(any(vec3<bool>(true, true, false)), false, false)), Struct_1(true)).x;
    var var_1 = Struct_3(!(!vec4<bool>(!var_0, var_0, select(false, true, false), true)));
    global1 = array<Struct_4, 11>();
    global0 = Struct_5(u_input.c.x);
    var var_2 = (abs(vec4<i32>(~2147483647i, global0.a, 1i, 46074i)) << ((vec4<u32>(15768u, _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.e.yx), _wgslsmith_mod_u32(u_input.d, 0u), ~u_input.d) & min(vec4<u32>(9155u, 11991u, u_input.b.x, 53734u), min(vec4<u32>(4294967295u, 79077u, u_input.e.x, u_input.d), vec4<u32>(u_input.d, u_input.e.x, u_input.e.x, u_input.d)))) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, i32(-1i) * -4726i, 1i), -(~u_input.c.x)), -1i, global0.a, -1i >> (u_input.b.x % 32u));
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(47902i, select(-8424i, global0.a, all(vec4<bool>(var_0, var_0, var_0, var_0)))), _wgslsmith_dot_vec2_i32(-vec2<i32>(10932i, var_2.x), u_input.c.xx) ^ -firstLeadingBit(var_2.x)), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(~1i, -2147483647i | var_2.x), ~global0.a));
    global1 = array<Struct_4, 11>();
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1331f, -244f), vec2<f32>(-752f, -438f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(956f, 1833f) * vec2<f32>(568f, 1069f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2356f, 1429f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1652f, 949f))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-1480f)), _wgslsmith_f_op_f32(round(-1056f)))))), vec2<f32>(-206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(sign(-503f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, 8853u, u_input.e.x);
}

