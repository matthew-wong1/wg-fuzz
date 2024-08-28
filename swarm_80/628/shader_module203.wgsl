struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2() -> Struct_2 {
    global1 = 5391i;
    global0 = u_input.c.yy;
    global0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 89550u), u_input.c.wy)), u_input.c.xy));
    var var_0 = _wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(2147483647i, -2147483647i))))) >= -168f;
    var var_1 = Struct_3(Struct_2(Struct_1(min(-vec2<i32>(0i, u_input.b), vec2<i32>(-26385i, -44572i))), Struct_1(vec2<i32>(-u_input.b, countOneBits(u_input.b))), vec2<bool>(true, true), select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b, -22236i, 2147483647i), vec4<i32>(-1i, 2147483647i, u_input.b, -1i)), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b) | vec4<i32>(35071i, -18421i, u_input.b, 2147483647i), vec4<bool>(false, false, true, true)) ^ -vec4<i32>(37998i, u_input.b, u_input.b, u_input.b), u_input.b), Struct_2(Struct_1(countOneBits(vec2<i32>(-2293i, 0i))), Struct_1(max(vec2<i32>(u_input.b, -25714i), -vec2<i32>(18301i, 0i))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), ~vec4<i32>(~59172i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -34897i, u_input.b, -2147483647i), vec4<i32>(-2746i, 4368i, u_input.b, 1i)), abs(-18744i), _wgslsmith_add_i32(0i, 23676i)), 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -1750f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-582f, -1000f), vec2<f32>(-1009f, -2175f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f + 655f)), _wgslsmith_f_op_f32(sign(-1379f)))));
    return Struct_2(Struct_1(vec2<i32>(1i, _wgslsmith_div_i32(40002i, _wgslsmith_add_i32(43312i, u_input.b)))), Struct_1(vec2<i32>(abs(u_input.b >> (4294967295u % 32u)), u_input.b)), !select(vec2<bool>(var_1.b.c.x, var_1.a.c.x), var_1.a.c, true), var_1.b.d, _wgslsmith_sub_i32(~abs(var_1.a.d.x), u_input.b));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global1 = u_input.b;
    let var_0 = func_2();
    global1 = arg_1.a.x;
    global0 = abs(u_input.c.zz) | (u_input.c.xx | min(min(~vec2<u32>(0u, arg_0.a), ~vec2<u32>(global0.x, u_input.d)), _wgslsmith_add_vec2_u32(firstLeadingBit(u_input.c.xx), abs(u_input.c.zz))));
    let var_1 = !all(!vec4<bool>(!arg_2.x, var_0.c.x, true, func_2().c.x));
    return _wgslsmith_f_op_f32(sign(-168f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-433f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1481f, 200f))))))), _wgslsmith_f_op_f32(abs(-1643f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(2126f, _wgslsmith_f_op_f32(126f - _wgslsmith_f_op_f32(func_1(Struct_4(global0.x, -1959f, -1809f), Struct_1(vec2<i32>(u_input.b, 2147483647i)), vec3<bool>(true, true, true)))))), -1668f)));
    let var_1 = vec2<bool>(true, all(vec4<bool>(!any(vec4<bool>(false, true, true, false)), true, true, false)));
    global1 = select(19284i, 2147483647i, select(true, true, any(vec2<bool>(true || var_1.x, var_0.x < var_0.x))));
    let var_2 = vec2<i32>(countOneBits(u_input.b), 2147483647i);
    let var_3 = Struct_5(func_2(), vec4<i32>(-1i) * -func_2().d, Struct_3(Struct_2(Struct_1(var_2 << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), func_2().a, !func_2().c, -func_2().d, u_input.b), func_2(), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xx, var_0.yz) * vec2<f32>(-541f, -902f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 2297f))) * var_0.xz)))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d ^ vec4<i32>(_wgslsmith_dot_vec3_i32(var_3.c.a.d.yzx << (vec3<u32>(8311u, global0.x, 4294967295u) % vec3<u32>(32u)), abs(var_3.a.d.zzy)), var_2.x, max(2147483647i, -55940i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_3.c.b.d, vec4<i32>(var_2.x, var_3.a.d.x, 2147483647i, u_input.b)), u_input.b)), var_2.x);
}

