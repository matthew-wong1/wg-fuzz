struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> u32 {
    global0 = Struct_1(select(select(global0.a, select(!global0.a, global0.a, global0.a), select(global0.a, global0.a, !vec3<bool>(arg_0.b.a, arg_2.b.c.x, false))), vec3<bool>(any(select(vec4<bool>(true, arg_0.b.c.x, false, true), vec4<bool>(true, global0.a.x, arg_2.a.a, global0.a.x), vec4<bool>(true, false, global0.a.x, arg_2.a.a))), arg_0.b.c.x, false), global0.a));
    let var_0 = Struct_2(global0.a.x & true, countOneBits(arg_2.c.b), !global0.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * arg_2.a.d)));
    global0 = Struct_1(vec3<bool>(any(!select(global0.a, global0.a, false)), all(vec2<bool>(true, true)), (arg_2.a.a && (var_0.d >= arg_0.c.d)) & true));
    let var_1 = ((abs(-arg_1) & 1i) > arg_1) & select(arg_0.b.d != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_0.d) - _wgslsmith_f_op_f32(-var_0.d)), arg_0.b.c.x, all(vec4<bool>(select(false, var_0.a, false), true, false, true)));
    let var_2 = ~arg_0.a.b;
    return 2050u;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> u32 {
    global0 = Struct_1(vec3<bool>(global0.a.x, true, all(!vec4<bool>(arg_1, false, true, false)) | any(vec2<bool>(false, true))));
    global0 = Struct_1(!vec3<bool>(arg_1, any(global0.a), true || global0.a.x));
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(~u_input.a), _wgslsmith_add_u32(~arg_2, u_input.a), _wgslsmith_mult_u32(4294967295u >> (u_input.a % 32u), u_input.a ^ u_input.a), u_input.a), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(abs(countOneBits(vec4<u32>(arg_2, u_input.a, 42071u, 4294967295u))), ~(~vec4<u32>(0u, arg_2, u_input.a, arg_2))), vec4<u32>(min(func_3(Struct_3(Struct_2(global0.a.x, vec4<u32>(80133u, 45358u, arg_2, 13310u), global0.a.yz, 1803f), Struct_2(false, vec4<u32>(4294967295u, 18535u, arg_2, 1u), vec2<bool>(arg_1, true), -1000f), Struct_2(global0.a.x, vec4<u32>(1u, arg_2, 2443u, arg_2), vec2<bool>(false, arg_1), 500f), 491f), -4673i, Struct_3(Struct_2(global0.a.x, vec4<u32>(u_input.a, 32037u, u_input.a, 1u), global0.a.yz, 218f), Struct_2(arg_1, vec4<u32>(u_input.a, u_input.a, arg_2, 66707u), vec2<bool>(arg_1, global0.a.x), 152f), Struct_2(global0.a.x, vec4<u32>(arg_2, u_input.a, 56887u, u_input.a), global0.a.yx, -874f), -720f)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, u_input.a))), 17179u, 27540u, ~arg_2)));
    let var_1 = Struct_3(Struct_2(arg_1, ~_wgslsmith_div_vec4_u32(~vec4<u32>(9684u, 0u, arg_2, 5038u), vec4<u32>(u_input.a, arg_2, u_input.a, 0u) << (vec4<u32>(67550u, u_input.a, 67833u, 4294967295u) % vec4<u32>(32u))), global0.a.zy, _wgslsmith_f_op_f32(264f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -935f), -131f, !global0.a.x)))), Struct_2(true, vec4<u32>(arg_2, ~(1u ^ arg_2), 1u, arg_2), vec2<bool>(true, !select(true, true, false)), _wgslsmith_f_op_f32(select(234f, _wgslsmith_f_op_f32(f32(-1f) * -420f), false))), Struct_2(arg_1, _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(17149u, 4294967295u, 59654u, 1u)), ~(vec4<u32>(arg_2, 0u, 13893u, u_input.a) >> (vec4<u32>(u_input.a, 0u, u_input.a, arg_2) % vec4<u32>(32u)))), !vec2<bool>(any(vec4<bool>(true, true, global0.a.x, arg_1)), all(vec3<bool>(global0.a.x, true, global0.a.x))), 1025f), 2204f);
    let var_2 = vec2<f32>(var_1.c.d, var_1.a.d);
    return ~(~(22037u >> (abs(4294967295u ^ var_1.b.b.x) % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~func_2(vec4<i32>(-3514i, -1i, u_input.b, u_input.b), true, arg_1.x >> (arg_1.x % 32u)), ~(~(~arg_1.x)), 28873u, u_input.a), abs(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, u_input.a, 46823u, 0u))), countOneBits(firstLeadingBit(arg_1.x)), arg_1.x, ~u_input.a)));
    global0 = arg_2;
    var var_2 = u_input.a | arg_1.x;
    let var_3 = Struct_2(true, _wgslsmith_clamp_vec4_u32(select(select(vec4<u32>(4294967295u, u_input.a, 41648u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, arg_1.x, 4294967295u, u_input.a), arg_1), arg_0), vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), !all(arg_0)), ~((arg_1 ^ vec4<u32>(84075u, arg_1.x, var_1.x, var_1.x)) >> (select(arg_1, var_1, true) % vec4<u32>(32u))), var_1), vec2<bool>(all(arg_0.yz), all(!(!arg_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -313f) + _wgslsmith_f_op_f32(-arg_3)) - -1000f))));
    return ~(_wgslsmith_sub_u32(1029u, ~1u >> (arg_1.x % 32u)) ^ arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-200f))) > 413f;
    global0 = Struct_1(select(select(global0.a, !(!global0.a), var_0), !vec3<bool>(any(vec4<bool>(true, false, true, true)), all(vec4<bool>(global0.a.x, global0.a.x, false, true)), false), false));
    var var_1 = Struct_2(func_1(vec4<bool>(true, true, true, true), ~vec4<u32>(4294967295u, 55632u, u_input.a, 0u), Struct_1(vec3<bool>(var_0, var_0, global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -648f)) <= abs(u_input.a & ~u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(58803u, 45592u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a), vec4<u32>(~u_input.a, u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(23928u, 52005u, 9697u, 65798u), vec4<u32>(0u, u_input.a, 1u, u_input.a)), func_2(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(0i, -4187i, 1i, u_input.b)), true, select(102639u, u_input.a, var_0)))), vec2<bool>(select(true, true && global0.a.x, true) | !(!global0.a.x), select(true, _wgslsmith_mod_i32(8262i, u_input.b) != 2147483647i, global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f + 400f))));
    let var_2 = -_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(-39566i, u_input.b, u_input.b, 9921i)), firstLeadingBit(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b)));
    let var_3 = Struct_2(var_1.a == !all(!global0.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~_wgslsmith_div_u32(var_1.b.x, u_input.a), ~(~var_1.b.x), u_input.a), ~(~var_1.b ^ (var_1.b >> (var_1.b % vec4<u32>(32u))))), select(vec2<bool>(!(!var_0), any(vec4<bool>(global0.a.x, global0.a.x, var_1.c.x, global0.a.x))), global0.a.xx, select(select(select(vec2<bool>(var_1.a, true), var_1.c, false), var_1.c, true), !select(vec2<bool>(global0.a.x, true), vec2<bool>(false, true), global0.a.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - 585f)));
    let var_4 = Struct_2(!any(!select(global0.a, vec3<bool>(var_1.c.x, var_3.a, global0.a.x), vec3<bool>(var_3.c.x, true, var_3.c.x))), ~max(var_1.b, _wgslsmith_mod_vec4_u32(var_3.b, vec4<u32>(var_1.b.x, var_1.b.x, 49658u, var_1.b.x))) & _wgslsmith_mod_vec4_u32(var_3.b, var_3.b), select(!select(!vec2<bool>(true, var_0), vec2<bool>(true, false), var_1.c), vec2<bool>(any(!vec2<bool>(true, global0.a.x)), _wgslsmith_f_op_f32(-var_3.d) <= _wgslsmith_f_op_f32(sign(var_3.d))), any(vec4<bool>(true, false, !var_3.a, var_1.c.x))), -543f);
    var var_5 = var_1.b.zw >> (firstLeadingBit(countOneBits(_wgslsmith_sub_vec2_u32(var_3.b.zy, ~var_1.b.wz))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, ~1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-415f)), var_4.d, var_4.d)), 16329u, _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(66474i >> (u_input.a % 32u), 1i, var_2.x), countOneBits(var_2.xwx))));
}

