struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 86660u);

var<private> global1: Struct_3;

var<private> global2: array<bool, 12> = array<bool, 12>(true, true, true, true, false, true, false, true, true, true, true, true);

var<private> global3: i32;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> i32 {
    let var_0 = select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(global0.x, 1u), ~1u), 12u)] & ((u_input.b | u_input.b) < abs(u_input.b)), global1.b.a, global1.c.e.a), !(!arg_0), true);
    let var_1 = Struct_3(global4.c.c, Struct_1(all(vec4<bool>(true, global0.x < 40040u, var_0.x, !var_0.x)), _wgslsmith_f_op_vec2_f32(-global1.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1713f * _wgslsmith_f_op_f32(-100f + global4.a.b.x))), ~abs(select(vec2<u32>(global0.x, 85278u), global1.a.d, true))), Struct_2(_wgslsmith_f_op_vec3_f32(-global4.c.a), select(global4.c.b, arg_0, var_0.x), global4.a, vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 0u) >> (max(u_input.a.x, 53976u) % 32u), u_input.a.x, ~_wgslsmith_mult_u32(1u, 39463u), 41916u), Struct_1(false, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(global4.c.e.b)))), _wgslsmith_f_op_f32(-1434f + global1.b.b.x), reverseBits(global4.d >> (vec2<u32>(global1.b.d.x, global0.x) % vec2<u32>(32u))))), select(select(global4.a.d, u_input.a.zz, arg_0.x), global1.c.e.d << (((vec2<u32>(global1.a.d.x, u_input.a.x) | global1.d) ^ abs(global1.b.d)) % vec2<u32>(32u)), select(select(arg_0.zz, vec2<bool>(true, true), select(true, global4.a.a, true)), vec2<bool>(true, !global4.a.a), select(!var_0.xy, select(global1.c.b.zz, arg_0.yx, vec2<bool>(false, false)), !global4.b.a))));
    global0 = select(global4.c.c.d, vec2<u32>(~(~_wgslsmith_mult_u32(global1.b.d.x, u_input.a.x)), ~abs(global0.x)), !(!global4.c.b.yx));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.a))), !(!var_0), Struct_1(!(!all(global4.c.b)), vec2<f32>(-1180f, _wgslsmith_f_op_f32(sign(var_1.b.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.c * global1.a.b.x) * _wgslsmith_f_op_f32(floor(global1.a.c))) - global1.a.c), vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~(1u >> (global1.b.d.x % 32u)))), ~var_1.c.d, var_1.a);
    var var_3 = -892f;
    return 1i;
}

fn func_4(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_3(global4.b, Struct_1(!(global1.c.c.a || true), _wgslsmith_f_op_vec2_f32(-global1.c.c.b), -1173f, u_input.a.zx), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-351f + _wgslsmith_f_op_f32(max(192f, -462f))), _wgslsmith_f_op_f32(-1282f - -260f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.a.b.x)))), !(!(!vec3<bool>(global4.c.c.a, global1.b.a, global1.c.e.a))), Struct_1(global1.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1022f, 367f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1239f, global1.b.c)))), _wgslsmith_f_op_f32(f32(-1f) * -130f), ~vec2<u32>(global1.d.x, global0.x)), global1.c.d, global1.a), global4.d);
    var var_1 = var_0.c.c.a;
    global4 = var_0;
    global3 = _wgslsmith_sub_i32(abs(1098i), u_input.b);
    global1 = var_0;
    return global1.c.a;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global2 = array<bool, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(firstTrailingBit(10568i), func_3(!vec3<bool>(global1.b.a, true, global2[_wgslsmith_index_u32(44219u, 12u)]), u_input.b), i32(-1i) * -2147483647i, firstTrailingBit(~(i32(-1i) * -1207i)))));
    global4 = Struct_3(global4.b, global4.b, Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.a.c, var_0.x, _wgslsmith_div_f32(var_0.x, 1648f)))), select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)], false), select(vec3<bool>(false, global1.c.e.a, false), global4.c.b, !global1.c.b), vec3<bool>(-19879i > arg_0.x, !global2[_wgslsmith_index_u32(15759u, 12u)], false)), global4.b, select(global4.c.d >> (vec4<u32>(u_input.a.x, 0u, 4294967295u, global4.c.d.x) % vec4<u32>(32u)), abs(global4.c.d) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global4.b.d.x, global1.a.d.x, global1.c.e.d.x), global1.c.d, global1.c.d) % vec4<u32>(32u)), true), global4.a), vec2<u32>(~23779u, max(~u_input.a.x, max(28124u, 4294967295u)) << (global4.d.x % 32u)));
    let var_1 = global1.c.b.xz;
    var var_2 = vec2<i32>(max(1i, -(~(-10504i))), -1i);
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(~(~4294967295u), 65255u, u_input.a.x), ~_wgslsmith_clamp_vec3_u32(global1.c.d.zyy, u_input.a, ~global1.c.d.yyz));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = vec3<f32>(-711f, global4.b.b.x, -1000f);
    global3 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(max(global4.a.c, 239f));
    global3 = u_input.b;
    global2 = array<bool, 12>();
    return Struct_2(global4.c.a, vec3<bool>(false, true, false), global4.b, vec4<u32>(~max(arg_1, global4.b.d.x) | (arg_1 & func_2(vec3<i32>(arg_2, u_input.b, u_input.b))), global1.c.e.d.x, 59007u, global4.b.d.x), global4.b);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1062f, global1.c.e.b.x))));
    var var_1 = global4.c;
    let var_2 = !select(vec4<bool>(global4.c.b.x, global2[_wgslsmith_index_u32(abs(global1.c.e.d.x), 12u)], true, func_1(func_1(vec2<bool>(arg_1.e.a, var_1.e.a), 4294967295u, u_input.b).b.xy, 1u, -2147483647i).c.a), vec4<bool>((2147483647i == arg_0.x) || true, !(true || global2[_wgslsmith_index_u32(var_1.e.d.x, 12u)]), true, !(!global2[_wgslsmith_index_u32(var_1.d.x, 12u)])), var_1.b.x);
    var var_3 = global1.c.c;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e.c, 1015f, -1000f) + vec3<f32>(1200f, var_0.x, 1293f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, var_3.b.x, var_0.x) + vec3<f32>(1000f, 1065f, -723f))), vec3<f32>(_wgslsmith_f_op_f32(global1.c.e.b.x * -1636f), global1.a.b.x, arg_1.e.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -253f), -1071f) * vec3<f32>(-107f, -1533f, 1000f))), select(select(select(global1.c.b, func_1(global4.c.b.zz, global0.x, u_input.b).b, vec3<bool>(false, var_1.c.a, global2[_wgslsmith_index_u32(91126u, 12u)])), vec3<bool>(!global2[_wgslsmith_index_u32(22590u, 12u)], any(vec3<bool>(false, global4.b.a, var_3.a)), all(vec4<bool>(false, var_2.x, false, var_3.a))), select(!global1.c.b, !arg_1.b, true)), select(vec3<bool>(19780u < global0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12154u, var_3.d.x), vec2<u32>(39126u, 50724u)), 12u)], true || global1.b.a), vec3<bool>(false, false, var_3.a), true), vec3<bool>(false, !var_2.x, global4.c.b.x)), Struct_1(global2[_wgslsmith_index_u32(func_2(vec3<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(-51293i, u_input.b, -1i), -925i)), 12u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.e.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, global4.b.c) + vec2<f32>(global4.b.c, var_1.e.b.x))) * var_1.c.b), _wgslsmith_f_op_f32(ceil(-1000f)), vec2<u32>(0u, _wgslsmith_mod_u32(~var_1.e.d.x, _wgslsmith_dot_vec3_u32(u_input.a, global4.c.d.zzx)))), _wgslsmith_div_vec4_u32(vec4<u32>(~firstTrailingBit(var_1.e.d.x), ~1u, arg_1.d.x & var_3.d.x, min(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, global0.x, 4294967295u)), ~49037u)), select(vec4<u32>(0u, 13795u, 0u, arg_1.e.d.x), reverseBits(vec4<u32>(6222u, 0u, 0u, var_3.d.x)), !(global2[_wgslsmith_index_u32(1u, 12u)] & true))), global1.c.e);
    return arg_1.b;
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.c.a.x, 113f, global1.b.c), global1.c.a)))) * _wgslsmith_f_op_vec3_f32(select(global1.c.a, global4.c.a, global1.c.b)))));
    let var_1 = false;
    let var_2 = func_1(!vec2<bool>(select(true, true, true), true), firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(-31136i, _wgslsmith_dot_vec2_i32(~vec2<i32>(82543i, u_input.b), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(47652i, u_input.b), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(1i, u_input.b))))).c;
    global0 = countOneBits(arg_0.zx);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, -734f, -628f) - _wgslsmith_f_op_vec3_f32(global1.c.a + vec3<f32>(1146f, global4.b.b.x, global1.b.b.x))) * vec3<f32>(623f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(global1.c.c.b.x)))) * vec3<f32>(global4.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2798f + 315f) + -459f), _wgslsmith_f_op_f32(-597f + var_0.x))), select(func_5(-(vec4<i32>(u_input.b, u_input.b, 8221i, 8869i) >> (vec4<u32>(1u, 77914u, arg_0.x, 0u) % vec4<u32>(32u))), global1.c), arg_1, (firstTrailingBit(u_input.b) > abs(u_input.b)) || true), global4.c.c, global1.c.d, func_1(select(!(!arg_1.zy), func_1(func_5(vec4<i32>(-17112i, u_input.b, u_input.b, u_input.b), global4.c).zy, 1u, _wgslsmith_dot_vec3_i32(vec3<i32>(58985i, -46025i, u_input.b), vec3<i32>(1i, 2581i, u_input.b))).b.yz, global1.c.b.xx), (var_2.d.x << (select(64383u, 48495u, var_1) % 32u)) >> ((_wgslsmith_mult_u32(0u, 49867u) | _wgslsmith_div_u32(arg_0.x, 56324u)) % 32u), (-2147483647i & u_input.b) ^ u_input.b).c);
    return _wgslsmith_clamp_u32(reverseBits(_wgslsmith_sub_u32(116344u, _wgslsmith_add_u32(u_input.a.x, global4.a.d.x))) & _wgslsmith_div_u32(~(arg_2 ^ 1433u), 4294967295u), _wgslsmith_div_u32(_wgslsmith_add_u32(global4.d.x | global0.x, firstLeadingBit(global0.x)), arg_0.x), reverseBits(_wgslsmith_dot_vec3_u32(~global4.c.d.zwx, ~(vec3<u32>(4294967295u, global1.b.d.x, 1u) << (global1.c.d.wyy % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    let var_0 = func_6(~(~vec4<u32>(global0.x << (global0.x % 32u), ~global1.d.x, 1u, ~global0.x)), !select(global4.c.b, func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(-2522i, u_input.b, 34956i, u_input.b), vec4<i32>(0i, -19705i, -81337i, 1i)), func_1(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)]), 1u, -80606i)), any(func_1(vec2<bool>(global2[_wgslsmith_index_u32(global4.d.x, 12u)], global1.b.a), 16980u, 2147483647i).b.xz)), ~4294967295u);
    let var_1 = Struct_3(global1.b, global4.c.c, func_1(!vec2<bool>(58755u == u_input.a.x, 18533i >= u_input.b), global1.a.d.x & firstTrailingBit(_wgslsmith_dot_vec2_u32(global1.c.c.d, vec2<u32>(global0.x, global4.c.d.x))), 0i | (u_input.b | 80452i)), vec2<u32>(_wgslsmith_add_u32(min(global1.c.e.d.x, 1u), global4.a.d.x), firstLeadingBit(firstTrailingBit(var_0)) | (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24175u), vec2<u32>(var_0, 0u)) | ~global1.c.c.d.x)));
    var var_2 = global2[_wgslsmith_index_u32(37955u, 12u)];
    global0 = ~var_1.c.e.d;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(930f, 1000f, -466f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.c.a)))), any(func_5(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), Struct_2(var_1.c.a, global1.c.b, var_1.c.e, vec4<u32>(4294967295u, 24118u, u_input.a.x, var_0), Struct_1(global2[_wgslsmith_index_u32(30067u, 12u)], vec2<f32>(-545f, var_1.c.a.x), -108f, global4.b.d))).xx) && true)), -(~vec3<i32>(~9705i, u_input.b, 26286i)), -622f);
}

