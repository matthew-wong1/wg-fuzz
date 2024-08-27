struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

var<private> global1: array<vec2<u32>, 22>;

var<private> global2: vec3<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    global2 = reverseBits(vec3<i32>(-21118i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, global2.x), select(arg_0.b.b.x, -42990i, arg_0.b.a), global2.x >> (1u % 32u)), vec3<i32>(-1i) * -u_input.b.ywy), u_input.d.x));
    let var_0 = vec2<bool>(false, false);
    let var_1 = Struct_3(!vec4<bool>(arg_0.b.a, true, !any(vec2<bool>(var_0.x, false)), !arg_0.a.x | arg_0.a.x), arg_0.b);
    global2 = u_input.b.zzx;
    let var_2 = ~1u;
    return _wgslsmith_mult_vec3_i32(u_input.b.wwx, -(~(~u_input.b.wwx))) >> (~(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(23187u, var_2, var_2), vec3<u32>(var_2, 4294967295u, var_2)), reverseBits(vec3<u32>(71753u, var_2, 1u)))) % vec3<u32>(32u));
}

fn func_2() -> Struct_3 {
    global2 = vec3<i32>(u_input.c.x, -27304i, _wgslsmith_div_i32(-12734i, 1i));
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(-u_input.b & _wgslsmith_add_vec4_i32(vec4<i32>(57303i, -1i, -1i, -3988i), u_input.b), vec4<i32>(2528i, _wgslsmith_sub_i32(u_input.b.x, -8992i), ~(-41513i), u_input.a.x)), u_input.b);
    let var_2 = var_1.x;
    global2 = _wgslsmith_clamp_vec3_i32(func_3(Struct_3(vec4<bool>(false, true, true, true), Struct_1(true, ~vec2<i32>(32057i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -1516f), -848f))), ~vec3<i32>(max(global2.x ^ u_input.a.x, min(-54143i, var_2)), firstLeadingBit(max(global2.x, var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(55010i, 48128i), vec2<i32>(-2147483647i, 0i))), _wgslsmith_mult_vec3_i32(u_input.b.www, u_input.b.zyw >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 23512u, 4294967295u), vec3<u32>(48388u, 0u, 0u), vec3<u32>(47713u, 4294967295u, 0u)) % vec3<u32>(32u))));
    return Struct_3(!select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, any(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(true, select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, var_2), global2.yy) | vec2<i32>(-1i, -49672i), u_input.a, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1316f, _wgslsmith_f_op_f32(f32(-1f) * -1265f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-943f, 674f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2732f)), -446f), 274f)));
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    global1 = array<vec2<u32>, 22>();
    global1 = array<vec2<u32>, 22>();
    let var_0 = ~0u;
    let var_1 = arg_0;
    global2 = _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_0.b.b.x, 22603i), _wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.b.wzw), select(_wgslsmith_mod_vec3_i32(~vec3<i32>(6619i, 0i, global2.x), ~vec3<i32>(0i, -2862i, global2.x)), ~(-u_input.b.zzw), select(var_1.a.wzz, var_1.a.zwy, var_1.b.a))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(arg_0.b.b.x, _wgslsmith_clamp_i32(i32(-1i) * -1i, 2147483647i, -2147483647i)), -1i, func_2().b.b.x);
    var var_1 = func_2();
    global0 = array<vec3<f32>, 10>();
    var var_2 = max(vec4<u32>(1u, ~(~0u), firstTrailingBit(_wgslsmith_mod_u32(1u, 88789u)), 1u), ~abs(vec4<u32>(55874u, 4294967295u, 1u, 44668u))) ^ firstLeadingBit(select(~reverseBits(vec4<u32>(0u, 22042u, 0u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(false, var_1.b.a, true, arg_0.b.a)));
    global0 = array<vec3<f32>, 10>();
    return !(!func_4(func_2()).xz);
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(Struct_3(func_4(func_2()), func_2().b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(-375f, -2856f), func_2().b.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1665f, -128f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-218f, -949f)) - 441f))), 2147483647i, func_2().a.xx);
    var var_1 = vec2<f32>(-640f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(505f, -1666f)) + _wgslsmith_f_op_f32(min(1000f, 387f))))))));
    global2 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, -1i), -47428i ^ u_input.a.x), reverseBits(global2.x), global2.x);
    var var_2 = !(!vec3<bool>(true, !(253f >= var_1.x), true));
    var var_3 = func_2().b;
    return func_2().b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = 0u << (~abs(abs(arg_3 << (83677u % 32u))) % 32u);
    let var_1 = Struct_1(true, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.d)))), arg_1.b.d)) + arg_0.c), _wgslsmith_f_op_f32(-119f + _wgslsmith_f_op_f32(-arg_0.c)));
    var var_2 = Struct_3(vec4<bool>(arg_0.a, !arg_0.a != true, all(select(vec2<bool>(arg_1.b.a, false), vec2<bool>(var_1.a, true), true == var_1.a)), func_2().a.x), arg_0);
    global2 = vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(var_2.b.b.x, ~(-6313i), global2.x));
    var var_3 = (reverseBits(vec3<u32>(4294967295u, 26318u, arg_3) << (~vec3<u32>(var_0, var_0, arg_3) % vec3<u32>(32u))) & abs(vec3<u32>(max(var_0, 0u), 0u, _wgslsmith_mod_u32(23249u, 1u)))) << (~vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(38082u, var_0, arg_3, arg_3), vec4<u32>(var_0, var_0, arg_3, arg_3) << (vec4<u32>(27414u, var_0, var_0, 0u) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(34421u, arg_3, 1u, arg_3), firstLeadingBit(vec4<u32>(var_0, 4294967295u, arg_3, 0u)))) % vec3<u32>(32u));
    return Struct_2(func_1(), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().d - var_1.c) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f + 1146f))))));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(~vec4<u32>(~1u, abs(13018u), abs(~4294967295u), 5770u), func_6(func_1(), func_2(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-750f - 975f))) <= _wgslsmith_f_op_f32(f32(-1f) * -1926f), ~1u), Struct_1(func_4(func_2()).x, ~(~global2.zz), 1000f, -440f), Struct_1(true, vec2<i32>(0i, -1i), -967f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = Struct_2(func_1(), !(-292f == _wgslsmith_f_op_f32(var_0.c * 702f)) && any(!(!vec2<bool>(var_0.a, true))), _wgslsmith_f_op_f32(-var_0.c));
    var var_2 = vec3<u32>(min(countOneBits(1u), abs(~(~1u))), abs(4294967295u), 6996u);
    let var_3 = true;
    var var_4 = _wgslsmith_dot_vec2_i32(-func_7(~abs(vec4<u32>(var_2.x, var_2.x, 67685u, 4294967295u)), Struct_2(func_2().b, select(var_1.b, var_1.a.a, var_1.b), _wgslsmith_f_op_f32(max(var_1.a.c, var_1.c))), func_2().b, func_2().b).b, u_input.d << (~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(0u, 13198u, var_2.x)), 99013u) % vec2<u32>(32u)));
    let var_5 = 629f;
    global0 = array<vec3<f32>, 10>();
    let var_6 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1u, var_2.x), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2.x, var_2.x), vec3<u32>(0u, 1u, var_2.x))), min(~var_2.x, min(0u, var_2.x)), var_2.x, abs(~var_2.x)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(10609u, 0u, var_2.x, 59687u)), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) | vec4<u32>(var_2.x, 0u, var_2.x, var_2.x)) ^ (~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) ^ max(vec4<u32>(var_2.x, var_2.x, 10751u, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)))), ~vec4<u32>(37970u, countOneBits(24698u), _wgslsmith_add_u32(~3095u, ~var_2.x), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec4<i32>(-34570i, 62399i, func_1().b.x, -14764i), var_6.x, var_5, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c, var_0.d), vec2<f32>(var_0.d, var_0.d))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-124f, -1231f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1920f, var_0.c))), !vec2<bool>(var_0.a, var_3)))))));
}

