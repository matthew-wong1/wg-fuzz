struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<u32> = vec3<u32>(10282u, 4294967295u, 72621u);

var<private> global2: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec2<i32> {
    global2 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.x)))))));
    global0 = -_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-31949i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(arg_1.b, 40271i, 10934i), -12888i), u_input.b), u_input.b);
    let var_0 = 1464f;
    let var_1 = true;
    var var_2 = var_1;
    return firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_0.x, 2147483647i, -17736i), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(arg_0.x, -2147483647i, arg_1.b, arg_1.b), u_input.b)), _wgslsmith_add_i32(-10290i, arg_1.b)), ~(~arg_0 ^ reverseBits(vec2<i32>(-1i, u_input.b.x)))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = ~(-1i);
    let var_1 = ~(-func_3(-(vec2<i32>(0i, arg_2.c) | vec2<i32>(-2147483647i, arg_2.c)), Struct_3(vec4<u32>(77708u, global1.x, 53450u, u_input.a.x) | vec4<u32>(u_input.a.x, global1.x, 1u, u_input.a.x), arg_0, u_input.a.x, _wgslsmith_div_vec4_f32(vec4<f32>(960f, 1000f, -1326f, -1682f), vec4<f32>(-350f, 229f, -1887f, -1009f)), Struct_1(global1.x))));
    let var_2 = Struct_2(~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1478f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1204f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -323f))))));
    var var_3 = select(!select(select(!vec2<bool>(arg_2.a.x, true), !arg_2.a.xx, !arg_2.a.x), !select(vec2<bool>(false, true), arg_2.d, arg_2.d), select(select(vec2<bool>(true, true), vec2<bool>(false, false), arg_2.a.yz), !arg_2.d, false)), arg_2.a.zz, vec2<bool>(!arg_2.a.x, arg_2.a.x | true));
    global0 = -vec4<i32>(min(countOneBits(var_2.a.x), u_input.b.x), -(-1i | arg_1.x) >> (max(~0u, _wgslsmith_add_u32(u_input.d, u_input.d)) % 32u), 2147483647i, -_wgslsmith_dot_vec2_i32(u_input.c.xx, global0.yx) ^ (arg_0 << (u_input.d % 32u)));
    return Struct_1(4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = false;
    let var_1 = Struct_4(vec3<bool>(!(!all(vec2<bool>(true, true))), true, true), min(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.zy ^ vec2<i32>(arg_3, 43949i), vec2<i32>(36343i, 16790i)), -_wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.c.zz)), ~(_wgslsmith_mult_i32(arg_1.b, -2147483647i) << ((arg_2.a ^ 30171u) % 32u))), -2147483647i, vec2<bool>(any(vec4<bool>(true, any(vec2<bool>(false, true)), true, all(vec2<bool>(false, true)))), true));
    let var_2 = all(select(select(vec4<bool>(false, any(vec4<bool>(true, false, true, var_1.a.x)), false, true), !(!vec4<bool>(false, true, true, var_1.d.x)), !(!vec4<bool>(true, var_1.a.x, false, true))), !select(vec4<bool>(var_1.d.x, true, true, var_1.a.x), !vec4<bool>(var_1.d.x, true, true, false), !var_1.a.x), !(!all(vec3<bool>(var_1.d.x, false, false)))));
    let var_3 = arg_1.c;
    let var_4 = arg_1;
    return _wgslsmith_clamp_i32(func_3(-global0.yy, Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2.a, 1u, 4294967295u), arg_1.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.b, u_input.c.x, -34816i), vec3<i32>(arg_0.b, 2147483647i, -1132i)), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d * arg_0.d)), Struct_1(_wgslsmith_add_u32(1u, global1.x)))).x, 25819i, ~(~(-min(-1i, arg_0.b))));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_4(select(select(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), vec3<bool>(all(vec3<bool>(true, true, false)), select(true, false, false), true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))), !vec3<bool>(true, global0.x <= global0.x, false), vec3<bool>(true, true, any(vec4<bool>(true, true, true, false)))), ~func_4(Struct_3(~vec4<u32>(66667u, 1u, 69452u, 70104u), 1i, u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-347f, -801f, 1100f, -334f)), func_2(global0.x, u_input.b, Struct_4(vec3<bool>(true, false, true), 1i, u_input.b.x, vec2<bool>(true, true)))), Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 27303u, 34439u, 1u), vec4<u32>(u_input.a.x, 0u, 1u, 57242u)), u_input.c.x, global1.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(526f, 644f, -772f, -430f), vec4<f32>(-922f, -1019f, -1165f, -523f))), Struct_1(33943u)), func_2(i32(-1i) * -2147483647i, _wgslsmith_sub_vec4_i32(vec4<i32>(3580i, -10373i, 2147483647i, 2147483647i), vec4<i32>(global0.x, u_input.b.x, 18619i, 2147483647i)), Struct_4(vec3<bool>(false, true, true), -60360i, 1i, vec2<bool>(false, true))), -2147483647i), -2147483647i, !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = vec4<i32>(~(~_wgslsmith_mult_i32(global0.x << (4294967295u % 32u), -2147483647i)), -2147483647i, max(~func_4(Struct_3(vec4<u32>(global1.x, 1u, u_input.d, 73164u), global0.x, u_input.a.x, vec4<f32>(1958f, 738f, 1109f, 207f), Struct_1(u_input.a.x)), Struct_3(vec4<u32>(global1.x, u_input.a.x, u_input.a.x, 33211u), global0.x, global1.x, vec4<f32>(-494f, 1000f, 1000f, 1009f), Struct_1(29705u)), Struct_1(u_input.a.x), -1i), global0.x), -21297i);
    var var_2 = -1i;
    var var_3 = ~_wgslsmith_div_u32(u_input.a.x, abs(~57695u << (~global1.x % 32u)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-991f - -539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-155f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1355f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1523f, -513f) + -682f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-774f * 152f) - _wgslsmith_f_op_f32(-2095f + 679f)), _wgslsmith_f_op_f32(-1000f * -202f), !(var_0.d.x & var_0.d.x)))), 1000f);
    return select(select(!select(var_0.d, select(vec2<bool>(true, false), vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.d.x, false)), !var_0.d.x), !(!select(var_0.a.yz, var_0.d, false)), var_0.d.x), vec2<bool>(!var_0.a.x, all(var_0.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false))), u_input.b.x < _wgslsmith_sub_i32(i32(-1i) * -u_input.c.x, ~_wgslsmith_clamp_i32(global0.x, -11040i, u_input.c.x)), true);
    global1 = u_input.a;
    var var_1 = Struct_4(var_0, _wgslsmith_sub_i32(~(~global0.x) | 87476i, u_input.b.x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.wx, global0.wy), ~global0.x), 30295i, -(-26765i & global0.x)) | 0i, func_1());
    global0 = countOneBits(-(u_input.b | ~(-u_input.b)));
    global1 = countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(global1.x), reverseBits(4294967295u), global1.x), u_input.a), _wgslsmith_mult_vec3_u32(~vec3<u32>(43811u, global1.x, 4294967295u), ~u_input.a) >> (~(~u_input.a) % vec3<u32>(32u)), vec3<u32>(~(~global1.x), 96553u, abs(1u) << (func_2(-2147483647i, vec4<i32>(1i, u_input.b.x, global0.x, -2147483647i), Struct_4(var_1.a, -12199i, u_input.c.x, vec2<bool>(false, var_1.a.x))).a % 32u))));
    var_1 = Struct_4(var_1.a, u_input.c.x | -(~_wgslsmith_div_i32(var_1.b, -53527i)), -20468i, select(var_0.xz, vec2<bool>(true, var_1.a.x), select(select(var_1.d, vec2<bool>(var_0.x, true), true), vec2<bool>(global0.x > 0i, var_1.a.x), true)));
    var var_2 = 1u;
    var_1 = Struct_4(select(select(select(vec3<bool>(true, true, var_1.d.x), !var_1.a, vec3<bool>(var_1.a.x, true, true)), var_0, all(select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), vec2<bool>(false, true)))), var_0, !(!vec3<bool>(var_0.x, var_1.a.x, var_0.x))), -(_wgslsmith_mult_i32(_wgslsmith_mult_i32(14032i, -64540i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), global0.xz)) & ~(39932i ^ global0.x)), i32(-1i) * -((-1i | var_1.c) >> (1u % 32u)), select(var_1.a.xz, !(!vec2<bool>(var_1.a.x, true)), true));
    var var_3 = u_input.b.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-797f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1384f)))) - _wgslsmith_f_op_f32(f32(-1f) * -928f))), 1462f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1737f) + vec2<f32>(425f, -2632f))))) - vec2<f32>(142f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1259f))));
}

