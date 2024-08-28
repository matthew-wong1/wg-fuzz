struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(13376u, 4294967295u, 0u, 41740u);

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-37036i, 0i), vec2<i32>(2147483647i, -7675i), vec2<i32>(55297i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), -19945i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global2: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-585f, global2.a.d.c) * _wgslsmith_f_op_f32(1260f + global2.a.d.c))), _wgslsmith_f_op_f32(abs(-1375f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1339f, global2.a.d.c, 756f) - vec3<f32>(global2.a.e.x, -689f, -566f))))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.d.c + -1050f), _wgslsmith_f_op_f32(f32(-1f) * -1523f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1015f))), 728f)));
    var var_1 = global2.a;
    var var_2 = Struct_2(true, all(vec3<bool>(all(vec3<bool>(true, var_1.b, global2.a.a)), any(vec3<bool>(true, global2.a.b, false)), true)) && (global2.a.e.x >= var_1.e.x), vec3<i32>(-(~firstLeadingBit(var_1.d.d)), ~(-34433i) ^ min(var_1.d.a.x ^ global2.a.d.d, min(var_1.c.x, global2.c.x)), 28071i), var_1.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.e, vec2<f32>(-1549f, global2.a.d.c)))))));
    global1 = array<vec2<i32>, 6>();
    global1 = array<vec2<i32>, 6>();
    return global0.wxx;
}

fn func_2() -> Struct_1 {
    var var_0 = ~global2.d.yw;
    var var_1 = global2.a.d.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1035f))))) * global2.a.e.x);
    let var_3 = Struct_4(global2.a.d);
    let var_4 = ~func_3();
    return var_3.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_3(global2.a, -_wgslsmith_mult_i32(arg_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, arg_1.b), vec2<i32>(-1i, global2.c.x)) >> (4294967295u % 32u)), ~min(-global2.c, -vec4<i32>(-23469i, global2.a.d.d, global2.a.d.d, 38182i)), global2.d);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.d.c + global2.a.d.c), global2.a.e.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_1.c), -2035f)), 555f), _wgslsmith_f_op_f32(floor(var_0.a.d.c)), 1298f, arg_0.x);
    global0 = global2.d;
    let var_2 = _wgslsmith_mod_i32(var_0.a.d.d, -_wgslsmith_dot_vec3_i32(var_0.a.d.a, vec3<i32>(global2.a.d.d, global2.c.x, -1i) >> (min(var_0.d.zxz, global0.zxw) % vec3<u32>(32u))));
    global2 = var_0;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_4) -> bool {
    var var_0 = Struct_3(Struct_2(true, global2.a.b || true, select(vec3<i32>(40862i, 53427i, 0i), vec3<i32>(1i, arg_0.d, arg_3.a.d), all(vec4<bool>(global2.a.a, arg_1.x, global2.a.a, false))) & max(global2.c.zwy ^ vec3<i32>(arg_3.a.a.x, -8581i, 14779i), ~arg_0.a), Struct_1(arg_3.a.a, 20345i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.c, -165f))), _wgslsmith_add_i32(arg_3.a.d, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(23664u, 6u)], vec2<i32>(arg_0.b, arg_0.b)))), vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - -1172f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1091f), arg_3.a.c)))), arg_0.a.x, vec4<i32>(~arg_3.a.d, -1i, global2.c.x, global2.c.x >> ((u_input.a | min(37178u, 1u)) % 32u)), reverseBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(86511u, global0.x, global0.x, 0u)), _wgslsmith_sub_vec4_u32(global2.d, global2.d), select(~vec4<u32>(4294967295u, 1u, global2.d.x, 0u), vec4<u32>(34062u, 1u, global2.d.x, u_input.a), select(vec4<bool>(false, true, global2.a.a, true), vec4<bool>(arg_1.x, true, global2.a.a, global2.a.a), true)))));
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = Struct_1(vec3<i32>(~(-575i), -117i, arg_0.d), 45757i, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(483f, 201f) - 1224f), -963f), _wgslsmith_f_op_f32(sign(1922f)), true)), arg_3.a.a.x);
    var var_3 = (1i | (~(arg_0.d | -65112i) | -2147483647i)) ^ -(~var_2.d);
    var_0 = Struct_3(global2.a, reverseBits(4342i), global2.c, vec4<u32>(0u, ~global0.x, _wgslsmith_add_u32(global2.d.x | firstTrailingBit(12469u), 0u), global2.d.x));
    return any(select(select(vec4<bool>(arg_1.x, true, global2.a.b, true), vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_1.x, false, arg_1.x)), arg_1, true)) != true;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1260f, global2.a.d.c, global2.a.e.x))))) * vec3<f32>(1161f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.d.c), _wgslsmith_f_op_f32(f32(-1f) * -410f))), global2.a.e.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, global2.a.d.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-440f * -723f)))))));
    global1 = array<vec2<i32>, 6>();
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u) ^ ((~global2.d | firstLeadingBit(global2.d)) | abs(vec4<u32>(global2.d.x, 19032u, 9405u, 0u))), abs(_wgslsmith_clamp_vec4_u32(min(global2.d, global2.d) & (vec4<u32>(global2.d.x, 56676u, u_input.a, 0u) | vec4<u32>(4294967295u, 37993u, 34426u, 0u)), global2.d, _wgslsmith_mod_vec4_u32(vec4<u32>(24255u, global2.d.x, 77865u, global0.x), vec4<u32>(global0.x, 16017u, global0.x, 1u)))));
    global1 = array<vec2<i32>, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(436f * global2.a.e.x), -288f))));
    return Struct_4(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global2.a.e.x, 256f)), _wgslsmith_f_op_vec3_f32(max(var_0, vec3<f32>(var_1.x, arg_0.x, var_0.x))), true))), global2.a.d, all(!vec4<bool>(global2.a.a, arg_1.x, false, arg_1.x))));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.a.e.x), -307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2599f))))), vec3<bool>(func_5(func_4(vec3<f32>(317f, global2.a.d.c, global2.a.e.x), func_2(), true), vec4<bool>(all(vec3<bool>(false, false, global2.a.a)), global2.a.a, any(vec3<bool>(false, true, false)), !global2.a.a), global2.a.e, Struct_4(Struct_1(global2.a.d.a, global2.b, global2.a.d.c, global2.a.c.x))), !any(select(vec3<bool>(global2.a.a, global2.a.b, true), vec3<bool>(false, global2.a.b, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - _wgslsmith_f_op_f32(max(151f, global2.a.e.x))) > 1042f));
    global1 = array<vec2<i32>, 6>();
    var var_1 = Struct_4(global2.a.d);
    let var_2 = ~vec2<u32>(4294967295u, 0u);
    var_1 = var_0;
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(func_1(-930f, 0u), firstTrailingBit(-4399i)), firstTrailingBit(global2.a.d.a.zy) << (vec2<u32>(1919u, 23836u) % vec2<u32>(32u))) & abs(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, -2147483647i), ~39384i)));
    let var_1 = global2.a.a;
    let var_2 = global2.a.a;
    global0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~abs(global2.d), global2.d), global0.x), u_input.a, 4294967295u, global0.x);
    var_0 = ~abs(global2.b);
    global2 = Struct_3(Struct_2(true, true, vec3<i32>(~(-1i), global2.b >> (_wgslsmith_add_u32(u_input.a, global2.d.x) % 32u), select(global2.c.x, abs(-18723i), any(vec2<bool>(false, global2.a.a)))), global2.a.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.e) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a.d.c, -245f), global2.a.e))))), select(42818i, global2.c.x, func_5(Struct_1(-vec3<i32>(0i, global2.a.d.a.x, global2.a.c.x), -19605i, global2.a.e.x, _wgslsmith_div_i32(-1i, global2.b)), !select(vec4<bool>(true, global2.a.b, global2.a.a, true), vec4<bool>(global2.a.b, false, false, false), global2.a.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.a.e.x, global2.a.d.c))), func_6(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(774f, global2.a.e.x, global2.a.d.c))), vec3<bool>(false, false, global2.a.b)))), vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(global2.b), 2147483647i), _wgslsmith_sub_i32(4865i, global2.c.x), 10095i, min(abs(~6088i), global2.a.d.a.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, global2.d.x, 0u, global0.x), ~global2.d));
    var var_3 = func_6(vec3<f32>(_wgslsmith_f_op_f32(floor(global2.a.d.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-996f, global2.a.d.c) - global2.a.d.c) + global2.a.d.c)), vec3<bool>(global2.a.a, !(false | global2.a.a), global2.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.yy, var_3.a.c, global2.c.zzy);
}

