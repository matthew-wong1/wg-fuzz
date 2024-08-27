struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-28723i, 2147483647i, -79728i);

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_1, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = 1080f;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-533f, -385f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1615f, -1072f) * vec2<f32>(arg_1.c, -1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-529f, 381f)), !vec2<bool>(arg_1.a.x, all(select(vec3<bool>(arg_2.d.x, arg_2.d.x, false), arg_1.a.zwy, vec3<bool>(arg_2.a.x, arg_2.a.x, true))))));
    global0 = _wgslsmith_mod_vec3_i32(max(arg_1.e, select(vec3<i32>(_wgslsmith_sub_i32(56223i, 0i), -4948i, ~(-2081i)), vec3<i32>(-arg_2.e.x, arg_2.e.x, ~u_input.c), !all(arg_2.a.wx))), arg_1.e);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, ~0u), 0u, _wgslsmith_mod_u32(15273u, abs(53052u)), 0u)), ~max(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(5607u, 1u, 23273u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 58117u, 20508u) | vec4<u32>(0u, 36269u, 3428u, u_input.a.x)), ~(~vec4<u32>(11118u, 4294967295u, u_input.a.x, 1u)))), 2u)];
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)))), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_div_f32(var_0, 1000f))))));
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global1 = u_input.a.x;
    global0 = _wgslsmith_sub_vec3_i32(arg_2.e, vec3<i32>(2147483647i, ~(~(-1584i)) ^ (arg_0.e.x & (-2147483647i ^ global0.x)), global0.x));
    global2 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(arg_1.yy));
    global1 = u_input.a.x;
    return min(_wgslsmith_div_u32(1u, abs(func_3(14634u, Struct_1(arg_0.a, 1579f, -215f, vec3<bool>(true, false, arg_0.a.x), arg_0.e), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 2u)]))), ~4294967295u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    return true & (1u <= _wgslsmith_mult_u32(func_2(Struct_1(vec4<bool>(false, false, true, arg_3.d.x), 148f, -1279f, vec3<bool>(false, arg_1.x, arg_3.d.x), arg_3.e), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.c, -1933f, 1000f))), Struct_1(arg_3.a, arg_3.b, 116f, arg_3.a.xxw, vec3<i32>(2147483647i, -3356i, 12181i))), countOneBits(0u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_3.e;
    var var_0 = abs(1i);
    global0 = arg_2.e;
    global1 = ~arg_1.x;
    var var_1 = all(!arg_0.a);
    return Struct_1(select(arg_0.a, arg_2.a, all(arg_2.a.yyx)), arg_3.b, arg_3.b, select(!vec3<bool>(true, select(true, arg_2.d.x, arg_3.a.x), arg_0.e.x <= 2147483647i), select(arg_2.a.wwz, vec3<bool>(any(vec4<bool>(arg_0.d.x, true, arg_2.d.x, arg_0.d.x)), false, !arg_3.d.x), arg_0.d), all(select(!arg_3.a.zyy, !arg_2.d, select(arg_2.a.wxz, vec3<bool>(arg_0.d.x, arg_2.a.x, true), arg_3.a.xxx)))), arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1305f, -673f)));
    global2 = array<Struct_1, 2>();
    let var_1 = func_4(Struct_1(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(trunc(915f)), select(vec3<bool>(true, true, true), vec3<bool>(true, func_1(global0.yy, vec3<bool>(true, false, true), u_input.a, Struct_1(vec4<bool>(true, true, false, false), 489f, -113f, vec3<bool>(true, false, true), vec3<i32>(-2147483647i, global0.x, 1i))), true), false), -_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-1i, u_input.b, u_input.c)), firstLeadingBit(vec3<i32>(-6967i, u_input.b, 2147483647i)))), abs(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(~1u, ~u_input.a.x, u_input.a.x | 0u, 1u)), Struct_1(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(715f - -1084f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f - 374f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2280f, -148f)) - _wgslsmith_f_op_f32(trunc(-2240f))))), vec3<bool>(true, true, true), select(min(abs(vec3<i32>(global0.x, -1i, 2147483647i)), ~vec3<i32>(0i, 0i, -2147483647i)), vec3<i32>(76457i, reverseBits(-1i), u_input.c << (4294967295u % 32u)), vec3<bool>(true, true, true))), Struct_1(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-179f, _wgslsmith_f_op_f32(-303f - -1848f))), !vec3<bool>(any(vec4<bool>(true, false, true, false)), any(vec2<bool>(true, true)), true), vec3<i32>(0i, _wgslsmith_div_i32(-78772i, ~u_input.c), countOneBits(1504i))));
    let var_2 = select(vec3<bool>(!var_1.d.x, any(var_1.d.yy), u_input.a.x != u_input.a.x), var_1.a.wzy, vec3<bool>(true && all(var_1.a.yz), var_1.d.x, !(!var_1.d.x && true)));
    let var_3 = countOneBits(vec4<u32>(u_input.a.x, select(4294967295u, _wgslsmith_mult_u32(u_input.a.x, 40972u) ^ ~1u, true), ~(countOneBits(0u) | u_input.a.x), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(round(var_1.c)))))), var_1.e.x, -23138i);
}

