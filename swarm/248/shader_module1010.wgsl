struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global2: Struct_2 = Struct_2(Struct_1(111778u, 13579i, vec4<f32>(-1107f, -1103f, 444f, -127f)), 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = global2.b;
    var var_1 = -(~abs(abs(arg_1))) != global2.a.b;
    var var_2 = select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1346f * _wgslsmith_f_op_f32(-global2.a.c.x))), arg_0.a.c.x, true));
    var var_4 = global2.a.c.x;
    return u_input.d.x;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> vec4<f32> {
    global0 = array<Struct_1, 16>();
    global2 = Struct_2(Struct_1(48234u, u_input.a ^ u_input.a, _wgslsmith_f_op_vec4_f32(global2.a.c + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global2.a.c, vec4<f32>(arg_0, arg_1, global2.a.c.x, global2.a.c.x)), _wgslsmith_div_vec4_f32(global2.a.c, global2.a.c))))), select(~_wgslsmith_add_u32(u_input.d.x, func_3(Struct_2(global2.a, 1u), 1i)), ~(~func_3(Struct_2(Struct_1(1u, u_input.a, global2.a.c), global1.x), u_input.a)), true));
    global0 = array<Struct_1, 16>();
    let var_0 = i32(-1i) * -_wgslsmith_div_i32(~arg_2.x, -7530i);
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(var_0, arg_2.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.x, -27226i, 54633i), max(vec3<i32>(2147483647i, 2147483647i, var_0) & vec3<i32>(var_0, arg_2.x, -20258i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -50709i, 0i), vec3<i32>(arg_2.x, var_0, 14896i)))), global2.a.b), vec4<i32>(firstLeadingBit(var_0), -u_input.a, u_input.a, -517i ^ arg_2.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.a.c), _wgslsmith_f_op_vec4_f32(abs(global2.a.c)), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    global0 = array<Struct_1, 16>();
    var var_0 = vec2<bool>(true | !(_wgslsmith_div_u32(global1.x, global2.a.a) <= ~12875u), !all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), 29363i > u_input.a)));
    var var_1 = ~_wgslsmith_clamp_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(u_input.a, 29041i, u_input.a)) & _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, 13478i, -55347i), vec3<i32>(u_input.a, -1i, global2.a.b) & vec3<i32>(global2.a.b, -1i, global2.a.b)), max(vec3<i32>(global2.a.b, u_input.a, u_input.a) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, global1.x), u_input.d.zyx) % vec3<u32>(32u)), vec3<i32>(u_input.a ^ global2.a.b, 2147483647i, -global2.a.b)), vec3<i32>(-(u_input.a ^ global2.a.b), u_input.a, _wgslsmith_add_i32(-2147483647i | global2.a.b, -u_input.a)));
    let var_2 = global0[_wgslsmith_index_u32(1u, 16u)];
    var var_3 = ~(~vec4<u32>(_wgslsmith_add_u32(abs(global2.b), 4294967295u), 65364u, ~74676u, _wgslsmith_mod_u32(global2.b, 4294967295u << (0u % 32u))));
    return Struct_3(var_0.x, true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c.x) + _wgslsmith_f_op_f32(sign(-1022f))), var_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.c.x), global2.a.c.x), var_2.c.x), _wgslsmith_f_op_vec4_f32(-var_2.c))), (max(~vec3<u32>(7858u, 115201u, 38320u), vec3<u32>(1u, 12826u, global2.a.a) & vec3<u32>(global1.x, 20000u, var_2.a)) >> (vec3<u32>(~38905u, u_input.b, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(u_input.b, u_input.b))) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_u32(var_3.ywx >> (u_input.d.xwx % vec3<u32>(32u)), ~u_input.d.wwx));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<u32>) -> bool {
    var var_0 = u_input.d.zy;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(select(arg_0, arg_0, 11584i >= u_input.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global2.a.c.x, _wgslsmith_f_op_f32(round(263f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-395f - arg_1), _wgslsmith_f_op_f32(-arg_0)))), vec2<i32>(1i, -47730i))), arg_1);
    let var_2 = !select(vec4<bool>(!var_1.b, any(vec4<bool>(var_1.b, true, true, var_1.b)), true, var_1.b), select(!vec4<bool>(false, var_1.b, var_1.a, false), vec4<bool>(var_1.a || var_1.b, all(vec4<bool>(var_1.b, false, var_1.a, false)), true, false), select(any(vec4<bool>(var_1.a, var_1.b, var_1.b, false)), true, true)), !any(!vec3<bool>(var_1.b, true, true)));
    global1 = u_input.d.zw;
    let var_3 = Struct_1(abs(countOneBits(~_wgslsmith_dot_vec4_u32(arg_2, u_input.d))), ~(-1714i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-726f, 1500f, 111f, var_1.c.x)))) * var_1.c) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(ceil(1293f)), 679f, vec2<i32>(-2147483647i, -1i))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.x, arg_0, 1003f, 603f)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!func_1(global2.a.c.x, _wgslsmith_f_op_f32(floor(global2.a.c.x)), u_input.d), true, any(vec4<bool>(true, global2.a.c.x >= -1434f, any(vec4<bool>(true, true, true, true)), true)) & true, false);
    let x = u_input.a;
    s_output = StorageBuffer(~13040u, ~(~firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.d.wzw, u_input.d.yyw))), vec3<i32>(~abs(31417i), abs(-_wgslsmith_add_i32(global2.a.b, global2.a.b)), 21596i));
}

