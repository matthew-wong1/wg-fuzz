struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-9886i, 1i, -1i, i32(-2147483648), i32(-2147483648), 1i, -1i, 2147483647i, -14102i, i32(-2147483648), 0i, 1i, i32(-2147483648), 0i, 2147483647i, -1i, -48747i, -21585i, 1i, 47088i, 1i, i32(-2147483648), 1i, 1i, -26968i, 33042i, i32(-2147483648), -1i);

var<private> global1: vec2<u32> = vec2<u32>(35132u, 4294967295u);

var<private> global2: vec3<f32> = vec3<f32>(1529f, 603f, -1854f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(499f, _wgslsmith_f_op_f32(f32(-1f) * -2040f)), global2.x, _wgslsmith_f_op_f32(ceil(global2.x))));
    var var_0 = ~vec2<i32>(0i, -1i);
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 1i, _wgslsmith_sub_i32(-65691i, global0[_wgslsmith_index_u32(1u, 28u)])), countOneBits(vec3<i32>(var_0.x, u_input.a.x, 1i)) | ~vec3<i32>(global0[_wgslsmith_index_u32(0u, 28u)], 0i, 9269i), reverseBits(~vec3<i32>(var_0.x, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 28u)]))), max(1u, arg_0), false, true);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_0.b.x;
    let var_1 = Struct_3(reverseBits(~vec2<u32>(4294967295u, select(u_input.b, 13313u, arg_0.e))), ~vec4<u32>(1u, 4294967295u, arg_0.c, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, global1.x), 23374u ^ u_input.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.a * arg_3.b.a) * _wgslsmith_f_op_f32(-arg_0.a))), vec3<i32>(abs(global0[_wgslsmith_index_u32(u_input.b, 28u)]), firstTrailingBit(1i), -31764i) >> (reverseBits(vec3<u32>(arg_0.c, 6559u, u_input.b)) % vec3<u32>(32u)), 1u, !arg_3.b.e, any(vec2<bool>(13195i < arg_3.b.b.x, all(vec4<bool>(true, arg_3.b.e, arg_0.d, arg_3.b.d))))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-647f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(609f + -172f), var_1.c.a)) * _wgslsmith_f_op_f32(f32(-1f) * -2175f))), global2.x, global2.x);
    var var_2 = ~firstTrailingBit(~_wgslsmith_clamp_vec2_u32(var_1.b.xz, vec2<u32>(59465u, var_1.a.x), ~var_1.a));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(-570f)), max(arg_3.b.b, reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.b, vec3<i32>(arg_3.a, arg_3.b.b.x, var_0)), arg_1.www))), 59147u, any(!select(vec3<bool>(arg_0.e, true, var_1.c.e), !vec3<bool>(var_1.c.d, arg_3.c.x, false), true)), !(!all(select(vec2<bool>(var_1.c.d, false), vec2<bool>(arg_2.x, false), vec2<bool>(true, var_1.c.e)))));
    return select(!(!vec4<bool>(var_3.d, any(arg_2.xx), true, true)), arg_2, all(select(select(select(vec4<bool>(false, arg_3.c.x, false, false), arg_3.c, vec4<bool>(arg_2.x, false, arg_2.x, arg_0.d)), arg_2, arg_0.d), vec4<bool>(true, true, true, true), vec4<bool>(var_3.e, !var_3.e, false, select(true, false, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.a)));
    let var_1 = !(!(!select(arg_2.c, vec4<bool>(arg_2.c.x, false, true, arg_0.x), !arg_2.c)));
    let var_2 = vec3<u32>(arg_2.d, 20516u, _wgslsmith_add_u32(~(~global1.x), min(4294967295u, 10232u)));
    let var_3 = Struct_3(~countOneBits(vec2<u32>(~arg_2.e, 4294967295u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19021u, 25198u), abs(vec3<u32>(u_input.b, 39350u, 4294967295u))), _wgslsmith_sub_u32(arg_2.d, ~32958u), _wgslsmith_mod_u32(4294967295u, arg_2.e | 5104u), firstTrailingBit(global1.x >> (global1.x % 32u))), func_1(global1.x >> (~reverseBits(4294967295u) % 32u)));
    global0 = array<i32, 28>();
    return ~16818u >> (~(~abs(global1.x >> (102564u % 32u))) % 32u);
}

fn func_2() -> vec4<u32> {
    let var_0 = select(!vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), any(vec2<bool>(true, false)), true), !vec3<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), any(vec3<bool>(true, false, false))), vec3<bool>(true, true, true))));
    global1 = ~(~vec2<u32>(~(~1u), u_input.b));
    global1 = ~vec2<u32>(1u, func_4(select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), true), var_0, vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f * -248f)), Struct_2(~global0[_wgslsmith_index_u32(47348u, 28u)], func_1(0u), func_3(Struct_1(global2.x, vec3<i32>(global0[_wgslsmith_index_u32(global1.x, 28u)], 2147483647i, u_input.a.x), 45545u, false, false), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)], 2147483647i, -7389i), vec4<bool>(true, var_0.x, var_0.x, false), Struct_2(45654i, Struct_1(159f, vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 28u)], -18482i), global1.x, true, false), vec4<bool>(true, true, true, var_0.x), 20874u, 3572u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, 35745u), vec4<u32>(global1.x, 1u, 0u, 4294967295u)), global1.x)));
    var var_1 = func_1(~firstLeadingBit(abs(_wgslsmith_clamp_u32(u_input.b, u_input.b, global1.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(global2.xx));
    return firstLeadingBit(vec4<u32>(abs(1u), _wgslsmith_add_u32(abs(~var_1.c), ~max(u_input.b, 39989u)), abs(~global1.x >> (11357u % 32u)), _wgslsmith_clamp_u32(u_input.b, 1u, global1.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -887f))), global2.x)), -402f, _wgslsmith_f_op_f32(ceil(-154f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + arg_1.b.a)))), arg_1.b.a, global2.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + 176f);
    var var_2 = -vec4<i32>(2147483647i | _wgslsmith_sub_i32(10574i | arg_1.b.b.x, arg_1.a), 12904i, _wgslsmith_clamp_i32((arg_1.b.b.x | 2147483647i) & -arg_1.a, u_input.a.x, 4887i), min(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 28u)] << (~arg_2.x % 32u)));
    let var_3 = vec3<i32>(var_2.x, arg_0.b.x, arg_1.a);
    var_2 = min(vec4<i32>(arg_1.a, _wgslsmith_dot_vec4_i32(-select(vec4<i32>(-45192i, -2147483647i, arg_0.b.x, 32580i), vec4<i32>(global0[_wgslsmith_index_u32(arg_1.b.c, 28u)], 30666i, arg_0.b.x, global0[_wgslsmith_index_u32(61348u, 28u)]), arg_1.b.d), -vec4<i32>(-1i, 0i, -2147483647i, -63913i)), -1i, arg_0.b.x), vec4<i32>(-14164i, -(i32(-1i) * -var_2.x), select(~22174i, arg_0.b.x << (~4294967295u % 32u), true), (i32(-1i) * -2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), ~arg_2.zxz) % 32u)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 766f;
    let var_1 = func_5(func_1(select(~0u, u_input.b, true)), Struct_2(u_input.a.x, func_1(u_input.b), vec4<bool>(_wgslsmith_f_op_f32(-global2.x) <= _wgslsmith_f_op_f32(ceil(-750f)), (29595u <= global1.x) | true, _wgslsmith_mod_u32(u_input.b, 76354u) != 4294967295u, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), global1.x, ~1u), ~min(~_wgslsmith_div_vec4_u32(vec4<u32>(73135u, u_input.b, u_input.b, 56510u), vec4<u32>(u_input.b, global1.x, 15088u, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 22445u, u_input.b, 2093u), func_2())));
    var var_2 = func_1(var_1.e);
    var var_3 = (func_1(~func_2().x).c | _wgslsmith_div_u32(~(~global1.x), var_1.e | 5652u)) | abs(reverseBits(~(var_1.d << (global1.x % 32u))));
    var_2 = func_5(Struct_1(-417f, min(_wgslsmith_div_vec3_i32(var_2.b, var_2.b) ^ firstLeadingBit(var_2.b), select(_wgslsmith_sub_vec3_i32(var_2.b, vec3<i32>(var_1.b.b.x, var_2.b.x, 4392i)), -var_2.b, var_1.b.e)), max(4294967295u, _wgslsmith_mod_u32(0u, firstLeadingBit(u_input.b))), !(~var_1.d == (5098u & var_2.c)), var_1.c.x), func_5(Struct_1(1000f, vec3<i32>(_wgslsmith_div_i32(var_2.b.x, global0[_wgslsmith_index_u32(66006u, 28u)]), var_2.b.x & var_2.b.x, _wgslsmith_mod_i32(var_2.b.x, var_2.b.x)), countOneBits(12223u), true, true), var_1, vec4<u32>(abs(u_input.b), 1u, _wgslsmith_div_u32(~var_2.c, ~var_2.c), ~(global1.x << (4294967295u % 32u)))), abs(~(~vec4<u32>(5196u, 0u, 4294967295u, 1u)) >> (firstLeadingBit(~vec4<u32>(var_1.d, var_2.c, 1u, var_1.d)) % vec4<u32>(32u)))).b;
    var var_4 = vec3<bool>(var_2.d, true, var_1.b.d);
    var var_5 = func_5(var_1.b, func_5(var_1.b, Struct_2(var_2.b.x, var_1.b, var_1.c, select(min(var_2.c, 386u), 0u, global2.x >= var_2.a), 92222u), _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(4294967295u, var_1.d, 38260u, 4294967295u)), abs(~vec4<u32>(var_2.c, 7811u, 1u, u_input.b)))), vec4<u32>(u_input.b, firstTrailingBit(~abs(1u)), ~5686u, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(415f, 1037f, var_1.b.a) + vec3<f32>(var_5.b.a, 769f, 558f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, 1000f, var_1.b.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2112f, var_2.a, -887f))), vec3<f32>(-704f, -270f, global2.x)))))), ~(-_wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.b.b.x, -16305i, var_1.a, 987i), reverseBits(vec4<i32>(var_2.b.x, var_5.a, 36306i, u_input.a.x)))), -2147483647i);
}

