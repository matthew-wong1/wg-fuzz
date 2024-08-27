struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_5 = Struct_5(vec4<i32>(2147483647i, -9167i, 13781i, 2147483647i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    global1 = Struct_5(vec4<i32>(0i, 27833i, max(u_input.b, reverseBits(i32(-1i) * -32183i)), ~(-28057i)));
    var var_0 = Struct_5(_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_div_i32(80117i, global1.a.x)), countOneBits(global1.a.x), _wgslsmith_add_i32(~u_input.b, reverseBits(global1.a.x)), global1.a.x), global1.a));
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.a.yyy, u_input.a.xww), 1u), 37319u);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(countOneBits(~(59727u ^ var_1.x)), abs(abs(~var_1.x))), ~1u), 8u)];
    global1 = Struct_5(_wgslsmith_div_vec4_i32(-var_0.a, vec4<i32>(var_2.b, global1.a.x, -1i, firstTrailingBit(24704i & var_2.b))));
    return arg_0.yzx;
}

fn func_3(arg_0: vec2<i32>) -> bool {
    global0 = array<Struct_1, 8>();
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, firstLeadingBit(45785i)), u_input.c), -(-u_input.c ^ (global1.a.x >> (firstTrailingBit(1u) % 32u))));
    let var_1 = !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(false, false, true)), true);
    let var_2 = Struct_1(all(!vec4<bool>(var_1.x, true, true, var_1.x)) | var_1.x, -2147483647i, var_1.wx, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-348f * 1730f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 685f, -508f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-801f, -396f, 1328f, 1755f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2203f, 560f, -1093f, 1026f)))), false)));
    var var_3 = Struct_1(all(!var_1), _wgslsmith_dot_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(u_input.c, -2147483647i, var_0.x, 1i))), ~max(global1.a, -global1.a)), vec2<bool>(!any(vec3<bool>(var_1.x, false, var_1.x)), all(select(!vec2<bool>(var_2.a, var_1.x), select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_1.x, false), var_1.zw), func_2(vec4<bool>(var_1.x, var_2.a, var_1.x, var_2.c.x)).zx))), var_2.d);
    return var_2.c.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = select(!select(func_2(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), true, func_2(vec4<bool>(false, false, false, true)).x)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), func_2(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true), global1.a.x < -2147483647i), (any(vec2<bool>(false, false)) | false) != true), select(select(vec3<bool>(func_3(arg_0), true, true), vec3<bool>(true, true, all(vec4<bool>(true, false, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), func_2(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true))))));
    global1 = Struct_5(abs(global1.a));
    let var_1 = Struct_2(!var_0, global0[_wgslsmith_index_u32(u_input.d, 8u)]);
    let var_2 = Struct_5(vec4<i32>(~_wgslsmith_mod_i32(-var_1.b.b, select(arg_0.x, 7867i, var_1.b.c.x)), arg_0.x, countOneBits(u_input.b), firstLeadingBit(global1.a.x)));
    global0 = array<Struct_1, 8>();
    return Struct_2(!select(!vec3<bool>(false, true, var_1.a.x), vec3<bool>(var_1.b.d.x <= var_1.b.d.x, !var_0.x, var_1.b.a), !vec3<bool>(false, var_1.b.a, var_0.x)), var_1.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.b.d.x);
    var_0 = -1535f;
    var var_1 = u_input.a.x;
    var var_2 = u_input.a;
    let var_3 = !vec4<bool>(true, any(vec3<bool>(false, false, !arg_2.b.a)), any(!arg_2.a), func_1(_wgslsmith_div_vec2_i32(global1.a.xy & vec2<i32>(46268i, arg_1.b.b), vec2<i32>(global1.a.x, 46674i)), vec3<u32>(4294967295u, _wgslsmith_mod_u32(var_2.x, 0u), 841u), vec3<u32>(4001u, max(1u, u_input.a.x), ~u_input.a.x)).a.x);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-788f + _wgslsmith_f_op_f32(-820f * -782f))));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global1 = Struct_5(-(-global1.a >> (~vec4<u32>(u_input.d, 36864u, 0u, u_input.d) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, global1.a.x, 2147483647i) | global1.a, global1.a, func_4(vec2<bool>(true, true), func_1(vec2<i32>(u_input.c, u_input.c), u_input.a.zzx, vec3<u32>(u_input.a.x, u_input.d, 76576u)), Struct_2(vec3<bool>(true, true, false), Struct_1(true, 10604i, vec2<bool>(false, true), vec4<f32>(-674f, -216f, 297f, -532f))), _wgslsmith_clamp_i32(global1.a.x, u_input.c, 1i))));
    var var_1 = vec2<u32>(u_input.d, 8398u);
    var_0 = 1038f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(281f, 393f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1108f, -1485f), vec2<f32>(1130f, 930f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1016f, 1538f) * vec2<f32>(-884f, 1742f)))))), -118f, 67937u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1562f, _wgslsmith_div_f32(-1108f, 171f), true)), 352f, _wgslsmith_f_op_f32(-1f), 736f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(273f, 542f, 266f, 483f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, -326f, -557f, 393f))))));
}

