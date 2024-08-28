struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: array<vec2<u32>, 15>;

var<private> global4: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = Struct_3((-(~arg_0.a) >> (abs(~global1.a.x) % 32u)) | ~arg_0.a);
    global0 = array<vec4<i32>, 20>();
    global2 = -_wgslsmith_div_i32(-(_wgslsmith_div_i32(0i, u_input.b.x) | 0i), select(_wgslsmith_mult_i32(0i, -1735i), -2943i, true) ^ ~(0i ^ var_0.a));
    global2 = -abs(arg_0.a);
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~1u >> (u_input.d.x % 32u), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, global1.a.x) >> (u_input.a.x % 32u), min(_wgslsmith_add_u32(46149u, global1.a.x), _wgslsmith_dot_vec2_u32(global1.a.wy, global1.a.zx))), firstLeadingBit(~max(vec4<u32>(4294967295u, u_input.d.x, global1.a.x, global1.a.x), vec4<u32>(4294967295u, 1u, global1.a.x, global1.a.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.xy, global1.b)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-263f, arg_1.x), vec2<f32>(504f, 1336f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xz - global1.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b - global1.b) - vec2<f32>(-150f, 695f)) * _wgslsmith_div_vec2_f32(arg_1.yz, vec2<f32>(global1.b.x, global1.b.x)))));
    return _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_0.a, -3915i, -8074i, var_0.a)), -(u_input.c << (vec4<u32>(22487u, u_input.a.x, global1.a.x, 0u) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(54095u << (u_input.a.x % 32u), 20u)]), -min(vec4<i32>(var_0.a, reverseBits(16304i), -1i, _wgslsmith_add_i32(arg_0.a, 2147483647i)), _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(77879u, global1.a.x), vec2<u32>(u_input.d.x, global1.a.x)), 20u)], vec4<i32>(-545i, var_0.a, var_0.a, -1i))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-242f * -1649f))), 870f) * global1.b.x);
    global3 = array<vec2<u32>, 15>();
    global2 = _wgslsmith_mod_i32(u_input.b.x ^ _wgslsmith_dot_vec4_i32(u_input.c << (~u_input.a % vec4<u32>(32u)), func_3(Struct_3(u_input.c.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(884f, var_0, -176f))))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -52226i, u_input.b.x) | global0[_wgslsmith_index_u32(0u, 20u)], u_input.c), ~(~vec4<i32>(-1i, -21843i, u_input.c.x, u_input.b.x))), firstTrailingBit(-u_input.c) >> (vec4<u32>(min(u_input.a.x, u_input.d.x), _wgslsmith_div_u32(79073u, u_input.a.x), 18939u, u_input.d.x) % vec4<u32>(32u))));
    global2 = u_input.b.x;
    var var_1 = Struct_2(abs(func_3(Struct_3(1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(517f, arg_0, arg_0)) + _wgslsmith_div_vec3_f32(vec3<f32>(682f, var_0, arg_0), vec3<f32>(-2281f, 545f, arg_0)))).yz));
    return Struct_1(~(~vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, 0u), _wgslsmith_mod_u32(4294967295u, u_input.d.x), 67639u, ~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-873f * global1.b.x), _wgslsmith_f_op_f32(select(var_0, arg_0, false))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(746f, var_0), vec2<f32>(global1.b.x, global1.b.x), vec2<bool>(true, true)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = -u_input.b.x;
    global4 = array<vec2<bool>, 16>();
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(~(~arg_1.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 15434u, arg_1.a.x, arg_1.a.x) << (global1.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(global1.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(7644u, arg_1.a.x, global1.a.x, u_input.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.b, _wgslsmith_f_op_vec2_f32(-arg_1.b), select(global4[_wgslsmith_index_u32(u_input.d.x, 16u)], vec2<bool>(true, false), global4[_wgslsmith_index_u32(arg_1.a.x, 16u)]))))));
    var var_2 = -706f;
    let var_3 = func_2(var_1.b.x);
    return _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(arg_0.x + func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1721f, 591f)), 1f)).b.x)));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_i32(u_input.b.ww, u_input.b.xy));
    var var_1 = reverseBits(u_input.c.yxw);
    global0 = array<vec4<i32>, 20>();
    let var_2 = arg_1.x;
    let var_3 = true;
    return func_2(var_2);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    global3 = array<vec2<u32>, 15>();
    var var_0 = ~min(~arg_1.a.x, 0u);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-644f, _wgslsmith_div_f32(-306f, -1713f), arg_3)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(391f, -504f), _wgslsmith_f_op_f32(min(global1.b.x, global1.b.x))))) * global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1799f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-40638i), ~0i), _wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, arg_2), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, -48323i), u_input.b.xw), firstLeadingBit(vec2<i32>(-35041i, -256i)))) >= -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(global1.a.x, 20u)], vec4<i32>(arg_0, -4832i, arg_2, 0i)), min(-9109i, 2147483647i))));
    global3 = array<vec2<u32>, 15>();
    var var_2 = abs(1i);
    return Struct_1(vec4<u32>(firstLeadingBit(1u), ~(~_wgslsmith_clamp_u32(global1.a.x, 18883u, 1u)), ~firstLeadingBit(~u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.a.x, 16374u) >> (arg_1.a.x % 32u), 60808u)), global1.b);
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<i32>, 20>();
    var var_0 = ~(~countOneBits(max(-15464i, 0i)));
    global1 = func_6(_wgslsmith_dot_vec4_i32(select(u_input.b, _wgslsmith_mult_vec4_i32(u_input.c, ~vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.c.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), ~vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), u_input.b.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.b.x, u_input.c.x), _wgslsmith_mult_i32(u_input.b.x, -32661i))), func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-421f, -1433f, global1.b.x, 1049f)))), func_2(_wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(536f)), 307f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(select(global1.b.x, -260f, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.x, 1000f, global1.b.x, -851f), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))) - vec4<f32>(1722f, global1.b.x, global1.b.x, -1089f))))), -2147483647i, true);
    var var_1 = Struct_2(~u_input.b.zy);
    let var_2 = select(!vec4<bool>(!any(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, true)), select(true, any(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true))), true), !vec4<bool>(any(vec4<bool>(true, false, false, false)), _wgslsmith_div_f32(-789f, 870f) <= global1.b.x, true, true), global1.b.x != _wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -185f))).b.x));
    return Struct_3(firstTrailingBit(max(~1i, ~(var_1.a.x ^ 10394i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zy & ~u_input.c.yy, vec2<i32>(-(~(-2147483647i)), ~u_input.c.x | -u_input.b.x)), vec2<i32>(12675i, -6571i));
    var var_2 = func_1();
    global3 = array<vec2<u32>, 15>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x))), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(global1.b.x - 438f)) - func_2(global1.b.x).b.x) - global1.b.x), _wgslsmith_f_op_f32(sign(-306f)));
    let var_4 = _wgslsmith_f_op_f32(-var_3.x);
    global2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

