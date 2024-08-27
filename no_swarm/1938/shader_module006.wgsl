struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_mod_i32(abs(select(global0.a.b, _wgslsmith_sub_i32(global0.a.b, arg_1.a.b), false)), arg_1.a.b), arg_1.a.a);
    var_0 = Struct_3(0i, select(select(global0.a.a, !(!vec4<bool>(true, arg_1.a.c, false, var_0.b.x)), all(arg_1.a.a.xzw)), !arg_1.a.a, !arg_1.a.a));
    let var_1 = Struct_3(firstTrailingBit(arg_1.a.b), vec4<bool>(true, true, !all(global0.a.a.wzw), true & (all(vec4<bool>(false, false, false, false)) != any(global0.a.a.xw))));
    var var_2 = ~abs(_wgslsmith_add_vec3_u32(~(vec3<u32>(32562u, global0.a.d, 0u) ^ vec3<u32>(4294967295u, arg_1.a.d, 30458u)), select(~vec3<u32>(global0.a.d, global0.a.d, 4294967295u), ~vec3<u32>(77370u, arg_1.a.d, u_input.b), arg_0.a.a.xxw)));
    global0 = Struct_2(Struct_1(vec4<bool>(arg_1.a.a.x, any(select(var_0.b.zy, var_1.b.zx, arg_1.a.a.wz)), var_0.b.x, true), ~firstLeadingBit(1i), true, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.a.d, arg_1.a.d) >> (~4789u % 32u), var_2.x)), _wgslsmith_f_op_f32(exp2(arg_1.b)));
    return (select(_wgslsmith_mod_vec2_i32(vec2<i32>(-26286i, -6694i), vec2<i32>(-2147483647i, 2147483647i)) & (vec2<i32>(-36254i, -1i) >> (var_2.zy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -6527i), vec2<i32>(global0.a.b, 34441i)), ~vec2<i32>(global0.a.b, -2147483647i), max(vec2<i32>(-19376i, 22839i), vec2<i32>(9011i, 25314i))), var_1.b.yx) >> (vec2<u32>(arg_0.a.d, 1u) % vec2<u32>(32u))) << ((var_2.zx | var_2.yz) % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = -1000f;
    var var_1 = ~vec2<i32>(1i, ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, arg_1.a)), func_3(Struct_2(global0.a, global0.b), Struct_2(Struct_1(global0.a.a, -15822i, arg_1.b.x, u_input.b), 1222f), global0.b)));
    var var_2 = Struct_2(Struct_1(vec4<bool>(!(!arg_1.b.x), select(all(arg_1.b.wz), !arg_1.b.x, false != arg_1.b.x), !(!global0.a.a.x), !arg_0), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(arg_1.a, global0.a.b)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 125041u), vec2<u32>(global0.a.d, u_input.b)) % vec2<u32>(32u)), countOneBits(vec2<i32>(1i, 0i))), any(vec2<bool>(arg_1.b.x, true)), ~(~global0.a.d | ~global0.a.d)), 627f);
    global0 = Struct_2(global0.a, var_2.b);
    var_2 = Struct_2(Struct_1(select(select(vec4<bool>(arg_0, false, arg_0, true), !vec4<bool>(global0.a.c, global0.a.c, arg_0, false), !vec4<bool>(arg_1.b.x, var_2.a.a.x, arg_0, var_2.a.a.x)), !var_2.a.a, _wgslsmith_f_op_f32(exp2(global0.b)) >= var_2.b), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-11339i, var_1.x, 1i), vec3<i32>(-24210i, var_1.x, global0.a.b))), arg_0, firstTrailingBit(min(global0.a.d, 22859u))), _wgslsmith_div_f32(740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))));
    return firstLeadingBit(vec4<i32>(1i, arg_1.a, global0.a.b, min(select(-52689i ^ global0.a.b, global0.a.b, any(var_2.a.a.zxw)), abs(var_1.x))));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = vec3<f32>(-1719f, -310f, global0.b);
    var var_1 = ~1u;
    let var_2 = _wgslsmith_div_vec4_i32(select(vec4<i32>(max(arg_1, arg_1 ^ 1i), max(_wgslsmith_add_i32(-2147483647i, arg_1), global0.a.b), ~0i, 1i), -(~func_2(global0.a.c, Struct_3(39576i, global0.a.a))), true), reverseBits(abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, -28817i, 1i, -2147483647i), vec4<i32>(global0.a.b, 7659i, arg_1, -1i), firstLeadingBit(vec4<i32>(-35442i, global0.a.b, arg_1, 0i))))));
    var var_3 = global0.a;
    let var_4 = vec4<bool>(true, (any(!var_3.a.zz) || true) || !(!(-1i <= var_2.x)), false, global0.b != -791f);
    return Struct_1(var_3.a, global0.a.b, true, ~_wgslsmith_mult_u32(28235u | u_input.a, arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(426f, arg_0.b)), -524f))), global0.b, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(1000f, arg_1, arg_2.c))))));
    var var_1 = arg_0.a;
    let var_2 = -select(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.b, global0.a.b, -32356i, var_1.b), vec4<i32>(arg_2.b, arg_2.b, -36855i, -1i), vec4<i32>(global0.a.b, -18499i, 9195i, arg_3.b)) << (select(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], global0.a.a.x) % vec4<u32>(32u)), max(~vec4<i32>(var_1.b, var_1.b, 23463i, -1i), vec4<i32>(39055i, global0.a.b, arg_3.b, 18679i))), (abs(vec4<i32>(-90397i, -1i, arg_0.a.b, var_1.b)) << (~vec4<u32>(54468u, 0u, var_1.d, arg_0.a.d) % vec4<u32>(32u))) & vec4<i32>(~0i, var_1.b, 1i, arg_0.a.b), false);
    let var_3 = global0.b;
    var var_4 = Struct_2(func_1(31870u, _wgslsmith_mult_i32((20000i & global0.a.b) ^ _wgslsmith_dot_vec3_i32(var_2.zxz, var_2.yyx), ~2147483647i)), _wgslsmith_f_op_f32(step(-1345f, _wgslsmith_f_op_f32(sign(arg_0.b)))));
    return -17767i | arg_2.b;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec2<bool> {
    global0 = Struct_2(func_1(_wgslsmith_add_u32(u_input.a, ~u_input.b >> (_wgslsmith_div_u32(1u, u_input.b) % 32u)), ~(-2147483647i)), 1f);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(137f, global0.b, global0.b) - vec3<f32>(-1000f, global0.b, 730f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, global0.b, 1000f)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -837f))))));
    global1 = array<vec4<u32>, 22>();
    let var_1 = _wgslsmith_f_op_f32(1489f + var_0.x);
    global2 = arg_0.b.x;
    return arg_0.b.zw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0.a.a.x, ~(~min(u_input.a, u_input.b)) <= ~(~48033u));
    var_0 = func_5(Struct_3(-func_4(Struct_2(Struct_1(vec4<bool>(false, global0.a.a.x, global0.a.c, global0.a.a.x), global0.a.b, true, 35065u), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -1656f), func_1(1u, -2147483647i), Struct_1(vec4<bool>(var_0.x, var_0.x, global0.a.a.x, var_0.x), 46755i, global0.a.c, u_input.b)), !vec4<bool>(global0.a.c || true, global0.b <= global0.b, false, false || global0.a.c)), abs(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, global0.a.b), 1i), 10174i, abs(i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.b, global0.a.b), vec2<i32>(-16114i, global0.a.b)), global0.a.b))), global0.a.a.zx);
    let var_1 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2049f, var_1.b, var_1.b), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -137f, global0.b) + vec3<f32>(var_1.b, var_1.b, var_1.b)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1583f, global0.b)), -981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) - _wgslsmith_f_op_f32(1000f * 2137f)))));
    let var_3 = _wgslsmith_f_op_f32(sign(800f));
    let var_4 = global0.a.a.x;
    var var_5 = Struct_3(global0.a.b, vec4<bool>(!(var_2.x != _wgslsmith_f_op_f32(1415f + 632f)), global0.a.c, !var_1.a.c, all(!(!vec2<bool>(var_0.x, false)))));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~_wgslsmith_div_vec2_i32(-firstLeadingBit(vec2<i32>(global0.a.b, var_1.a.b)), ~vec2<i32>(-47128i, global0.a.b) | vec2<i32>(-2147483647i, global0.a.b)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(64191u, 4294967295u, 1u) | select(vec3<u32>(1u, 43484u, 58395u), vec3<u32>(global0.a.d, 54136u, 4294967295u), true), ~vec3<u32>(u_input.a, 94057u, 12166u) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.d, 3140u, 43942u), vec3<u32>(var_1.a.d, 32993u, global0.a.d))));
}

