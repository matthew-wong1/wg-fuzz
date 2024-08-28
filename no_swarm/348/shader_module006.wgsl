struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(2537f, -149f, -1000f);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<f32>(-127f, -1654f), vec4<i32>(-1i, -6674i, 1i, -1i), vec2<i32>(44333i, 1i), -1000f, -195f), Struct_1(vec2<f32>(-1051f, -1046f), vec4<i32>(22552i, -1i, 2147483647i, 8585i), vec2<i32>(-68095i, 4195i), -1000f, -326f), Struct_1(vec2<f32>(-609f, -696f), vec4<i32>(-31571i, 50931i, 396i, -6621i), vec2<i32>(2147483647i, 1i), 1000f, 765f), Struct_1(vec2<f32>(341f, 1000f), vec4<i32>(1i, -91210i, 53718i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), -1000f, 797f), Struct_1(vec2<f32>(926f, 1364f), vec4<i32>(i32(-2147483648), -23076i, 0i, 1i), vec2<i32>(-1i, 55450i), -482f, 2294f), Struct_1(vec2<f32>(-962f, 1031f), vec4<i32>(39267i, 1i, 0i, 52100i), vec2<i32>(2147483647i, 103300i), -866f, 253f), Struct_1(vec2<f32>(-492f, -1000f), vec4<i32>(-44174i, 43863i, -4072i, -1i), vec2<i32>(-1i, -1i), 491f, -919f), Struct_1(vec2<f32>(1195f, -748f), vec4<i32>(2147483647i, i32(-2147483648), 21595i, -53178i), vec2<i32>(42574i, -24995i), -704f, -902f), Struct_1(vec2<f32>(151f, 305f), vec4<i32>(i32(-2147483648), -1i, 40570i, 26464i), vec2<i32>(-9940i, -9015i), 3028f, 1487f), Struct_1(vec2<f32>(265f, -1104f), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 12527i), vec2<i32>(0i, 50646i), -1314f, 189f), Struct_1(vec2<f32>(-253f, 221f), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<i32>(-14998i, 19629i), -568f, -1000f), Struct_1(vec2<f32>(-262f, -1000f), vec4<i32>(26773i, -33202i, 0i, -1i), vec2<i32>(-50452i, 8970i), 298f, -1275f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    let var_0 = select(~countOneBits(abs(vec4<i32>(-2147483647i, -30546i, u_input.c, u_input.b))), vec4<i32>(0i, u_input.c & u_input.b, ~u_input.b, _wgslsmith_add_i32(u_input.c, u_input.c)) >> (vec4<u32>(32556u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 3227u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)), firstLeadingBit(37127u), 24909u << (u_input.a.x % 32u)) % vec4<u32>(32u)), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, all(vec3<bool>(true, true, true)), 9161i >= u_input.c, false), true)) << (reverseBits(select(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 6431u, u_input.a.x, 19278u), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false)))) % vec4<u32>(32u));
    global1 = array<Struct_1, 12>();
    var var_1 = Struct_3(~vec3<u32>(~max(1u, u_input.a.x), u_input.a.x >> (u_input.a.x % 32u), u_input.a.x), select(vec4<bool>(abs(u_input.a.x) <= 1u, false, true, true), !vec4<bool>(true, true, true, select(true, false, false)), !(global0.x >= global0.x)));
    let var_2 = var_1.b.x;
    let var_3 = ~u_input.a.x;
    return var_0;
}

fn func_2() -> vec3<u32> {
    let var_0 = func_3() | abs(~min(-vec4<i32>(-551i, 1i, 20593i, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.b, 1i, u_input.c), vec4<i32>(u_input.b, -2147483647i, u_input.b, -1i))));
    let var_1 = all(vec3<bool>(true, true, true));
    var var_2 = Struct_2(Struct_1(global0.zy, _wgslsmith_mod_vec4_i32(~var_0 & abs(var_0), (var_0 >> (vec4<u32>(4294967295u, u_input.a.x, 62607u, u_input.a.x) % vec4<u32>(32u))) >> (~vec4<u32>(1u, u_input.a.x, 6883u, 1u) % vec4<u32>(32u))), var_0.zx, global0.x, global0.x), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]);
    let var_3 = Struct_1(global0.xz, var_0, (reverseBits(abs(var_2.a.c)) & var_2.a.c) & vec2<i32>(var_2.b.c.x, var_0.x), -1780f, _wgslsmith_f_op_f32(var_2.b.e * 606f));
    var var_4 = Struct_3(vec3<u32>(~u_input.a.x, 42908u, ~(~_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yx))), select(vec4<bool>(!(var_1 & false), true, true && select(true, var_1, false), all(select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, true)))), !vec4<bool>(true, false, any(vec3<bool>(var_1, var_1, var_1)), var_1), vec4<bool>(true, any(select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), vec2<bool>(false, true))), var_1, true)));
    return u_input.a;
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    return Struct_3(~func_2(), vec4<bool>(_wgslsmith_f_op_f32(-600f + _wgslsmith_div_f32(global0.x, 669f)) >= global0.x, true, !(~u_input.a.x == 1u), true));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-113f, arg_1.x, -892f), vec3<f32>(global0.x, 244f, arg_1.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, global0.x, -1762f), vec3<f32>(global0.x, -511f, arg_1.x))))))));
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(12953u, 12u)]);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 163f, arg_1.x), vec3<f32>(455f, global0.x, -544f), arg_0.b.yzw))), vec3<f32>(_wgslsmith_f_op_f32(-387f - global0.x), _wgslsmith_f_op_f32(-global0.x), 493f)))));
    let var_1 = var_0.a;
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 12u)];
    return Struct_1(var_2.a, vec4<i32>(u_input.c, var_0.a.b.x, 72272i, var_0.a.c.x), reverseBits(var_1.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b.a.x, _wgslsmith_f_op_f32(min(global0.x, 1189f)))))))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(922f, global0.x, 2149f), vec3<f32>(747f, 927f, global0.x), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -814f, arg_0.b.d), vec3<f32>(global0.x, global0.x, global0.x))), !func_1().b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 2598f, arg_0.a.e) * vec3<f32>(arg_0.a.e, arg_0.b.a.x, global0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(383f, global0.x, 316f), vec3<f32>(arg_0.b.e, 412f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(778f, arg_0.b.d, -1320f))))));
    let var_0 = !(!func_1().b.zyw);
    let var_1 = Struct_1(global0.xx, ~arg_0.a.b, arg_0.b.c, func_4(Struct_3(u_input.a, arg_2.b), vec2<f32>(arg_0.a.d, _wgslsmith_f_op_f32(floor(1504f))), arg_2, 14898u << (reverseBits(0u) % 32u)).e, 610f);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, arg_0.a.a.x), var_1.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - var_1.a))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.xx)) - vec2<f32>(1f, 1f)))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(f32(-1f) * -945f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.b.e))), _wgslsmith_f_op_f32(533f - _wgslsmith_f_op_f32(-arg_0.b.d))), -456f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u), 12u)], func_4(Struct_3(u_input.a, vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec2_f32(-global0.xy), func_1(), ~u_input.a.x)), abs(min(select(vec4<u32>(36689u, 18678u, u_input.a.x, 0u), vec4<u32>(36461u, 0u, u_input.a.x, u_input.a.x), true), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) | vec4<u32>(36114u, 0u, u_input.a.x, u_input.a.x))), Struct_3(~reverseBits(u_input.a), select(vec4<bool>(true, true, false, false), func_1().b, 26805u > u_input.a.x)))), _wgslsmith_f_op_f32(select(248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1076f, 2100f)) - _wgslsmith_f_op_f32(global0.x * global0.x))), true)), -1018f);
    var var_0 = ~_wgslsmith_clamp_vec4_i32(~max(abs(vec4<i32>(0i, -16132i, -1i, u_input.b)), vec4<i32>(u_input.b, u_input.c, 0i, -20405i) & vec4<i32>(u_input.c, u_input.c, 55320i, 2147483647i)), ~countOneBits(~vec4<i32>(u_input.c, 1i, -3356i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(27615i, u_input.b, _wgslsmith_sub_i32(u_input.b, u_input.b), max(-2147483647i, 1i)), max(abs(vec4<i32>(1i, u_input.b, u_input.c, -28806i)), vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -604f);
    let var_2 = u_input.a;
    var var_3 = global1[_wgslsmith_index_u32(11059u, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(~u_input.a.x, countOneBits(u_input.a.x), max(8464u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, -1000f, -1838f, 893f), vec4<f32>(var_1, var_3.e, 833f, 776f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_1, var_3.a.x, -1953f))) - _wgslsmith_div_vec4_f32(vec4<f32>(334f, global0.x, var_3.d, global0.x), vec4<f32>(global0.x, -1559f, var_1, 249f))))), _wgslsmith_f_op_f32(531f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(var_3.a.x, var_1)), 1265f))));
}

