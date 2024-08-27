struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32 = -190f;

var<private> global2: vec3<f32> = vec3<f32>(-1947f, 981f, -1289f);

var<private> global3: u32 = 9646u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global3 = 44260u;
    global1 = -1334f;
    global0 = !vec4<bool>(true, true, any(select(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), !global0.xy, true)), true);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1734f)) - 486f), 949f)));
    return 1u;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = 9281i;
    let var_1 = Struct_2(select(!(!arg_0.b.a), select(!vec3<bool>(arg_2.a, false, arg_2.a), vec3<bool>(all(vec4<bool>(global0.x, arg_0.b.a.x, arg_2.a, global0.x)), 3354i <= var_0, arg_0.b.a.x), !(arg_2.a & arg_2.a)), false));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1110f))), -186f) - _wgslsmith_f_op_f32(floor(-1004f))), -1345f, true));
    var var_3 = arg_0.b;
    global1 = _wgslsmith_f_op_f32(-global2.x);
    return !select(!select(vec2<bool>(false, false), select(arg_0.b.a.zz, vec2<bool>(arg_2.a, arg_0.b.a.x), var_1.a.yx), all(arg_0.b.a.xx)), !vec2<bool>(true, var_1.a.x), vec2<bool>(true, true));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = func_4(Struct_3(firstLeadingBit(reverseBits(u_input.a.x >> (73900u % 32u))), Struct_2(select(select(global0.xxw, vec3<bool>(true, arg_2, false), true), arg_1.a, any(vec4<bool>(arg_2, true, true, arg_2))))), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.b, countOneBits(-61630i) << (arg_0 % 32u)), u_input.b, ~u_input.a.x), Struct_1(arg_2, vec4<u32>(19225u, ~countOneBits(4294967295u), func_3(vec3<i32>(-6013i, u_input.b, 24309i)), arg_0), func_3(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 11214i), vec3<i32>(u_input.a.x, -12170i, 1i), vec3<i32>(36854i, 2147483647i, u_input.b))), 1149f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)), _wgslsmith_f_op_f32(1000f - -1000f), _wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(109f, -626f, global2.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, 132f, -201f), vec3<f32>(global2.x, global2.x, 771f), global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1351f, global2.x, -1435f), vec3<f32>(global2.x, global2.x, -855f)) + vec3<f32>(921f, global2.x, global2.x))), select(arg_1.a, vec3<bool>(true, any(vec2<bool>(true, true)), !arg_2), select(!arg_1.a, select(vec3<bool>(arg_2, false, global0.x), vec3<bool>(false, true, global0.x), arg_1.a), vec3<bool>(true, false, global0.x))))));
    var var_1 = ~(-(~min(0i, u_input.a.x | 3415i)));
    var var_2 = select(arg_1.a, global0.wzx, arg_2);
    var_2 = arg_1.a;
    global3 = 100858u;
    return Struct_2(vec3<bool>(true, arg_2, true));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_i32(2147483647i, -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(41400i, arg_3.d), u_input.a)), ~_wgslsmith_mod_i32(18523i | u_input.a.x, ~arg_3.d)) << (~arg_3.c.x % 32u);
    global3 = arg_3.c.x ^ arg_1.x;
    var var_1 = ~(~(~_wgslsmith_sub_u32(49362u, 7430u))) >> (arg_1.x % 32u);
    global3 = arg_3.c.x;
    let var_2 = arg_1.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, _wgslsmith_f_op_f32(1130f * -1404f), _wgslsmith_f_op_f32(f32(-1f) * -655f)), vec3<f32>(global2.x, arg_2, 1f), arg_3.c.x <= 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1468f, global2.x, arg_2)) + vec3<f32>(1388f, arg_2, -182f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(328f, arg_2, global2.x))))) - vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) * 338f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) + -248f))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> vec3<f32> {
    let var_0 = -1i;
    var var_1 = Struct_1(global0.x, ~countOneBits(vec4<u32>(45205u, 37751u, 4294967295u, 59645u) << (vec4<u32>(0u, 85812u, 4294967295u, arg_3) % vec4<u32>(32u))), 1u, _wgslsmith_f_op_f32(abs(995f)));
    global2 = _wgslsmith_f_op_vec3_f32(func_5(func_2(~min(4294967295u, select(1u, 69173u, arg_1)), Struct_2(global0.wxw), global0.x), ~vec3<u32>(max(0u, 4294967295u), _wgslsmith_dot_vec3_u32(var_1.b.yyx, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, 0u, 10635u), var_1.b.yxz)), _wgslsmith_mod_u32(var_1.b.x, var_1.b.x) ^ abs(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0, 744f)), _wgslsmith_f_op_f32(abs(581f)), global0.x)))) - _wgslsmith_f_op_f32(floor(var_1.d))), Struct_4(vec4<bool>(true, false, true, select(4294967295u, 4294967295u, true) == arg_3), _wgslsmith_f_op_f32(exp2(global2.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(~var_1.b, vec4<u32>(4294967295u, arg_3, var_1.b.x, var_1.c)), 4294967295u, 49062u), u_input.b)));
    let var_2 = Struct_1(!(var_1.a & !arg_1), ~firstLeadingBit(~vec4<u32>(0u, 0u, 0u, var_1.c) & max(vec4<u32>(arg_3, var_1.b.x, var_1.b.x, 1u), var_1.b)), 55689u, arg_0);
    global1 = -1000f;
    return vec3<f32>(250f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -589f)))), var_1.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d + var_2.d), global2.x) + -1093f));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(237f, true, !vec2<bool>(all(func_4(Struct_3(8964i, arg_1.b), vec3<i32>(arg_1.a, -1809i, 14761i), Struct_1(arg_2.a.x, vec4<u32>(1u, 4294967295u, 30709u, 0u), 1u, 232f), arg_0)), global0.x), countOneBits(27315u))).x;
    global3 = ~1u;
    let var_1 = func_3(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.a >> (4294967295u % 32u), 2147483647i, arg_1.a), _wgslsmith_add_i32(reverseBits(-1i), firstTrailingBit(-2147483647i)), _wgslsmith_add_i32(0i, select(u_input.b, 0i, arg_1.b.a.x))), u_input.b, firstLeadingBit(-1i ^ arg_1.a)));
    var var_2 = Struct_1(true, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, var_1, var_1, _wgslsmith_sub_u32(~0u, 0u >> (var_1 % 32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1, 4294967295u, var_1, 0u), vec4<u32>(var_1, var_1, var_1, var_1)), ~abs(vec4<u32>(var_1, 26594u, 0u, var_1)))), var_1, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(-1075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f - -1000f) * _wgslsmith_f_op_f32(-global2.x))))));
    var var_3 = max(18657u, var_1);
    return ~vec4<u32>(_wgslsmith_dot_vec3_u32(~var_2.b.xwx, countOneBits(~vec3<u32>(var_2.c, 0u, 85938u))), max(0u, var_1), 72256u, reverseBits(_wgslsmith_add_u32(abs(var_2.c), min(var_2.c, 97330u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(reverseBits(16091i), Struct_2(global0.www));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(abs(global2.x)), global2.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1927f, 1286f, 356f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, global2.x, 120f))))))));
    var var_1 = Struct_1(true, vec4<u32>(_wgslsmith_sub_u32(~24788u, 2851u), 46004u, 1u, _wgslsmith_sub_u32(~19850u, 1u)) ^ func_6(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(-1518f, global2.x, 1527f)), _wgslsmith_f_op_vec3_f32(func_1(global2.x, true, global0.zx, 44059u)), vec3<bool>(global0.x, var_0.b.a.x, true))), Struct_3(-23853i, Struct_2(vec3<bool>(var_0.b.a.x, global0.x, true))), func_2(4294967295u, var_0.b, true)), 8434u << (~(~_wgslsmith_clamp_u32(43037u, 94716u, 4294967295u)) % 32u), global2.x);
    global1 = _wgslsmith_f_op_f32(floor(var_1.d));
    let var_2 = Struct_1(true, vec4<u32>(_wgslsmith_mod_u32(min(0u, var_1.b.x), var_1.b.x), 0u, abs(firstTrailingBit(1u)) << (0u % 32u), _wgslsmith_clamp_u32(0u, func_3(-vec3<i32>(-6750i, 0i, var_0.a)), ~var_1.c | ~1u)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_3 = var_2;
    global2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2164f))), -2949f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(global2.x * var_2.d), _wgslsmith_f_op_f32(-var_1.d)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d, var_2.d, var_3.d), vec3<f32>(var_2.d, -1223f, var_3.d), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, 307f, var_1.d)) + vec3<f32>(-535f, -633f, -354f)))))));
    var var_4 = var_1.b.yxx;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-257f, var_2.d, 1206f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.d, -1616f, global2.x))), vec3<f32>(var_2.d, var_1.d, -551f)), !select(vec3<bool>(false, false, true), vec3<bool>(false, var_3.a, var_1.a), var_0.b.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(27827i, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 2147483647i, 1i), vec3<i32>(-2147483647i, var_0.a, var_0.a) ^ vec3<i32>(var_0.a, u_input.b, -3824i)), ~2808i, ~(-u_input.b)), u_input.b, _wgslsmith_f_op_f32(var_1.d * -1310f));
}

