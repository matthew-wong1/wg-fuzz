struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<f32, 5>;

var<private> global2: array<u32, 12>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.b;
    global2 = array<u32, 12>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(4550u, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.x, 12u)], 12u)], 12u)], 65348u), arg_0.a), min(vec4<u32>(0u, arg_0.a.x, 0u, u_input.a.x), arg_0.a), select(vec4<u32>(arg_0.d.x, global2[_wgslsmith_index_u32(122681u, 12u)], 22165u, arg_0.d.x), arg_0.a, false)) >> (vec4<u32>(u_input.c.x, 42199u, global2[_wgslsmith_index_u32(1u, 12u)], ~0u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(51666u, 5u)])))), _wgslsmith_mod_u32(21348u, ~0u), arg_0.a.xz), arg_0, Struct_1(~vec4<u32>(abs(4294967295u), 0u, ~arg_0.c, u_input.a.x), 1f, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.d.x, global2[_wgslsmith_index_u32(arg_0.d.x, 12u)], global2[_wgslsmith_index_u32(arg_0.d.x, 12u)]), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 12u)], 0u, 4294967295u)) ^ ~arg_0.a.x, _wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(arg_0.a, arg_0.a))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d.x, arg_0.c), _wgslsmith_mult_vec2_u32(vec2<u32>(54308u, u_input.a.x), vec2<u32>(arg_0.c, 0u))), vec2<u32>(4294967295u, countOneBits(arg_0.c)))), arg_0);
    var var_2 = var_1;
    var var_3 = var_2.d.a;
    return ~max(_wgslsmith_dot_vec3_u32(max(firstTrailingBit(arg_0.a.yzx), vec3<u32>(44640u, global2[_wgslsmith_index_u32(u_input.c.x, 12u)], var_1.b.a.x)), ~vec3<u32>(var_2.c.c, arg_0.a.x, var_1.b.a.x) | select(vec3<u32>(73336u, 85319u, 2190u), u_input.a.wwz, vec3<bool>(true, true, false))), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.x, 4294967295u), ~arg_0.d) & (~0u >> (_wgslsmith_add_u32(u_input.a.x, 0u) % 32u)));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(countOneBits(~(~vec4<u32>(1u, u_input.b, u_input.c.x, global2[_wgslsmith_index_u32(34211u, 12u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 5u)])))), u_input.a.x, vec2<u32>(_wgslsmith_div_u32(abs(u_input.a.x), 4294967295u), 0u)), Struct_1(u_input.a, 2021f, _wgslsmith_add_u32(~0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.a.x, 12u)] & 1u, 12u)]), ~(~vec2<u32>(8523u, u_input.c.x))), Struct_1(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(~u_input.a.x, u_input.c.x & 98489u, u_input.a.x, ~4294967295u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(698f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59505u, 12u)], 12u)], 12u)], 5u)]))))), 60494u, vec2<u32>(u_input.c.x, ~6043u)), Struct_1(vec4<u32>(func_3(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 9810u), -112f, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], vec2<u32>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]))), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 12u)] << (5714u % 32u), ~0u, _wgslsmith_mod_u32(~u_input.c.x, 0u)), _wgslsmith_f_op_f32(-581f + global1[_wgslsmith_index_u32(44817u, 5u)]), func_3(Struct_1(min(vec4<u32>(41028u, 1u, u_input.b, u_input.a.x), u_input.a), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(22031u, 5u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<u32>(u_input.b, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)])), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 12u)]), u_input.c.zy))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(33448u, 12u)]), vec2<u32>(1u, 25849u)), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], 12u)], u_input.c.x))));
    let var_1 = !(!vec4<bool>(true, true, all(select(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 8u)], vec2<bool>(true, true), false)), true));
    global2 = array<u32, 12>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-1867f + 882f))), global1[_wgslsmith_index_u32(4294967295u, 5u)]) * -414f)));
    global2 = array<u32, 12>();
    return min(~(~vec2<u32>(reverseBits(26386u), 8643u)), vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.c.zz, vec2<u32>(~var_0.d.a.x, _wgslsmith_mod_u32(25112u, 94299u))), 12u)], u_input.b));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = max(func_2(), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 50076u, arg_0.x, 4294967295u), arg_0) & ~arg_0.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_0, arg_0))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, ~23103u), vec2<u32>(arg_0.x, 41907u)));
    var var_1 = 4294967295u;
    var var_2 = arg_1.d;
    var var_3 = _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_1.b.c << (~_wgslsmith_clamp_u32(abs(arg_1.b.c), arg_1.c.c, ~arg_2.x) % 32u), 5u)], _wgslsmith_f_op_f32(150f - global1[_wgslsmith_index_u32(reverseBits(abs(arg_3.x)) << (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_1.b.a.x, 32920u, u_input.b, 4294967295u)) % 32u), 5u)])));
    var var_4 = firstTrailingBit(_wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(0i, 2147483647i, -1i, 2147483647i))), -(vec4<i32>(2147483647i, 1i, 1i, -1i) >> (vec4<u32>(arg_3.x, 1u, var_0.x, 3369u) % vec4<u32>(32u))) >> (arg_0 % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 5u)]) + 269f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.a, Struct_2(Struct_1(vec4<u32>(25493u, 1u, 66u, global2[_wgslsmith_index_u32(0u, 12u)]), 1000f, 4294967295u, vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], 0u)), Struct_1(vec4<u32>(21674u, u_input.a.x, 18322u, u_input.b), global1[_wgslsmith_index_u32(92851u, 5u)], 49728u, u_input.a.zw), Struct_1(vec4<u32>(u_input.c.x, u_input.b, global2[_wgslsmith_index_u32(44448u, 12u)], 73375u), global1[_wgslsmith_index_u32(53595u, 5u)], 1u, u_input.a.yx), Struct_1(u_input.a, -1012f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], u_input.a.wx)), ~vec3<u32>(23002u, u_input.b, global2[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(42122u, 76837u)))), _wgslsmith_f_op_f32(sign(1573f)))))));
    global2 = array<u32, 12>();
    let var_1 = vec3<u32>(func_2().x, ~firstLeadingBit(global2[_wgslsmith_index_u32(func_2().x | 1u, 12u)]), u_input.c.x >> ((1u ^ _wgslsmith_div_u32(firstTrailingBit(57780u), _wgslsmith_clamp_u32(1u, 0u, 38524u))) % 32u));
    var var_2 = _wgslsmith_dot_vec2_u32(~(abs(vec2<u32>(var_1.x, var_1.x) << (vec2<u32>(var_1.x, 60403u) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.yz, vec2<u32>(4277u, 47165u)), ~vec2<u32>(0u, u_input.c.x)) % vec2<u32>(32u))), ~vec2<u32>(func_3(Struct_1(vec4<u32>(0u, global2[_wgslsmith_index_u32(0u, 12u)], u_input.c.x, 4294967295u), global1[_wgslsmith_index_u32(52097u, 5u)], 19022u, vec2<u32>(var_1.x, global2[_wgslsmith_index_u32(85436u, 12u)]))), max(~63849u, 4294967295u)));
    var var_3 = -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(-8216i, 1i), 1i), abs(_wgslsmith_div_vec3_i32(vec3<i32>(-43801i, -47505i, 2147483647i), vec3<i32>(-2147483647i, 20374i, 29694i))), vec3<i32>(1i, 1i, 1i)), -_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(2147483647i, -51898i, -1i)), ~vec3<i32>(-266i, -20596i, -2147483647i)));
    var_3 = vec3<i32>(-1i, var_3.x, -55764i << (global2[_wgslsmith_index_u32(~(~u_input.a.x), 12u)] % 32u));
    let var_4 = Struct_1(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a ^ vec4<u32>(4294967295u, 21731u, ~133700u, _wgslsmith_sub_u32(217u, var_1.x))), -1843f, u_input.b, vec2<u32>(1u, ~(~_wgslsmith_mod_u32(0u, 15974u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(5690u), u_input.c.x), _wgslsmith_dot_vec2_u32(var_4.d & ~select(u_input.c.xx, var_1.zx, vec2<bool>(false, false)), vec2<u32>(_wgslsmith_dot_vec3_u32(var_1, _wgslsmith_mult_vec3_u32(u_input.a.xwy, var_4.a.yzw)), var_4.d.x)), ~vec3<i32>(_wgslsmith_clamp_i32(-2147483647i & var_3.x, var_3.x, 1i), -var_3.x, -2147483647i));
}

