struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: Struct_1 = Struct_1(-29244i, 1u, 1944f, vec2<u32>(5062u, 98232u), i32(-2147483648));

var<private> global2: vec3<bool>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec2<f32> {
    global2 = !(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, global2.x, true), vec3<bool>(false, false, global2.x), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, true, global2.x))), global2.x));
    global0 = array<i32, 13>();
    let var_0 = Struct_2(global2.xy);
    var var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(select(-1214f, 764f, global2.x)), _wgslsmith_f_op_f32(arg_1.x + global1.c), arg_1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, arg_1.x, -572f, global1.c)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -1731f) + _wgslsmith_f_op_f32(global1.c * -752f))), -1353f, _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(1336f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.c)))))));
    return var_2.zy;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(1915i, arg_2.a, 2147483647i, arg_2.a)), u_input.a & vec4<i32>(1i, -arg_0.a, 8049i, -1i)));
    var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), global0[_wgslsmith_index_u32(global1.d.x >> (arg_2.d.x % 32u), 13u)], abs(max(~2147483647i, _wgslsmith_add_i32(arg_2.a, 2147483647i))), 50273i) << ((abs(~min(vec4<u32>(4294967295u, 16710u, global1.b, global1.d.x), vec4<u32>(arg_2.d.x, 4294967295u, 1u, 0u))) >> (firstLeadingBit(firstLeadingBit(vec4<u32>(arg_2.b, arg_2.d.x, 51775u, arg_0.d.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(3132u, 13u)], countOneBits(global0[_wgslsmith_index_u32(4294967295u, 13u)]), 13672i)), var_0.xwx), 0u ^ firstTrailingBit(~global1.b), arg_0.c, _wgslsmith_mod_vec2_u32(~(~(~global1.d)), abs(arg_2.d)), ~var_0.x);
    var var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d.x, ~(~4294967295u), var_1.d.x), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.b, arg_2.b, var_1.d.x), arg_0.d.x), abs(~27282u), 28685u)), vec3<u32>(_wgslsmith_mult_u32(~4294967295u, 29665u), abs(firstLeadingBit(arg_2.d.x)), arg_0.d.x) >> (((abs(vec3<u32>(arg_0.d.x, var_1.d.x, 1u)) | _wgslsmith_div_vec3_u32(vec3<u32>(global1.b, var_1.d.x, 86610u), vec3<u32>(4612u, arg_0.b, 1u))) | reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_1.d.x, global1.d.x), vec3<u32>(1583u, arg_2.d.x, 22032u)))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(26400u, 84048u, var_1.b, 33633u), vec4<u32>(arg_0.b, 18966u, 0u, 4294967295u), global2.x) & vec4<u32>(var_1.b, arg_2.b, arg_2.d.x, arg_0.d.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, 4294967295u, 1u, 22371u), vec4<u32>(102399u, arg_2.b, 66726u, 38283u)), !select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, true, true, false), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.d.x, var_2.x, var_2.x, arg_0.d.x), vec4<u32>(4294967295u, var_1.b, var_2.x, arg_0.b))), max(82970u, global1.b));
    return vec3<u32>(reverseBits(42389u), ~arg_0.d.x, _wgslsmith_mod_u32(arg_0.b, ~46085u));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> vec3<u32> {
    global1 = Struct_1(-1i, abs(_wgslsmith_add_u32(max(_wgslsmith_mult_u32(global1.d.x, global1.b), min(4294967295u, arg_1.x)), global1.b)), _wgslsmith_f_op_f32(exp2(global1.c)), min(_wgslsmith_mod_vec2_u32(~global1.d, arg_1), _wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(69778u, arg_1.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1, global1.d), ~global1.b))), i32(-1i) * -1i);
    var var_0 = (vec2<i32>(-1i) * -u_input.a.yx) >> (_wgslsmith_clamp_vec2_u32(arg_1, _wgslsmith_sub_vec2_u32(~arg_1, firstTrailingBit(arg_1 | global1.d)), arg_1) % vec2<u32>(32u));
    var_0 = _wgslsmith_add_vec2_i32(-vec2<i32>(select(var_0.x, u_input.a.x, false), u_input.a.x), u_input.b.xw);
    let var_1 = _wgslsmith_f_op_f32(-1565f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f))));
    var var_2 = global1.c;
    return firstLeadingBit(func_4(Struct_1(global1.e ^ 2147483647i, abs(arg_1.x), _wgslsmith_f_op_f32(min(var_1, global1.c)), global1.d, 37127i), _wgslsmith_f_op_vec2_f32(func_3(arg_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1719f, var_1, global1.c) * vec3<f32>(var_1, -1000f, global1.c)))), Struct_1(-1i, global1.b, var_1, _wgslsmith_div_vec2_u32(vec2<u32>(44179u, 26935u), arg_1), ~(-64954i)))) & _wgslsmith_clamp_vec3_u32(min(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.d.x, arg_1.x, 4099u), vec3<u32>(global1.b, global1.b, 32772u))), vec3<u32>(~global1.b, arg_1.x, func_4(Struct_1(-1i, global1.b, -1041f, arg_1, var_0.x), vec2<f32>(var_1, global1.c), Struct_1(-2147483647i, arg_1.x, 1812f, vec2<u32>(arg_1.x, 134828u), 2147483647i)).x)), vec3<u32>(~select(global1.b, arg_1.x, false), 4294967295u, _wgslsmith_mod_u32(arg_1.x, reverseBits(6876u))), _wgslsmith_div_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(24050u, arg_1.x, global1.b), vec3<u32>(arg_1.x, arg_1.x, 2946u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.b, 0u, arg_1.x), vec3<u32>(34463u, arg_1.x, 47749u))), select(vec3<u32>(1u, 48852u, global1.d.x), ~vec3<u32>(global1.d.x, 0u, global1.b), !vec3<bool>(arg_0, true, false))));
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c)));
    let var_1 = Struct_1(select(_wgslsmith_dot_vec4_i32(-u_input.b, u_input.a), -_wgslsmith_dot_vec4_i32(u_input.a | vec4<i32>(18176i, global1.a, -22181i, global0[_wgslsmith_index_u32(global1.b, 13u)]), vec4<i32>(-12698i, global0[_wgslsmith_index_u32(4294967295u, 13u)], -1i, 39626i)), false), arg_0.x, 1472f, _wgslsmith_add_vec2_u32(~(~(global1.d ^ vec2<u32>(0u, arg_0.x))), _wgslsmith_div_vec2_u32(vec2<u32>(min(31285u, 0u), min(49433u, arg_0.x)), firstLeadingBit(vec2<u32>(77208u, 21898u)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.b, abs(vec4<i32>(17675i, global0[_wgslsmith_index_u32(global1.b, 13u)], 3151i, -25046i))), u_input.b));
    global2 = vec3<bool>(!any(select(!vec4<bool>(global2.x, false, false, global2.x), !vec4<bool>(false, false, global2.x, false), vec4<bool>(global2.x, false, false, true))), true, true);
    let var_2 = _wgslsmith_div_u32(0u, abs(min(select(_wgslsmith_mod_u32(var_1.d.x, 4294967295u), global1.d.x, true), 4294967295u)));
    let var_3 = u_input.b.zxy;
    return var_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    global0 = array<i32, 13>();
    let var_0 = 10050i;
    var var_1 = Struct_2(global2.zz);
    let var_2 = var_1.a.x;
    let var_3 = func_5(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.d.x, global1.d.x, arg_1.b), arg_0) >> (~(func_2(true, arg_0.yy) << (abs(vec3<u32>(65360u, arg_1.b, arg_1.d.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_2(vec2<bool>(true, true));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(global2.yz);
    let var_1 = _wgslsmith_add_u32(max(~_wgslsmith_mod_u32(46042u, ~arg_0.b), global1.d.x), _wgslsmith_mult_u32(arg_0.b, global1.d.x));
    let var_2 = Struct_2(arg_3.a);
    let var_3 = global1.d;
    global0 = array<i32, 13>();
    return func_2(any(arg_1), ~abs(_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_0.d), abs(arg_0.d)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.e, _wgslsmith_clamp_u32(~global1.d.x, firstTrailingBit(~(~global1.b)), global1.b), 678f, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(77493u, 0u), vec2<u32>(global1.d.x, 1u)), vec2<u32>(func_6(Struct_1(global0[_wgslsmith_index_u32(global1.b, 13u)], 4294967295u, global1.c, vec2<u32>(0u, 65801u), global1.a), !vec3<bool>(true, global2.x, true), 2169f < global1.c, func_1(vec3<u32>(20832u, global1.b, global1.b), Struct_1(-6839i, global1.b, global1.c, global1.d, -1i), global1.d, global1.e)), ~(~global1.d.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global1.d.x), global1.d << (global1.d % vec2<u32>(32u))), global1.d.x)), global1.a >> (global1.b % 32u));
    global1 = func_5(~(~abs(reverseBits(vec3<u32>(60426u, 0u, 20061u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c)))), 43288u, vec3<i32>(reverseBits(-11441i) ^ ~global1.e, 0i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global1.b, 13u)] & global1.a, 1i) << (4294967295u % 32u)));
}

