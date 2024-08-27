struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: array<vec3<i32>, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_2(arg_1.a, ~(~(~vec4<u32>(u_input.d, 0u, arg_1.b.x, 0u))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 0u, arg_1.b.x, 26934u), arg_1.b, ~arg_1.b), ~reverseBits(arg_1.b)) % vec4<u32>(32u)), arg_1.c);
    let var_1 = !var_0.c;
    global1 = array<vec3<u32>, 29>();
    var_0 = arg_1;
    global1 = array<vec3<u32>, 29>();
    return var_0.a.d;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    let var_0 = Struct_3((-_wgslsmith_clamp_i32(arg_1.x, u_input.a.x, u_input.b.x) ^ arg_1.x) << (2208u % 32u), select(select(vec3<bool>(select(true, true, false), func_3(u_input.b.yz, Struct_2(Struct_1(-1035f, u_input.a, true, true), arg_0, vec2<bool>(true, false)), arg_0.xyz), select(true, false, false)), vec3<bool>(true, true, any(vec3<bool>(false, false, true))), all(vec3<bool>(false, false, false))), vec3<bool>(true, false, func_3(abs(vec2<i32>(2147483647i, arg_2)), Struct_2(Struct_1(-684f, u_input.a, false, false), arg_0, vec2<bool>(false, true)), vec3<u32>(14334u, arg_0.x, arg_0.x))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)), u_input.b.xz | firstTrailingBit(select(vec2<i32>(arg_1.x, arg_2) | vec2<i32>(arg_1.x, 40100i), -vec2<i32>(arg_1.x, u_input.a.x), vec2<bool>(true, true))));
    global0 = array<vec3<i32>, 3>();
    var var_1 = !(!var_0.b);
    return -11786i;
}

fn func_1() -> vec2<u32> {
    var var_0 = -vec4<i32>(-(~func_2(vec4<u32>(4294967295u, 7503u, 0u, 0u), u_input.a, u_input.b.x)), u_input.c.x, 2147483647i, u_input.b.x >> ((u_input.d & max(u_input.d, 1u)) % 32u));
    let var_1 = Struct_3(max(-18122i, -_wgslsmith_sub_i32(u_input.b.x, var_0.x) ^ (-43181i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, u_input.d)) % 32u))), vec3<bool>(!any(vec4<bool>(true, true, true, false)) || true, _wgslsmith_sub_u32(22405u, 0u) < (~u_input.d ^ ~0u), all(vec4<bool>(true, false, true, all(vec3<bool>(true, false, false))))), -u_input.a.xz);
    var var_2 = all(!var_1.b.xx) == !func_3(vec2<i32>(-1i, var_1.c.x), Struct_2(Struct_1(1000f, u_input.a, true, var_1.b.x), vec4<u32>(11166u, u_input.d, 0u, 30260u), select(var_1.b.xz, var_1.b.zz, var_1.b.x)), vec3<u32>(u_input.d | u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(5302u, 1u)), u_input.d));
    global2 = array<vec3<i32>, 7>();
    global1 = array<vec3<u32>, 29>();
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(11333u, abs(firstLeadingBit(u_input.d))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16064u, 1u), vec3<u32>(u_input.d, 4294967295u, 806u)), u_input.d) & _wgslsmith_sub_vec2_u32(vec2<u32>(~75056u, ~u_input.d), firstLeadingBit(abs(vec2<u32>(45639u, 0u)))), _wgslsmith_clamp_vec2_u32(~max(vec2<u32>(u_input.d, 8237u), abs(vec2<u32>(u_input.d, u_input.d))), vec2<u32>(~u_input.d, u_input.d >> (_wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d) % 32u)), ~firstTrailingBit(vec2<u32>(82297u, 4294967295u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.d), min(vec2<u32>(u_input.d, u_input.d), vec2<u32>(51642u, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1351f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f * -342f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-395f - 1634f))))));
    let var_1 = _wgslsmith_add_vec2_u32(func_1(), vec2<u32>(~u_input.d, u_input.d));
    var var_2 = Struct_2(Struct_1(702f, _wgslsmith_add_vec4_i32(u_input.a, ~(-vec4<i32>(u_input.c.x, 34364i, u_input.a.x, 29798i))), true, func_3(-reverseBits(vec2<i32>(-2147483647i, 0i)), Struct_2(Struct_1(138f, vec4<i32>(28222i, u_input.b.x, u_input.a.x, u_input.b.x), true, var_0), ~vec4<u32>(u_input.d, u_input.d, 2162u, var_1.x), !vec2<bool>(var_0, var_0)), global1[_wgslsmith_index_u32(u_input.d, 29u)])), vec4<u32>(max(68719u << (abs(var_1.x) % 32u), var_1.x), var_1.x & select(reverseBits(u_input.d), firstLeadingBit(13304u), func_3(vec2<i32>(-51832i, 1i), Struct_2(Struct_1(1138f, u_input.a, var_0, var_0), vec4<u32>(u_input.d, 61938u, var_1.x, var_1.x), vec2<bool>(var_0, var_0)), vec3<u32>(1u, u_input.d, u_input.d))), _wgslsmith_sub_u32(u_input.d, 4294967295u), 66092u), vec2<bool>(var_0, var_0));
    global1 = array<vec3<u32>, 29>();
    global0 = array<vec3<i32>, 3>();
    let var_3 = var_2.a.b.x;
    let var_4 = var_2.a;
    let var_5 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_4.a), var_2.a.a, _wgslsmith_f_op_f32(ceil(var_2.a.a)), _wgslsmith_f_op_f32(-var_4.a)))));
    var var_6 = var_5.wz;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d));
}

