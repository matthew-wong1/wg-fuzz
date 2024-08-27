struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_5) -> u32 {
    var var_0 = !vec2<bool>(select(true, !(u_input.a == 1u), all(!vec3<bool>(global1.x, global1.x, false))), (u_input.c >> (~4294967295u % 32u)) >= select(arg_0.x, -2147483647i, 0i != arg_0.x));
    var var_1 = Struct_2(u_input.d.xy, all(select(vec4<bool>(true, var_0.x, true, global1.x), !select(vec4<bool>(true, var_0.x, global1.x, false), vec4<bool>(global1.x, global1.x, false, var_0.x), vec4<bool>(true, true, global1.x, global1.x)), global1.x)));
    var var_2 = any(global1.xxw);
    var var_3 = arg_2.a.c.a;
    let var_4 = ~(~arg_2.a.b) | (arg_2.a.c.b >> (~vec4<u32>(arg_2.a.c.b.x, abs(4294967295u), ~arg_2.a.a.x, _wgslsmith_mult_u32(u_input.a, 23873u)) % vec4<u32>(32u)));
    return firstLeadingBit(127905u & _wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 0u), global0.a.c.b.xw), vec2<u32>(~var_4.x, u_input.a)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = vec3<bool>(global1.x, global1.x, !global1.x);
    var_0 = !(!(!select(!global1.yzw, global1.zzz, global1.zxw)));
    return _wgslsmith_mult_u32(u_input.a, u_input.a ^ (_wgslsmith_sub_u32(abs(global0.a.b.x), 4294967295u) & ~abs(u_input.a)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_5 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.c.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.c.a + arg_1.c.a))), _wgslsmith_f_op_f32(-global0.a.c.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.a, 2997f, -743f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-855f, 212f, -1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.a, 1289f, arg_1.c.a)))))));
    var var_1 = var_0.zz;
    var var_2 = ~(~u_input.a);
    let var_3 = Struct_3(select(vec2<u32>(u_input.a, ~min(u_input.a, u_input.a)), ~select(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.c.b.x, global0.a.c.b.x), arg_1.b.yx), min(global0.a.c.b.xx, vec2<u32>(global0.a.c.b.x, 0u)), arg_0.x), ~u_input.a > min(global0.a.b.x, 53448u)), vec4<u32>(~(~(~91734u)), 12570u, ~arg_1.b.x, ~1u), arg_1.c);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1114f)), -769f)));
    return Struct_5(var_3);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec2<f32> {
    var var_0 = arg_2.x;
    global0 = func_4(global1.zzz, Struct_3(select(vec2<u32>(0u, func_2(u_input.d.wzw, vec2<u32>(1u, global0.a.b.x), Struct_5(Struct_3(vec2<u32>(65880u, 27212u), global0.a.c.b, global0.a.c)))), vec2<u32>(arg_0.x, arg_0.x), select(select(vec2<bool>(true, false), vec2<bool>(global1.x, true), global1.x), vec2<bool>(true, false), vec2<bool>(false, false))), vec4<u32>(_wgslsmith_add_u32(7686u, ~u_input.a), ~func_3(vec4<u32>(u_input.a, u_input.a, 0u, global0.a.c.b.x), Struct_2(arg_1, true), global0.a), _wgslsmith_add_u32(global0.a.b.x, 4294967295u), arg_0.x), Struct_1(global0.a.c.a, _wgslsmith_sub_vec4_u32(global0.a.c.b, global0.a.c.b) >> (_wgslsmith_add_vec4_u32(global0.a.b, vec4<u32>(466u, 42300u, arg_0.x, u_input.a)) % vec4<u32>(32u)))));
    let var_1 = 64918i;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(426f, _wgslsmith_f_op_f32(f32(-1f) * -131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.c.a)) * _wgslsmith_f_op_f32(-global0.a.c.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.a.c.a)))), _wgslsmith_f_op_f32(f32(-1f) * -793f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c.a, global0.a.c.a, global0.a.c.a, -1010f)) * vec4<f32>(282f, 1059f, _wgslsmith_f_op_f32(f32(-1f) * -1432f), _wgslsmith_f_op_f32(sign(-969f))))))));
    let var_3 = vec3<f32>(587f, 651f, -396f);
    return _wgslsmith_f_op_vec2_f32(var_2.xx - var_3.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c.a, global0.a.c.a)) - vec2<f32>(global0.a.c.a, global0.a.c.a)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1264f, 1000f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-304f, -329f) + vec2<f32>(-183f, -894f)))))) * _wgslsmith_f_op_vec2_f32(func_1(select(vec3<u32>(global0.a.c.b.x, 20914u, 77346u), global0.a.c.b.xyx, (97460u >= u_input.a) && any(vec4<bool>(global1.x, true, global1.x, true))), _wgslsmith_sub_vec2_i32(u_input.d.yx, -_wgslsmith_add_vec2_i32(u_input.d.zy, vec2<i32>(12946i, 2147483647i))), _wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(u_input.b), -2147483647i), -vec2<i32>(u_input.d.x, 14786i)))));
    global1 = select(vec4<bool>(global1.x, true, all(vec3<bool>(global1.x, global1.x, false || global1.x)), all(!vec4<bool>(global1.x, true, true, global1.x)) & (_wgslsmith_f_op_f32(1006f + global0.a.c.a) == -442f)), vec4<bool>(!all(global1.zxy) || (_wgslsmith_add_i32(u_input.e, 24637i) >= ~u_input.e), global1.x, global1.x & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.a)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, global0.a.c.a, false)) - _wgslsmith_f_op_f32(f32(-1f) * -910f))), global1.x);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1752f, -202f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.c.a, -575f), vec2<f32>(-304f, 1407f))))));
    var var_1 = u_input.a;
    var var_2 = -325f;
    let x = u_input.a;
    s_output = StorageBuffer(1u, select(global0.a.a.x & firstLeadingBit(22452u), func_4(!vec3<bool>(true, global1.x, true), func_4(vec3<bool>(global1.x, true, global1.x), global0.a).a).a.b.x, false) ^ global0.a.b.x);
}

