struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1742f;

var<private> global1: array<bool, 12>;

var<private> global2: Struct_1 = Struct_1(-34045i, 29881i);

var<private> global3: array<Struct_3, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2240f, _wgslsmith_f_op_f32(f32(-1f) * -1813f))) + _wgslsmith_f_op_f32(f32(-1f) * -562f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1793f) + _wgslsmith_f_op_f32(sign(-437f)))))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(703f, _wgslsmith_f_op_f32(step(-468f, _wgslsmith_f_op_f32(f32(-1f) * -1217f))))), -402f));
    var var_1 = abs(u_input.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -799f)) - _wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(2134f)), _wgslsmith_f_op_f32(-var_0.x)))), -275f, _wgslsmith_f_op_f32(931f - _wgslsmith_f_op_f32(var_0.x * 1000f)), var_0.x));
    global2 = Struct_1(~(~(_wgslsmith_mod_i32(-14162i, global2.a) >> (~arg_0 % 32u))), max(17398i, ~(-_wgslsmith_clamp_i32(-15111i, u_input.c.x, -41061i))));
    var_1 = u_input.d;
    return -1282f;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-528f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.x, Struct_4(u_input.c.x, 38135u), 4294967295u)))) - -501f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1717f - 224f) + _wgslsmith_f_op_f32(max(-1255f, 213f))), -582f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(575f, 370f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1132f, -1128f), vec2<f32>(-1000f, 464f)), true))))));
    let var_2 = max(vec4<u32>(max(reverseBits(~10867u), firstTrailingBit(105880u)), u_input.a.x, u_input.d.x, abs(4294967295u)), ~vec4<u32>(arg_0.x, 1u, _wgslsmith_dot_vec3_u32(min(arg_0.zyx, vec3<u32>(27994u, arg_0.x, 4294967295u)), ~vec3<u32>(u_input.d.x, 1u, 14094u)), _wgslsmith_dot_vec3_u32(arg_0.zzx << (u_input.d % vec3<u32>(32u)), u_input.d)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-858f)), _wgslsmith_f_op_f32(503f * -267f))))) + vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, -250f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, 283f), _wgslsmith_f_op_f32(-var_1.x)))))));
    global1 = array<bool, 12>();
    return 5067i;
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    global1 = array<bool, 12>();
    var var_0 = Struct_4(firstTrailingBit((-global2.a | _wgslsmith_clamp_i32(-2147483647i, u_input.c.x, -28509i)) ^ u_input.c.x), u_input.d.x & _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 16537u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 67018u, 4294967295u, 0u), vec4<u32>(u_input.a.x, u_input.d.x, 58935u, 50213u)), max(21383u, u_input.a.x)), vec4<u32>(u_input.a.x, 4294967295u, u_input.d.x, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)));
    var_0 = Struct_4(-49409i, _wgslsmith_div_u32(~1u, abs(1u)));
    var var_1 = arg_0.wwx;
    global2 = Struct_1(max(arg_0.x, arg_0.x), -1i);
    return Struct_2(vec2<u32>(u_input.a.x, 100249u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_div_f32(-1035f, 1201f), -1318f, _wgslsmith_f_op_f32(max(563f, -1141f))))), Struct_1(-14598i, global2.b), Struct_1(-2147483647i, arg_0.x), ~1i >> (_wgslsmith_mult_u32(0u, ~var_0.b ^ abs(59687u)) % 32u));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(480f - arg_1), arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1f)), arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(443f, -608f, -133f, -254f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1379f, -783f, 152f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, arg_1, 161f, 188f) - vec4<f32>(arg_1, -103f, -1000f, arg_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 784f, arg_1))), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 12u)], global1[_wgslsmith_index_u32(u_input.d.x, 12u)], false)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1131f, arg_1, arg_1, -1484f) + vec4<f32>(arg_1, 662f, arg_1, 2271f)) * vec4<f32>(arg_1, arg_1, arg_1, arg_1))))), u_input.c, global1[_wgslsmith_index_u32(0u, 12u)]);
    let var_2 = func_4(vec4<i32>(max(var_1.c.x, u_input.c.x), func_2(vec4<u32>(u_input.a.x, 0u, _wgslsmith_div_u32(32290u, arg_0), _wgslsmith_sub_u32(arg_3.b, 41135u))), -1i, (_wgslsmith_dot_vec4_i32(vec4<i32>(15811i, -1i, global2.a, -32716i), vec4<i32>(arg_3.a, -62369i, arg_3.a, arg_3.a)) << (arg_0 % 32u)) | _wgslsmith_div_i32(-42609i, u_input.b)));
    var var_3 = select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, 4294967295u), 12u)], true, !(!any(select(vec2<bool>(var_1.d, false), vec2<bool>(global1[_wgslsmith_index_u32(var_2.a.x, 12u)], var_1.d), vec2<bool>(var_1.d, var_1.d)))));
    global3 = array<Struct_3, 4>();
    return var_1;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_5) -> Struct_5 {
    global2 = func_4(vec4<i32>(2147483647i, -(~0i), ~(-70403i), arg_2)).d;
    global2 = func_4(vec4<i32>(min(-27948i, ~(23302i | arg_3.c.x)), arg_2, -10202i, max(~_wgslsmith_div_i32(-10946i, arg_2), _wgslsmith_clamp_i32(arg_2, u_input.c.x >> (u_input.d.x % 32u), func_4(vec4<i32>(-1i, arg_3.c.x, arg_2, 49661i)).e)))).c;
    let var_0 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(func_4(-vec4<i32>(u_input.b, arg_3.c.x, -2147483647i, u_input.c.x)).c.b, arg_3.c.x, _wgslsmith_add_i32(countOneBits(-587i), arg_2), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.c.x, global2.a, -1i), -vec4<i32>(3913i, -47564i, 16976i, global2.a))), vec4<i32>(countOneBits(2147483647i) >> (_wgslsmith_div_u32(89952u, u_input.d.x) % 32u), _wgslsmith_mod_i32(36576i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_3.c.x, u_input.c.x), vec3<i32>(u_input.b, arg_3.c.x, -3023i))), abs(arg_3.c.x), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c.x, -21960i, arg_3.c.x), vec3<i32>(arg_2, -2147483647i, 9633i)), _wgslsmith_add_vec3_i32(vec3<i32>(global2.a, 1i, global2.a), vec3<i32>(-11009i, 0i, 1038i))))), min(u_input.d.x, firstTrailingBit(~_wgslsmith_mult_u32(u_input.d.x, u_input.a.x))));
    global1 = array<bool, 12>();
    global2 = Struct_1(arg_2, _wgslsmith_div_i32(0i >> (_wgslsmith_clamp_u32(var_0.b, u_input.d.x, u_input.a.x) % 32u), -1i));
    return arg_3;
}

fn func_6(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_sub_vec2_u32(abs(select(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 3384u)), vec2<u32>(40075u, u_input.d.x), select(vec2<bool>(true, true), vec2<bool>(arg_0.d, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<bool>(arg_0.d, true)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.d.x, 0u), abs(u_input.d.x)), reverseBits(vec2<u32>(u_input.d.x, 1u)), vec2<u32>(u_input.d.x, 21062u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1901f, _wgslsmith_f_op_f32(arg_0.a + arg_0.b.x), arg_0.a, 260f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1164f, -300f, -696f, -1199f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(302f, 283f, arg_0.b.x, arg_0.a))))) + arg_0.b), func_4(-max(select(vec4<i32>(-1i, u_input.b, u_input.c.x, 31520i), vec4<i32>(u_input.b, 39976i, u_input.c.x, global2.a), global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<i32>(1i, 0i, 49016i, u_input.b))).c, Struct_1(16636i, ~global2.a), -7212i);
    global2 = var_0.c;
    return _wgslsmith_div_vec4_f32(arg_0.b, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(528f, _wgslsmith_f_op_vec4_f32(func_6(func_5(any(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(726u, 12u)])), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d.x, 12u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 12u)])), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 12u)]), vec3<bool>(true, true, true)), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, 0i), vec3<i32>(u_input.c.x, 9566i, global2.a))), func_1(1u, 659f, _wgslsmith_clamp_vec2_u32(u_input.d.yx, u_input.d.zz, u_input.d.zy), Struct_4(global2.a, u_input.a.x))))), u_input.c, all(vec2<bool>(false, true)));
    var var_1 = true;
    global3 = array<Struct_3, 4>();
    var var_2 = _wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(12380i, u_input.b, global2.b), vec3<i32>(u_input.b, -35961i, var_0.c.x)), vec3<i32>(var_0.c.x, -11442i, -35210i))), -vec3<i32>(var_0.c.x, _wgslsmith_mod_i32(13006i, var_0.c.x), ~u_input.c.x)) | countOneBits(-(vec3<i32>(-1i) * -vec3<i32>(var_0.c.x, -2147483647i, global2.b)));
    global1 = array<bool, 12>();
    var_1 = (any(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 12u)])) && true) != var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 6647u, 25146u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.d.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.d.x, 0u)) << (select(min(vec4<u32>(4294967295u, 79393u, u_input.a.x, 4294967295u), vec4<u32>(0u, 1u, u_input.d.x, u_input.a.x)), ~vec4<u32>(34150u, u_input.d.x, u_input.d.x, u_input.a.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 12u)]) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(57664u, 0u, 4294967295u)), ~u_input.a.x, func_4(vec4<i32>(var_0.c.x, var_0.c.x, u_input.c.x, 2147483647i)).a.x & u_input.a.x, u_input.d.x) % vec4<u32>(32u)), -(~var_0.c));
}

