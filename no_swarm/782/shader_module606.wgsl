struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 0u), vec3<i32>(1i, i32(-2147483648), 0i), vec4<u32>(1u, 41305u, 35275u, 18844u), 0u);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 0u, 4467u, 65689u);

var<private> global2: Struct_1 = Struct_1(vec2<u32>(26012u, 52552u), vec3<i32>(46182i, -1i, -37088i), vec4<u32>(1u, 106830u, 1u, 24670u), 15175u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> u32 {
    global1 = vec4<u32>(global0.d, abs(1u), global0.c.x, countOneBits(1u)) & firstTrailingBit(~vec4<u32>(62980u, 10414u, global2.c.x, 9984u) & vec4<u32>(max(global0.d, global0.c.x), 93632u, global0.a.x, global2.a.x));
    let var_0 = Struct_1(_wgslsmith_div_vec2_u32(firstTrailingBit(global1.wx), global1.xy), abs(vec3<i32>(~(-2147483647i) & global0.b.x, -45852i, 23349i)), ~countOneBits(~(~global0.c)), ~8230u);
    var var_1 = var_0;
    let var_2 = var_0;
    var_1 = var_0;
    return ~(var_1.d & _wgslsmith_add_u32(_wgslsmith_add_u32(global2.d >> (global2.a.x % 32u), 4294967295u), _wgslsmith_sub_u32(var_1.d, global2.a.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(~global2.b.x, _wgslsmith_sub_i32(~u_input.c, global0.b.x)), global0.b.xx);
    var var_1 = Struct_1(reverseBits(~(global1.wy << ((global2.c.xw | global2.a) % vec2<u32>(32u)))), firstLeadingBit(vec3<i32>(-1i) * -(~global0.b)), ~global2.c, ~_wgslsmith_div_u32(~global0.d, 0u) << (_wgslsmith_clamp_u32(0u, func_3(any(vec2<bool>(false, true))), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 94821u, 34311u), global1.xxw))) % 32u));
    let var_2 = _wgslsmith_clamp_u32(func_3(all(vec2<bool>(true, true))), ~global0.d, global1.x & countOneBits(global1.x >> (global2.d % 32u)));
    return _wgslsmith_mod_vec3_i32(global0.b, vec3<i32>(35292i, ~1i, _wgslsmith_mod_i32(-1i, var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    return ~(~global0.b.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    var var_0 = func_4(Struct_1(vec2<u32>(reverseBits(1u) << (~global1.x % 32u), firstTrailingBit(u_input.b) & _wgslsmith_div_u32(62210u, global1.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -698f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -763f, arg_0.x, -423f))))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(30558u, 30419u), vec2<u32>(global1.x, 1u)), global2.c.yw | vec2<u32>(u_input.a, 0u)), 111151u, func_3(arg_1), global2.d), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.b, global1.x, 49345u, global2.c.x)), _wgslsmith_div_vec4_u32(firstLeadingBit(global0.c), vec4<u32>(21631u, u_input.b, 106797u, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-350f, -1003f, arg_0.x, arg_0.x) + vec4<f32>(1634f, -727f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 502f, arg_0.x)))) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-1000f * -1807f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), arg_0.x, -783f, -1000f))));
    global2 = Struct_1(global1.zy, global0.b, vec4<u32>(~abs(global1.x), select(4294967295u, countOneBits(4294967295u) << (u_input.a % 32u), any(select(vec2<bool>(arg_1, true), vec2<bool>(false, true), vec2<bool>(arg_1, true)))), 13285u, global0.c.x), _wgslsmith_mult_u32(9733u, countOneBits(~(~0u))));
    global1 = global0.c;
    global1 = global2.c;
    var var_1 = Struct_1(global2.a, min(vec3<i32>(-1i, func_4(Struct_1(vec2<u32>(27951u, 1u), vec3<i32>(-31257i, u_input.c, -1i), global0.c, 4294967295u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-247f, arg_0.x, -1517f, arg_0.x), vec4<f32>(arg_0.x, -236f, -598f, arg_0.x), arg_1))), ~0i), vec3<i32>(-10158i, 1i, global2.b.x)), abs(global2.c), ~7776u);
    return var_1.d;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> vec4<u32> {
    let var_0 = -global0.b;
    global2 = Struct_1(global1.xx, firstTrailingBit(vec3<i32>(0i, 26709i, i32(-1i) * -2147483647i)), firstTrailingBit(~vec4<u32>(global1.x, 4294967295u | arg_3, ~68055u, arg_0)), ~_wgslsmith_mod_u32(~func_3(false), abs(global0.a.x)));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(38254u, u_input.a)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, arg_3), global0.c.yw, global1.xx), _wgslsmith_add_vec2_u32(global1.zy, vec2<u32>(arg_0, global1.x)), vec2<u32>(4294967295u, global1.x))), ~_wgslsmith_mult_u32(32138u, _wgslsmith_mod_u32(global2.d, 8022u))), vec3<i32>(~(arg_1 << (50333u % 32u)), i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.c, -2147483647i)) | abs(-max(global2.b, vec3<i32>(u_input.c, global2.b.x, -52351i))), global0.c, arg_0);
    global0 = Struct_1(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, var_1.d) >> (var_1.a % vec2<u32>(32u)), select(vec2<u32>(arg_3, var_1.a.x), var_1.a, vec2<bool>(false, true)))), _wgslsmith_sub_vec3_i32(global0.b, -vec3<i32>(2147483647i, 2147483647i, u_input.c)) & vec3<i32>(u_input.c, min(global2.b.x, -global0.b.x), _wgslsmith_mult_i32(var_1.b.x, -42022i)), var_1.c, 3023u);
    let var_2 = Struct_1(~vec2<u32>(72153u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global2.d, 7704u), vec3<u32>(var_1.d, global1.x, 0u))), vec3<i32>(u_input.c, _wgslsmith_dot_vec2_i32(global2.b.yx, firstLeadingBit(var_1.b.yz)), -27226i), abs(select(vec4<u32>(global2.d, arg_3 >> (84113u % 32u), arg_3 & u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, global2.a.x, global0.c.x), vec3<u32>(4294967295u, 1u, 1u))), max(max(global0.c, vec4<u32>(74955u, var_1.d, 4294967295u, arg_0)), global2.c), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), true))), max(u_input.a, 27923u));
    return ~(~min(~vec4<u32>(1u, 0u, 4294967295u, global1.x), firstLeadingBit(_wgslsmith_mult_vec4_u32(var_1.c, global0.c))));
}

fn func_6(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(-max(vec4<i32>(~8807i, reverseBits(global2.b.x), 0i, -arg_3.b.x), vec4<i32>(global0.b.x, -2147483647i, global0.b.x, -26578i) | vec4<i32>(-1i, arg_2.b.x, u_input.c, arg_3.b.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global2.b << (vec3<u32>(1u, arg_2.a.x, arg_2.d) % vec3<u32>(32u)), vec3<i32>(2147483647i, arg_3.b.x, arg_2.b.x)), -min(vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(2147483647i, arg_3.b.x, arg_3.b.x))), reverseBits(-29554i), ~(~(-arg_2.b.x)), countOneBits(global2.b.x)));
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(-(~arg_3.b.x), _wgslsmith_clamp_i32(-22005i, 42498i, arg_2.b.x), -10491i ^ select(_wgslsmith_add_i32(global0.b.x, var_0), func_4(arg_2, vec4<f32>(arg_1, arg_1, 242f, -518f)), arg_0.x)), _wgslsmith_add_vec3_i32(global0.b, global2.b));
    var var_2 = !all(vec3<bool>(any(!arg_0), all(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x))), true));
    global1 = global2.c;
    var var_3 = arg_0.x;
    return Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(1u), func_1(vec3<f32>(331f, arg_1, arg_1), arg_0.x)), global0.a), arg_3.c.yx), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_3.b, arg_2.b), _wgslsmith_add_i32(global0.b.x, 0i)) | u_input.c, -24108i, -2147483647i), select(arg_3.c, _wgslsmith_mod_vec4_u32(max(vec4<u32>(global1.x, 0u, 49584u, global2.d), firstLeadingBit(vec4<u32>(53364u, arg_2.c.x, arg_2.c.x, 29182u))), vec4<u32>(u_input.a, 51768u, arg_2.d, 46493u) ^ global0.c), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true)), ~27143u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(!select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, true))), false), -1308f, Struct_1(vec2<u32>(firstTrailingBit(u_input.b), ~(~4294967295u)), global0.b ^ global0.b, func_5(select(20716u, global1.x, false) | ~global1.x, 47881i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1223f, 379f), vec2<f32>(-2264f, 1000f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1059f, 176f), vec2<f32>(-1457f, 1339f)))), _wgslsmith_div_u32(~global1.x, func_1(vec3<f32>(-1012f, -558f, 1013f), false))), _wgslsmith_mod_u32(~(~27488u), 4294967295u)), Struct_1(_wgslsmith_div_vec2_u32(~(global0.c.zy << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), global1.xy), vec3<i32>(2147483647i, global2.b.x & global0.b.x, -30739i) << (global0.c.yyx % vec3<u32>(32u)), vec4<u32>(4294967295u, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-470f, 1432f, 196f)), true), global0.d, ~min(global1.x, 108972u)), global0.d));
    let var_0 = ~(~global0.b.xx);
    global1 = _wgslsmith_mult_vec4_u32(func_5(u_input.b, ~(i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1201f, 812f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 702f) + vec2<f32>(406f, 1000f))))), ~(~u_input.b) >> (global2.a.x % 32u)), countOneBits(min(select(global2.c, vec4<u32>(0u, 30204u, 414u, 97453u), false) << (reverseBits(global0.c) % vec4<u32>(32u)), global0.c ^ (vec4<u32>(9379u, 0u, 42272u, 4294967295u) & vec4<u32>(global0.c.x, 22530u, 27011u, 1u)))));
    var var_1 = global0.b.x;
    global2 = Struct_1(max(global1.zx, ~abs(~global1.zy)), firstTrailingBit(~global0.b), global2.c, u_input.a);
    var var_2 = !vec4<bool>(-_wgslsmith_clamp_i32(global0.b.x, 2147483647i, -6385i) <= var_0.x, u_input.b == select(~global1.x, 54121u ^ global0.d, false), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)), true);
    global2 = func_6(select(!vec2<bool>(true, var_2.x), !var_2.ww, var_2.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1572f)), _wgslsmith_f_op_f32(430f * -1182f))) * _wgslsmith_div_f32(-2039f, -587f))), Struct_1(~vec2<u32>(46339u, ~9035u), global0.b, ~vec4<u32>(select(1u, global1.x, false), _wgslsmith_add_u32(43348u, global1.x), _wgslsmith_sub_u32(global2.d, 14325u), 53207u), countOneBits(~global2.a.x)), func_6(!var_2.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-380f))) - -206f), func_6(select(vec2<bool>(var_2.x, var_2.x), var_2.wz, true), _wgslsmith_div_f32(349f, -619f), func_6(var_2.xz, 321f, Struct_1(global0.a, vec3<i32>(var_0.x, 6255i, global2.b.x), global0.c, global0.c.x), Struct_1(global1.wz, vec3<i32>(-14976i, global0.b.x, 20246i), vec4<u32>(1u, global0.c.x, 0u, 11428u), u_input.b)), func_6(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -139f), func_6(vec2<bool>(true, true), -1598f, Struct_1(global0.a, vec3<i32>(global0.b.x, 0i, 53836i), global0.c, 4294967295u), Struct_1(global0.a, vec3<i32>(-20846i, global0.b.x, global2.b.x), global0.c, 57466u)), Struct_1(global1.zx, vec3<i32>(var_0.x, var_0.x, global0.b.x), global0.c, global2.d))), Struct_1(vec2<u32>(4294967295u, _wgslsmith_add_u32(global1.x, global2.d)), vec3<i32>(-4083i, ~var_0.x, 35768i >> (global1.x % 32u)), global2.c, global2.a.x)));
    global1 = ~vec4<u32>(~global1.x, 15695u, 0u, global0.d << (abs(4294967295u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(28922u, 4294967295u << (u_input.a % 32u), 7237u, ~_wgslsmith_clamp_u32(global0.a.x, 1u, global1.x)) | global0.c, -func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-491f, 937f)), -1269f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1785f, 2309f, 1144f, 2108f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(349f, 1103f, 264f, 709f))))).x);
}

