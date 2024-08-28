struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: array<u32, 2>;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(33173u >> ((_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.d, 2u)], 1435u) | global1[_wgslsmith_index_u32(~u_input.d, 2u)]) % 32u), 9u)];
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~max(9975i, -2147483647i), select(reverseBits(u_input.b), 1i, true), _wgslsmith_mod_i32(~u_input.c.x, -2147483647i), ~u_input.c.x), abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c.x, 24268i, u_input.b, u_input.c.x), min(vec4<i32>(u_input.b, -2147483647i, u_input.b, 6698i), vec4<i32>(-28870i, u_input.c.x, -19335i, 1i))))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(select(min(u_input.d, global1[_wgslsmith_index_u32(7497u, 2u)]) << (global1[_wgslsmith_index_u32(~1u, 2u)] % 32u), ~1u, select(false, false, true) && false), 2u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(84239u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 8814u, global1[_wgslsmith_index_u32(u_input.d, 2u)], 69700u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 34283u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)], 2u)]), vec4<u32>(u_input.d, 4294967295u, 1u, global1[_wgslsmith_index_u32(40181u, 2u)])), vec4<u32>(u_input.a.x, 0u, u_input.d, u_input.a.x))), 2u)], min(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 2u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63587u, 2u)] << (u_input.d % 32u), 2u)]), ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)] | 24078u))), 9u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    global2 = false == !(_wgslsmith_f_op_f32(2134f + -395f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-343f, 1441f)) - _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = Struct_1(u_input.a, select(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8438u, 2u)], 2u)], global1[_wgslsmith_index_u32(u_input.d, 2u)], 4294967295u), select(vec4<u32>(global1[_wgslsmith_index_u32(u_input.e, 2u)], global1[_wgslsmith_index_u32(5195u, 2u)], u_input.d, 24351u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.e, 2u)], 69589u, global1[_wgslsmith_index_u32(50945u, 2u)], 37815u), vec4<bool>(true, false, false, false))), select(~firstLeadingBit(vec4<u32>(30100u, 147663u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 1u)), ~abs(vec4<u32>(26233u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 2u)])), vec4<bool>(true, all(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, false, false)), false)), !(!(747f < var_0.x))), -579f, !vec4<bool>(false, true, true, any(vec3<bool>(false, true, false))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-397f * 113f), var_0.x))), var_1.c, 558f);
    return ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(8033u, 0u), 2u)], 13995u, _wgslsmith_dot_vec2_u32(min(u_input.a.zz, u_input.a.yx), max(var_2.b.zy, var_2.a.xz))), select(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), var_2.a.zz), 2u)], u_input.d >> (select(21481u, global1[_wgslsmith_index_u32(1u, 2u)], var_2.d.x) % 32u), false));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<u32> {
    let var_0 = -1344f;
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(func_3() & 66626u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.e, 2u)], 4294967295u), 2u)], 2u)]), global1[_wgslsmith_index_u32(~19265u, 2u)], (u_input.e & 1u) & min(global1[_wgslsmith_index_u32(4294967295u, 2u)], 1u)), ~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.d, global1[_wgslsmith_index_u32(u_input.e, 2u)], 77462u)), vec4<u32>(global1[_wgslsmith_index_u32(0u, 2u)], reverseBits(u_input.a.x), _wgslsmith_mod_u32(0u, u_input.e), u_input.a.x)), var_0, !select(vec4<bool>(arg_0 != u_input.c.x, true, false, any(vec2<bool>(false, false))), vec4<bool>(true, u_input.b < arg_0, false, arg_0 < -2354i), (47190i != u_input.c.x) & true));
    global0 = array<vec3<f32>, 9>();
    var var_2 = Struct_1(reverseBits(~(~(~vec3<u32>(47882u, 4294967295u, u_input.a.x)))), ~(~(~vec4<u32>(0u, 26303u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 2u)], 2u)], var_1.a.x))) << (vec4<u32>(34416u, ~(~global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), var_1.a.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_1.c), var_1.d);
    let var_3 = all(var_2.d.yxz) == select(!(_wgslsmith_f_op_f32(f32(-1f) * -912f) >= var_0), any(!select(var_1.d, var_2.d, var_2.d)), var_1.d.x);
    return var_1.b;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global3 = array<Struct_2, 29>();
    var var_0 = Struct_1(~abs(abs(u_input.a)), _wgslsmith_add_vec4_u32((~vec4<u32>(u_input.d, u_input.a.x, 4294967295u, u_input.a.x) | vec4<u32>(68416u, 9397u, u_input.d, 9837u)) << (vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(15888u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), 2u)], u_input.d, u_input.e >> (4294967295u % 32u)) % vec4<u32>(32u)), func_2(-101061i >> (u_input.e % 32u), arg_0.b.x) << (vec4<u32>(~global1[_wgslsmith_index_u32(76217u, 2u)], 14916u, abs(0u), select(4294967295u, u_input.d, true)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x))), vec4<bool>(select(true, any(vec2<bool>(false, true)), true) && all(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, true, true, true)), false));
    let var_1 = select(!(!(!vec4<bool>(true, var_0.d.x, var_0.d.x, true))), var_0.d, var_0.d.x);
    var_0 = Struct_1(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, var_0.a.x, global1[_wgslsmith_index_u32(u_input.e, 2u)])), ~vec3<u32>(24106u, var_0.a.x, var_0.b.x)), var_0.b, var_0.c, var_0.d);
    let var_2 = min(vec3<u32>(var_0.b.x, ~_wgslsmith_div_u32(var_0.a.x, 0u) ^ ~30776u, min(~(~global1[_wgslsmith_index_u32(35717u, 2u)]), firstLeadingBit(~4294967295u))), ~vec3<u32>(4294967295u, 2188u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(16435u, var_0.a.x, 1u), vec3<u32>(u_input.a.x, 0u, 41251u))));
    return global3[_wgslsmith_index_u32(6610u, 29u)];
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: i32) -> vec2<bool> {
    var var_0 = func_1(Struct_2(~11081i, _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(abs(firstTrailingBit(0u)), 9u)] * _wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(13076u, 62489u)), 9u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.c, 2642f, false)))), 220f)));
    global3 = array<Struct_2, 29>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-508f, var_0.c), _wgslsmith_f_op_f32(-651f + arg_1)))), arg_0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-941f))), true)), -1468f);
    global2 = select(false && !((u_input.d > 52376u) & true), false, all(vec4<bool>(true | any(vec2<bool>(true, false)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true)), !all(vec3<bool>(true, true, false)), true)));
    global2 = true;
    return vec2<bool>(!(arg_3 < -62986i), _wgslsmith_f_op_f32(-var_1.x) < -653f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1363f <= _wgslsmith_div_f32(-2239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(255f, _wgslsmith_f_op_f32(step(797f, -1646f))))));
    var var_1 = !func_4(func_1(global3[_wgslsmith_index_u32(select(u_input.d, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.yx), true), 29u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(820f + -537f) + -469f)), abs(select(global1[_wgslsmith_index_u32(4294967295u, 2u)], 1u, var_0)) >> (0u % 32u), 1i);
    var var_2 = Struct_1(firstLeadingBit(~u_input.a), vec4<u32>(u_input.d, 1u, 19570u, ~abs(firstLeadingBit(u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2365f)), select(!select(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(false, true, var_0, var_0), var_1.x), vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_0, false, var_1.x, var_1.x)), !select(vec4<bool>(true, var_0, true, var_1.x), select(vec4<bool>(var_1.x, var_0, true, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, var_0)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)] == 1u), select(!select(vec4<bool>(var_0, var_0, false, var_1.x), vec4<bool>(var_1.x, true, false, var_0), false), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_0, var_0, var_1.x), vec4<bool>(false, true, var_0, false)), vec4<bool>(var_0, false, var_0, false), !var_1.x), var_1.x)));
    global1 = array<u32, 2>();
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(abs(reverseBits(select(var_2.b, vec4<u32>(59739u, u_input.e, var_2.a.x, 65149u), var_0))), var_2.b), 4729u, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_2.b.x, 2u)], 82914u), vec2<u32>(52682u, 1u)), vec2<u32>(894u, 4294967295u)), abs(var_2.a.x))));
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.c, var_2.c, var_2.c, -239f)))))));
    var var_5 = -21071i;
    let x = u_input.a;
    s_output = StorageBuffer(max(-reverseBits(min(vec3<i32>(u_input.c.x, -1296i, u_input.c.x), vec3<i32>(u_input.c.x, -1i, u_input.c.x))), abs(max(vec3<i32>(1i, u_input.c.x, -1i) << (vec3<u32>(u_input.d, 4294967295u, 28861u) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, 0i, u_input.b) & vec3<i32>(u_input.c.x, 2147483647i, 2147483647i)))), u_input.b, vec4<i32>(u_input.c.x | u_input.c.x, ~u_input.c.x, _wgslsmith_clamp_i32(-max(u_input.c.x, u_input.c.x), firstLeadingBit(u_input.c.x), u_input.b), _wgslsmith_add_i32(-_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -28773i)), var_3.x << (18307u % 32u));
}

