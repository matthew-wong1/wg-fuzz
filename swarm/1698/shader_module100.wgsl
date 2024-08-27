struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: f32;

var<private> global2: i32 = -1i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    global2 = _wgslsmith_div_i32(2147483647i, -14235i >> (1u % 32u)) & _wgslsmith_dot_vec3_i32(u_input.c.zzz, _wgslsmith_mod_vec3_i32(u_input.c.xyy, _wgslsmith_mult_vec3_i32(u_input.c.wzy | vec3<i32>(arg_2.b, -2147483647i, -4518i), firstTrailingBit(vec3<i32>(arg_0.b, 17483i, arg_2.b)))));
    var var_0 = arg_2.a.x;
    global0 = -_wgslsmith_sub_i32(-8915i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_2.b, _wgslsmith_div_i32(1i, 30671i), ~arg_2.b), ~(~vec4<i32>(u_input.c.x, -27593i, 1i, arg_2.b))));
    var var_1 = arg_0;
    var var_2 = Struct_1(arg_2.a.x);
    return ~arg_2.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    global2 = reverseBits(u_input.d);
    let var_0 = Struct_2(select(select(_wgslsmith_mod_vec2_u32(u_input.e, arg_0.xz) << ((vec2<u32>(arg_0.x, 1u) & vec2<u32>(78178u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(77281u), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(26382u, arg_0.x, 43264u))), vec2<bool>(false, true)), vec2<u32>(func_3(Struct_2(vec2<u32>(5571u, u_input.e.x), 2147483647i), true, Struct_2(u_input.e, 1i), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), 3809u), vec2<bool>(any(vec2<bool>(false, true)), true)), u_input.d);
    return var_0.b & u_input.d;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    global0 = func_4(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(arg_2.a.x, func_3(arg_2, false, Struct_2(vec2<u32>(u_input.e.x, arg_2.a.x), -9266i), arg_3.wx)), arg_2.a.x), vec3<u32>(select(26105u, arg_2.a.x, !arg_3.x), 1u, 4294967295u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(108f * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1568f), _wgslsmith_f_op_f32(ceil(1033f))), arg_0)))));
    global2 = 31909i;
    let var_0 = -19730i;
    global2 = 39416i << ((~min(func_3(Struct_2(vec2<u32>(1u, 4294967295u), var_0), false, Struct_2(vec2<u32>(1u, 4294967295u), arg_2.b), arg_3.zy), ~u_input.b) << (_wgslsmith_div_u32(arg_2.a.x, 68139u) % 32u)) % 32u);
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1383f)));
    return abs(11586i);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(abs(~u_input.e), ~reverseBits(-countOneBits(16717i)));
    global0 = func_2(all(vec4<bool>(true, true, true, true)), _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_mult_i32(2696i, -35520i), 38872i, -1i), Struct_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, u_input.e.x) << (vec2<u32>(0u, 20976u) % vec2<u32>(32u)), vec2<u32>(arg_0, 10634u), vec2<u32>(0u, var_0.a.x)), -var_0.b), select(vec4<bool>(var_0.b > _wgslsmith_mult_i32(var_0.b, var_0.b), true, all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, true))), !vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1928f, 985f) * vec2<f32>(-980f, 1405f)), vec2<f32>(-803f, 564f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2331f, 1253f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-845f, -626f), vec2<f32>(450f, 527f))), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))))))) - vec2<f32>(1f, 1f));
    var var_2 = u_input.c.xzy;
    let var_3 = countOneBits(8155u) ^ ~var_0.a.x;
    return Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 46924u, 1u), vec4<u32>(1u, 0u, u_input.e.x, var_3)), u_input.a) << ((_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(0u, var_3)) & abs(var_0.a)) % vec2<u32>(32u)), min(vec2<u32>(22066u, 0u), reverseBits(vec2<u32>(0u, var_3))) >> (var_0.a % vec2<u32>(32u))), _wgslsmith_mult_i32(24i, _wgslsmith_dot_vec4_i32(abs(u_input.c), countOneBits(vec4<i32>(var_0.b, 24904i, 18561i, 2147483647i) << (vec4<u32>(arg_0, 78289u, arg_0, 0u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -88552i;
    var var_1 = Struct_2(u_input.e, 0i);
    var_1 = func_1(4294967295u);
    var var_2 = Struct_2(u_input.e, 34122i);
    let var_3 = ~(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-var_0, -33587i << (var_1.a.x % 32u)), 2147483647i));
    let var_4 = func_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, 0u, 20499u, var_1.a.x), vec4<u32>(96957u, var_1.a.x, 1u, 0u)), var_1.a.x) & ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e, reverseBits(vec2<u32>(52871u, 5193u))) | _wgslsmith_add_vec2_u32(reverseBits(u_input.e), var_2.a & vec2<u32>(68274u, 30568u)), abs(func_1(~39124u).a)));
}

