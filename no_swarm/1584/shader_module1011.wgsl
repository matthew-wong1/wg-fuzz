struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<f32>, 12>;

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_1.c.x;
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.xz - _wgslsmith_f_op_vec2_f32(-global0.a.zx)) * global0.a.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1833f, arg_0) + _wgslsmith_f_op_vec2_f32(step(arg_1.a.xx, vec2<f32>(arg_0, -263f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -532f)) * _wgslsmith_f_op_vec2_f32(-global0.a.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1331f, -1000f), arg_1.a.xz) - _wgslsmith_div_vec2_f32(arg_1.a.zy, global0.a.zx)), !select(arg_1.c.xw, vec2<bool>(false, arg_1.c.x), global0.c.x)))), arg_1.c.zy));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(global0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)), 578f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), -481f)))), select(_wgslsmith_mult_i32(max(u_input.a.x, -33511i), firstTrailingBit(0i)), u_input.a.x, arg_1.c.x) << (~global3.x % 32u), arg_1.c);
    global2 = array<vec4<f32>, 12>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1.a))), arg_1.a, select(vec3<bool>(false, false, global0.c.x), vec3<bool>(false, true, true), arg_1.c.x))) - _wgslsmith_f_op_vec3_f32(min(arg_1.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -538f, -938f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-639f, -369f, -1105f))), vec3<bool>(arg_1.c.x, var_1.c.x, arg_1.c.x)))))), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(~393i, -var_1.b), _wgslsmith_mod_i32(min(-2147483647i, 10359i), i32(-1i) * -2147483647i)), select(global0.c, global0.c, vec4<bool>(true, global0.b < global0.b, global0.c.x, arg_1.c.x)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(var_1.a)), var_2.a));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_add_vec3_i32(u_input.a.yzz, -u_input.a.wzw & (vec3<i32>(-21326i, abs(u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, arg_1.b, -27963i)) >> (~vec3<u32>(15470u, arg_3.x, 4294967295u) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)), _wgslsmith_f_op_f32(f32(-1f) * -763f)), Struct_1(arg_1.a, var_0.x, !select(vec4<bool>(false, false, arg_1.c.x, false), global0.c, true)))), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.x), var_0.xx)), _wgslsmith_div_i32(~(-25088i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, global0.b), vec2<i32>(75800i, -2147483647i)))), ~global0.b ^ _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(-18212i, arg_1.b))), vec4<bool>(all(global0.c.yy), !(true & all(vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x))), global0.c.x, true || global0.c.x));
    var var_2 = 53754u;
    global2 = array<vec4<f32>, 12>();
    global0 = var_1;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 * _wgslsmith_f_op_vec2_f32(global0.a.yx * vec2<f32>(global1.x, global1.x))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.x, var_1.a.x)))) * _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-940f, global0.a.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(arg_0.a.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global1.x, arg_0, global0.a.yz, vec3<u32>(global3.x, 4294967295u, arg_2))) * _wgslsmith_f_op_vec2_f32(-arg_0.a.yy)), global0.a.xy, true))));
    global1 = _wgslsmith_f_op_vec2_f32(-global0.a.zx);
    global1 = global0.a.yy;
    global2 = array<vec4<f32>, 12>();
    global1 = _wgslsmith_f_op_vec2_f32(-arg_0.a.xz);
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), global0.a.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1620f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, -731f)))) * _wgslsmith_f_op_vec2_f32(step(global0.a.zx, vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(arg_0.a.x, Struct_1(vec3<f32>(arg_1, arg_0.a.x, global0.a.x), 1i, global0.c), vec2<f32>(-312f, arg_1), global3.xyx)).x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))))));
    global1 = global0.a.yx;
    var var_0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, arg_0.a.x, -205f))), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(_wgslsmith_clamp_i32(global0.b, var_0.b, global0.b)), ~u_input.a.x), vec2<i32>((i32(-1i) * -1231i) | _wgslsmith_sub_i32(35410i, global0.b), 82919i)), vec4<bool>(select(all(global0.c.xy), global0.c.x || !arg_0.c.x, all(var_0.c.xy)), var_0.c.x, false, select(all(select(global0.c.wz, vec2<bool>(true, true), global0.c.wy)), _wgslsmith_f_op_f32(exp2(global0.a.x)) <= global1.x, global0.c.x)));
    global2 = array<vec4<f32>, 12>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!all(global0.c), false, false);
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<f32>(global0.a.x, 1537f, 873f), -2147483647i, vec4<bool>(global0.c.x, false, false, true)), true, _wgslsmith_dot_vec2_u32(global3.zz, global3.zx)))), reverseBits(-1i), select(!select(global0.c, global0.c, global0.c), !select(global0.c, global0.c, global0.c.x), vec4<bool>(false, var_0.x, -1i != u_input.a.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2066f, _wgslsmith_f_op_f32(abs(global0.a.x)), true))) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(-1250f, global1.x), Struct_1(vec3<f32>(global1.x, global0.a.x, global0.a.x), global0.b, vec4<bool>(false, global0.c.x, true, var_0.x)))).x));
    var var_2 = global0.a.zz;
    global0 = Struct_1(global0.a, -2147483647i, !vec4<bool>(false, true | (1202f <= global0.a.x), all(global0.c), global0.c.x));
    global2 = array<vec4<f32>, 12>();
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(-global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-430f)), var_2.x, var_2.x)));
}

