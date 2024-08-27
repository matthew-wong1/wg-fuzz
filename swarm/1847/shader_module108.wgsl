struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = min(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 24953u, 1130u, 0u) >> (firstTrailingBit(vec4<u32>(44166u, 34391u, 49597u, 29070u)) % vec4<u32>(32u))) << (firstTrailingBit(vec4<u32>(~0u, _wgslsmith_add_u32(20899u, 5328u), 4294967295u, 1u)) % vec4<u32>(32u)), ~vec4<u32>(10064u, firstTrailingBit(~0u), 32216u, 1u));
    global0 = Struct_1(!all(select(select(vec3<bool>(global0.a, arg_0.a, true), vec3<bool>(true, arg_0.a, arg_1.a), false), vec3<bool>(false, true, true), !vec3<bool>(true, arg_1.a, false))));
    global0 = Struct_1(any(vec2<bool>(all(select(vec4<bool>(global0.a, true, arg_0.a, true), vec4<bool>(false, false, global0.a, arg_1.a), vec4<bool>(false, false, arg_1.a, arg_0.a))), all(!vec4<bool>(global0.a, global0.a, true, arg_1.a)))));
    var_0 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(max(~4294967295u, var_0.x), min(_wgslsmith_clamp_u32(var_0.x, 21u, var_0.x), var_0.x), 1u, ~(~var_0.x))), abs(vec4<u32>(_wgslsmith_clamp_u32(~var_0.x, var_0.x, 1u), _wgslsmith_sub_u32(~81205u, 13615u), min(4294967295u, var_0.x), ~var_0.x)));
    return countOneBits(1i & _wgslsmith_mod_i32(abs(u_input.a), max(global1[_wgslsmith_index_u32(var_0.x, 21u)] | u_input.a, 0i)));
}

fn func_2(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = Struct_2(arg_0.d);
    let var_1 = (107198u & _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1u, 67097u, 4294967295u, 1u), vec4<u32>(1u, 0u, 34772u, 4294967295u), true)), ~countOneBits(vec4<u32>(4294967295u, 1u, 65389u, 1u)))) & ~4294967295u;
    global1 = array<i32, 21>();
    let var_2 = func_3(Struct_1(true && (!arg_0.d.a || true)), arg_0.a.a);
    let var_3 = var_1;
    return vec2<u32>(firstTrailingBit(var_1) ^ _wgslsmith_sub_u32(var_3, var_1), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(45713u, var_3), vec2<u32>(1u, var_1)) | vec2<u32>(~4294967295u, var_3), ~vec2<u32>(var_1, ~var_3)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = 848f;
    let var_1 = _wgslsmith_sub_vec3_i32((u_input.c | ~u_input.b.wxz) << (max(min(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x), select(vec3<u32>(48056u, arg_0.x, arg_0.x), vec3<u32>(40603u, arg_0.x, 1u), vec3<bool>(arg_1.a.a.a, true, true))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 76889u, arg_0.x), vec3<u32>(arg_0.x, 4294967295u, 29486u), vec3<u32>(43334u, 4294967295u, 5696u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c.x, arg_1.b.x, u_input.b.x, u_input.b.x), u_input.b), u_input.b) | arg_1.b.x, u_input.a, global1[_wgslsmith_index_u32(0u, 21u)]));
    global1 = array<i32, 21>();
    let var_2 = arg_0.x;
    let var_3 = arg_1.a;
    return arg_1.a.a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -243f), 485f)));
    global0 = func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~(~countOneBits(vec2<u32>(1u, 4294967295u))), vec2<u32>(~1u, ~4294967295u) >> (~func_2(Struct_3(Struct_2(Struct_1(global0.a)), u_input.b.wx, vec4<f32>(1313f, var_0.x, -406f, var_0.x), Struct_1(global0.a))) % vec2<u32>(32u))), Struct_3(Struct_2(Struct_1(global0.a)), max(-firstLeadingBit(u_input.b.wx), -(~vec2<i32>(27519i, u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1436f)), var_0.x, var_0.x, _wgslsmith_f_op_f32(min(-1000f, -1504f)))), Struct_1(false)), any(vec4<bool>(global0.a, global0.a, global0.a, all(vec2<bool>(false, global0.a)))) | (_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, -1251f)) < var_0.x));
    global0 = func_4(firstTrailingBit(vec2<u32>(firstLeadingBit(~9173u), ~(~1u))), Struct_3(Struct_2(Struct_1(all(vec2<bool>(true, global0.a)))), u_input.c.zy ^ countOneBits(-vec2<i32>(-2147483647i, -1i)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(240f)), _wgslsmith_f_op_f32(-var_0.x)), 525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x + 1000f))), Struct_1(max(global1[_wgslsmith_index_u32(50207u, 21u)], -2147483647i) < firstTrailingBit(-8757i))), !global0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1269f, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(sign(-857f)), 1f, _wgslsmith_f_op_f32(-105f - -682f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1000f, 591f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-357f, var_0.x, -264f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(377f, var_0.x, var_0.x, -1126f) + vec4<f32>(-878f, var_0.x, var_0.x, -833f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -172f, var_0.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -329f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1827f, var_0.x, var_0.x)))))));
    return Struct_1(all(vec3<bool>(func_4(vec2<u32>(25641u, 65397u), Struct_3(Struct_2(Struct_1(true)), u_input.b.yw, vec4<f32>(2069f, 504f, var_2.x, -1304f), Struct_1(true)), global0.a).a, global0.a, all(select(vec4<bool>(false, false, global0.a, true), vec4<bool>(global0.a, true, global0.a, global0.a), global0.a)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(), func_4(max(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(1u, 1u)) << (select(vec2<u32>(11851u, 3513u), vec2<u32>(133u, 116651u), vec2<bool>(global0.a, global0.a)) % vec2<u32>(32u))), Struct_3(Struct_2(Struct_1(true)), abs(-vec2<i32>(8889i, 33782i)), vec4<f32>(_wgslsmith_f_op_f32(-461f - 1016f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1121f), -997f), func_4(vec2<u32>(0u, 29074u), Struct_3(Struct_2(Struct_1(false)), vec2<i32>(-1i, global1[_wgslsmith_index_u32(14925u, 21u)]), vec4<f32>(-1000f, -521f, 101f, 1085f), Struct_1(true)), u_input.b.x >= -1i)), global0.a), !(!(!global0.a)), Struct_1(global0.a));
    var var_0 = func_5(Struct_1(!(!any(vec4<bool>(global0.a, false, global0.a, global0.a)))), func_5(func_1(), Struct_1(func_5(Struct_1(true), func_4(vec2<u32>(1u, 2149u), Struct_3(Struct_2(Struct_1(true)), u_input.c.xx, vec4<f32>(1166f, -4164f, -486f, 167f), Struct_1(global0.a)), true), true, Struct_1(global0.a)).a), false, func_1()), true, Struct_1(true));
    global0 = func_4(~vec2<u32>(1u, 1u), Struct_3(Struct_2(Struct_1(func_4(vec2<u32>(0u, 4294967295u), Struct_3(Struct_2(Struct_1(false)), vec2<i32>(-1i, 28199i), vec4<f32>(-572f, -545f, 1000f, -404f), Struct_1(false)), false).a)), u_input.b.wy, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 415f) * 494f), 1149f, _wgslsmith_f_op_f32(-242f + -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-172f)), _wgslsmith_f_op_f32(max(-490f, -281f))))), func_1()), any(select(vec4<bool>(false && global0.a, false, all(vec4<bool>(true, global0.a, var_0.a, global0.a)), global0.a), !select(vec4<bool>(global0.a, false, true, false), vec4<bool>(global0.a, false, false, global0.a), vec4<bool>(global0.a, var_0.a, global0.a, var_0.a)), !(!vec4<bool>(true, global0.a, false, true)))));
    var var_1 = Struct_3(Struct_2(Struct_1(func_1().a)), -u_input.b.ww, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, 1403f, -2268f, 988f) + vec4<f32>(191f, 3009f, 261f, 609f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2488f, -897f, -344f, 792f)))))))), func_4(vec2<u32>(~1u, 1u), Struct_3(Struct_2(func_4(vec2<u32>(13308u, 53757u), Struct_3(Struct_2(Struct_1(var_0.a)), vec2<i32>(-14982i, 35357i), vec4<f32>(1016f, -1000f, 1614f, 874f), Struct_1(global0.a)), true)), ~vec2<i32>(21611i, global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<f32>(_wgslsmith_div_f32(-674f, -512f), _wgslsmith_f_op_f32(-423f * 570f), 901f, -926f), Struct_1(var_0.a)), false));
    global0 = var_1.d;
    var var_2 = _wgslsmith_mod_vec2_i32(var_1.b, min(vec2<i32>(-54936i, u_input.b.x) ^ ~abs(vec2<i32>(global1[_wgslsmith_index_u32(22056u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])), u_input.c.zy ^ var_1.b));
    let var_3 = max(u_input.b.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(4294967295u, 1u, 36017u, 11448u))) % 32u), var_2.x | -2147483647i);
    global1 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) - _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)), _wgslsmith_f_op_f32(max(2007f, _wgslsmith_f_op_f32(var_1.c.x + -1561f))), _wgslsmith_f_op_f32(floor(var_1.c.x)), var_1.c.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -771f, var_1.c.x, -549f), var_1.c)))), ~4294967295u, _wgslsmith_clamp_i32(~select(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(2147483647i, -1i)), _wgslsmith_clamp_i32(var_2.x, var_3, var_3), true), -_wgslsmith_sub_i32(24690i, 55174i), global1[_wgslsmith_index_u32(~(~func_2(Struct_3(Struct_2(var_1.d), var_1.b, vec4<f32>(732f, var_1.c.x, 214f, var_1.c.x), var_1.d)).x), 21u)]));
}

