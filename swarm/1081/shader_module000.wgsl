struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(54154u, 34945u, 22598u, 8375u);

var<private> global1: array<Struct_2, 10>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: i32) -> f32 {
    var var_0 = arg_2.c.x;
    let var_1 = Struct_3(Struct_2(vec4<u32>(~(~arg_2.b.a.x), 84902u, arg_0.b.a.x, 287u)), Struct_2(~vec4<u32>(4294967295u, firstLeadingBit(29285u), ~1u, firstTrailingBit(8062u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d * arg_0.c) * _wgslsmith_f_op_f32(169f + -510f)) * arg_0.c)), arg_0.d);
    let var_2 = true;
    var var_3 = arg_2;
    global1 = array<Struct_2, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1840f))) + arg_2.d)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_2 {
    global1 = array<Struct_2, 10>();
    global1 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_div_vec2_f32(arg_0.yy, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec4<u32>(37430u, global0.x, 68915u, global0.x)), global1[_wgslsmith_index_u32(0u, 10u)], -1213f, u_input.a), vec4<bool>(true, false, false, false), Struct_4(false, Struct_2(vec4<u32>(global0.x, 4294967295u, global0.x, 33680u)), vec2<f32>(arg_1, 1121f), -234f, vec2<u32>(global0.x, 4294967295u)), u_input.a))), -300f))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.xy)))));
    let var_1 = u_input.a;
    return Struct_2(~(~(~vec4<u32>(global0.x, 29669u, global0.x, 0u))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> vec4<u32> {
    var var_0 = Struct_3(func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -511f))), arg_0, _wgslsmith_f_op_f32(-arg_0)), arg_0), arg_1, 1258f, u_input.a);
    var_0 = Struct_3(Struct_2(firstLeadingBit(arg_1.a)), global1[_wgslsmith_index_u32(44418u, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f - _wgslsmith_f_op_f32(f32(-1f) * -113f))), abs(_wgslsmith_div_i32(var_0.d, 2147483647i)) << (select(4040u, arg_3, false) % 32u));
    let var_1 = Struct_1(!vec2<bool>(true || any(vec4<bool>(true, false, true, false)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~u_input.a, var_0.d), 6975i, _wgslsmith_div_i32(~u_input.a, _wgslsmith_div_i32(u_input.a, var_0.d)), -u_input.a), ~vec4<i32>(10145i, countOneBits(u_input.a), var_0.d, _wgslsmith_mod_i32(var_0.d, var_0.d))));
    let var_2 = var_1.b;
    global1 = array<Struct_2, 10>();
    return abs(vec4<u32>(arg_2, _wgslsmith_dot_vec4_u32(abs(arg_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 1u, 132439u, 0u), vec4<u32>(52593u, global0.x, 1u, global0.x))), arg_1.a.x, arg_3)) & vec4<u32>(37433u, select(_wgslsmith_add_u32(select(arg_3, var_0.a.a.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, 9160u), global0.yxw)), reverseBits(~76315u), false), var_0.b.a.x, arg_1.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_4(select(true, abs(abs(57108u)) <= ~global0.x, true), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(619f, -347f, -1757f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, -436f, -301f) - vec3<f32>(-1050f, -888f, -131f)), vec3<bool>(true, true, true))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(279f - -569f), _wgslsmith_f_op_f32(f32(-1f) * -874f))), _wgslsmith_f_op_f32(sign(1364f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1858f * -659f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))))), 1f, ~(~(~vec2<u32>(1u, arg_1.x))));
    var_0 = Struct_4(true, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d, 592f, var_0.d), vec3<f32>(-734f, var_0.d, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.d, 989f))) - vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(arg_2, Struct_2(vec4<u32>(105626u, 0u, global0.x, var_0.e.x)), var_0.c.x, u_input.a), vec4<bool>(var_0.a, var_0.a, true, var_0.a), Struct_4(var_0.a, Struct_2(vec4<u32>(global0.x, 10040u, arg_2.a.x, arg_0.a.x)), vec2<f32>(var_0.c.x, var_0.d), var_0.c.x, arg_0.a.zz), -1i)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(func_3(Struct_3(arg_0, var_0.b, var_0.d, -1i), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), Struct_4(false, Struct_2(vec4<u32>(global0.x, 20240u, 0u, 0u)), vec2<f32>(-597f, var_0.d), -855f, var_0.e), arg_3)))), _wgslsmith_f_op_f32(var_0.d * _wgslsmith_div_f32(214f, _wgslsmith_div_f32(var_0.d, var_0.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1966f, var_0.d, all(vec2<bool>(false, true)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(322f)), var_0.c.x))), 456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1343f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f - var_0.c.x))), global0.xw);
    var var_1 = (((~arg_2.a ^ countOneBits(vec4<u32>(arg_1.x, 14331u, 61952u, arg_2.a.x))) >> (vec4<u32>(2335u, global0.x, ~36334u, firstLeadingBit(59170u)) % vec4<u32>(32u))) | reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.a.x, arg_2.a.x, 46188u, arg_0.a.x), arg_0.a))) << (~(~arg_1) % vec4<u32>(32u));
    var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(35921u, ~_wgslsmith_dot_vec2_u32(arg_2.a.ww, vec2<u32>(arg_2.a.x, 4294967295u)), 35940u << (arg_2.a.x % 32u), 19142u), ~vec4<u32>(arg_2.a.x, ~7387u, max(arg_1.x, arg_1.x), 4294967295u)), var_0.b.a);
    let var_2 = var_0.b;
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 23791u), var_0.b.a.x)), 10u)];
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = 1283f;
    let var_2 = 0u;
    global0 = vec4<u32>(firstTrailingBit(~global0.x), ~(~1u), ~(~_wgslsmith_dot_vec3_u32(global0.xzw, var_0.b.a.xzz)) ^ _wgslsmith_div_u32(4294967295u, reverseBits(_wgslsmith_add_u32(0u, global0.x))), ~arg_0.a.a.x >> (_wgslsmith_clamp_u32(~func_4(global1[_wgslsmith_index_u32(67651u, 10u)], vec4<u32>(1u, 83765u, global0.x, var_2), global1[_wgslsmith_index_u32(1u, 10u)], -32417i).a.x, global0.x, _wgslsmith_dot_vec4_u32(func_4(arg_0.a, vec4<u32>(4294967295u, 0u, arg_0.a.a.x, 1u), Struct_2(vec4<u32>(arg_0.a.a.x, 13427u, 0u, 18992u)), -49447i).a, _wgslsmith_mod_vec4_u32(arg_0.b.a, var_0.a.a))) % 32u));
    let var_3 = arg_1 == all(!(!(!vec4<bool>(true, arg_1, true, arg_1))));
    return var_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(func_4(Struct_2(func_1(-1016f, global1[_wgslsmith_index_u32(global0.x, 10u)], 31892u, global0.x)), vec4<u32>(47843u, global0.x, global0.x, global0.x) ^ ~vec4<u32>(global0.x, 47307u, 27199u, 1u), global1[_wgslsmith_index_u32(~global0.x & 5144u, 10u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 2147483647i, 1i), vec4<i32>(-30756i, 1i, 20102i, u_input.a)) | u_input.a), global1[_wgslsmith_index_u32(reverseBits(~4294967295u), 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-321f * _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec4<u32>(4294967295u, global0.x, 71756u, 0u)), global1[_wgslsmith_index_u32(global0.x, 10u)], -1306f, u_input.a), vec4<bool>(false, false, true, true), Struct_4(true, Struct_2(vec4<u32>(global0.x, 14466u, 4369u, 29044u)), vec2<f32>(559f, -1036f), 1054f, global0.wz), 2147483647i))) - _wgslsmith_f_op_f32(-588f + 669f)), 2147483647i), all(select(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, any(vec3<bool>(false, false, true)), all(vec2<bool>(false, true)), true), select(u_input.a != u_input.a, select(false, false, false), true))));
    let var_1 = u_input.a;
    global1 = array<Struct_2, 10>();
    global0 = var_0;
    var var_2 = (4294967295u >= var_0.x) || true;
    let var_3 = Struct_3(func_4(func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, 1173f, 1314f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f - -130f))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 10468u, 53971u, 1u), abs(func_1(1000f, Struct_2(vec4<u32>(51214u, 81416u, var_0.x, 39553u)), global0.x, 13960u))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1051f, -1250f, -1089f) + vec3<f32>(-1000f, 847f, -318f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(min(-1000f, -205f))))), 52200i), Struct_2(var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), 0i);
    var var_4 = _wgslsmith_f_op_f32(floor(-260f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.c, 739f, select(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, true)), false))));
    global0 = vec4<u32>(0u, ~select(firstTrailingBit(25736u), ~4294967295u, all(vec2<bool>(true, true))) ^ func_2(vec3<f32>(_wgslsmith_f_op_f32(var_3.c * -1116f), -299f, -253f), _wgslsmith_f_op_f32(func_3(var_3, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), Struct_4(true, var_3.a, vec2<f32>(var_3.c, var_3.c), var_3.c, var_3.a.a.yz), _wgslsmith_mod_i32(-2147483647i, var_1)))).a.x, ~select(var_3.a.a.x, ~select(1u, 53775u, true), true), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(~var_3.b.a.x, func_2(vec3<f32>(var_3.c, var_3.c, var_3.c), var_3.c).a.x)), reverseBits(0u)));
    global0 = vec4<u32>(global0.x, max(_wgslsmith_sub_u32(max(0u, reverseBits(global0.x)), var_0.x), var_3.a.a.x), _wgslsmith_mod_u32(~max(_wgslsmith_sub_u32(global0.x, var_0.x), global0.x), firstLeadingBit(4294967295u)), 10238u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, var_3.c) + vec2<f32>(-877f, var_3.c)))), vec2<bool>(!(-3647i == var_1), !all(vec3<bool>(false, true, false))))));
}

