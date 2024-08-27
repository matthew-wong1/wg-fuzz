struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, true);

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = arg_0;
    let var_0 = -min(~vec2<i32>(-1i, _wgslsmith_mod_i32(u_input.b, 0i)), vec2<i32>(i32(-1i) * -6331i, ~(-35063i)));
    global1 = arg_0;
    let var_1 = Struct_3(false, global0.a);
    var var_2 = Struct_2(vec4<u32>(19389u, global1.a.x, ~_wgslsmith_mult_u32(arg_0.b.e, arg_0.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(35138u, 27588u, global1.a.x, 1u), global1.a)) | ~(~(~arg_0.a)), Struct_1(true, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(0u, global1.b.d.x), vec2<u32>(5298u, u_input.a.x)), arg_0.b.d.ww), vec2<u32>(firstLeadingBit(global1.b.d.x), 0u)), ~_wgslsmith_div_vec4_u32(~arg_0.a, abs(vec4<u32>(u_input.a.x, 20097u, 147u, 0u))), max(abs(vec4<u32>(u_input.c.x, 12304u, 12559u, 4294967295u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(28529u, u_input.a.x, global1.b.b.x, arg_0.a.x), vec4<u32>(u_input.e, u_input.c.x, arg_0.a.x, global1.b.c.x))), _wgslsmith_sub_u32(global1.a.x, firstTrailingBit(1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -313f), 1707f, -1000f))) + global1.c));
    return _wgslsmith_f_op_f32(trunc(-105f));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = Struct_2(vec4<u32>(~global1.b.d.x, ~_wgslsmith_div_u32(~global1.b.d.x, ~4294967295u), ~1u, 1u), global1.b, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - 1350f), _wgslsmith_f_op_f32(f32(-1f) * -2805f), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f + 218f) + -1000f))), 1849f));
    return Struct_2(global1.a, global1.b, vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(~global1.b.c, global1.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.x, global1.c.x, -1373f), vec3<f32>(657f, -934f, -503f), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1501f)), -794f))), _wgslsmith_f_op_f32(min(1194f, _wgslsmith_f_op_f32(global1.c.x + 155f)))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = Struct_2(~vec4<u32>((u_input.e | global1.b.b.x) << (arg_0 % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0), global1.a.zy), _wgslsmith_mod_vec2_u32(global1.b.c.yw, vec2<u32>(u_input.a.x, 0u))), 0u, u_input.a.x), Struct_1(!global0.b, global1.b.d.zz, select(_wgslsmith_sub_vec4_u32(global1.a, vec4<u32>(u_input.c.x, 40653u, 4294967295u, 1u) & vec4<u32>(18556u, arg_0, global1.a.x, u_input.a.x)), ~(~global1.a), vec4<bool>(true, global1.b.a, global1.b.a, global0.b)), ~_wgslsmith_add_vec4_u32(reverseBits(global1.a), global1.a), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1.a.x, 48416u)), ~_wgslsmith_add_vec2_u32(global1.b.c.xx, global1.a.yw))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.c + global1.c), _wgslsmith_f_op_vec3_f32(-global1.c), !vec3<bool>(global0.a, global1.b.a, global0.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(856f, global1.c.x, 1109f), vec3<f32>(-408f, 906f, global1.c.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, global1.c.x, 931f)))))));
    global1 = func_2(false | !(!any(vec4<bool>(global1.b.a, true, true, false))));
    var var_0 = ~(-22120i);
    var_0 = ~(~u_input.b) << (0u % 32u);
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0 << (5995u % 32u), _wgslsmith_add_u32(u_input.c.x, arg_0)) & ~vec3<u32>(1u, 12829u, 18650u), _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.a) << (vec3<u32>(u_input.c.x, 50244u, 39268u) % vec3<u32>(32u)), global1.b.d.wxw << (~u_input.a % vec3<u32>(32u)))), u_input.e, global1.b.b.x);
    return func_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global1.b.d.x, u_input.c.x, 60536u) ^ vec3<u32>(64585u, u_input.a.x, 47430u)) >> (countOneBits(~u_input.a.x) % 32u), 1u));
    global1 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(u_input.e, u_input.a.x), 1u, u_input.e, ~global1.b.b.x), _wgslsmith_div_vec4_u32(global1.b.d, ~(~global1.b.d))), global1.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -744f, _wgslsmith_f_op_f32(-global1.c.x))))));
    var var_0 = func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(16612u, 4294967295u)), reverseBits(firstTrailingBit(global1.b.d.xz))));
    global0 = Struct_3(var_0.b.a, global0.b);
    var_0 = Struct_2(~countOneBits(var_0.a), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f * global1.c.x)) >= -1083f).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c.x, var_0.c.x, global1.c.x))), var_0.c, global1.b.a)) - global1.c)));
    global1 = func_1(_wgslsmith_mod_u32(select(var_0.b.b.x, _wgslsmith_clamp_u32(4294967295u, ~global1.a.x, global1.a.x), false), ~global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(716u, min(-max(max(vec2<i32>(-1i, u_input.b), vec2<i32>(0i, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(22414i, -1i), vec2<i32>(u_input.d, -1i), vec2<i32>(-1i, -2147483647i))), (firstTrailingBit(vec2<i32>(u_input.d, u_input.b)) & firstLeadingBit(vec2<i32>(26802i, 1i))) ^ (abs(vec2<i32>(-35459i, 2147483647i)) >> (countOneBits(u_input.a.xy) % vec2<u32>(32u)))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(11365u, global1.b.e, u_input.c.x, u_input.a.x)), ~vec4<u32>(70124u, 0u, 0u, 0u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.b.x, 92892u, 4294967295u, var_0.a.x), var_0.a))), _wgslsmith_f_op_vec2_f32(select(global1.c.zz, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(var_0.a, global1.b, vec3<f32>(-664f, -185f, var_0.c.x)))), var_0.c.x))), !select(vec2<bool>(true, false), !vec2<bool>(global0.a, false), !global0.b))), _wgslsmith_sub_i32(2147483647i, 2147483647i));
}

