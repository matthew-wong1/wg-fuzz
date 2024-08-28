struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> vec2<u32> {
    var var_0 = -949f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -1364f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))), -330f);
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(global0.c, u_input.c), ~(vec2<u32>(_wgslsmith_sub_u32(global0.c.x, global0.c.x), 51193u) | u_input.c.zw), vec4<u32>(19432u, 1u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(19338u, global0.a.x), global0.b), ~4294967295u), ~global0.c.yxw);
    var var_1 = !vec3<bool>(false, !any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 25u)])) || select(!global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, global1[_wgslsmith_index_u32(~0u, 25u)]), true);
    var var_2 = 47670u;
    return ~global0.d.zz;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec3<u32> {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    let var_0 = Struct_3(!select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 6052u), 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)] | true, true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0.a.x), vec2<u32>(u_input.c.x, u_input.c.x)), 25u)]), vec4<bool>(u_input.b >= 1u, select(false, false, false), global1[_wgslsmith_index_u32(~global0.a.x, 25u)], true), false));
    global0 = Struct_1(vec4<u32>(2393u, arg_0.x, 4294967295u, global0.c.x) & ~(~abs(global0.a)), _wgslsmith_add_vec2_u32(~abs(u_input.c.yw), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, arg_0.x), ~(~u_input.c.zw), ~(vec2<u32>(1u, 55816u) | arg_0))), global0.c, vec3<u32>(firstLeadingBit(arg_0.x), ~0u, 51588u));
    var var_1 = -u_input.a.x;
    return ~firstLeadingBit(vec3<u32>(~_wgslsmith_mult_u32(global0.d.x, 0u), _wgslsmith_dot_vec3_u32(firstTrailingBit(global0.c.yww), select(vec3<u32>(global0.d.x, 1u, u_input.b), global0.a.yxx, var_0.a.x)), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global0.c.x, 68969u), u_input.c.zyy))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    global1 = array<bool, 25>();
    let var_0 = Struct_3(!select(arg_0, select(select(arg_0, arg_0, global1[_wgslsmith_index_u32(25397u, 25u)]), arg_0, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], true, false, arg_0.x)), vec4<bool>(true, true, true, true)));
    let var_1 = arg_2.c.x;
    global1 = array<bool, 25>();
    global0 = arg_2.b;
    return Struct_2(48185u, arg_2.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c) * _wgslsmith_f_op_vec2_f32(arg_2.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, 670f)))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-960f, arg_2), vec2<f32>(-285f, 1561f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))));
    var var_1 = func_4(select(arg_1.a, arg_1.a, arg_1.a), u_input.a.yy >> (vec2<u32>(~arg_3.x ^ ~0u, _wgslsmith_mult_u32(arg_3.x, 76269u)) % vec2<u32>(32u)), Struct_2(~0u, Struct_1(abs(vec4<u32>(arg_3.x, u_input.b, u_input.b, u_input.b) & u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(28025u, global0.a.x), func_2()), vec4<u32>(u_input.c.x, u_input.b, 29703u, u_input.c.x), func_3(vec2<u32>(arg_3.x, arg_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_2, arg_2, -1215f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1196f, var_0.x)))), Struct_3(!(!arg_1.a)));
    var var_2 = arg_3.x;
    var_0 = var_1.c;
    var_2 = 65358u;
    return vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(51661u, u_input.c.x, 4294967295u), vec3<u32>(4294967295u, 59977u, u_input.c.x))), countOneBits(var_1.b.c.xw | vec2<u32>(global0.d.x, u_input.c.x))), ~1u, _wgslsmith_clamp_u32(~(var_1.a | 47874u), ~(~var_1.a), ~15315u), _wgslsmith_clamp_u32(countOneBits(~func_3(vec2<u32>(26131u, 4294967295u), vec4<f32>(var_0.x, -588f, -815f, arg_2)).x), ~arg_3.x, _wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x), vec4<u32>(1u, global0.b.x, 4294967295u, global0.b.x)), global0.a, ~vec4<u32>(4294967295u, arg_3.x, 73619u, arg_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(select(~u_input.c, vec4<u32>(u_input.b, u_input.b, u_input.c.x, min(u_input.c.x, global0.a.x)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, false, true)), u_input.c), global0.c.yy, func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -6316i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) & u_input.a, Struct_3(select(vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 25u)], true, global1[_wgslsmith_index_u32(0u, 25u)], false), vec4<bool>(global1[_wgslsmith_index_u32(15376u, 25u)], true, global1[_wgslsmith_index_u32(27996u, 25u)], global1[_wgslsmith_index_u32(50794u, 25u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true, global1[_wgslsmith_index_u32(0u, 25u)], true))), -329f, ~vec3<u32>(u_input.c.x, ~u_input.b, 1u)), ~vec3<u32>(select(global0.c.x, 38377u, true) >> ((5672u >> (global0.a.x % 32u)) % 32u), firstLeadingBit(_wgslsmith_add_u32(15431u, 77551u)), _wgslsmith_mod_u32(70029u, global0.b.x)));
    var var_0 = Struct_1(vec4<u32>(~20957u, max(global0.b.x, u_input.c.x), 85651u, u_input.c.x) | ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.b), abs(u_input.c.x), 4294967295u, global0.d.x), global0.d.zy, func_1(vec3<i32>(_wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_div_i32(-23060i, 74540i)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -1383i, u_input.a.x)), u_input.a), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.zz), 0i, u_input.a.x)), Struct_3(!vec4<bool>(true, global1[_wgslsmith_index_u32(global0.b.x, 25u)], false, global1[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(122f))))), ~(vec3<u32>(81051u, 1u, u_input.b) | global0.a.xxx)), vec3<u32>(countOneBits(_wgslsmith_mod_u32(u_input.b, u_input.b)), global0.a.x, countOneBits(0u) >> (0u % 32u)) | global0.c.wzz);
    var_0 = Struct_1(vec4<u32>(global0.c.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, global0.c), ~0u), select(u_input.c.x, var_0.a.x, true), reverseBits(abs(~var_0.b.x))), ~var_0.b, func_1(~(-(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) >> (vec3<u32>(u_input.c.x, 24533u, 4294967295u) % vec3<u32>(32u)))), Struct_3(vec4<bool>(!global1[_wgslsmith_index_u32(0u, 25u)], true, !global1[_wgslsmith_index_u32(global0.c.x, 25u)], global1[_wgslsmith_index_u32(global0.b.x, 25u)] | true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-552f, _wgslsmith_f_op_f32(max(518f, 1917f))) - -310f), vec3<u32>(~(~u_input.c.x), u_input.b, var_0.d.x)), ~_wgslsmith_mod_vec3_u32(min(u_input.c.zxx, func_1(vec3<i32>(u_input.a.x, u_input.a.x, 1i), Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(9338u, 25u)], true, false, true)), 361f, u_input.c.zxz).wwz), vec3<u32>(_wgslsmith_sub_u32(global0.d.x, global0.b.x), firstLeadingBit(4923u), firstTrailingBit(1u))));
    let var_1 = func_4(vec4<bool>(true, any(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], false)) && true, all(vec2<bool>(select(true, global1[_wgslsmith_index_u32(9887u, 25u)], true), true)), true), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.a.x, -11483i), reverseBits(_wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.zz, vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xx, vec2<i32>(-16683i, u_input.a.x)), u_input.a.zz)), func_4(!(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.d.x, 25u)], false, false))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 19745i), _wgslsmith_div_vec2_i32(vec2<i32>(14166i, -15930i), vec2<i32>(35776i, u_input.a.x))), select(abs(u_input.a.yx), u_input.a.yz, global0.a.x < 1u), reverseBits(~u_input.a.yy)), func_4(select(vec4<bool>(true, global1[_wgslsmith_index_u32(global0.c.x, 25u)], false, false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(10660u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(global0.a.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)])), false), reverseBits(_wgslsmith_add_vec2_i32(u_input.a.yz, vec2<i32>(-1i, -27260i))), Struct_2(abs(14009u), Struct_1(u_input.c, vec2<u32>(u_input.b, 36106u), vec4<u32>(var_0.b.x, u_input.c.x, 4294967295u, var_0.c.x), u_input.c.ywy), vec2<f32>(327f, -774f)), Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(global0.b.x, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)], true))), Struct_3(!select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 25u)], true, true, false), vec4<bool>(false, false, true, false)))), Struct_3(vec4<bool>(!(global1[_wgslsmith_index_u32(1u, 25u)] && global1[_wgslsmith_index_u32(0u, 25u)]), global1[_wgslsmith_index_u32(select(~26701u, 1u, any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], false, global1[_wgslsmith_index_u32(global0.a.x, 25u)]))), 25u)], all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], false, global1[_wgslsmith_index_u32(global0.b.x, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0.d.x, 25u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, true))), any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 25u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(85059u, 25u)], global1[_wgslsmith_index_u32(13807u, 25u)]), global1[_wgslsmith_index_u32(0u, 25u)]))))).b;
    var var_2 = func_4(vec4<bool>(u_input.a.x <= 1i, any(select(select(vec4<bool>(global1[_wgslsmith_index_u32(86776u, 25u)], false, global1[_wgslsmith_index_u32(var_1.d.x, 25u)], false), vec4<bool>(global1[_wgslsmith_index_u32(346u, 25u)], global1[_wgslsmith_index_u32(var_1.d.x, 25u)], global1[_wgslsmith_index_u32(9291u, 25u)], true), false), !vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.b.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], false), any(vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 25u)], global1[_wgslsmith_index_u32(var_0.c.x, 25u)], global1[_wgslsmith_index_u32(var_1.d.x, 25u)], false)))), all(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 25u)]))), any(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false, global1[_wgslsmith_index_u32(global0.c.x, 25u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(var_0.c.x, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], false, false, global1[_wgslsmith_index_u32(30282u, 25u)])))), vec2<i32>(u_input.a.x, 1i), func_4(vec4<bool>(true, select(false && global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(~0u, 25u)], true), !all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false)), true), vec2<i32>(u_input.a.x, 4530i), func_4(select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.c.x, 25u)], global1[_wgslsmith_index_u32(115092u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.c.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(var_1.d.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)])), vec2<i32>(u_input.a.x, -22960i), Struct_2(u_input.b, Struct_1(vec4<u32>(var_1.a.x, global0.b.x, 69203u, 16284u), global0.b, var_1.c, global0.a.xxx), vec2<f32>(1f, 1f)), Struct_3(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 25u)], false, global1[_wgslsmith_index_u32(u_input.b, 25u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false, global1[_wgslsmith_index_u32(var_1.d.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global0.d.x, 25u)], false, global1[_wgslsmith_index_u32(u_input.b, 25u)])))), Struct_3(select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(44214u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(54994u, 25u)], true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], true, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(global0.c.x, 25u)], true, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(9852u, 25u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(global0.d.x, 25u)], global1[_wgslsmith_index_u32(global0.b.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(global0.b.x, 25u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_1.b.x, 25u)], global1[_wgslsmith_index_u32(44073u, 25u)], global1[_wgslsmith_index_u32(global0.c.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(615u, 25u)], false, global1[_wgslsmith_index_u32(var_0.d.x, 25u)], global1[_wgslsmith_index_u32(global0.a.x, 25u)]))))), Struct_3(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 25u)], true, global1[_wgslsmith_index_u32(global0.d.x, 25u)], global1[_wgslsmith_index_u32(var_1.c.x, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(var_0.d.x, 25u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false, true, global1[_wgslsmith_index_u32(48630u, 25u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~func_2().x), u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_2.c.x)))), func_4(select(!vec4<bool>(global1[_wgslsmith_index_u32(55688u, 25u)], true, false, global1[_wgslsmith_index_u32(1u, 25u)]), !vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], true, global1[_wgslsmith_index_u32(2943u, 25u)]), select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(var_0.b.x, 25u)]), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(0u, 25u)]), global1[_wgslsmith_index_u32(1u, 25u)])), min(u_input.a.xy, vec2<i32>(-50800i, 2147483647i)) >> (vec2<u32>(u_input.b, 41220u) % vec2<u32>(32u)), func_4(vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_1.b.x, 25u)], global1[_wgslsmith_index_u32(20079u, 25u)]), u_input.a.yx | u_input.a.xx, Struct_2(global0.b.x, var_2.b, var_2.c), Struct_3(vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.d.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)]))), Struct_3(select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.d.x, 25u)], false, global1[_wgslsmith_index_u32(0u, 25u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.d.x, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(47732u, 25u)], true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_2.a, 25u)], false)))).c.x), _wgslsmith_f_op_vec2_f32(func_4(!select(vec4<bool>(global1[_wgslsmith_index_u32(var_2.a, 25u)], false, true, global1[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(1605u, 25u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 25u)])), vec2<i32>(u_input.a.x | u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, -29961i))), func_4(!vec4<bool>(global1[_wgslsmith_index_u32(16570u, 25u)], global1[_wgslsmith_index_u32(var_2.a, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(82u, 25u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(42881i, u_input.a.x), vec2<i32>(33314i, 1i), vec2<i32>(u_input.a.x, -2147483647i)), func_4(vec4<bool>(global1[_wgslsmith_index_u32(60620u, 25u)], global1[_wgslsmith_index_u32(47685u, 25u)], global1[_wgslsmith_index_u32(1117u, 25u)], true), u_input.a.yz, Struct_2(4294967295u, Struct_1(var_0.c, u_input.c.ww, vec4<u32>(var_1.b.x, global0.d.x, var_2.a, u_input.b), var_0.c.yyx), var_2.c), Struct_3(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 25u)], true, false))), Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 25u)], global1[_wgslsmith_index_u32(36164u, 25u)], global1[_wgslsmith_index_u32(13932u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)]))), Struct_3(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)]))).c * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c * var_2.c)) + _wgslsmith_f_op_vec2_f32(select(func_4(vec4<bool>(global1[_wgslsmith_index_u32(3169u, 25u)], global1[_wgslsmith_index_u32(var_2.a, 25u)], false, global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(u_input.c.x, var_2.b, var_2.c), Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 25u)], global1[_wgslsmith_index_u32(91530u, 25u)], true, false))).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, 2380f)), global1[_wgslsmith_index_u32(~27666u, 25u)])))), firstTrailingBit(vec2<i32>(u_input.a.x, (u_input.a.x & -1i) | (i32(-1i) * -2147483647i))));
}

