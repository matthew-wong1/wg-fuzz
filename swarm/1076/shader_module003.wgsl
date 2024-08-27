struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_3(Struct_2(Struct_1(arg_1.a, vec2<bool>(!arg_0.a.b.x, !arg_2.b.x), firstTrailingBit(vec2<i32>(-33150i, arg_0.a.d) >> (vec2<u32>(u_input.a.x, 82279u) % vec2<u32>(32u))), select(-1i, 37360i, arg_0.a.b.x)), _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_1.a, arg_0.b), vec3<i32>(-13964i, -13009i, arg_0.a.c.x)), -firstLeadingBit(vec3<i32>(16163i, arg_2.a, arg_0.a.c.x)))));
    let var_1 = Struct_5(arg_2, vec4<i32>(arg_1.a, -12275i, ~(-2147483647i), i32(-1i) * -2147483647i) | reverseBits(vec4<i32>(-1i, 46327i, -arg_0.a.a, -46296i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(928f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-384f, -2589f)))))));
    var_0 = Struct_3(Struct_2(var_0.a.a, 1i));
    let var_2 = select(!(!vec4<bool>(all(vec3<bool>(false, false, true)), false, var_1.a.b.x, var_0.a.a.b.x && var_1.a.b.x)), !select(vec4<bool>(var_1.a.b.x, false, true, !arg_0.a.b.x), vec4<bool>(any(vec4<bool>(true, arg_2.b.x, true, arg_2.b.x)), true, !arg_2.b.x, true), !select(vec4<bool>(arg_0.a.b.x, var_0.a.a.b.x, false, false), vec4<bool>(false, false, false, true), var_1.a.b.x)), vec4<bool>(any(!vec4<bool>(arg_2.b.x, false, var_0.a.a.b.x, true)), !(!arg_2.b.x), true, any(vec3<bool>(arg_0.a.b.x, arg_2.b.x, false)) && true));
    let var_3 = countOneBits(select(-vec3<i32>(2051i, arg_2.a, var_0.a.b), select(var_1.b.yyy, vec3<i32>(var_1.b.x, var_1.b.x, -17591i), global0[_wgslsmith_index_u32(~u_input.a.x, 4u)]), var_0.a.a.b.x)) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u));
    return reverseBits(_wgslsmith_sub_i32(~(~_wgslsmith_div_i32(-11429i, var_3.x)), arg_1.a));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(1u)), 1u), vec2<u32>(62834u, ~_wgslsmith_sub_u32(~0u, ~u_input.a.x)));
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    var var_1 = Struct_4(firstLeadingBit(abs(func_3(Struct_2(Struct_1(0i, vec2<bool>(arg_0, true), vec2<i32>(-26417i, -36238i), -1i), 29395i), Struct_4(-1i), Struct_1(-12959i, vec2<bool>(arg_0, arg_0), vec2<i32>(14053i, -1i), 1i)))));
    return Struct_3(Struct_2(Struct_1(var_1.a, select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), any(vec2<bool>(arg_0, arg_0))), min(-vec2<i32>(var_1.a, -1i), countOneBits(vec2<i32>(-1i, var_1.a))), var_1.a), max(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.a, 25351i, var_1.a), vec3<i32>(var_1.a, 0i, -70800i)), func_3(Struct_2(Struct_1(0i, vec2<bool>(arg_0, arg_0), vec2<i32>(2147483647i, -2147483647i), var_1.a), var_1.a), Struct_4(var_1.a), Struct_1(var_1.a, vec2<bool>(arg_0, arg_0), vec2<i32>(var_1.a, var_1.a), var_1.a)))));
}

fn func_1() -> u32 {
    var var_0 = ~(-2147483647i);
    let var_1 = func_2(true);
    global0 = array<vec3<bool>, 4>();
    var var_2 = ~u_input.a.xz;
    var var_3 = 748f;
    return abs(22872u << (var_2.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_1(), ~u_input.a.x & ~select(u_input.a.x, 4294967295u, true), 1u, ~22536u);
    var var_1 = Struct_4(_wgslsmith_div_i32(-1i, 1i));
    var_1 = Struct_4(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(2147483647i, var_1.a, var_1.a)), _wgslsmith_mult_vec3_i32(-vec3<i32>(0i, -87465i, var_1.a), -(vec3<i32>(0i, -36189i, var_1.a) | vec3<i32>(var_1.a, -2200i, var_1.a)))));
    var var_2 = _wgslsmith_add_u32(func_1(), ~_wgslsmith_add_u32(33544u, 11008u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(671f, -572f, -811f, -1401f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(617f, 396f, 843f, 749f) + vec4<f32>(-610f, 1000f, 1460f, -404f))))) - vec4<f32>(-1886f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(114f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1883f, 1000f)))))));
    var_2 = ~(~max(40671u, select(4294967295u, 82568u, true))) ^ (max(countOneBits(~778u), ~u_input.a.x) >> (firstLeadingBit(0u) % 32u));
    let var_4 = -1737f;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - -440f))), 662f, _wgslsmith_f_op_f32(ceil(-299f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -643f)), 589f))), ~(~1508u));
}

