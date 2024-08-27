struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: Struct_4 = Struct_4(false, Struct_3(vec2<i32>(2147483647i, -26817i), vec4<i32>(30291i, -13561i, 40318i, 1i), false, true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: bool) -> vec4<bool> {
    let var_0 = arg_0;
    global1 = !vec2<bool>(true, var_0.c);
    var var_1 = global0.a;
    var var_2 = vec4<i32>(-(_wgslsmith_div_i32(global2.b.b.x, _wgslsmith_clamp_i32(global2.b.b.x, 1i, arg_0.a.x)) << (max(1u, 4294967295u) % 32u)), _wgslsmith_add_i32(-17335i, ~var_0.b.x) << (arg_2.x % 32u), -20118i, abs(2147483647i));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1465f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(365f))))))));
    return select(select(vec4<bool>(any(select(var_1.d.xy, vec2<bool>(var_0.d, var_1.b), global0.a.d.ww)), true, global2.b.c, var_1.b), select(!(!vec4<bool>(var_0.d, false, false, var_1.d.x)), global0.a.d, !select(vec4<bool>(false, global0.a.d.x, true, var_1.d.x), vec4<bool>(global1.x, true, arg_3, false), global2.a)), var_1.d.x), global0.a.d, any(var_1.d.wz));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec2<i32> {
    global0 = Struct_2(Struct_1(true & (1u >= global0.a.c), false, ~91675u, global0.a.d));
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(global2.b.b.yz, _wgslsmith_mod_vec2_i32(global2.b.a & select(vec2<i32>(arg_1.b.x, 2147483647i), arg_1.a, vec2<bool>(global0.a.b, global0.a.b)), global2.b.b.ww)), -arg_1.b.wy, arg_1.b.xz);
    var var_1 = vec2<bool>(global2.b.d, true);
    var var_2 = arg_0;
    global0 = Struct_2(Struct_1(var_1.x, var_1.x, ~abs(1u), func_3(arg_1, select(!vec3<bool>(var_1.x, global1.x, false), global0.a.d.yxy, global0.a.d.wwy), vec3<u32>(8330u ^ global0.a.c, global0.a.c, 0u), global0.a.b)));
    return vec2<i32>(~global2.b.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.b, -vec4<i32>(var_0.x, 28093i, var_0.x, arg_1.b.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.a, vec2<i32>(-2147483647i, 2147483647i)), -2147483647i, global2.b.a.x, 1i)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    global2 = Struct_4(global2.b.c || global2.b.c, global2.b);
    let var_0 = vec3<i32>(-7003i, -1i, 2147483647i);
    var var_1 = arg_1.x;
    var_1 = -2147483647i;
    global2 = Struct_4(true, Struct_3(arg_0.a, ~_wgslsmith_clamp_vec4_i32(arg_0.b, vec4<i32>(global2.b.a.x, arg_1.x, -43673i, global2.b.b.x), vec4<i32>(global2.b.b.x, var_0.x, var_0.x, -11334i)), true, true));
    return Struct_4(any(!vec3<bool>(false, true, any(vec4<bool>(false, true, false, global2.a)))), Struct_3(~(var_0.xz & vec2<i32>(-2147483647i, -50221i)), reverseBits(~_wgslsmith_clamp_vec4_i32(arg_0.b, vec4<i32>(var_0.x, 2147483647i, arg_1.x, 5749i), global2.b.b)), arg_2.d.x | (global0.a.c <= 4294967295u), !(_wgslsmith_mult_u32(15390u, 86093u) <= ~global0.a.c)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_4 {
    return func_4(Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * _wgslsmith_f_op_f32(select(arg_1.x, 1317f, global0.a.a))), global2.b), global2.b.b, reverseBits(u_input.a) < global0.a.c, (reverseBits(global2.b.a.x) ^ (i32(-1i) * -2147483647i)) != abs(_wgslsmith_dot_vec3_i32(global2.b.b.xwx, vec3<i32>(global2.b.a.x, 27732i, 7767i)))), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(~40286i, global2.b.a.x), vec2<i32>(abs(0i), _wgslsmith_sub_i32(-47165i, global2.b.b.x)))), Struct_1(global2.b.d, all(vec4<bool>(true, !global2.b.d, true, !global2.b.c)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.c, global0.a.c, global0.a.c, 1u), vec4<u32>(global0.a.c, 1u, u_input.b, global0.a.c)) & 1u), select(select(select(global0.a.d, global0.a.d, vec4<bool>(global1.x, false, global2.a, true)), select(global0.a.d, vec4<bool>(global2.b.c, false, false, true), true), any(vec2<bool>(global1.x, true))), !vec4<bool>(global2.b.c, global2.a, true, global0.a.a), vec4<bool>(false, global2.b.b.x > global2.b.a.x, !global2.b.d, global1.x & true))), (false == select(global0.a.a, select(global2.b.d, true, false), global2.b.d)) || ((~u_input.b >= u_input.a) != any(func_3(Struct_3(global2.b.b.yy, global2.b.b, global1.x, global1.x), global0.a.d.www, vec3<u32>(global0.a.c, u_input.b, 93896u), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a);
    var var_0 = 1u;
    global2 = func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1007f)), 476f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-278f)), _wgslsmith_f_op_f32(498f - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-400f - -1029f) * _wgslsmith_f_op_f32(abs(-2036f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-540f, 813f, -1432f) * vec3<f32>(826f, -372f, 1000f)), vec3<f32>(-2021f, 722f, -237f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(504f, 155f, -134f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 139f, 402f), vec3<f32>(-111f, 1000f, 302f))), select(select(global0.a.d.yyx, vec3<bool>(global0.a.b, false, true), global0.a.d.wzw), select(vec3<bool>(false, global1.x, global0.a.a), global0.a.d.zxw, vec3<bool>(global2.b.d, global0.a.b, false)), false == global0.a.b)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -1321f))) + vec2<f32>(-1127f, 2698f)))))));
    global1 = global0.a.d.yz;
    let var_1 = global2.b.b;
    global1 = vec2<bool>(false, select(false || func_4(Struct_3(var_1.wx, vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x), true, false), vec2<i32>(0i, -22647i), Struct_1(global1.x, global2.b.c, 4294967295u, global0.a.d), global2.a).a, _wgslsmith_f_op_f32(sign(282f)) > _wgslsmith_f_op_f32(-1244f * 331f), !(!global1.x)) && true);
    let var_2 = !func_4(global2.b, -(~_wgslsmith_div_vec2_i32(global2.b.b.xw, global2.b.b.wz)), global0.a, global2.a).a;
    let var_3 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1595f, 2598f), vec2<f32>(886f, -612f)))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(784f, _wgslsmith_f_op_f32(-1000f - 830f)))), countOneBits(firstLeadingBit(~_wgslsmith_mult_u32(0u, 1u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1050f))), _wgslsmith_f_op_f32(1559f + _wgslsmith_f_op_f32(377f * 1000f)), -1564f))), ~(_wgslsmith_mod_u32(~global0.a.c, _wgslsmith_mult_u32(89526u, 38130u)) | ~(~1u)));
}

