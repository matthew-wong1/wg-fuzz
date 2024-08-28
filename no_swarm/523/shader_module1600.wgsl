struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, _wgslsmith_div_f32(-971f, arg_0.b.a.x), _wgslsmith_f_op_f32(min(arg_0.a.a.c, 776f)), global1.d.x))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1515f * _wgslsmith_f_op_f32(f32(-1f) * -626f))), _wgslsmith_f_op_f32(min(var_0.x, 488f)), _wgslsmith_f_op_f32(var_0.x + 1257f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.a.a.c)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(global1.d.x, var_0.x, false && !all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)), arg_0.a.a.c)))), _wgslsmith_f_op_f32(global1.b.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a.c - -1727f) - _wgslsmith_f_op_f32(step(830f, var_0.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1064f) + _wgslsmith_f_op_f32(f32(-1f) * -422f)))))));
    global1 = Struct_3(arg_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1568f, arg_0.a.a.a.x, _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(var_0.x - global1.b.c)) * vec4<f32>(-599f, _wgslsmith_f_op_f32(floor(239f)), _wgslsmith_f_op_f32(select(var_0.x, -460f, false)), _wgslsmith_f_op_f32(-var_0.x))), !(!select(vec3<bool>(false, true, arg_1), vec3<bool>(true, global1.a.b.x, global1.c.x), arg_0.a.b.wyw)), _wgslsmith_f_op_f32(-arg_0.b.c)), global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-877f, -561f) - var_0.wx))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(656f, 931f), arg_0.b.a.yw), vec2<f32>(global1.b.a.x, 334f)))), !(!vec4<bool>(all(global1.a.b), 162f == arg_0.b.a.x, true, false)));
    var_0 = arg_0.b.a;
    return any(vec4<bool>(arg_0.b.b.x, true, arg_1, any(vec2<bool>(arg_0.a.b.x == arg_0.e.x, !arg_0.a.b.x))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = global1.a;
    let var_1 = !var_0.b.x && (any(!select(vec4<bool>(global1.a.a.b.x, var_0.a.b.x, true, true), vec4<bool>(true, false, true, true), arg_1.b.x)) & func_3(Struct_3(global1.a, var_0.a, select(global1.e.yy, global1.c, true), vec2<f32>(global1.d.x, -1943f), !var_0.b), false));
    let var_2 = !var_0.a.b.xy;
    var var_3 = Struct_3(global1.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(1112f)), global1.b.c, global1.a.a.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-831f + global1.b.a.x)))), select(!(!vec3<bool>(false, var_1, false)), !vec3<bool>(false, var_2.x, arg_1.b.x), _wgslsmith_div_f32(107f, var_0.a.a.x) < arg_2.x), _wgslsmith_div_f32(arg_1.a.x, 870f)), select(var_2, vec2<bool>(false, firstTrailingBit(1u) != _wgslsmith_add_u32(u_input.c.x, u_input.c.x)), !(var_2.x | all(arg_1.b.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.a.wy + _wgslsmith_f_op_vec2_f32(-arg_2.xy))), !select(!select(vec4<bool>(var_0.a.b.x, var_0.b.x, true, false), vec4<bool>(global1.e.x, false, global1.b.b.x, false), true), var_0.b, true));
    var var_4 = Struct_2(var_3.a.a, select(select(select(var_0.b, vec4<bool>(var_2.x, true, true, global1.a.a.b.x), var_3.a.b), vec4<bool>(false, true || arg_1.b.x, any(arg_1.b.zx), select(true, false, false)), !vec4<bool>(global1.b.b.x, var_1, true, false)), var_0.b, global1.e));
    return Struct_3(global1.a, var_4.a, vec2<bool>(all(global1.c), !any(global1.e.wxw)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), 1326f), select(vec4<bool>(var_2.x, any(vec4<bool>(global1.b.b.x, false, true, var_0.b.x)), true | all(var_2), var_2.x), select(!(!vec4<bool>(var_1, var_2.x, true, true)), !vec4<bool>(true, false, var_2.x, true), !select(var_3.a.b, var_3.e, true)), select(select(global1.a.b, var_0.b, arg_1.b.x), var_0.b, global1.e)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = func_2(-2147483647i, func_2(u_input.e, func_2(u_input.e, global1.a.a, vec3<f32>(arg_3.a.a.x, arg_3.a.a.x, _wgslsmith_f_op_f32(step(arg_1, arg_2.b.a.x)))).b, arg_3.a.a.yxy).b, global1.a.a.a.zyx).a;
    global0 = select(-vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.b.x, -43095i) >> (vec3<u32>(max(u_input.c.x & u_input.a.x, ~9782u), reverseBits(u_input.c.x), _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x >> (u_input.c.x % 32u))) % vec3<u32>(32u)), (-vec3<i32>(u_input.e, -18123i, u_input.e) & _wgslsmith_div_vec3_i32(vec3<i32>(57034i, u_input.b.x, -3253i) >> (vec3<u32>(4294967295u, 4294967295u, u_input.c.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b))) >> (vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_add_u32(u_input.a.x >> (73801u % 32u), u_input.c.x)) % vec3<u32>(32u)), !global1.c.x);
    var var_1 = _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 31612i, global0.x), u_input.b), firstLeadingBit(global0.x), 11521i) | ~(~u_input.b), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(abs(-54339i), global0.x ^ -43498i, u_input.e))));
    var var_2 = ~_wgslsmith_mult_vec2_u32(abs(~u_input.c.yy), firstTrailingBit(~vec2<u32>(1853u, u_input.c.x))) >> (~vec2<u32>(~(~u_input.c.x), _wgslsmith_add_u32(u_input.a.x << (28191u % 32u), _wgslsmith_mod_u32(16536u, 114318u))) % vec2<u32>(32u));
    let var_3 = true || all(arg_2.c);
    return -307f;
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global0 = vec3<i32>(1i, global0.x, u_input.b.x);
    global0 = vec3<i32>(61818i, _wgslsmith_div_i32(-20986i, -95749i), 2147483647i) | u_input.b;
    global0 = firstLeadingBit(vec3<i32>(~global0.x, 0i, ~u_input.d.x));
    var var_0 = _wgslsmith_f_op_f32(-819f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global1.a.b, global1.a.a.c, func_2(-25688i, Struct_1(global1.a.a.a, vec3<bool>(arg_0, global1.c.x, global1.a.a.b.x), global1.b.a.x), vec3<f32>(global1.a.a.a.x, global1.a.a.a.x, global1.d.x)), Struct_2(Struct_1(global1.a.a.a, global1.b.b, global1.a.a.c), global1.e))) - -985f));
    var var_1 = global1.b;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1980f - 123f), 1717f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a.x, global1.a.a.a.x) * vec2<f32>(-772f, -1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.c, -1000f), vec2<f32>(global1.d.x, var_1.a.x), var_1.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1(!any(!global1.b.b)));
    var var_2 = 2147483647i;
    var var_3 = vec2<f32>(global1.b.c, 627f);
    var_2 = abs(abs(-1i));
    var var_4 = u_input.b.x;
    var var_5 = Struct_1(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(359f)))))), _wgslsmith_f_op_f32(-var_3.x), global1.a.a.c), select(!(!select(global1.e.zzz, global1.b.b, vec3<bool>(global1.b.b.x, global1.c.x, false))), select(global1.e.zwx, select(global1.a.b.zxz, vec3<bool>(true, global1.c.x, false), true), !func_2(u_input.e, Struct_1(global1.b.a, global1.e.xww, var_1.x), global1.a.a.a.xzx).b.b), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(false)).x + _wgslsmith_f_op_f32(-371f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1795f)), -842f))));
    var var_6 = ~u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -987f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a.a.wz, 1817f, _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.c ^ u_input.c, reverseBits(vec3<u32>(16423u, u_input.c.x, 1u))), select(u_input.c ^ vec3<u32>(13606u, u_input.a.x, 35453u), ~_wgslsmith_div_vec3_u32(u_input.a, u_input.c), !global1.a.a.b)));
}

