struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1063f, -855f));

var<private> global2: array<vec4<i32>, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<bool> {
    global2 = array<vec4<i32>, 17>();
    global2 = array<vec4<i32>, 17>();
    global0 = array<Struct_4, 26>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1426f * -204f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.c.a.a.x - arg_0.c.a.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1327f))))), -2147483647i, Struct_3(vec4<bool>(arg_0.d.x != true, false, all(vec3<bool>(false, arg_2.d.x, true)), arg_2.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.c.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1958f), arg_0.d.x)))), arg_0.c, !select(vec3<bool>(false, false, false), vec3<bool>(true, true, arg_0.d.x), false)));
    global0 = array<Struct_4, 26>();
    return vec4<bool>(_wgslsmith_f_op_f32(-arg_0.b) >= 436f, -12747i == select(u_input.b, -firstTrailingBit(-26900i), !(var_0.c.d.x != arg_0.d.x)), any(!select(arg_2.a, !vec4<bool>(arg_0.a.x, arg_0.a.x, var_0.c.a.x, var_0.c.a.x), false)), !var_0.c.d.x);
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = countOneBits(u_input.c.zw);
    global0 = array<Struct_4, 26>();
    let var_1 = Struct_3(select(select(select(vec4<bool>(true, false, false, false), func_3(Struct_3(vec4<bool>(true, true, false, true), -1301f, Struct_2(Struct_1(global1.a)), vec3<bool>(false, true, false)), u_input.c, Struct_3(vec4<bool>(false, true, false, true), -626f, Struct_2(Struct_1(global1.a)), vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, any(vec4<bool>(true, true, true, true))), func_3(Struct_3(vec4<bool>(false, true, true, false), global1.a.x, Struct_2(Struct_1(vec2<f32>(-1751f, global1.a.x))), vec3<bool>(true, false, true)), abs(u_input.c), Struct_3(vec4<bool>(false, false, true, false), -210f, Struct_2(Struct_1(vec2<f32>(-1000f, -522f))), vec3<bool>(false, true, false))).x), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), true), vec4<bool>(true, u_input.b < 2147483647i, arg_0 < -5850i, true)), true), _wgslsmith_f_op_f32(-global1.a.x), Struct_2(Struct_1(global1.a)), vec3<bool>(global1.a.x >= _wgslsmith_f_op_f32(floor(1016f)), true, any(vec4<bool>(false, true, true, true)) || true));
    global1 = var_1.c.a;
    let var_2 = var_1.c.a.a;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2193f, var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b, -719f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(714f)), _wgslsmith_f_op_f32(444f - 549f), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, 1067f, -1369f))))))), vec3<bool>((8574u == _wgslsmith_add_u32(u_input.a, 1u)) | false, (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, u_input.b), vec3<i32>(u_input.b, u_input.b, 0i)) & abs(1i)) > min(~arg_0, i32(-1i) * -14204i), any(vec3<bool>(true, true, true)) | !(u_input.c.x != var_0.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(u_input.a, u_input.a, firstTrailingBit(1u), min(u_input.a ^ 4294967295u, 1u | u_input.a)));
    var var_1 = Struct_4(~(~(u_input.c.x ^ 59718u)), u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, -1157f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.a.x, global1.a.x)))));
    let var_2 = vec4<bool>(true, true, true, func_3(Struct_3(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), _wgslsmith_f_op_f32(sign(var_1.c.x)), Struct_2(Struct_1(global1.a)), select(func_3(Struct_3(vec4<bool>(false, false, true, true), 1975f, Struct_2(Struct_1(vec2<f32>(var_1.c.x, var_1.c.x))), vec3<bool>(true, true, true)), vec4<u32>(var_1.a, u_input.c.x, u_input.c.x, 62264u), Struct_3(vec4<bool>(false, false, false, true), 323f, Struct_2(Struct_1(var_1.c)), vec3<bool>(false, false, true))).yyx, vec3<bool>(true, true, true), all(vec2<bool>(false, true)))), u_input.c, Struct_3(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), _wgslsmith_div_f32(var_1.c.x, 913f), Struct_2(Struct_1(global1.a)), vec3<bool>(all(vec3<bool>(true, false, true)), false, true))).x);
    var var_3 = 0u;
    var var_4 = vec4<i32>(arg_1.x, arg_1.x, -1i, u_input.b) & ~select(select(_wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(var_1.a, 17u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(-52095i, arg_1.x, u_input.b, u_input.b), vec4<i32>(6152i, -1i, 1470i, u_input.b)), select(var_2, var_2, true)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, -24871i, u_input.b), global2[_wgslsmith_index_u32(159209u, 17u)]), _wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(u_input.a, 17u)], vec4<i32>(arg_1.x, 25910i, u_input.b, 4139i))), vec4<bool>(var_2.x, all(var_2), var_2.x, arg_0.x < global1.a.x));
    return vec2<bool>(!var_2.x, 47820u > _wgslsmith_add_u32(~var_0 ^ _wgslsmith_clamp_u32(var_1.b.x, u_input.a, 1u), firstLeadingBit(~u_input.c.x)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5) -> i32 {
    var var_0 = any(select(func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(573f, global1.a.x, 1251f), _wgslsmith_f_op_vec3_f32(func_2(23668i)))), vec3<i32>(_wgslsmith_mult_i32(arg_1.b, u_input.b), 0i, -2147483647i & u_input.b)), !arg_0.d.yz, func_3(Struct_3(arg_1.c.a, global1.a.x, Struct_2(Struct_1(vec2<f32>(arg_0.c.a.a.x, arg_1.a))), !arg_0.d), ~max(vec4<u32>(u_input.a, u_input.a, u_input.a, 5453u), u_input.c), Struct_3(func_3(arg_1.c, vec4<u32>(u_input.c.x, 17307u, u_input.c.x, u_input.c.x), arg_0), _wgslsmith_f_op_f32(-1267f - arg_1.c.b), arg_0.c, vec3<bool>(true, true, false))).xw));
    global0 = array<Struct_4, 26>();
    return countOneBits(arg_1.b) << (select(_wgslsmith_dot_vec4_u32(vec4<u32>(14217u ^ u_input.a, _wgslsmith_add_u32(u_input.a, 1u), ~u_input.c.x, 0u), select(u_input.c >> (u_input.c % vec4<u32>(32u)), ~u_input.c, any(vec3<bool>(arg_0.d.x, arg_0.a.x, arg_1.c.a.x)))), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(0u, 1u, 4294967295u)), max(select(u_input.c.xwz, vec3<u32>(u_input.a, u_input.a, u_input.c.x), arg_1.c.d.x), vec3<u32>(u_input.a, 39895u, 4294967295u))), true) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 26>();
    var var_0 = -_wgslsmith_mod_i32(-func_1(Struct_3(vec4<bool>(false, false, false, true), 1161f, Struct_2(Struct_1(global1.a)), vec3<bool>(true, false, true)), Struct_5(392f, u_input.b, Struct_3(vec4<bool>(true, true, true, true), 1285f, Struct_2(Struct_1(global1.a)), vec3<bool>(true, true, false)))) | abs(func_1(Struct_3(vec4<bool>(false, false, true, false), global1.a.x, Struct_2(Struct_1(global1.a)), vec3<bool>(true, false, false)), Struct_5(379f, u_input.b, Struct_3(vec4<bool>(false, false, true, false), global1.a.x, Struct_2(Struct_1(global1.a)), vec3<bool>(true, true, true))))), u_input.b);
    var var_1 = ~global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(22070u ^ ~u_input.a, 57617u), 17u)];
    let var_2 = !func_3(Struct_3(vec4<bool>(true, true, all(vec2<bool>(true, true)), true), 1000f, Struct_2(Struct_1(vec2<f32>(1551f, global1.a.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), u_input.c, Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)), global1.a.x, Struct_2(Struct_1(global1.a)), vec3<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, false)), true)));
    global2 = array<vec4<i32>, 17>();
    let var_3 = -_wgslsmith_mod_i32(var_1.x, _wgslsmith_div_i32(var_1.x, ~(u_input.b | -23319i)));
    var var_4 = _wgslsmith_add_u32(0u ^ abs(abs(u_input.c.x)), u_input.c.x);
    let var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-323f + global1.a.x), _wgslsmith_f_op_f32(abs(-107f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x - -1043f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * 311f)))), global1.a.x));
    global1 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(4294967295u, 17u)], vec3<i32>(select(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.c.x), 17u)], ~vec4<i32>(28604i, var_3, var_3, var_3)), 2147483647i, _wgslsmith_f_op_f32(trunc(357f)) <= 1f), var_3, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, u_input.b) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), ~vec2<i32>(u_input.b, var_3)), -(vec2<i32>(4592i, var_1.x) ^ var_1.zx))), vec3<f32>(-844f, var_5, var_5), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(var_1.x)).x)) + global1.a.x), _wgslsmith_clamp_i32(~((var_1.x >> (u_input.a % 32u)) << (19249u % 32u)), _wgslsmith_div_i32(i32(-1i) * -17912i, 23553i), 1i));
}

