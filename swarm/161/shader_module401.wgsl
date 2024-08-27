struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = Struct_1(select(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(global1.a, vec3<i32>(1i, global1.a.x, -14491i)), global1.a.x, -global1.a.x)), global1.a, vec3<bool>(false, true && arg_0, arg_0)));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.a.x, global1.a.x) | max((2147483647i | global1.a.x) & -21814i, ~(-55651i)), _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(global1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, 2147483647i, -2147483647i), vec4<i32>(-17791i, 21675i, 14291i, global1.a.x)), global1.a.x & 0i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global1.a.xz, abs(global1.a.xy)), _wgslsmith_clamp_i32(~18256i, -10584i, _wgslsmith_add_i32(global1.a.x, 0i)), global1.a.x)));
    let var_1 = _wgslsmith_f_op_f32(max(-799f, -230f));
    global2 = array<Struct_2, 7>();
    let var_2 = ~vec4<i32>(~(~(-global1.a.x)), abs(-global1.a.x), 1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(13851i, global1.a.x, 0i, 18024i), ~(vec4<i32>(2147483647i, global1.a.x, global1.a.x, global1.a.x) | vec4<i32>(-35251i, 504i, 33138i, -20306i))));
    return min(global1.a.x, var_2.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    global2 = array<Struct_2, 7>();
    global0 = firstTrailingBit(_wgslsmith_mod_vec3_u32(~(~(u_input.c.xwy | u_input.d.wwx)), vec3<u32>(35608u, _wgslsmith_div_u32(abs(global0.x), firstTrailingBit(59511u)), ~countOneBits(29359u))));
    global1 = Struct_1(global1.a);
    global1 = Struct_1(select(arg_1.a, select(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, 2147483647i), global1.a), global1.a, vec3<bool>(true, true, true)), vec3<bool>(true, true, true)) ^ ~vec3<i32>(_wgslsmith_mult_i32(global1.a.x, 0i), arg_0, ~arg_3));
    var var_0 = select(vec2<bool>(func_3(17652u < global0.x) <= ~_wgslsmith_mult_i32(-1i, arg_3), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(true, true, true)), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))));
    return 1u;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = u_input.c.x & countOneBits(43093u);
    global0 = vec3<u32>(func_2(-34593i, Struct_1(global1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1924f, 1284f, -1000f), vec4<f32>(130f, 721f, -176f, -477f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, -1929f, -281f, 490f))) * vec4<f32>(_wgslsmith_div_f32(-199f, -319f), -1587f, 1f, _wgslsmith_f_op_f32(-1412f * 1000f))), min(~global1.a.x, -1i) ^ min(firstTrailingBit(global1.a.x), _wgslsmith_div_i32(global1.a.x, global1.a.x))), ~arg_0.x, arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1113f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(366f)), 621f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, _wgslsmith_div_u32(arg_0.x, max(global0.x, arg_0.x)) << (0u % 32u)), 7u)], any(vec4<bool>(true, true, true, true)) && !select(true, true, true), any(vec4<bool>(false, !select(true, true, false), true | all(vec2<bool>(true, true)), false)), vec3<bool>(any(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, global1.a.x < -52229i)), true, true), Struct_1(vec3<i32>(-14014i, _wgslsmith_mult_i32(~global1.a.x, 0i), -_wgslsmith_dot_vec3_i32(global1.a, global1.a))));
    global0 = ~vec3<u32>(arg_0.x, reverseBits(countOneBits(~global0.x)), reverseBits(u_input.e));
    return Struct_1(-_wgslsmith_add_vec3_i32(abs(select(vec3<i32>(var_2.e.a.x, var_2.e.a.x, -50339i), vec3<i32>(var_2.e.a.x, 2147483647i, 1i), var_2.d.x)), reverseBits(vec3<i32>(31519i, -49401i, var_2.e.a.x) & vec3<i32>(-2147483647i, global1.a.x, var_2.e.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.xy);
    let var_1 = Struct_2(1501f);
    var var_2 = ~4626u;
    global0 = ~(~vec3<u32>(firstTrailingBit(36702u), 72485u, global0.x));
    global0 = ~abs(u_input.d.xwz & select(_wgslsmith_clamp_vec3_u32(u_input.c.ywx, vec3<u32>(4294967295u, 1u, global0.x), vec3<u32>(u_input.d.x, 1u, global0.x)), vec3<u32>(u_input.e, u_input.a, u_input.c.x), true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - 1032f) - 355f);
    global0 = vec3<u32>(firstLeadingBit(global0.x) >> ((~18841u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 28139u), vec3<u32>(24812u, 47399u, 1u)) % 32u)) % 32u), 4294967295u, 0u);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -403f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2531f, -1148f)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-237f, var_1.a)), var_1.a, all(vec4<bool>(false, true, true, false)))), var_1.a) + vec2<f32>(_wgslsmith_f_op_f32(var_1.a + -702f), var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.a.x, global1.a.x), (select(select(vec4<u32>(1u, 0u, global0.x, u_input.b.x), u_input.c, vec4<bool>(false, false, true, false)), u_input.c, any(vec4<bool>(false, true, true, false))) & abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, global0.x, u_input.c.x, 0u)))) >> (reverseBits(vec4<u32>(u_input.e, _wgslsmith_add_u32(global0.x, 4294967295u), u_input.e, 1u)) % vec4<u32>(32u)), firstLeadingBit(max(~vec2<u32>(1u, u_input.a), vec2<u32>(31610u, 83974u)) | select(vec2<u32>(28603u, 1u), vec2<u32>(12096u, 53847u), true)), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(0u, global0.x, abs(_wgslsmith_div_u32(u_input.e, global0.x)), ~(u_input.d.x & u_input.d.x))), ~vec2<u32>(1u, global0.x));
}

