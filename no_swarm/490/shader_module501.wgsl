struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 26> = array<i32, 26>(59505i, -25616i, 0i, 1i, 54483i, 8818i, -29899i, -55982i, 28867i, 0i, -10761i, 1i, 1i, 2147483647i, -88347i, 5469i, 0i, 16009i, -25626i, -9962i, 8678i, 2147483647i, 6658i, -1i, 0i, 13017i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = arg_0;
    global0 = arg_1;
    global1 = array<i32, 26>();
    var_0 = arg_2;
    var_0 = arg_0;
    return _wgslsmith_f_op_vec3_f32(ceil(arg_2.b));
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = vec2<i32>(60024i << ((_wgslsmith_add_u32(firstLeadingBit(1u), ~u_input.a) >> (~(~1u) % 32u)) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(3969i, 0i, u_input.c.x, u_input.b) ^ vec4<i32>(~u_input.d.x, -u_input.d.x, u_input.c.x, _wgslsmith_div_i32(0i, 2147483647i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~u_input.d, vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(46347u, 26u)], u_input.c.x, 1i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) % vec4<u32>(32u))), vec4<i32>(u_input.c.x, -u_input.d.x, abs(global1[_wgslsmith_index_u32(1588u, 26u)]), u_input.b), u_input.d)));
    global0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_0, Struct_2(global0.b.x, arg_0.b), Struct_2(1000f, arg_0.b))) + arg_0.b)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1428f))));
    global0 = arg_0;
    var var_2 = reverseBits(vec3<u32>(~_wgslsmith_div_u32(~u_input.a, 5831u ^ u_input.a), u_input.a, _wgslsmith_mult_u32(0u, ~u_input.a)));
    return u_input.c.xy;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = select(-vec3<i32>(-24594i, 2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.xy, reverseBits(u_input.c.yx))), u_input.c, vec3<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false))), true, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.b.yz)), _wgslsmith_f_op_vec2_f32(abs(arg_2.b.zy))) - _wgslsmith_f_op_vec2_f32(-global0.b.zx))));
    var var_2 = false;
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1652f, _wgslsmith_f_op_f32(max(arg_2.a, 1000f)), _wgslsmith_f_op_f32(arg_2.b.x * 156f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(-1784f, global0.b), Struct_2(1362f, vec3<f32>(var_1.x, global0.b.x, 1448f)), arg_2)))));
    global1 = array<i32, 26>();
    return Struct_2(_wgslsmith_div_f32(511f, arg_1.b.x), arg_2.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = firstTrailingBit(vec2<i32>(u_input.d.x >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 120913u)) | firstTrailingBit(u_input.a)) % 32u), -func_1(arg_0).x));
    let var_1 = arg_0;
    global0 = var_1;
    var_0 = -arg_1;
    let var_2 = ~((~4294967295u ^ select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(30357u, u_input.a)), 59157u, arg_3.x)) << (u_input.a % 32u));
    return vec2<i32>(74616i, 11854i & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(arg_1.x, 44089i, -2147483647i, 0i)) << (~vec4<u32>(735u, 1u, 40982u, u_input.a) % vec4<u32>(32u)), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -u_input.d.wyx, vec3<i32>(u_input.b, -6670i, ~global1[_wgslsmith_index_u32(u_input.a, 26u)]));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(~(~u_input.a), u_input.a), min(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 77832u)), vec3<u32>(65604u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 1u, 1u)), min(_wgslsmith_div_u32(1u, u_input.a), u_input.a))), u_input.d, func_4(func_3(Struct_1(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(6720u, u_input.a), vec2<bool>(true, true)), abs(vec4<i32>(22358i, global1[_wgslsmith_index_u32(56816u, 26u)], 0i, var_0.x)), func_1(Struct_2(-807f, global0.b))), Struct_2(_wgslsmith_f_op_f32(1328f - -2159f), global0.b), Struct_2(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_vec3_f32(abs(global0.b)))), var_0.xz, vec2<bool>(true, true), vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), u_input.a <= _wgslsmith_clamp_u32(4294967295u, 1u, 0u), true)));
    let var_2 = func_3(var_1, func_3(Struct_1(~var_1.a, ~vec4<i32>(2147483647i, 1i, 4113i, -31723i), firstTrailingBit(var_1.c)), func_3(Struct_1(var_1.a, _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_1.c.x, u_input.c.x), vec4<i32>(u_input.b, -6007i, 2147483647i, u_input.b)), -u_input.c.xx), Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.b.x, global0.a))), Struct_2(_wgslsmith_f_op_f32(-global0.a), global0.b)), Struct_2(-1128f, global0.b)), Struct_2(_wgslsmith_f_op_f32(-global0.b.x), global0.b));
    var var_3 = var_2;
    var_0 = vec3<i32>(-1i, -1600i, -var_0.x);
    global0 = var_2;
    var var_4 = var_1;
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.zx + vec2<f32>(665f, -207f)), global0.b.zz)), i32(-1i) * -var_1.c.x);
}

