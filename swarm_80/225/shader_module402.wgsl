struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec2<i32> = vec2<i32>(46660i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    global1 = vec2<i32>(u_input.b.x, ~1i);
    return ~vec4<u32>(4294967295u, u_input.d.x, abs(reverseBits(0u)), 0u);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1089f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(367f, -576f)) - 2051f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1097f, 975f), -282f)))), arg_0.zx, !select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, false, global0.x), true), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, true, global0.x, true), true), global0.x & true)), firstTrailingBit(~((i32(-1i) * -8134i) >> (func_2(vec3<bool>(false, false, true)).x % 32u))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-480f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1477f, -478f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1428f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(531f + -139f), _wgslsmith_f_op_f32(309f * 374f), all(vec3<bool>(global0.x, global0.x, false))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(-1065f - 368f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f) + -261f), vec3<i32>(-(-u_input.a >> (arg_0.x % 32u)), -firstTrailingBit(2147483647i), _wgslsmith_div_i32(1i ^ _wgslsmith_add_i32(u_input.b.x, 2766i), ~(u_input.b.x ^ u_input.b.x))));
    global1 = -reverseBits(u_input.b);
    let var_1 = Struct_3(_wgslsmith_add_vec3_i32(var_0.e, vec3<i32>(~(-var_0.e.x), firstLeadingBit(_wgslsmith_sub_i32(var_0.b, global1.x)), 0i)), select(!(!vec3<bool>(var_0.a.d.x, var_0.a.d.x, false)), var_0.a.d.xxx, 5116u >= var_0.a.c.x));
    let var_2 = ((~52942u << (select(arg_0.x << (4294967295u % 32u), 1u, 50372u >= var_0.a.c.x) % 32u)) ^ firstLeadingBit(~reverseBits(54464u))) >= ~firstTrailingBit(arg_0.x);
    let var_3 = Struct_3(-(~var_0.e), var_1.b);
    return _wgslsmith_clamp_i32(-14283i, 0i, global1.x);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = ~func_2(vec3<bool>(false, false, 1u <= u_input.c));
    let var_1 = Struct_1(784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) + _wgslsmith_f_op_f32(select(arg_1.x, 334f, global0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x - arg_1.x))), (arg_1.x == arg_1.x) | all(vec3<bool>(false, true, false))))), max(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(60966u, arg_0), u_input.d), _wgslsmith_mod_u32(u_input.c ^ arg_0, arg_0)), u_input.d), !(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    global1 = abs(vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(2147483647i, u_input.b.x, -51355i, u_input.b.x)), vec4<i32>(-7880i, -global1.x, func_3(vec3<u32>(arg_0, var_1.c.x, 4294967295u)), u_input.b.x)), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global1.x, u_input.b.x, u_input.b.x), vec4<i32>(3933i, global1.x, u_input.a, u_input.b.x), vec4<i32>(-23376i, global1.x, -1i, -2147483647i)), ~(vec4<i32>(global1.x, -44996i, global1.x, -8083i) | vec4<i32>(46216i, global1.x, 2147483647i, 2580i)))));
    var var_2 = var_1;
    var var_3 = Struct_2(Struct_1(-961f, 312f, vec2<u32>(_wgslsmith_div_u32(func_2(var_2.d.yyx).x, firstLeadingBit(var_1.c.x)), 157u), var_2.d), 1i, vec4<f32>(1092f, arg_1.x, 659f, 1f), _wgslsmith_f_op_f32(ceil(-379f)), -(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-62049i, global1.x, u_input.b.x), ~vec3<i32>(global1.x, 2147483647i, 0i))));
    return Struct_2(var_1, 36748i, var_3.c, var_3.d, vec3<i32>(-25507i, var_3.e.x, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(44259u & max(~_wgslsmith_sub_u32(u_input.c, 1u), ~u_input.c), vec3<f32>(_wgslsmith_f_op_f32(max(-1425f, _wgslsmith_f_op_f32(f32(-1f) * -564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(504f)), -637f))), 726f));
    let var_1 = ~vec3<u32>(~reverseBits(20699u), ~15271u, ~_wgslsmith_div_u32(u_input.d.x, var_0.a.c.x)) << (vec3<u32>(abs(~_wgslsmith_mult_u32(var_0.a.c.x, u_input.c)), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.c.x, 72702u), ~1u), _wgslsmith_mod_u32(~(~0u), _wgslsmith_sub_u32(1u & var_0.a.c.x, 45387u & u_input.c))) % vec3<u32>(32u));
    var var_2 = 21708i;
    let var_3 = var_0;
    var_2 = -_wgslsmith_clamp_i32(2147483647i, ~(~(-2147483647i)), select(_wgslsmith_add_i32(var_0.e.x, 81989i), 64560i, !(var_3.c.x <= 1076f)));
    let var_4 = -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(41515i, 14115i, var_3.e.x, 2147483647i) >> (vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(var_3.b, var_0.e.x, var_0.b, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(var_0.b, -1378i, -12130i, u_input.b.x)), _wgslsmith_clamp_vec4_i32((vec4<i32>(0i, u_input.a, var_3.e.x, global1.x) << (vec4<u32>(var_1.x, var_0.a.c.x, var_1.x, var_0.a.c.x) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<i32>(0i, 0i, var_3.e.x, 1i)), vec4<i32>(1i, -global1.x, var_0.b, var_0.e.x), vec4<i32>(-1i, global1.x & global1.x, 61276i, min(-23243i, var_0.b))));
    let var_5 = true;
    let var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(703f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(f32(-1f) * -234f)))), var_0.c.x, _wgslsmith_f_op_f32(589f * var_0.a.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.a.a)))), var_6);
}

