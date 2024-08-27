struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(4294967295u, 4294967295u, 44966u, 1u), vec4<u32>(53382u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 7914u, 41229u, 30103u), vec4<u32>(32545u, 4294967295u, 20624u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(19396u, 1u, 393u, 0u), vec4<u32>(46760u, 27676u, 12117u, 45057u), vec4<u32>(15759u, 64933u, 1u, 38103u), vec4<u32>(1u, 1618u, 4294967295u, 1u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 13633u, 0u, 19127u), vec4<u32>(4294967295u, 35550u, 0u, 4294967295u), vec4<u32>(0u, 80402u, 0u, 4294967295u), vec4<u32>(1u, 0u, 1u, 21317u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 29402u, 8838u, 33037u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(1u, 54236u, 28580u, 0u), vec4<u32>(1u, 36093u, 4294967295u, 55054u), vec4<u32>(117625u, 48800u, 20825u, 102654u), vec4<u32>(1u, 108471u, 17894u, 1u), vec4<u32>(10273u, 87898u, 1u, 37859u), vec4<u32>(4294967295u, 1u, 0u, 17200u), vec4<u32>(117713u, 46794u, 1u, 25587u), vec4<u32>(0u, 72180u, 1u, 0u), vec4<u32>(35641u, 23906u, 1726u, 4294967295u));

var<private> global1: array<f32, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = all(vec4<bool>(true, !all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, true)), !(!(arg_1.c >= -1019f))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-739f)) - arg_1.c), _wgslsmith_f_op_f32(825f * _wgslsmith_f_op_f32(ceil(-1483f))), _wgslsmith_sub_u32(select(4294967295u, _wgslsmith_sub_u32(~1u, ~4294967295u), var_0), (u_input.a << ((arg_1.a.x ^ 0u) % 32u)) >> (~4294967295u % 32u)), ~(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 1u, 0u, 22510u), global0[_wgslsmith_index_u32(0u, 26u)], false), ~vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, u_input.a)) ^ global0[_wgslsmith_index_u32(1u, 26u)]));
    var_1 = Struct_3(210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f * arg_0)), 1u, vec4<u32>(u_input.a, u_input.a, ~_wgslsmith_add_u32(0u, var_1.c) & var_1.d.x, arg_1.a.x));
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(548f, -1343f, _wgslsmith_div_i32(arg_1.b, 0i) <= max(u_input.b, arg_1.b))), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(arg_1.c)))))), _wgslsmith_f_op_f32(781f + arg_1.c), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 5u)] + _wgslsmith_f_op_f32(f32(-1f) * -613f)));
}

fn func_2(arg_0: bool) -> u32 {
    global1 = array<f32, 5>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, _wgslsmith_f_op_f32(f32(-1f) * -1582f), 1761f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(37862u, 5u)], 156f, 1684f)) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 5u)], -1375f, global1[_wgslsmith_index_u32(u_input.a, 5u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(81307u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)])) * _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 5u)], Struct_2(vec2<u32>(u_input.a, 4294967295u), u_input.b, global1[_wgslsmith_index_u32(1u, 5u)]))))))))));
    var var_2 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a | u_input.a, u_input.a), firstLeadingBit(countOneBits(vec2<u32>(u_input.a, 97424u)))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(590f)), 1f, ~firstTrailingBit(~(~24693u)), abs(~global0[_wgslsmith_index_u32(u_input.a >> (max(u_input.a, 31500u) % 32u), 26u)]));
    return u_input.a;
}

fn func_1() -> vec2<u32> {
    let var_0 = ~vec2<u32>(1u, 4294967295u >> ((_wgslsmith_mod_u32(u_input.a, u_input.a) >> (abs(u_input.a) % 32u)) % 32u));
    global1 = array<f32, 5>();
    let var_1 = vec2<bool>(true, true);
    global1 = array<f32, 5>();
    var var_2 = _wgslsmith_div_u32(~var_0.x ^ abs(var_0.x), ~countOneBits(~0u));
    return vec2<u32>(~func_2(var_1.x), ~(~_wgslsmith_clamp_u32(~1u, 1u, 1u)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    global0 = array<vec4<u32>, 26>();
    var var_0 = any(vec2<bool>(all(vec3<bool>(true, true, true)) || true, any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true))));
    let var_1 = arg_1;
    let var_2 = Struct_3(arg_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f + 1138f) * -1377f))))), _wgslsmith_sub_u32(~countOneBits(0u), _wgslsmith_clamp_u32(~50665u, min(arg_0, arg_0), 1u)) ^ ~var_1.a.x, vec4<u32>((16900u >> (func_2(false) % 32u)) & arg_0, 4294967295u, ~var_1.a.x, _wgslsmith_sub_u32(arg_2.a, 0u)));
    global1 = array<f32, 5>();
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<f32, 5>();
    global0 = array<vec4<u32>, 26>();
    var var_0 = Struct_2(~arg_0.d.ww, -abs(u_input.b | _wgslsmith_div_i32(arg_2.x, -15694i)), _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(5717u, 5u)])) - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.c, 2300u), reverseBits(arg_0.d.x)), 5u)]), all(vec4<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, arg_1, false, false)), true != arg_1, true)))));
    let var_1 = vec3<bool>(arg_1, true == !any(vec2<bool>(true, true)), arg_1);
    let var_2 = func_4(4294967295u, Struct_2(vec2<u32>(47995u, _wgslsmith_sub_u32(var_0.a.x, u_input.a) << (~15100u % 32u)), ~(-29426i), arg_0.a), Struct_1(abs(~min(1u, 0u))));
    return Struct_2(vec2<u32>(_wgslsmith_div_u32(u_input.a, ~16277u ^ _wgslsmith_dot_vec2_u32(arg_0.d.xw, vec2<u32>(15433u, 43955u))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.d.x, var_2.c) | vec3<u32>(var_2.d.x, 4294967295u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.d.x, var_2.d.x, arg_0.d.x), var_2.d.xzy)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 57021u), var_2.d.wy) % 32u)), 1i, func_4(~56940u, Struct_2(vec2<u32>(abs(2190u), var_2.c), 53983i, var_2.a), Struct_1(4294967295u)).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(u_input.a, Struct_2(func_1(), reverseBits(u_input.b), 710f), Struct_1(u_input.a)), true, ~((-vec2<i32>(1143i, u_input.b) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) & min(-vec2<i32>(u_input.b, 0i), countOneBits(vec2<i32>(u_input.b, 9364i)))), _wgslsmith_add_vec3_i32(abs(reverseBits(max(vec3<i32>(0i, 1i, u_input.b), vec3<i32>(13152i, -1i, u_input.b)))), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 15007i, u_input.b), vec3<i32>(-47689i, 1i, u_input.b)) >> (~(~vec3<u32>(10804u, u_input.a, 1u)) % vec3<u32>(32u))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1123f), -400f, var_0.c);
    var var_2 = _wgslsmith_mult_u32(u_input.a, u_input.a) >> (max(~var_0.a.x, 4294967295u) % 32u);
    var var_3 = _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_sub_u32(57120u, 1811u), 1u, _wgslsmith_clamp_u32(24706u, u_input.a, 6882u), u_input.a), ~(global0[_wgslsmith_index_u32(var_0.a.x, 26u)] << (global0[_wgslsmith_index_u32(u_input.a, 26u)] % vec4<u32>(32u))), false), _wgslsmith_add_vec4_u32(vec4<u32>(6208u, u_input.a, var_0.a.x, abs(2597u)), vec4<u32>(u_input.a, ~u_input.a, func_1().x, _wgslsmith_sub_u32(1u, u_input.a)))));
    var_0 = Struct_2(vec2<u32>(~48728u, countOneBits(func_5(Struct_3(-1371f, -1007f, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 26u)]), false, select(vec2<i32>(-15374i, var_0.b), vec2<i32>(71045i, var_0.b), vec2<bool>(true, false)), ~vec3<i32>(-72867i, u_input.b, var_0.b)).a.x)), 29386i, global1[_wgslsmith_index_u32(14351u, 5u)]);
    let var_4 = _wgslsmith_mult_i32(select(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-14751i, u_input.b, -28872i), vec3<i32>(-40556i, u_input.b, u_input.b))) ^ -1i, 0i & u_input.b, (var_0.c != -950f) || (-var_0.b == ~0i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, ~u_input.b), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(-3496i, u_input.b & 2147483647i, (i32(-1i) * -7410i) >> (0u % 32u), _wgslsmith_div_i32(~var_4, 41668i)), vec4<i32>(var_0.b, u_input.b, ~(-1i), func_5(Struct_3(var_1.x, var_0.c, u_input.a, vec4<u32>(1u, var_0.a.x, 0u, 4294967295u)), false, vec2<i32>(u_input.b, var_4), vec3<i32>(-1i, 14632i, 10787i)).b) | vec4<i32>(var_0.b, _wgslsmith_div_i32(u_input.b, var_4), -var_4, func_5(Struct_3(945f, 504f, 1u, vec4<u32>(4294967295u, 0u, 6209u, 75049u)), false, vec2<i32>(u_input.b, -1i), vec3<i32>(u_input.b, var_4, -1i)).b)), ~reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-19126i, 2147483647i, u_input.b), vec3<i32>(-13686i, 19728i, var_4)), ~1i)), 64540u, 4294967295u);
}

