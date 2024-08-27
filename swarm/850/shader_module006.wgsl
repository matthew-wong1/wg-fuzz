struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<u32, 27>;

var<private> global2: array<f32, 13> = array<f32, 13>(-328f, 715f, 1000f, 903f, -693f, 281f, -1000f, -316f, 365f, -1010f, 596f, -229f, -1332f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~max(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.c.yw, arg_0.c.wy), ~vec2<u32>(global1[_wgslsmith_index_u32(8u, 27u)], arg_0.c.x))), 13u)];
    global2 = array<f32, 13>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(487f, _wgslsmith_f_op_f32(round(649f)))))), -628f));
    var_1 = 1129f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_0.a);
    return -2047f;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = min(6837i, u_input.a);
    let var_1 = !all(vec4<bool>(any(arg_2), true, any(arg_0.b.xy), all(arg_0.b.wwx)));
    let var_2 = u_input.a;
    global2 = array<f32, 13>();
    var_0 = firstLeadingBit(1i);
    return Struct_2(vec4<u32>(58624u, 0u, 4294967295u, 58752u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~18745u, min(global1[_wgslsmith_index_u32(arg_1.x, 27u)], u_input.b), 14893u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1907u, u_input.b, 0u), vec3<u32>(72535u, arg_1.x, 1u), vec3<u32>(26524u, 26235u, 14357u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 27u)], arg_1.x), vec3<u32>(arg_1.x, 8073u, 20885u)) << (~vec3<u32>(58001u, 4294967295u, 40130u) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(vec4<u32>(max(1u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)] % 32u), 0u) >> (4294967295u % 32u), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(48630u, global1[_wgslsmith_index_u32(81319u ^ global1[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], 1u, select(global1[_wgslsmith_index_u32(0u, 27u)], 1u, true)), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)] >> (4294967295u % 32u), 1u, _wgslsmith_div_u32(u_input.b, 1u), 4294967295u)), abs(u_input.b)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 23980u), ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], 62709u)), 90625u, ~u_input.b));
    global1 = array<u32, 27>();
    var var_1 = func_3(Struct_3(reverseBits(~0u) == select(u_input.b, min(53031u, var_0.a.x), true), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), u_input.b < (_wgslsmith_dot_vec3_u32(var_0.a.yxy, var_0.a.zyx) >> (~var_0.b.x % 32u)), arg_0), var_0.a.wz, vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true)))), all(vec3<bool>(true, false, true)), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 13u)]), 1077f, _wgslsmith_f_op_f32(589f - 1269f), _wgslsmith_f_op_f32(func_2(Struct_1(242f, vec2<bool>(false, true), var_0.a, var_0.a.x, vec4<bool>(true, true, false, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 13u)], -1247f, global2[_wgslsmith_index_u32(1482u, 13u)], arg_0.x), vec4<f32>(global2[_wgslsmith_index_u32(97985u, 13u)], -1472f, 838f, -114f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -1585f, arg_0.x, global2[_wgslsmith_index_u32(83467u, 13u)]), vec4<f32>(arg_0.x, -995f, 1000f, global2[_wgslsmith_index_u32(774u, 13u)])))))));
    let var_2 = !select(vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), false), vec3<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), true), true);
    var_1 = var_0;
    return func_3(Struct_3(all(select(!vec3<bool>(false, var_2.x, true), select(var_2, vec3<bool>(true, true, var_2.x), var_2.x), !var_2)), select(!(!vec4<bool>(true, false, var_2.x, false)), vec4<bool>(true, 18387i <= u_input.a, all(vec2<bool>(false, var_2.x)), true), ~0u <= ~var_1.a.x), !(!var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0))))), var_0.a.wz, vec3<bool>(var_2.x, true, all(var_2.yz) && all(!var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-161f - arg_0.x))), arg_0.x, 523f, _wgslsmith_f_op_f32(func_2(Struct_1(global2[_wgslsmith_index_u32(var_1.b.x, 13u)], vec2<bool>(var_2.x, var_2.x), vec4<u32>(58947u, var_0.b.x, 4294967295u, 0u), 54572u, vec4<bool>(false, true, var_2.x, false)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<u32> {
    global0 = -arg_2.x;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a, arg_3.a) * -210f)))), !(!vec2<bool>(arg_3.b.x, any(arg_3.e))), arg_1.a, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1.a, arg_1.a), vec4<u32>(1u, arg_3.c.x, 9147u, 68388u)), ~arg_3.c.x), select(select(select(arg_3.e, arg_3.e, arg_3.e), !(!arg_3.e), false), select(vec4<bool>(true, true, any(vec2<bool>(arg_3.e.x, arg_3.b.x)), true), select(!vec4<bool>(arg_3.e.x, arg_3.e.x, true, arg_3.e.x), select(arg_3.e, vec4<bool>(false, true, arg_3.b.x, arg_3.e.x), arg_3.b.x), !arg_3.e), arg_3.e), !any(vec3<bool>(true, true, true))));
    let var_1 = firstLeadingBit(max(arg_2.x, u_input.a >> (arg_3.c.x % 32u)));
    var var_2 = var_0;
    var var_3 = arg_1;
    return vec3<u32>(~firstTrailingBit(_wgslsmith_sub_u32(32299u, 27082u >> (global1[_wgslsmith_index_u32(1u, 27u)] % 32u))), var_0.d, ~17535u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 27>();
    let var_0 = Struct_2(~_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], 7638u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], global1[_wgslsmith_index_u32(0u, 27u)])), abs(vec4<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(0u, 27u)], 1u) ^ vec4<u32>(u_input.b, u_input.b, 15817u, 4294967295u))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1174u, 0u, u_input.b)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 19348u, 16057u), ~vec3<u32>(4294967295u, u_input.b, global1[_wgslsmith_index_u32(20568u, 27u)])), select(reverseBits(vec3<u32>(1u, 27535u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 27u)], 27u)])), vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 27u)], 2940u), vec3<bool>(true, true, true)), func_4(608u << (0u % 32u), func_1(vec3<f32>(316f, 1597f, 436f)), vec3<i32>(u_input.a, u_input.a, -1i), Struct_1(198f, vec2<bool>(false, false), vec4<u32>(u_input.b, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], 4294967295u), 0u, vec4<bool>(true, true, true, false))))));
    var var_1 = select(any(vec2<bool>(true, true)), true, 669u != global1[_wgslsmith_index_u32(1u, 27u)]);
    let var_2 = vec3<bool>(true, true == all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)));
    let var_3 = var_0.a.ywx;
    var var_4 = Struct_3(all(select(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, false)), vec4<bool>(all(vec3<bool>(var_2.x, false, true)), global2[_wgslsmith_index_u32(var_3.x, 13u)] >= 410f, false && var_2.x, var_2.x), select(vec4<bool>(var_2.x, true, false, var_2.x), select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(false, true, true, var_2.x), true), true))), select(!(!vec4<bool>(var_2.x, false, false, false)), select(!(!vec4<bool>(false, var_2.x, false, false)), vec4<bool>(false, true, var_2.x, var_2.x != false), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(true, false, false, var_2.x), vec4<bool>(var_2.x, false, false, false)), all(vec3<bool>(false, var_2.x, var_2.x)))), select(select(!vec4<bool>(false, var_2.x, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(true, var_2.x, var_2.x, false), u_input.a <= u_input.a), var_2.x)), all(!(!select(var_2, vec3<bool>(var_2.x, var_2.x, true), var_2))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(24201u, 13u)], 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1430f, global2[_wgslsmith_index_u32(u_input.b, 13u)], 1337f)), select(var_2, vec3<bool>(false, false, var_2.x), vec3<bool>(var_2.x, false, false)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 27u)], 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(0u, 13u)]) + vec3<f32>(-401f, -1245f, -1000f)))), vec3<bool>(var_2.x, global2[_wgslsmith_index_u32(4294967295u, 13u)] == -496f, true))))));
    global2 = array<f32, 13>();
    var var_5 = _wgslsmith_mod_vec4_i32(abs(abs(select(vec4<i32>(-12383i, -1i, 2147483647i, 11010i), vec4<i32>(0i, u_input.a, 0i, u_input.a), true & var_2.x))), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -28545i, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, -45946i, u_input.a)) >> (~104735u % 32u), 2147483647i, u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.xwx, var_0.a, var_5.yzy);
}

