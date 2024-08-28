struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(1u, 43552u, 28439u, 6582u), vec4<u32>(0u, 1u, 4294967295u, 54929u), vec4<u32>(14558u, 61694u, 33552u, 92094u), vec4<u32>(91949u, 1u, 21622u, 21822u), vec4<u32>(81995u, 75371u, 1u, 0u), vec4<u32>(4294967295u, 50369u, 57597u, 0u), vec4<u32>(0u, 4294967295u, 40643u, 2804u), vec4<u32>(1u, 8523u, 0u, 4294967295u), vec4<u32>(0u, 76603u, 28811u, 1u));

var<private> global2: vec2<f32> = vec2<f32>(1208f, 1472f);

var<private> global3: vec3<f32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = select(!vec4<bool>(!(arg_0 | arg_0), all(vec2<bool>(arg_0, arg_0)), true, arg_0), !select(!select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, false)), vec4<bool>(arg_0, select(arg_0, arg_0, true), arg_0, false), vec4<bool>(arg_0 || arg_0, !arg_0, any(vec3<bool>(true, true, arg_0)), -1292f >= global3.x)), select(!vec4<bool>(all(vec4<bool>(true, arg_0, arg_0, true)), true, arg_0, select(true, arg_0, false)), vec4<bool>(true, true, select(arg_0, true, false), arg_0), arg_0));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), -437f)));
    let var_2 = vec3<bool>(true, true, arg_0);
    var var_3 = vec3<bool>(var_2.x, var_2.x, false);
    global2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, -847f)));
    return u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = !all(vec2<bool>(1u != ~arg_0.a, !(arg_0.b == -608f)));
    global2 = global3.yz;
    var var_1 = vec4<bool>(true, true, all(select(vec3<bool>(arg_2.a <= u_input.c.x, false, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), all(vec4<bool>(true, true, true, true)))), func_3(abs(u_input.b) >= ~u_input.c.x) < abs(func_3(true) << (countOneBits(arg_0.a) % 32u)));
    let var_2 = u_input.c.wyw;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -485f, global3.x, arg_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1563f, 637f, global2.x, global2.x) - vec4<f32>(-323f, global2.x, arg_0.b, global3.x))) + vec4<f32>(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(round(918f)), _wgslsmith_f_op_f32(f32(-1f) * -1593f)), _wgslsmith_div_vec4_f32(vec4<f32>(1459f, global2.x, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-831f, 631f, global3.x, -299f)))))), -(-select(u_input.c.x, u_input.b, false) << (arg_0.a % 32u)), arg_0.a, _wgslsmith_dot_vec2_i32(var_2.yz, abs(var_2.xx) >> (reverseBits(countOneBits(vec2<u32>(4294967295u, u_input.a))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(sign(arg_0.b)));
    return _wgslsmith_add_vec3_i32(u_input.c.yxz, _wgslsmith_sub_vec3_i32(vec3<i32>((1i | arg_2.a) & arg_0.c.a, 1i, -arg_2.a), -firstLeadingBit(countOneBits(u_input.c.wyy))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) + -1000f), arg_1.b, arg_1.b, arg_1.b));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u) << (arg_2.wy % vec2<u32>(32u)), ~arg_2.wy) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_1.a), select(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 0u), vec2<bool>(false, true))) % vec2<u32>(32u)), ~(~vec2<u32>(arg_1.a, 1u)) ^ arg_2.yw), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-378f - global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b, var_0.x)) - var_0.x)))), arg_1.c);
    let var_2 = vec3<bool>(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(924f + var_1.b)))) < arg_1.b, all(!vec2<bool>(true, global3.x <= global2.x)));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, var_1.a), arg_2.yw);
    global0 = _wgslsmith_add_u32(var_1.a, 4294967295u);
    return 1161f;
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -828f), -308f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1816f))), 1158f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0, vec3<f32>(global2.x, global2.x, arg_0.x))))))), _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(275f, global3.x, global2.x)))));
    let var_1 = Struct_2(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1436f + global3.x), -166f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-105f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))), Struct_1(~(u_input.b >> (52870u % 32u)) | -min(20098i, 0i)));
    let var_2 = _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1396f) - arg_0.x)), true)));
    global1 = array<vec4<u32>, 9>();
    var var_3 = Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(func_2(Struct_2(var_1.a, -182f, var_1.c), -136f, Struct_1(7259i)), ~u_input.c.xzz, u_input.b >= -2147483647i), var_1, vec4<u32>(var_1.a, ~1u, 51978u >> (var_1.a % 32u), firstTrailingBit(0u)), var_1.c.a))), var_1.c);
    return !select(!vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(false, true), !all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~((u_input.a >> (u_input.a % 32u)) << (_wgslsmith_mult_u32(77972u, 6525u) % 32u))));
    var var_1 = select(vec2<u32>(countOneBits(36405u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 68621u), vec3<u32>(u_input.a, u_input.a, 0u)), ~vec3<u32>(8012u, u_input.a, 12690u))) ^ abs(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, u_input.a)) | abs(vec2<u32>(u_input.a, 4294967295u))), max(vec2<u32>(u_input.a, select(~0u, abs(4294967295u), true)), vec2<u32>(u_input.a, 0u)), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true)), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 278f, 831f))), vec2<bool>(true, true)), !func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global3.x, -600f)))));
    global1 = array<vec4<u32>, 9>();
    var var_2 = abs(reverseBits(u_input.a | 15734u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a) << (0u % 32u), vec3<u32>(~(~_wgslsmith_clamp_u32(27113u, u_input.a, var_1.x)), ~(~(~56056u)), 0u), u_input.c.yww, _wgslsmith_f_op_f32(-248f + 465f), ~((vec3<i32>(u_input.c.x, u_input.b, u_input.c.x) << (abs(vec3<u32>(u_input.a, var_1.x, 29288u)) % vec3<u32>(32u))) | select(vec3<i32>(1i, 1i, 1i), -u_input.c.xxz, true)));
}

