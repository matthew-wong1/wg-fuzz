struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = arg_0.a.b.wwz;
    let var_1 = Struct_3(vec2<f32>(188f, -436f));
    var var_2 = arg_0.a.d;
    global0 = array<vec2<f32>, 22>();
    var var_3 = 22756u;
    return arg_0.a.d.zzz;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    let var_0 = Struct_4(19584i, vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-30270i, -34859i, 17521i)), func_3(Struct_2(Struct_1(vec2<u32>(100103u, u_input.a), vec4<bool>(false, true, arg_0, false), 593f, vec4<i32>(22988i, 24220i, 4535i, 5563i)), vec2<u32>(4294967295u, u_input.a)))), max(-22684i >> (0u % 32u), i32(-1i) * -1i) & ~select(-66106i, 7895i, arg_0)), !(!(!vec4<bool>(true, false, arg_0, false))), 0i, i32(-1i) * -10183i);
    var var_1 = select(!vec3<bool>(any(vec4<bool>(false, true, arg_0, true)), var_0.c.x || (u_input.a < u_input.a), select(var_0.c.x, var_0.c.x, arg_0) || all(var_0.c.xy)), !(!vec3<bool>(!var_0.c.x, false, true)), true);
    var_1 = var_0.c.wxz;
    return Struct_2(Struct_1(~vec2<u32>(1u, 52191u), !vec4<bool>(-21503i > var_0.a, true, true, false == arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<i32>(_wgslsmith_div_i32(2147483647i, 8468i), var_0.e, -var_0.a, var_0.a) & ((vec4<i32>(var_0.d, -1i, var_0.a, var_0.d) & vec4<i32>(24644i, 13582i, 5102i, -34070i)) | min(vec4<i32>(var_0.a, 38612i, 5653i, -13931i), vec4<i32>(var_0.d, 2147483647i, 0i, -2147483647i)))), abs(vec2<u32>(u_input.a, 23680u)));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1931f)));
    var var_1 = u_input.a;
    var_1 = u_input.a;
    let var_2 = ~(~u_input.a);
    global0 = array<vec2<f32>, 22>();
    return Struct_4(arg_0.a.d.x, vec2<i32>(func_2(all(arg_0.a.b.yxx)).a.d.x, ~arg_0.a.d.x), func_2(arg_0.a.b.x).a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.d.x, arg_0.a.d.x, _wgslsmith_div_i32(arg_0.a.d.x | arg_0.a.d.x, arg_0.a.d.x), _wgslsmith_dot_vec2_i32(arg_0.a.d.yw, arg_0.a.d.wz) << ((arg_0.a.a.x >> (2016u % 32u)) % 32u)), max(-vec4<i32>(0i, -2147483647i, -25714i, 18348i), abs(arg_0.a.d << (vec4<u32>(0u, 6439u, 0u, u_input.a) % vec4<u32>(32u))))), ~1i);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: u32) -> vec2<u32> {
    let var_0 = func_4(func_2(true));
    global0 = array<vec2<f32>, 22>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(23182u, arg_3, u_input.a)), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_3, u_input.a), 49895u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, arg_3, 6385u, arg_3), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_3, arg_3, 1u), vec4<u32>(4294967295u, arg_3, 114885u, 4294967295u))), ~(~29644u))), ~min(~arg_3, _wgslsmith_add_u32(reverseBits(1u), 25226u)));
    var_1 = 26990u;
    var var_2 = var_0;
    return _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(~0u), _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(arg_3, 32621u))) ^ vec2<u32>(~(~4294967295u), ~firstLeadingBit(u_input.a)), vec2<u32>(u_input.a << (1u % 32u), 14151u));
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<vec2<f32>, 22>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -1398f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -1432f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-336f, arg_2.a.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, arg_2.a.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(arg_2.a + arg_2.a)))));
    global0 = array<vec2<f32>, 22>();
    var var_1 = Struct_1(vec2<u32>(~u_input.a, ~72664u), vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.x * -896f))) >= var_0.a.x, !((arg_1.x << (arg_1.x % 32u)) > arg_1.x), true, any(func_4(func_2(false)).c)), _wgslsmith_f_op_f32(1f + -571f), arg_3);
    var_1 = Struct_1(arg_1, var_1.b, 1000f, var_1.d);
    return Struct_1(~vec2<u32>(abs(min(22657u, 73490u)), ~u_input.a), vec4<bool>(!(!var_1.b.x), true, var_1.b.x | true, var_1.b.x), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(-var_1.c)), -var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_i32(-(~(~0i)), abs(~(i32(-1i) * -1i))), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, _wgslsmith_clamp_u32(90905u, 28714u, u_input.a)), ~(~func_1(global0[_wgslsmith_index_u32(4294967295u, 22u)], 806i, -4470i, u_input.a))), Struct_3(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 22u)])), ~abs(vec4<i32>(0i, ~(-87056i), ~8251i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2273i, -2147483647i), vec2<i32>(57883i, 2147483647i)))));
    let var_1 = vec3<u32>(var_0.a.x & firstLeadingBit(u_input.a), var_0.a.x, min(u_input.a, u_input.a));
    let var_2 = var_0;
    var var_3 = Struct_2(func_5(_wgslsmith_dot_vec4_i32(var_2.d, _wgslsmith_add_vec4_i32(max(var_0.d, var_2.d), abs(vec4<i32>(var_2.d.x, 0i, var_0.d.x, 2147483647i)))), vec2<u32>(4294967295u, 11565u), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1139f, -360f) - vec2<f32>(var_0.c, 723f)))), abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, -1i, -15468i), var_0.d))), abs(~(~var_2.a)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.a.c)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(false).a.c - 205f), var_2.c)));
    var var_5 = func_4(func_2(-1572f != _wgslsmith_f_op_f32(func_2(var_3.a.b.x).a.c * var_4)));
    var_3 = Struct_2(var_2, ~reverseBits(abs(countOneBits(var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1463f * var_2.c) * 1f))), -1275f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(529f, _wgslsmith_f_op_f32(ceil(383f)), var_4, _wgslsmith_f_op_f32(ceil(-327f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, var_2.c, var_2.c, var_4), vec4<f32>(var_2.c, var_3.a.c, -703f, 309f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1080f), _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(trunc(var_4))), _wgslsmith_f_op_f32(trunc(1126f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * -1000f))), ~countOneBits(~select(vec4<u32>(7874u, u_input.a, 1u, 11036u), vec4<u32>(var_1.x, 58715u, 26995u, 1u), var_2.b)), vec4<i32>(var_5.a, -5667i >> ((func_1(global0[_wgslsmith_index_u32(1u, 22u)], var_5.e, 7222i, 44929u).x | 1u) % 32u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, var_3.a.d.x, var_0.d.x)), _wgslsmith_mod_vec3_i32(var_0.d.xyw, var_0.d.yzz)) << (~var_2.a.x % 32u), 1i));
}

