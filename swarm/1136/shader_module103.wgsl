struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<f32>, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = Struct_3(Struct_1(global0.a.a, global0.c.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, global0.a.c.x, global0.d, global0.c.c.x) + vec4<f32>(164f, 820f, -337f, -691f))) * vec4<f32>(global0.b.c.x, _wgslsmith_f_op_f32(step(global0.c.c.x, global0.c.c.x)), _wgslsmith_f_op_f32(1000f + 307f), _wgslsmith_f_op_f32(-global0.b.c.x)))), Struct_1(~(i32(-1i) * -67638i) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.a, global0.a.a), vec2<i32>(global0.a.a, global0.b.a)), _wgslsmith_div_u32(~u_input.a.x, 77255u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(225f)), -889f, -1604f, _wgslsmith_f_op_f32(global0.a.c.x - 1146f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.a.c))))), Struct_1(firstLeadingBit(~_wgslsmith_add_i32(-45883i, global0.c.a)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.c.b, u_input.a.x, global0.a.b, global0.a.b)), vec4<u32>(u_input.a.x, select(global0.c.b, 46723u, false), ~u_input.a.x, global0.c.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.c.c.x, global0.a.c.x), -2034f, -1132f, global0.b.c.x) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-110f, -872f, -531f, global0.a.c.x), vec4<f32>(451f, 144f, global0.b.c.x, -673f)), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global0.a.b, 12u)])))), _wgslsmith_f_op_f32(-685f * _wgslsmith_f_op_f32(round(-922f))));
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.c.c.zw)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(global0.c.c.yx))))), global0.b.c.zw)));
    global0 = Struct_3(global0.c, global0.b, Struct_1(_wgslsmith_mult_i32(25961i, 203i), 49783u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<f32>(global0.b.c.x, var_0.x, -1558f, global0.d), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1178f)) * global0.d) + _wgslsmith_f_op_f32(-1000f + var_0.x)));
    global0 = Struct_3(global0.c, global0.c, Struct_1(max(_wgslsmith_clamp_i32(global0.c.a, -global0.b.a, ~1i), -2147483647i | abs(global0.a.a)), _wgslsmith_clamp_u32((u_input.a.x | 72659u) >> (~4294967295u % 32u), ~0u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -2598f, global0.c.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2419f, 1369f, -635f, global0.c.c.x)))))), _wgslsmith_f_op_f32(ceil(1222f)));
    var var_1 = _wgslsmith_add_i32(-2147483647i, 1i);
    return 65631u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_clamp_i32(~global0.b.a | _wgslsmith_dot_vec3_i32(vec3<i32>(-18827i, arg_1.a, global0.c.a), vec3<i32>(-38224i, -1i, -41664i)), 1i, -(~1i)), _wgslsmith_mult_u32(~arg_0.b >> (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, u_input.a.x, 18517u), _wgslsmith_mult_vec3_u32(u_input.a, u_input.a))), vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.x))), -774f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))), global0.a, Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, -12352i), vec2<i32>(-1i, arg_0.a), vec2<i32>(global0.c.a, arg_0.a)) & _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global0.b.a), vec2<i32>(20107i, 2147483647i)), -abs(vec2<i32>(global0.b.a, 38256i))), ~_wgslsmith_sub_u32(arg_1.b, 43666u) >> (~max(u_input.a.x, 4294967295u) % 32u), vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(abs(919f)), arg_0.c.x, arg_0.c.x)), 401f);
    global1 = array<vec4<f32>, 12>();
    let var_1 = Struct_3(Struct_1(-50083i, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.b, u_input.a.x, arg_1.b, 1u), vec4<u32>(global0.b.b, var_0.b.b, 67526u, arg_0.b), vec4<u32>(4294967295u, 14060u, var_0.b.b, 0u)) & (vec4<u32>(19417u, 1u, arg_2.x, var_0.a.b) >> (vec4<u32>(4294967295u, var_0.a.b, 9108u, 34587u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(arg_2.x, 18216u, var_0.b.b, 4104u), vec4<u32>(4294967295u, 1u, arg_2.x, arg_2.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(14980u, 7030u, u_input.a.x, 0u), vec4<u32>(1u, global0.c.b, arg_0.b, global0.c.b), vec4<u32>(43540u, global0.c.b, 0u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(18116u, 12u)])), Struct_1(max(arg_1.a, i32(-1i) * -35126i) >> (arg_0.b % 32u), 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, 1114f, -561f, -2521f) * vec4<f32>(arg_0.c.x, -1204f, var_0.b.c.x, arg_3.x))) + _wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_1.c.x, -1231f, -500f) + arg_1.c)))), Struct_1(var_0.b.a ^ var_0.b.a, 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1281f, arg_0.c.x, global0.a.c.x, arg_0.c.x) * vec4<f32>(289f, 139f, arg_0.c.x, var_0.b.c.x))) - vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-1042f - -902f), -571f, 131f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(-745f)), true)) - -1000f))));
    var var_2 = abs(4294967295u);
    let var_3 = -vec2<i32>(var_1.c.a, select(~var_0.b.a, 20320i, true) ^ arg_1.a);
    return -1000f;
}

fn func_2(arg_0: i32) -> Struct_3 {
    return Struct_3(global0.b, global0.c, global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(arg_0, -2710i)), _wgslsmith_mult_u32(global0.b.b, 19853u), vec4<f32>(global0.a.c.x, 1000f, global0.d, -1246f)), Struct_1(abs(2147483647i), func_3(), _wgslsmith_f_op_vec4_f32(global0.a.c + global0.c.c)), u_input.a.xy, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.c.x, 444f, 1656f, global0.a.c.x), _wgslsmith_f_op_vec4_f32(min(global0.a.c, vec4<f32>(-2279f, global0.b.c.x, global0.d, 697f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c.c.x, 1000f, true)) * global0.d)));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    global0 = func_2(~(-26414i));
    let var_0 = func_2(2147483647i);
    var var_1 = Struct_4(true);
    let var_2 = vec4<u32>(3053u, var_0.b.b, 28542u, func_3());
    let var_3 = Struct_4(true);
    return func_2(-54548i).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.c, func_1(abs(u_input.a.x & u_input.a.x), any(vec2<bool>(true, false)) & !all(vec3<bool>(true, true, false))), Struct_1(7431i, global0.a.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(275f, 1470f, global0.b.c.x, global0.d) + _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 12u)])), global0.b.c))), global0.a.c.x);
    let var_0 = Struct_1(global0.c.a, abs(global0.a.b | ~4294967295u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, _wgslsmith_div_f32(global0.d, 977f), _wgslsmith_f_op_f32(global0.b.c.x + 1000f), -135f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.c.c))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c.x, -1552f, 511f, global0.d)), _wgslsmith_f_op_vec4_f32(global0.b.c - global1[_wgslsmith_index_u32(33409u, 12u)]), vec4<bool>(true, true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_mod_i32(~global0.a.a | (global0.a.a | global0.c.a), global0.a.a)).b.b, -abs(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(global0.b.a, 1i, 0i, 37700i), vec4<i32>(global0.c.a, global0.b.a, 4880i, global0.c.a)), -vec4<i32>(-2147483647i, 2147483647i, -1i, global0.a.a), _wgslsmith_mod_vec4_i32(vec4<i32>(26289i, var_0.a, -2147483647i, global0.c.a), vec4<i32>(global0.c.a, -24638i, -1i, 12838i)))), vec3<u32>(_wgslsmith_mod_u32(48911u, ~(~global0.b.b)), global0.a.b, _wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(var_0.b), func_2(0i).a.b), 0u)), ~countOneBits(1i), countOneBits(vec4<i32>(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.a, global0.c.a), vec2<i32>(global0.c.a, 2147483647i))).b.a, _wgslsmith_sub_i32(59882i, global0.a.a), ~_wgslsmith_clamp_i32(global0.c.a, 24402i, var_0.a), -2147483647i >> (1u % 32u))));
}

