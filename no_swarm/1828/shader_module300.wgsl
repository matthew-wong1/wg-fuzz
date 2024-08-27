struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(657f, 339f, -428f, 1280f), true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> bool {
    global2 = !select(vec3<bool>(false, all(select(global1.wzz, global1.wxy, global3.c)), (true && global2.x) || (-813f < arg_0)), select(global1.zwy, select(vec3<bool>(global3.c, global3.c, true), select(vec3<bool>(false, true, global1.x), global1.wwz, false), vec3<bool>(false, true, global2.x)), global2.x == !global1.x), all(select(vec3<bool>(global1.x, true, false), vec3<bool>(false, true, global1.x), true)));
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    var_0 = -1773f;
    global2 = global1.zwz;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global3.a.x, -939f, global3.a.x)) + global3.a))), any(select(vec4<bool>(true, -474f <= global3.a.x, global1.x, false), vec4<bool>(!global2.x, 0i == u_input.b.x, any(vec4<bool>(global2.x, global1.x, false, true)), true), vec4<bool>(true, false, all(vec2<bool>(global2.x, global3.b)), true))), abs(_wgslsmith_div_u32(1u, u_input.c ^ 9335u)) > u_input.d.x);
    return var_1.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global2 = vec3<bool>(false, any(vec3<bool>(func_3(arg_3.a.x) || arg_3.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -40131i), u_input.a.xy) >= 1i, true)), all(!vec4<bool>(global1.x, true, !global3.c, global2.x && global2.x)));
    global2 = global1.wxz;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(777f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_2), global3.a.x), arg_3.a, global2.x)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_3.a + _wgslsmith_div_vec4_f32(arg_3.a, arg_3.a)), arg_3.a))), !any(!vec3<bool>(global2.x, false, arg_3.b)), -2147483647i > ~_wgslsmith_mult_i32(-3156i, u_input.a.x ^ u_input.b.x));
    global0 = !(!arg_3.c) | false;
    var var_1 = Struct_1(arg_3.a, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.x);
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    global0 = 0u > arg_1;
    var var_0 = _wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(35590i, u_input.a.x, 0i) & vec3<i32>(4745i, u_input.b.x, u_input.b.x), u_input.a) >> (vec3<u32>(arg_1, arg_1 >> (arg_1 % 32u), 0u) % vec3<u32>(32u)), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b.x, -5807i), _wgslsmith_sub_vec3_i32(u_input.b, u_input.a)) >> (select(countOneBits(select(vec3<u32>(38031u, arg_1, arg_1), u_input.d, global1.yzz)), u_input.d, !global1.wzx) % vec3<u32>(32u)));
    var var_1 = arg_0;
    global0 = global2.x;
    var var_2 = arg_0.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)) + global3.a))), all(select(!global2.zz, vec2<bool>(true, global2.x), global2.yx)) & true, var_1.b);
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    global3 = func_4(func_2(vec3<f32>(-434f, arg_0.a.x, global3.a.x), 1000f, global3.a.x, arg_0), firstLeadingBit(~1u), _wgslsmith_f_op_f32(2089f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-645f * arg_0.a.x)))));
    global2 = !vec3<bool>(global1.x, !func_3(arg_0.a.x), !global3.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f), -509f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3379f + -766f) * _wgslsmith_f_op_f32(-980f * arg_0.a.x)), 1563f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2337f))))) - arg_0.a.xwx);
    var_0 = arg_0.a.yyx;
    let var_1 = _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -226f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(-global3.a.x), 513f, 228f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1828f, global3.a.x, arg_0.a.x, global3.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), -225f, _wgslsmith_f_op_f32(max(global3.a.x, -1000f)), _wgslsmith_f_op_f32(abs(780f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, -1782f, global3.a.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global3.a, _wgslsmith_f_op_vec4_f32(func_1(Struct_1(global3.a, global3.c, false)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.a.x, global3.a.x, 888f, -1076f))))), func_3(global3.a.x), any(vec4<bool>(!global2.x, !select(global1.x, true, false), false, all(vec3<bool>(global1.x, global3.c, global3.b)) || global1.x)));
    var var_1 = global2.yx;
    let var_2 = func_4(var_0, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.a.x)), 566f)) - -1089f)));
    var var_3 = var_0;
    let var_4 = u_input.b;
    var var_5 = 253f;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(-2147483647i & u_input.a.x, -12883i, -u_input.b.x), vec3<i32>(-_wgslsmith_dot_vec3_i32(var_4, vec3<i32>(-2147483647i, -2147483647i, u_input.b.x)), -27280i, var_4.x), var_0.b), _wgslsmith_f_op_f32(-global3.a.x), -2147483647i, vec4<i32>(var_4.x, var_4.x, 38928i, _wgslsmith_sub_i32(abs(countOneBits(var_4.x)), firstLeadingBit(u_input.a.x))));
}

