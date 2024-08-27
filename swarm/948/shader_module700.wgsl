struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3.c.x || !(u_input.a > arg_0.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.b.yy))));
    global1 = arg_3.c.x == (~u_input.a != 2147483647i);
    var_0 = any(select(vec4<bool>(any(arg_1), arg_2.c.x, false, arg_2.c.x), select(!(!vec4<bool>(arg_1.x, true, arg_3.c.x, arg_3.c.x)), select(!vec4<bool>(false, true, arg_1.x, arg_2.c.x), !vec4<bool>(false, true, arg_0.c.x, arg_2.c.x), !vec4<bool>(arg_3.c.x, true, false, arg_2.c.x)), vec4<bool>(true, true, u_input.c.x != u_input.c.x, false)), all(!vec3<bool>(false, arg_0.c.x, false))));
    let var_2 = arg_3.c;
    return abs(select(select(49705u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c.x, 12400u, 0u)), countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), all(!vec4<bool>(arg_3.c.x, false, false, true))), _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(4294967295u, 4294967295u)) | firstLeadingBit(vec2<u32>(u_input.c.x, u_input.c.x))), true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<i32> {
    global1 = arg_1.c.x;
    global1 = !any(!vec3<bool>(true, arg_2.x | arg_1.c.x, !arg_1.c.x));
    var var_0 = vec2<bool>(arg_1.c.x, !any(vec2<bool>(any(arg_2), 1i == u_input.b)));
    global0 = u_input.c.x;
    global0 = ~func_3(arg_0, arg_0.c, Struct_1(~(-arg_1.a), arg_0.b, !(!arg_0.c)), Struct_1(44290i, vec3<f32>(arg_1.b.x, 1121f, 689f), vec2<bool>(true, true)));
    return _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.a << (~13975u % 32u), -_wgslsmith_div_i32(-arg_0.a, abs(0i)), ~1i, 0i), _wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a, -22640i, u_input.a, 0i), vec4<i32>(2147483647i, 1i, -32741i, u_input.b), vec4<bool>(true, arg_0.c.x, arg_0.c.x, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a, -13878i, u_input.b, -2147483647i), vec4<i32>(2147483647i, -1i, u_input.b, arg_1.a))), -select(firstTrailingBit(vec4<i32>(u_input.a, -1i, 2147483647i, 47369i)), vec4<i32>(13789i, 50391i, arg_0.a, arg_0.a) >> (vec4<u32>(u_input.c.x, u_input.c.x, 48120u, 0u) % vec4<u32>(32u)), select(vec4<bool>(arg_0.c.x, false, false, false), vec4<bool>(arg_1.c.x, var_0.x, arg_0.c.x, false), vec4<bool>(arg_2.x, var_0.x, var_0.x, arg_2.x)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = !arg_0.x;
    var var_1 = max(vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.b, 16015i, -2147483647i, u_input.b)), vec4<i32>(countOneBits(-min(u_input.b, u_input.b)), 8117i, _wgslsmith_add_i32(-_wgslsmith_mod_i32(21895i, u_input.a), 0i), ~(~u_input.b)));
    var var_2 = arg_1;
    var var_3 = u_input.c >> (vec2<u32>(u_input.c.x | u_input.c.x, u_input.c.x | _wgslsmith_dot_vec2_u32(min(vec2<u32>(150734u, u_input.c.x), vec2<u32>(u_input.c.x, 7214u)), vec2<u32>(1u, u_input.c.x))) % vec2<u32>(32u));
    let var_4 = !(!(!arg_0.wz));
    return Struct_1(-_wgslsmith_dot_vec4_i32(func_2(Struct_1(u_input.b, vec3<f32>(arg_1, -1595f, 2298f), vec2<bool>(var_4.x, true)), Struct_1(39874i, vec3<f32>(705f, 2789f, -266f), var_4), arg_0.zww) << ((vec4<u32>(var_3.x, 4294967295u, 42876u, u_input.c.x) | vec4<u32>(var_3.x, 4294967295u, u_input.c.x, 40944u)) % vec4<u32>(32u)), vec4<i32>(40453i, -2147483647i >> (var_3.x % 32u), firstTrailingBit(13956i), -55987i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1)), vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = false;
    global0 = 0u >> ((u_input.c.x << (var_0 % 32u)) % 32u);
    var var_2 = func_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1169f + -1721f)))), -1000f)));
    let var_3 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-714f, 1284f, var_2.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_2.b.x, 849f))) - _wgslsmith_f_op_vec3_f32(-var_2.b))), !vec2<bool>(func_1(!vec4<bool>(false, true, var_2.c.x, false), -991f).c.x, false));
    let var_4 = Struct_1(var_2.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b + vec3<f32>(-408f, -455f, -213f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, var_3.b.x, 818f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b.x, var_3.b.x, var_3.b.x), var_3.b, vec3<bool>(var_2.c.x, true, true))))))), vec2<bool>(max(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 9853u), vec2<u32>(u_input.c.x, 0u))) >= (_wgslsmith_div_u32(u_input.c.x, 61289u) >> (var_0 % 32u)), true));
    let var_5 = vec4<u32>(u_input.c.x, u_input.c.x, ((var_0 & 4294967295u) << (~23534u % 32u)) >> (abs(u_input.c.x) % 32u), countOneBits(136656u)) & ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0, u_input.c.x), vec3<u32>(u_input.c.x, 1u, 4294967295u)), abs(6368u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.c.x), 1u);
    let var_6 = Struct_1(~0i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -830f), 869f)), _wgslsmith_f_op_f32(var_3.b.x + var_2.b.x), -280f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1627f, 1106f, -1000f) * var_4.b)) - var_3.b)), vec2<bool>(var_4.c.x, var_3.a > var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

