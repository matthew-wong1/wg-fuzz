struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: vec3<i32> = vec3<i32>(4038i, -1i, -1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    let var_0 = arg_1;
    global1 = vec3<i32>(1i, var_0.c, 81510i) << (~vec3<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, arg_0.e.x), var_0.e.xyx), 40057u), 28805u, ~(~var_0.a.x)) % vec3<u32>(32u));
    global0 = array<bool, 10>();
    global1 = vec3<i32>(1i, ~countOneBits(1i), _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(var_0.d.x, arg_1.b, 11591i, -1i)), select(max(vec4<i32>(arg_0.d.x, -1i, -19589i, 9332i), vec4<i32>(arg_1.c, -2147483647i, -24182i, 50380i)), ~vec4<i32>(-1i, -1i, -2147483647i, global1.x), global0[_wgslsmith_index_u32(arg_0.e.x, 10u)] || true)) >> (~max(~arg_1.e.x, abs(8965u)) % 32u));
    let var_1 = arg_0;
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(min(6382i, arg_1.d.x), 0i), ~global1.x);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<i32>(func_3(Struct_1(_wgslsmith_mult_vec4_u32(arg_3.e, vec4<u32>(u_input.a.x, u_input.a.x, 50736u, 6287u)), ~(~54004i), _wgslsmith_div_i32(~global1.x, reverseBits(arg_2.x)), _wgslsmith_mult_vec2_i32(global1.xz, arg_3.d), ~_wgslsmith_sub_vec4_u32(arg_3.e, arg_3.e)), arg_3, vec4<f32>(412f, 1274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-837f, 838f))), 489f)), arg_3.c);
    var var_1 = arg_3;
    global0 = array<bool, 10>();
    var var_2 = vec3<f32>(-1596f, _wgslsmith_f_op_f32(f32(-1f) * -1427f), _wgslsmith_div_f32(-899f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_f32(round(-1127f)))));
    let var_3 = !select(vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a.x, 3615u), 10u)], true, true, false), !vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(arg_3.e.x, 10u)])), global1.x <= 1i, global0[_wgslsmith_index_u32(4294967295u, 10u)], var_2.x > -623f), vec4<bool>(false, all(!vec3<bool>(global0[_wgslsmith_index_u32(7715u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(arg_3.a.x, 10u)], false)) || global0[_wgslsmith_index_u32(~arg_3.e.x, 10u)], all(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_1.a.x, 10u)], global0[_wgslsmith_index_u32(24613u, 10u)]))));
    return 4294967295u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_1.e.x, arg_1.e.x, u_input.a.x), 0u, ~u_input.a.x, ~18536u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u) << ((arg_1.e | vec4<u32>(arg_1.e.x, 0u, arg_1.a.x, 4294967295u)) % vec4<u32>(32u))), 4294967295u, ~32943u, func_2(max(1i, global1.x), abs(vec3<i32>(arg_1.c, -26031i, -1i)), ~vec3<i32>(arg_1.b, 1i, -1i), Struct_1(arg_1.e, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, arg_1.c, arg_1.c), vec3<i32>(global1.x, -1i, arg_1.b)), global1.x ^ -2147483647i, vec2<i32>(global1.x, 32738i), ~arg_1.a))), ~reverseBits(abs(select(vec4<u32>(88320u, 6273u, arg_1.a.x, 46394u), vec4<u32>(u_input.a.x, arg_1.a.x, 36806u, 4294967295u), vec4<bool>(global0[_wgslsmith_index_u32(98047u, 10u)], false, global0[_wgslsmith_index_u32(arg_1.e.x, 10u)], true)))));
    global0 = array<bool, 10>();
    global1 = vec3<i32>(_wgslsmith_mult_i32(arg_1.b, -56273i), i32(-1i) * -11704i, global1.x) << (firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(31769u), u_input.a.x, firstLeadingBit(22560u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 4294967295u), ~vec3<u32>(arg_1.e.x, arg_1.a.x, arg_1.a.x)))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    var_1 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.yzw)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> vec3<i32> {
    global0 = array<bool, 10>();
    let var_0 = vec2<i32>(-22099i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(12418i, global1.x, 25373i), vec3<i32>(-1i, -2147483647i, -15314i)), ~vec3<i32>(arg_1, arg_1, global1.x)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, global1.x, global1.x), vec3<i32>(arg_1, -5126i, -1i), vec3<i32>(global1.x, global1.x, arg_1)))), -(~(vec3<i32>(arg_1, -15365i, -1i) ^ vec3<i32>(arg_1, arg_1, -58339i)))));
    var var_1 = ~vec3<i32>(0i, -15220i, _wgslsmith_add_i32(-(-9048i << (u_input.a.x % 32u)), var_0.x));
    let var_2 = -vec3<i32>(-17872i, arg_1, arg_1);
    var var_3 = ~(70310u | u_input.a.x) ^ ~_wgslsmith_div_u32(abs(1u), 4294967295u);
    return vec3<i32>(2147483647i, arg_1, 21920i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.yx;
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(~35873u, select(48839u, 1u, false), u_input.a.x << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a))), vec4<u32>(u_input.a.x, ~4294967295u, _wgslsmith_div_u32(u_input.a.x, 28054u), u_input.a.x)), 0i, _wgslsmith_dot_vec2_i32(abs(countOneBits(min(vec2<i32>(-2147483647i, -1i), vec2<i32>(var_0.x, -2147483647i)))), global1.zy), reverseBits(vec2<i32>(-var_0.x, var_0.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, max(_wgslsmith_div_u32(8298u, u_input.a.x), u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u))));
    global1 = min(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d.x, var_0.x, -35297i) | _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, -1i), vec3<i32>(33188i, 0i, var_1.b)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -14566i, 2147483647i), vec3<i32>(global1.x, -1i, 1i)), vec3<i32>(-1i, 1i, -1i) ^ vec3<i32>(24879i, var_1.c, -52491i))), func_4(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1903f, 1260f, 2376f, -189f)), var_1)), -17067i)) >> (var_1.e.yzw % vec3<u32>(32u));
    let var_2 = 4294967295u;
    global0 = array<bool, 10>();
    let var_3 = 4294967295u;
    global0 = array<bool, 10>();
    global1 = ~(-vec3<i32>(-abs(global1.x), func_3(var_1, Struct_1(vec4<u32>(var_3, 0u, var_1.e.x, u_input.a.x), var_1.d.x, 30674i, vec2<i32>(var_1.d.x, -2147483647i), var_1.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1197f, 493f, 863f, -1000f)))), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(23007u, _wgslsmith_add_u32(firstTrailingBit(60711u), ~(~var_1.e.x)), 35470u, ~_wgslsmith_sub_u32(12617u, ~var_1.a.x)), _wgslsmith_sub_u32(~(firstLeadingBit(var_1.e.x) | _wgslsmith_div_u32(var_2, var_1.e.x)), 32997u));
}

