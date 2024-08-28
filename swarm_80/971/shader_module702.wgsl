struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, i32(-2147483648), 36057i);

var<private> global1: vec4<f32>;

var<private> global2: u32 = 1u;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~reverseBits(arg_0), u_input.b), ~arg_1.yz | arg_1.wy);
    let var_1 = true;
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, -2458f, arg_3.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 445f, global1.x, arg_3.x)) - vec4<f32>(151f, 1747f, 1537f, 896f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, arg_3.x, arg_3.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1117f, arg_3.x, arg_3.x, global1.x), vec4<f32>(arg_3.x, 2261f, global1.x, global1.x), arg_2)))))));
    global2 = _wgslsmith_mult_u32(abs(~(~arg_0) << (1u % 32u)), ~select(21823u, global3.a, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global1.xwz);
    return ~(~firstTrailingBit(-64449i));
}

fn func_2() -> Struct_1 {
    global2 = 8907u;
    var var_0 = Struct_2(-vec2<i32>(func_3(_wgslsmith_div_u32(global3.a, u_input.b), vec4<u32>(global3.a, 1u, 0u, u_input.d) | vec4<u32>(0u, 4294967295u, u_input.d, u_input.b), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec2<f32>(-755f, -1310f)), -_wgslsmith_add_i32(u_input.c, -68811i)), Struct_1(~(_wgslsmith_div_u32(u_input.d, global3.a) & u_input.b)));
    let var_1 = var_0.b.a;
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(countOneBits(countOneBits(vec4<u32>(var_0.b.a, var_0.b.a, var_0.b.a, global3.a))), ~select(firstTrailingBit(vec4<u32>(1u, 45968u, var_0.b.a, 1u)), vec4<u32>(global3.a, 25704u, u_input.d, var_0.b.a), vec4<bool>(false, false, true, false))));
    return Struct_1(~(~_wgslsmith_mod_u32(0u, var_0.b.a) << (~global3.a % 32u)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-411f, global1.x, _wgslsmith_f_op_f32(ceil(-227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1155f, 489f, 1000f), vec4<f32>(1454f, 982f, 1240f, -283f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -965f, 1098f, 313f), vec4<f32>(-423f, global1.x, global1.x, 805f))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), vec4<f32>(_wgslsmith_f_op_f32(select(2663f, global1.x, true)), 1000f, 1727f, -409f)))), any(vec3<bool>(true, true, true))));
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(global0.x, true);
    let var_1 = i32(-1i) * -2147483647i;
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, global1.x, global1.x)) + vec4<f32>(-878f, 349f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, global1.x, global1.x))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -228f)))), -278f, _wgslsmith_f_op_f32(-global1.x), global1.x);
    let var_2 = -1000f;
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = func_5(Struct_2(vec2<i32>(-1i) * -reverseBits(vec2<i32>(-1i, u_input.c)), func_4(func_2())), max(vec3<i32>(-(~(-6749i)), 34805i, u_input.a), -(~(~vec3<i32>(-2147483647i, 0i, 17229i)))), select(arg_1.yx, ~(min(vec2<u32>(arg_0.a, 77682u), vec2<u32>(34691u, 39098u)) ^ firstTrailingBit(vec2<u32>(1u, arg_1.x))), vec2<bool>(!any(vec3<bool>(true, false, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)))));
    let var_1 = true;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a, _wgslsmith_mod_u32(~(~4294967295u), abs(1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.b.a, 5589u, 14948u, u_input.b), ~vec4<u32>(0u, arg_0.a, 1u, arg_0.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, u_input.d, u_input.d, 1u), ~vec4<u32>(var_0.b.a, u_input.d, var_0.b.a, arg_0.a), vec4<u32>(59711u, arg_1.x, arg_0.a, arg_1.x))), 80557u), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 9635u, 1u, 4294967295u), vec4<u32>(global3.a, arg_1.x, 4294967295u, 1u)) ^ ~(vec4<u32>(1u, 0u, arg_0.a, arg_0.a) >> (vec4<u32>(1u, 4294967295u, arg_1.x, arg_0.a) % vec4<u32>(32u)))));
    let var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.d, 2090u), var_2.x, ~(~14168u), 21103u | _wgslsmith_mod_u32(global3.a, 4294967295u)), ~vec4<u32>(4294967295u, ~(~var_0.b.a), 38131u, 4294967295u));
    let var_4 = var_2;
    return func_5(Struct_2(~var_0.a, var_0.b), -_wgslsmith_sub_vec3_i32(~select(vec3<i32>(global0.x, 2147483647i, -37618i), vec3<i32>(65319i, -45276i, -1i), var_1), max(-vec3<i32>(-23039i, global0.x, 11339i), abs(vec3<i32>(u_input.e.x, u_input.a, var_0.a.x)))), ~((select(var_4.yx, arg_1.yz, false) >> (var_4.xz % vec2<u32>(32u))) >> (max(~var_2.yz, reverseBits(var_4.wy)) % vec2<u32>(32u))));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    let var_0 = select(!select(select(!vec3<bool>(false, arg_0, arg_0), !vec3<bool>(true, true, arg_0), arg_0), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, false), true)), !(arg_0 || false)), !vec3<bool>(true, false, arg_0), !all(vec3<bool>(true & arg_0, all(vec2<bool>(true, arg_0)), arg_0)));
    let var_1 = var_0.x;
    let var_2 = -reverseBits(abs(~reverseBits(vec3<i32>(61733i, 0i, u_input.c))));
    var var_3 = ~arg_2.x;
    var var_4 = ~(~abs(1u)) >> (arg_2.x % 32u);
    return true;
}

fn func_7(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_add_u32(1u, u_input.d));
    var var_1 = _wgslsmith_add_u32(max(u_input.b, abs(~(~u_input.b))), _wgslsmith_clamp_u32(10246u, 1u, var_0.a));
    var var_2 = ~(~(~(~(~vec2<u32>(0u, var_0.a)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(floor(-796f)), -2380f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(-1142f, 1000f))), _wgslsmith_f_op_f32(abs(217f)), -917f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, -1461f, global1.x), vec4<f32>(arg_0, 781f, global1.x, 533f), vec4<bool>(arg_1, arg_2.x, arg_2.x, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1100f, -2651f, 669f))))))), arg_2));
    let var_4 = global0.x;
    return _wgslsmith_sub_vec3_i32(~(-(~vec3<i32>(-1i, global0.x, u_input.e.x) & -vec3<i32>(1i, u_input.c, 27708i))), abs(~countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(u_input.a, -1i, -30126i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)), _wgslsmith_f_op_f32(f32(-1f) * -631f)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1567f, -677f))), global1.x)) - global1.wx);
    global2 = _wgslsmith_sub_u32(4294967295u | ~u_input.b, ~1u);
    global0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-108f - var_0.x), -124f) * var_0.x)), false, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_6(true, func_1(Struct_1(56481u), vec3<u32>(u_input.b, global3.a, u_input.b)), abs(vec3<u32>(u_input.d, 103504u, 26941u)))));
    let var_1 = !(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), any(vec2<bool>(true, true)) | false));
    global3 = func_2();
    var var_2 = Struct_1(_wgslsmith_mult_u32(37547u, abs(max(_wgslsmith_add_u32(0u, 110475u), ~4294967295u))));
    var var_3 = Struct_1(38672u);
    var var_4 = vec4<i32>(-55592i, 20870i, -2147483647i, global0.x << (global3.a % 32u));
    let var_5 = Struct_1(func_1(Struct_1(0u), ~(~abs(vec3<u32>(global3.a, 65217u, var_3.a)))).b.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 100341u, 48947u), ~vec3<u32>(global3.a, u_input.b, var_5.a)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, var_5.a, 7372u), vec3<u32>(4294967295u, u_input.b, 1u))), _wgslsmith_add_u32(~u_input.b, ~445u)), -(~vec2<i32>(var_4.x, 0i | var_4.x)), 62365i);
}

