struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(vec4<i32>(1i, 1i, i32(-2147483648), 2147483647i), Struct_2(1u), Struct_1(vec2<f32>(-2264f, -865f), vec3<i32>(0i, 0i, -1i), vec4<u32>(1419u, 27651u, 25063u, 4294967295u), 22533i, -53636i), false, false);

var<private> global2: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    global1 = arg_2;
    global1 = Struct_3(vec4<i32>(_wgslsmith_div_i32(-u_input.b, -(-1i & u_input.b)), u_input.b, u_input.a.x, -_wgslsmith_dot_vec2_i32(firstTrailingBit(global1.a.yz), u_input.a.yx)), arg_2.b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.a.x, _wgslsmith_f_op_f32(-544f * 1252f))), vec3<i32>(-1i) * -select(arg_2.a.zyw, global1.a.yzz, global1.d), global1.c.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.c.e, 69318i, 0i), select(vec4<i32>(arg_2.c.e, 1i, 70706i, global1.a.x), arg_2.a, vec4<bool>(true, false, arg_2.e, arg_2.d))) ^ (-15557i & u_input.b), -172i), any(vec3<bool>(true, arg_2.e, any(select(vec4<bool>(global1.d, true, false, arg_2.e), vec4<bool>(true, global1.e, false, false), vec4<bool>(global1.e, true, false, arg_2.e))))), arg_2.d);
    global1 = arg_2;
    var var_0 = 0i;
    global2 = select(global1.e, !all(select(!vec3<bool>(arg_2.d, global1.d, false), !vec3<bool>(global1.e, arg_2.e, true), vec3<bool>(true, false, false))), all(vec2<bool>(!(!global1.d), true & global1.e)));
    return _wgslsmith_f_op_f32(sign(arg_2.c.a.x));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec4<u32> {
    global2 = global1.d;
    global2 = global1.d;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(-538f - 249f)), global1.c.a.x), _wgslsmith_f_op_f32(arg_2.c.a.x - _wgslsmith_f_op_f32(max(arg_0, global1.c.a.x))));
    var var_1 = Struct_2(~arg_2.c.c.x);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(sign(673f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 308f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.c.a.x, global1.b, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - global1.c.a.x) + _wgslsmith_f_op_f32(max(-465f, -1487f))));
    return select(countOneBits(~countOneBits(vec4<u32>(arg_2.c.c.x, 1u, global0.a, global0.a)) | global1.c.c), ~_wgslsmith_mod_vec4_u32(reverseBits(global1.c.c ^ arg_2.c.c), ~firstLeadingBit(arg_2.c.c)), arg_1);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(global0.a, u_input.c.x), countOneBits(arg_2.c.x), _wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, arg_2.c.x, 1u), func_2(global1.c.a.x, global1.e, Struct_3(vec4<i32>(arg_2.e, arg_2.b.x, u_input.b, u_input.b), global1.b, arg_2, global1.e, true))), ~arg_1.x), ~global1.c.c.x), _wgslsmith_add_u32(~abs(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), 27852u << (_wgslsmith_mult_u32(arg_2.c.x, arg_1.x) % 32u)));
    global2 = !((~max(arg_2.c.x, 4294967295u) | ~(arg_2.c.x >> (global0.a % 32u))) <= 1u);
    var var_1 = u_input.a;
    let var_2 = arg_3;
    var_1 = -vec3<i32>(abs(-86776i), 2147483647i, arg_0.x);
    return Struct_2(~_wgslsmith_mod_u32(arg_2.c.x, ~(~global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a >> (vec4<u32>(0u, min(global0.a, _wgslsmith_add_u32(81462u, global0.a)), 4294967295u, ~(~4294967295u)) % vec4<u32>(32u)), func_1(global1.a.zxx, u_input.c.xy, global1.c, global1.b), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2019f)))), global1.c.a.x), global1.a.xzx, global1.c.c, -1i, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-65983i, global1.c.b.x, global1.a.x), global1.c.b), u_input.b, -2218i)), !any(select(vec4<bool>(false, true, global1.e, false), vec4<bool>(global1.d, global1.d, true, true), !vec4<bool>(global1.e, true, global1.e, true))), all(!(!vec2<bool>(global1.d, global1.d))) & any(vec4<bool>(select(global1.d, true, true), global1.d | true, false, true)));
    global1 = Struct_3(~global1.a, Struct_2(0u), Struct_1(global1.c.a, vec3<i32>(~(global1.c.d >> (1u % 32u)), 2018i, ~_wgslsmith_mult_i32(u_input.a.x, global1.c.e)), vec4<u32>(~u_input.c.x << (reverseBits(global0.a) % 32u), ~0u, (18271u >> (global1.b.a % 32u)) & _wgslsmith_div_u32(global1.b.a, global0.a), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 0u), 102092u, _wgslsmith_dot_vec4_u32(vec4<u32>(36939u, u_input.c.x, 1u, 50927u), vec4<u32>(u_input.c.x, 28242u, global0.a, 4294967295u)))), 67277i, max(global1.a.x, _wgslsmith_sub_i32(-64715i, global1.a.x)) | 1i), true, (i32(-1i) * -2147483647i) <= -select(_wgslsmith_div_i32(global1.a.x, global1.c.b.x), -global1.a.x, u_input.b <= global1.a.x));
    var var_0 = select(-abs(global1.c.b), _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(max(u_input.b, 1i)), abs(global1.a.x) | _wgslsmith_clamp_i32(u_input.a.x, u_input.b, -2147483647i), ~(-global1.c.d)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(42197i, global1.a.x, -4092i), u_input.a), firstLeadingBit(vec3<i32>(1901i, global1.c.d, -1i)))), true);
    global1 = Struct_3(_wgslsmith_div_vec4_i32(select(-global1.a, global1.a, false) | global1.a, global1.a), global1.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.a + vec2<f32>(global1.c.a.x, global1.c.a.x))), u_input.a, ~(~global1.c.c) | vec4<u32>(1u, reverseBits(global1.c.c.x), global0.a, _wgslsmith_add_u32(52382u, 36453u)), -1i, firstLeadingBit(-2147483647i)), !global1.d, true);
    global0 = func_1(u_input.a | vec3<i32>(u_input.b, global1.a.x, 2147483647i), (~func_2(-1567f, global1.d, Struct_3(vec4<i32>(1i, u_input.a.x, -2147483647i, 8402i), global1.b, global1.c, false, global1.d)).xx | global1.c.c.xx) >> ((global1.c.c.yx >> (((global1.c.c.xy << (u_input.c.zz % vec2<u32>(32u))) & global1.c.c.wy) % vec2<u32>(32u))) % vec2<u32>(32u)), global1.c, func_1(_wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, 1i, 0i), vec3<i32>(-61147i, var_0.x, -37775i)), global1.a.zyz), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(15946u, global0.a), 36657u), u_input.c.zz), global1.c, func_1(vec3<i32>(-434i ^ var_0.x, _wgslsmith_sub_i32(-12316i, var_0.x), 1i), vec2<u32>(14283u, 1u), global1.c, Struct_2(0u))));
    let var_1 = ~countOneBits(u_input.c.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.a.x, global1.c.a.x, -166f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1567f, -587f, global1.c.a.x))), vec3<f32>(_wgslsmith_f_op_f32(round(global1.c.a.x)), -775f, 2526f), true)), vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, 1250f)), _wgslsmith_f_op_f32(trunc(global1.c.a.x)), _wgslsmith_div_f32(-406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.a.x * 1069f) + _wgslsmith_f_op_f32(global1.c.a.x + global1.c.a.x))))));
    var var_3 = global1.b;
    global1 = Struct_3(select(vec4<i32>(-539i, u_input.b, -_wgslsmith_mod_i32(global1.a.x, -33663i), -22211i >> (1u % 32u)), min(global1.a, reverseBits(vec4<i32>(-1i, 1i, -27651i, u_input.a.x) >> (vec4<u32>(var_1, var_3.a, 4294967295u, 4294967295u) % vec4<u32>(32u)))), global1.e), func_1(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), u_input.c.xx, global1.c, func_1(~(global1.a.wyw & global1.a.wwz), _wgslsmith_clamp_vec2_u32(~vec2<u32>(15591u, 1u), u_input.c.xx, ~vec2<u32>(26309u, 4294967295u)), Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(169f, global1.c.a.x), global1.c.a)), vec3<i32>(37134i, u_input.b, 24788i), firstLeadingBit(vec4<u32>(20439u, 13817u, var_3.a, 4294967295u)), -19963i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), var_0.yx)), func_1(u_input.a, abs(vec2<u32>(u_input.c.x, global0.a)), Struct_1(global1.c.a, u_input.a, vec4<u32>(4294967295u, 0u, global0.a, var_3.a), 0i, u_input.b), global1.b))), global1.c, false, global1.e | (2147483647i == (global1.a.x | u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_div_f32(-1455f, 699f)), global1.c.a.x, _wgslsmith_div_f32(407f, 1511f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a.x, var_2.x, 611f, 624f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(918f, -1241f, -602f, var_2.x)))))))), 4899u);
}

