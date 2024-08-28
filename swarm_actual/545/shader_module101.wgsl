struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<vec4<bool>, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(13333u, u_input.a), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(global0[_wgslsmith_index_u32(23236u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), ~vec2<u32>(0u, u_input.a)), ~67616u, ~(~u_input.a >> (~45832u % 32u)), u_input.a);
    var var_1 = Struct_3(countOneBits(min(_wgslsmith_sub_vec3_i32(-vec3<i32>(31097i, -1i, -3813i), vec3<i32>(2116i, 2147483647i, -23643i) >> (vec3<u32>(4294967295u, 0u, var_0.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(45173i, 1i, 1i)), abs(vec3<i32>(0i, 1i, -1i))))));
    var var_2 = ~vec4<u32>(u_input.a, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(45366u, var_0.x, var_0.x, u_input.a)), ~(vec4<u32>(var_0.x, 32576u, var_0.x, 44733u) >> (vec4<u32>(u_input.a, 0u, var_0.x, 1u) % vec4<u32>(32u)))), 1u);
    let var_3 = arg_0.x;
    let var_4 = arg_0;
    return ~(~var_2.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f - 732f)), _wgslsmith_f_op_f32(1321f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-3543f)))))));
    let var_1 = Struct_2(true, Struct_1(vec4<u32>(~u_input.a, _wgslsmith_sub_u32(arg_1, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1, u_input.a, u_input.a), vec4<u32>(51063u, u_input.a, arg_1, 1u)), arg_1) & ~reverseBits(vec4<u32>(51434u, arg_1, 0u, 18805u)), arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 34763u, ~50212u, arg_1), vec4<u32>(55804u, arg_1, _wgslsmith_mod_u32(arg_1, u_input.a) & func_3(vec3<f32>(1333f, -378f, -2360f)), ~u_input.a)), vec2<u32>(u_input.a, 64032u));
    let var_2 = -16123i;
    global1 = array<vec4<bool>, 26>();
    var var_3 = -2147483647i;
    return true;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    var var_0 = select(vec2<bool>(func_2(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 10u)], false), arg_0), _wgslsmith_f_op_f32(-1126f - _wgslsmith_f_op_f32(f32(-1f) * -1116f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f - -266f) * _wgslsmith_f_op_f32(floor(-1014f)))), !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 10u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 10u)], global0[_wgslsmith_index_u32(46582u, 10u)])), vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(36176u, 10u)], global0[_wgslsmith_index_u32(9161u, 10u)])), !select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 10u)]), !vec2<bool>(global0[_wgslsmith_index_u32(59891u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), true), select(vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(54775u, 10u)], global0[_wgslsmith_index_u32(arg_0, 10u)]), global0[_wgslsmith_index_u32(~arg_0, 10u)]), true));
    global0 = array<bool, 10>();
    global1 = array<vec4<bool>, 26>();
    var var_1 = Struct_1(vec4<u32>(~_wgslsmith_mod_u32(arg_0, arg_0) & 1u, firstTrailingBit(~u_input.a), abs(u_input.a), abs(1u)), !select(false, false & (-27731i < arg_1.x), true));
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_clamp_u32(30904u, 0u, var_1.a.x), firstTrailingBit(~arg_0), 0u, firstLeadingBit(30651u)), !any(!global1[_wgslsmith_index_u32(var_1.a.x, 26u)]));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1174f * _wgslsmith_f_op_f32(f32(-1f) * -938f)) - _wgslsmith_f_op_f32(ceil(-1110f))) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(-403f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(4294967295u, vec3<i32>(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 72566i, -1i), vec3<i32>(19943i, 1i, 1i)), -28202i))), _wgslsmith_f_op_f32(min(574f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -129f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(f32(-1f) * -885f)))), -940f, 257f);
    var var_1 = Struct_1(abs(vec4<u32>(u_input.a | u_input.a, 12329u, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a))) | ((vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 100533u) % vec4<u32>(32u)))), global0[_wgslsmith_index_u32(1u, 10u)]);
    var var_2 = select(vec2<bool>(any(!select(vec2<bool>(var_1.b, false), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(var_1.b, true))), all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], var_1.b), vec2<bool>(true, var_1.b), false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(25818u, 10u)] || false))), vec2<bool>(any(vec4<bool>(var_1.b | var_1.b, global0[_wgslsmith_index_u32(0u, 10u)] == global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)] & false, var_1.b)), any(vec2<bool>(any(vec3<bool>(true, false, var_1.b)), var_1.b))), select(vec2<bool>(!global0[_wgslsmith_index_u32(62294u, 10u)], any(!vec2<bool>(var_1.b, global0[_wgslsmith_index_u32(var_1.a.x, 10u)]))), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 10u)] | var_1.b, global0[_wgslsmith_index_u32(1u, 10u)]), select(vec2<bool>(true, true), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], var_1.b), var_1.b), select(vec2<bool>(var_1.b, global0[_wgslsmith_index_u32(31205u, 10u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(4907u, 10u)]), false)), !select(vec2<bool>(false, false), vec2<bool>(var_1.b, false), true)), true));
    var var_3 = _wgslsmith_sub_u32(var_1.a.x, var_1.a.x);
    var var_4 = global1[_wgslsmith_index_u32(4294967295u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yx, var_0.x, ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, -23800i, 8196i, 36641i), vec4<i32>(-40298i, -40031i, -112769i, -20595i)), select(vec4<i32>(56550i, 2147483647i, 4568i, -4831i), vec4<i32>(-2147483647i, -1811i, -2147483647i, -27805i), global1[_wgslsmith_index_u32(1u, 26u)])) ^ 1i);
}

