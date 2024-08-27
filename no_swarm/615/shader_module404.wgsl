struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: array<vec2<u32>, 25>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = select(vec3<i32>(1i, -2147483647i, u_input.b.x) << (~(~u_input.a) % vec3<u32>(32u)), reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 4550i), vec4<i32>(-1i, u_input.b.x, 74223i, -1i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 60729i, 1i)), all(arg_3.c.zz));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1341f, -702f, 217f, 1947f))) + vec4<f32>(1f, 1f, 1f, 1f))))));
    global2 = array<vec2<u32>, 25>();
    var var_2 = select(select(!vec2<bool>(arg_3.c.x, true), !select(select(arg_3.c.ww, vec2<bool>(arg_3.c.x, true), true), vec2<bool>(true, true), vec2<bool>(false, false)), !any(arg_3.c.xwz)), !(!vec2<bool>(any(arg_3.c.xw), all(vec2<bool>(arg_3.c.x, true)))), vec2<bool>(false, false));
    global0 = -925f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_div_f32(-1733f, _wgslsmith_f_op_f32(-1994f * var_1.x))))), _wgslsmith_f_op_f32(var_1.x - var_1.x));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1889f - _wgslsmith_f_op_f32(select(1000f, -664f, true))) * -366f) + -1872f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2304f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(u_input.a.x << (u_input.a.x % 32u), 4294967295u, global1.x, Struct_1(32450u, vec4<u32>(u_input.a.x, 4294967295u, global1.x, global1.x), vec4<bool>(false, true, false, false), u_input.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1750f)))));
    let var_1 = countOneBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~u_input.b.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-36039i, arg_0, u_input.b.x), vec3<i32>(13446i, -72802i, -48186i)), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), -(arg_0 << (0u % 32u))), u_input.b.x));
    global1 = u_input.a.xy;
    global0 = _wgslsmith_f_op_f32(var_0.x + -102f);
    var var_2 = vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), true);
    return Struct_1(max(global1.x ^ global1.x, (global1.x ^ 4294967295u) >> (global1.x % 32u)), vec4<u32>(countOneBits(~global1.x), ~1u, ~33681u, ~u_input.a.x ^ u_input.a.x), select(!(!(!vec4<bool>(false, var_2.x, var_2.x, true))), vec4<bool>(false, false, var_2.x, true), !(!select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, true, var_2.x, true)))), u_input.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = 1085f;
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 1i) | u_input.b.x, -2686i, -firstLeadingBit(-2147483647i));
    global1 = ~arg_3.b.ww;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -176f))));
    global2 = array<vec2<u32>, 25>();
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(arg_1.b)), vec4<u32>(max(27822u, 4294967295u), global1.x, 63179u, arg_1.a ^ 0u)), 22191u), countOneBits((~vec4<u32>(arg_3.b.x, arg_3.d.x, global1.x, arg_3.d.x) & ~vec4<u32>(global1.x, global1.x, arg_3.d.x, arg_1.b.x)) | ~firstTrailingBit(vec4<u32>(1u, global1.x, 0u, 64692u))), vec4<bool>(any(!vec4<bool>(arg_1.c.x, true, true, false)), all(arg_2.zz), arg_1.c.x, false), arg_1.d);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f))));
    let var_0 = -_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(45356i, u_input.b.x, abs(u_input.b.x), ~arg_1)), (~vec4<i32>(-2147483647i, arg_1, -2147483647i, u_input.b.x) | _wgslsmith_add_vec4_i32(vec4<i32>(20528i, u_input.b.x, 0i, -2147483647i), vec4<i32>(2147483647i, 0i, -29294i, arg_1))) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-2147483647i, u_input.b.x, -1i)), 16112i, select(arg_1, 14066i, arg_0.c.x), firstTrailingBit(-2147483647i)));
    var var_1 = func_4(var_0.zxy, Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 17308u), ~vec3<u32>(global1.x, u_input.a.x, arg_0.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, arg_0.a, 41518u, 26288u), vec4<u32>(1u, 21618u, arg_0.d.x, arg_0.b.x)) << (func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, 1i, arg_1), var_0)).b % vec4<u32>(32u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), vec4<bool>(true, true, true, true)), arg_0.c, !(!vec4<bool>(arg_0.c.x, true, true, arg_0.c.x))), ((vec3<u32>(u_input.a.x, 25731u, 4294967295u) >> (vec3<u32>(arg_0.d.x, arg_0.d.x, global1.x) % vec3<u32>(32u))) | vec3<u32>(arg_0.d.x, 0u, 1u)) << (abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 22839u, 74345u), u_input.a)) % vec3<u32>(32u))), !(!arg_0.c.wyy), arg_0);
    let var_2 = func_4(var_0.wxx, arg_0, arg_0.c.zxz, arg_0).c.yxy;
    var var_3 = func_4(vec3<i32>(_wgslsmith_div_i32(min(-var_0.x, var_0.x << (global1.x % 32u)), select(var_0.x, -17956i, false)), _wgslsmith_div_i32(-32608i, ~2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(1i, -2147483647i, var_0.x)), reverseBits(var_0.yzx)), var_0.xxw)), func_2(_wgslsmith_dot_vec3_i32(~var_0.yyw, _wgslsmith_clamp_vec3_i32(var_0.wzx | vec3<i32>(u_input.b.x, arg_1, 8344i), firstLeadingBit(vec3<i32>(u_input.b.x, 1i, var_0.x)), var_0.zww))), var_1.c.xxw, Struct_1(4294967295u, func_2(-13298i).b, !(!var_1.c), var_1.d));
    return Struct_1(_wgslsmith_mod_u32(~arg_0.d.x, 3614u), abs(_wgslsmith_add_vec4_u32(var_1.b, ~firstLeadingBit(vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u)))), vec4<bool>(!(func_4(var_0.yzx, Struct_1(var_3.b.x, vec4<u32>(78u, u_input.a.x, 11517u, u_input.a.x), vec4<bool>(true, true, arg_0.c.x, arg_0.c.x), vec3<u32>(global1.x, 14170u, arg_0.a)), var_2, Struct_1(arg_0.a, var_3.b, vec4<bool>(false, var_3.c.x, var_2.x, true), vec3<u32>(4294967295u, 4294967295u, 46083u))).c.x && (global1.x == 4294967295u)), false, all(vec2<bool>(false, var_3.c.x)), (!var_2.x && true) != (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, u_input.a.x, u_input.a.x, 0u), var_1.b) < _wgslsmith_mod_u32(0u, u_input.a.x))), vec3<u32>(19009u, arg_0.d.x, max(~28732u, 1u)) << ((_wgslsmith_div_vec3_u32(~u_input.a, max(arg_0.d, arg_0.d)) ^ reverseBits(u_input.a)) % vec3<u32>(32u)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_5(func_4(-vec3<i32>(u_input.b.x, u_input.b.x >> (4294967295u % 32u), u_input.b.x), func_2(2147483647i), func_2(abs(30070i)).c.ywx, func_2(u_input.b.x)), 44449i);
    let var_1 = var_0.c.x;
    let var_2 = -firstTrailingBit(~vec2<i32>(u_input.b.x, -27385i));
    global1 = ~_wgslsmith_sub_vec2_u32(func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(25142i, u_input.b.x, u_input.b.x)), var_0, var_0.c.www, var_0).b.zz, var_0.d.xy << (~_wgslsmith_clamp_vec2_u32(u_input.a.xy, var_0.d.xx, u_input.a.xy) % vec2<u32>(32u)));
    global1 = global2[_wgslsmith_index_u32(20784u, 25u)];
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.x);
    global1 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(func_5(var_0, u_input.b.x).b.wz, _wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, global1.x), var_0.b.xxy), 25u)], min(firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(61759u, 93682u)))), _wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(0u, 25u)], ~vec2<u32>(u_input.a.x, ~var_0.d.x)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1887f, -1727f)), _wgslsmith_f_op_f32(select(110f, _wgslsmith_f_op_f32(-1504f * -1293f), func_2(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 2147483647i), min(u_input.b.x, u_input.b.x))).c.x)));
    var var_2 = func_5(var_0, -_wgslsmith_clamp_i32(u_input.b.x >> (33951u % 32u), ~42496i, -31124i) | (i32(-1i) * -(~u_input.b.x)));
    let var_3 = 701f;
    var var_4 = Struct_1(var_0.b.x, ~(vec4<u32>(reverseBits(global1.x), var_2.b.x, u_input.a.x, firstTrailingBit(u_input.a.x)) | min(vec4<u32>(51506u, 22918u, u_input.a.x, 4294967295u), var_0.b)), vec4<bool>(var_2.c.x, !(true & !var_0.c.x), var_2.c.x, var_0.c.x), _wgslsmith_mod_vec3_u32(var_2.b.wzw, ~var_2.d));
    let var_5 = func_5(Struct_1(select(var_0.b.x, 113519u, any(!vec3<bool>(var_4.c.x, var_0.c.x, var_2.c.x))), vec4<u32>(82441u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, global1.x), 57121u, ~global1.x), ~(~1u), _wgslsmith_dot_vec4_u32(func_4(vec3<i32>(-2147483647i, u_input.b.x, 18420i), Struct_1(1u, vec4<u32>(19138u, var_2.b.x, 4294967295u, var_0.d.x), var_4.c, u_input.a), var_2.c.ywx, var_0).b, vec4<u32>(1u, 4294967295u, global1.x, var_2.a))), var_4.c, (firstTrailingBit(var_0.d) >> (vec3<u32>(var_4.b.x, u_input.a.x, var_2.b.x) % vec3<u32>(32u))) >> ((~vec3<u32>(66229u, var_2.b.x, var_2.a) ^ ~var_0.b.zyx) % vec3<u32>(32u))), -1i);
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_1)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_3, var_1), vec2<f32>(-1449f, var_3))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(639f, 695f)))) - vec2<f32>(var_3, _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(2410f * var_1)))));
}

