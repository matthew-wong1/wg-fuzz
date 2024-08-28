struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-45467i, 2741i, 2147483647i, -18184i);

var<private> global1: bool;

var<private> global2: array<vec4<f32>, 9>;

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, true, true, false, true, true, true, false, false, true, true, false, false, true, true, true, true, false, false, false, false, false, false, false, false, true, true, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_1(all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 31u)], all(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 31u)], false), global3[_wgslsmith_index_u32(u_input.d, 31u)])), false)), select(vec4<bool>(true, !(!global3[_wgslsmith_index_u32(u_input.a, 31u)]), all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], false, true)), any(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], false, global3[_wgslsmith_index_u32(28419u, 31u)]))), !vec4<bool>(true, global3[_wgslsmith_index_u32(~u_input.a, 31u)], global3[_wgslsmith_index_u32(12930u, 31u)] || true, true), vec4<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 31u)], true, global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(14006u, 31u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 31u)], false, true))), false, global3[_wgslsmith_index_u32(1u, 31u)], true)), vec2<bool>(!(!(0u >= u_input.d)), true), i32(-1i) * -(~abs(global0.x)));
    global3 = array<bool, 31>();
    var var_1 = true;
    return vec3<i32>(-arg_0, i32(-1i) * -max(1i, var_0.d), -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(global0.xx), reverseBits(vec2<i32>(23613i, u_input.e.x))), u_input.e));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global1 = true;
    let var_0 = select(_wgslsmith_clamp_i32(~abs(-23477i), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2950i, u_input.b.x), func_3(9650i))), u_input.c.x), u_input.b.x, !(!global3[_wgslsmith_index_u32((0u << (u_input.a % 32u)) & (u_input.d | 7837u), 31u)]));
    global0 = abs(reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0, var_0, 1i) >> (vec4<u32>(56508u, u_input.d, u_input.a, u_input.d) % vec4<u32>(32u)), select(vec4<i32>(var_0, u_input.e.x, global0.x, -9385i), vec4<i32>(u_input.e.x, var_0, -2147483647i, var_0), vec4<bool>(true, global3[_wgslsmith_index_u32(13514u, 31u)], global3[_wgslsmith_index_u32(u_input.d, 31u)], global3[_wgslsmith_index_u32(0u, 31u)])))));
    var var_1 = vec2<u32>(~(~5323u), ~_wgslsmith_mult_u32(93989u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 14588u, u_input.d), vec3<u32>(u_input.d, 0u, u_input.a)))) ^ ~firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(37276u, u_input.d), vec2<u32>(u_input.d, u_input.a)), vec2<u32>(68120u, u_input.d)));
    var var_2 = vec2<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(0u, var_1.x)), ~(~vec2<u32>(u_input.a, u_input.d))), vec2<u32>(firstLeadingBit(1u), ~1u)), 31u)]);
    return Struct_1(select(global3[_wgslsmith_index_u32(u_input.d, 31u)], true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_1.x << (_wgslsmith_div_u32(var_1.x, var_1.x) % 32u)), 31u)]), select(vec4<bool>(any(!vec3<bool>(var_2.x, var_2.x, false)), false, !(global3[_wgslsmith_index_u32(4294967295u, 31u)] && global3[_wgslsmith_index_u32(1u, 31u)]), false), vec4<bool>(false, true, false, false), global3[_wgslsmith_index_u32(var_1.x, 31u)]), select(select(!select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 31u)], true), vec2<bool>(var_2.x, global3[_wgslsmith_index_u32(var_1.x, 31u)]), vec2<bool>(var_2.x, global3[_wgslsmith_index_u32(0u, 31u)])), select(!vec2<bool>(true, var_2.x), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(var_1.x, 31u)]), select(vec2<bool>(false, global3[_wgslsmith_index_u32(18773u, 31u)]), vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, false))), !(!vec2<bool>(var_2.x, false))), vec2<bool>(true, true), vec2<bool>(true, true)), var_0);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> vec4<i32> {
    global0 = firstTrailingBit(vec4<i32>(arg_1.d, global0.x, _wgslsmith_mult_i32(arg_1.d, -u_input.c.x << (~1726u % 32u)), 30472i));
    var var_0 = _wgslsmith_f_op_f32(abs(arg_3));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, 1110f))), 1153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f * -778f))))));
    var var_2 = global0.xw;
    return _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(-47412i, var_2.x, -1i, global0.x)), vec4<i32>(~_wgslsmith_mult_i32(select(1i, 0i, arg_1.b.x), -var_1.d), select(-(~(-24845i)), min(1i, var_2.x << (105294u % 32u)), !(global3[_wgslsmith_index_u32(31697u, 31u)] && true)), global0.x, abs(-(-36762i ^ var_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-826f)))));
    var var_0 = min(vec4<u32>(u_input.a, 11551u, u_input.a, 71437u), vec4<u32>(abs(~(~u_input.d)), _wgslsmith_mult_u32(45559u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 26675u, u_input.d), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.a, 0u), vec3<u32>(u_input.d, u_input.d, u_input.d)))), 10400u, u_input.a));
    global1 = global3[_wgslsmith_index_u32(11220u, 31u)];
    global1 = u_input.d > ~(~_wgslsmith_sub_u32(35501u, var_0.x));
    let var_1 = (max(func_1(_wgslsmith_f_op_f32(-581f + -297f), Struct_1(global3[_wgslsmith_index_u32(12765u, 31u)], vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(24498u, 31u)]), -2047i), select(vec2<bool>(false, true), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.d, 31u)]), true), _wgslsmith_div_f32(1343f, 979f)), -vec4<i32>(global0.x, -6004i, u_input.c.x, u_input.e.x) << (~vec4<u32>(1u, u_input.a, 4294967295u, var_0.x) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, 1i), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_mod_i32(global0.x, global0.x)), 2147483647i, u_input.e.x)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 10813u), vec3<u32>(var_0.x, 53621u, 0u)), vec3<u32>(~56623u, 6814u, ~u_input.a)), firstLeadingBit(~u_input.d), 11510u, abs(1u)) % vec4<u32>(32u));
    global0 = ~vec4<i32>(_wgslsmith_sub_i32(abs(~var_1.x), _wgslsmith_clamp_i32(-var_1.x, _wgslsmith_sub_i32(var_1.x, -2147483647i), u_input.c.x)), 0i, -25440i, 41578i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.a, _wgslsmith_clamp_u32(1u, 1u, reverseBits(40873u))), ~(~var_0.yy) << (_wgslsmith_mod_vec2_u32(var_0.ww, countOneBits(var_0.yx)) % vec2<u32>(32u)), select(func_3(global0.x), var_1.xwz | vec3<i32>(u_input.c.x, 1i << (u_input.d % 32u), u_input.e.x), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 4294967295u) ^ ~7287u, 31u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(858f, -588f, -1500f) + vec3<f32>(-1000f, -1000f, 658f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-334f, -144f, 1148f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), 432f, _wgslsmith_f_op_f32(round(1099f))) * vec3<f32>(-171f, _wgslsmith_div_f32(-1000f, -672f), _wgslsmith_f_op_f32(step(620f, 703f))))));
}

