struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<f32> = vec4<f32>(885f, 1144f, -598f, 596f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-59695i, u_input.e.x, u_input.e.x), select(vec3<i32>(u_input.e.x, u_input.d, 0i), vec3<i32>(u_input.e.x, u_input.d, 1i), vec3<bool>(global0.x, false, true))), 33920i), u_input.e.x, ~u_input.e.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1422f, 1372f)) + _wgslsmith_f_op_f32(f32(-1f) * -214f)), global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(select(global1.x, 655f, global0.x))), global1.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), vec4<f32>(global1.x, -277f, 949f, 395f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.x)), -523f)))) + -667f);
    global1 = var_0.b;
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), var_1, _wgslsmith_f_op_f32(trunc(var_1)), 1f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x - var_0.b.x), -1000f, _wgslsmith_f_op_f32(step(-541f, -723f)), _wgslsmith_f_op_f32(-var_0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, var_1, true))), _wgslsmith_div_f32(-227f, 1000f), -760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1532f - -390f)))))));
    global0 = select(vec2<bool>(!(u_input.d > var_0.a.x), any(vec3<bool>(global0.x, true, all(vec4<bool>(global0.x, false, global0.x, global0.x))))), vec2<bool>(global0.x, all(vec4<bool>(global0.x, global0.x, false, all(vec2<bool>(global0.x, global0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1, -182f))) <= _wgslsmith_f_op_f32(select(203f, global1.x, all(vec2<bool>(false, true)) && all(vec2<bool>(global0.x, global0.x)))));
    return select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -419f) != var_1, (~(-1i) > firstTrailingBit(var_0.a.x)) & (_wgslsmith_f_op_f32(-664f - var_0.b.x) > -250f), false, global0.x), select(select(!vec4<bool>(false, false, global0.x, false), !vec4<bool>(global0.x, global0.x, global0.x, false), global0.x | true), select(!select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, global0.x, false, false), false), !select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, true, true, false), vec4<bool>(false, false, global0.x, global0.x)), (var_0.b.x == 101f) || global0.x), true), true);
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = func_3();
    let var_1 = ~(~select(-reverseBits(vec4<i32>(u_input.d, -31923i, u_input.d, u_input.e.x)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.d, 2147483647i, -46458i, 62265i), vec4<i32>(28734i, u_input.e.x, 2147483647i, -34189i)), -vec4<i32>(u_input.d, u_input.d, u_input.e.x, 0i)), vec4<bool>(true & arg_0.b.a.x, true, false && arg_0.b.a.x, global0.x)));
    var var_2 = arg_0.b;
    var_2 = Struct_1(var_2.a, firstTrailingBit(arg_0.b.b));
    return abs(var_2.b.www);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = !select(func_3(), !(!func_3()), arg_0.a);
    let var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -689f), -204f))) * global1.x), vec4<bool>(abs(_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.d, u_input.e.x))) != ~(~u_input.e.x), true, var_0.x, !(max(0u, arg_0.b.x) >= max(u_input.b, 104472u))));
    var_0 = vec4<bool>(false, (false && global0.x) && var_1.b.x, true, false);
    let var_2 = vec2<bool>(false, select(any(func_3().ww), true, all(arg_0.a.xz)));
    var var_3 = global0.x;
    return Struct_3(arg_1.x, max(vec3<u32>(min(1u, 4294967295u), 4294967295u, 53830u), arg_1) | vec3<u32>(u_input.c.x, _wgslsmith_div_u32(1u, countOneBits(49232u)), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(46443u, 4294967295u))), ~vec3<u32>(arg_0.b.x, countOneBits(arg_1.x), 16093u) >> (max(~arg_0.b.zwz, vec3<u32>(1u, ~u_input.b, ~u_input.c.x)) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_vec3_f32(-global1.xxz), arg_0, !var_1.b.x));
}

fn func_1(arg_0: Struct_5, arg_1: bool, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = func_4(Struct_1(vec4<bool>(all(arg_0.b), !(!global0.x), !any(arg_0.b.zw), global0.x), vec4<u32>(~u_input.a.x, 4503u, arg_3, abs(4294967295u) ^ arg_3)), abs(~(~func_2(Struct_2(global1.xxw, Struct_1(arg_0.b, vec4<u32>(arg_3, 0u, arg_3, 60543u)), global0.x)))), !func_3().yx, select(!arg_0.b.xxx, !select(func_3().xww, func_3().xyx, !arg_0.b.zxz), !global0.x));
    global1 = vec4<f32>(var_0.d.a.x, -1614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x)))), _wgslsmith_f_op_f32(floor(var_0.d.a.x)));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, 752f, _wgslsmith_div_f32(-466f, var_0.d.a.x), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1204f, -113f, global1.x, -675f))), arg_0.b)) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x - -1949f), _wgslsmith_f_op_f32(select(var_0.d.a.x, 363f, arg_0.b.x)), _wgslsmith_f_op_f32(arg_0.a * arg_0.a), _wgslsmith_f_op_f32(-800f * arg_0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, global1.x, -618f, 427f), vec4<f32>(-2094f, arg_0.a, -393f, var_0.d.a.x)), vec4<f32>(-798f, -878f, arg_0.a, -867f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(arg_0.a - global1.x)), _wgslsmith_f_op_f32(arg_0.a + 654f), _wgslsmith_div_f32(global1.x, -344f)))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d ^ abs(_wgslsmith_mod_i32(arg_2, u_input.d)), -firstLeadingBit(reverseBits(arg_2)), _wgslsmith_add_i32(2147483647i, ~u_input.d)), max(vec4<i32>(u_input.d & 20258i, _wgslsmith_mult_i32(arg_2, ~u_input.d), abs(arg_2), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, u_input.d, arg_2, arg_2), vec4<i32>(27075i, u_input.e.x, -8769i, -1i))), ~(~vec4<i32>(19998i, arg_2, -1i, 46024i)) ^ _wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, -38989i, arg_2, -1i), vec4<i32>(1i, 1i, u_input.d, arg_2), false), ~vec4<i32>(-1i, u_input.d, -13220i, arg_2))));
    let var_2 = ~21703u;
    return max(4294967295u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(abs(~(~u_input.b)) << ((_wgslsmith_div_u32(func_1(Struct_5(global1.x, vec4<bool>(true, true, false, true)), true, 1i, u_input.a.x), ~1u) & ~(~u_input.a.x)) % 32u), _wgslsmith_add_u32(1u, abs(108152u)));
    let var_1 = any(func_3().zzx);
    let var_2 = 34304i;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, 398f, global1.x, 1931f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -539f, global1.x), vec4<f32>(1208f, global1.x, -186f, global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1390f, -487f, global1.x, global1.x))))), vec4<f32>(_wgslsmith_div_f32(-1887f, _wgslsmith_f_op_f32(round(469f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) - _wgslsmith_f_op_f32(-global1.x)), 1672f, _wgslsmith_f_op_f32(f32(-1f) * -413f))));
    let var_3 = 41414u;
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_2, -1i, -24636i, u_input.e.x), vec4<i32>(1i, 1445i, abs(-32236i), u_input.e.x)) >> (vec4<u32>(4294967295u, (var_3 & (var_0.x ^ 20389u)) | var_3, var_3 >> (4294967295u % 32u), _wgslsmith_div_u32(var_0.x & var_3, 26584u)) % vec4<u32>(32u));
    var var_5 = ~(~u_input.c.x);
    var_5 = ~4294967295u;
    let var_6 = max(~firstLeadingBit(min(vec4<i32>(62292i, 85225i, var_4.x, 2147483647i), max(var_4, var_4))), ~vec4<i32>(u_input.e.x, _wgslsmith_mult_i32(u_input.e.x, 0i), -u_input.e.x, -(~var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

