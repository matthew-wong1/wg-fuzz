struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(13700i, -29118i, -28840i, 1i), Struct_1(vec3<u32>(0u, 1u, 1u), vec3<f32>(-1030f, -735f, 993f), -49450i));

var<private> global1: Struct_3 = Struct_3(-37391i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_1(firstTrailingBit(vec3<u32>(global0.b.a.x, _wgslsmith_clamp_u32(u_input.a, ~global0.b.a.x, ~4872u), ~45664u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global0.b.b.x, -296f)) * _wgslsmith_f_op_vec3_f32(-arg_0.b.b)) + arg_0.b.b))), global1.a);
    global0 = arg_0;
    var var_1 = Struct_3(max(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(80598i, 12894i, arg_0.a.x), vec3<i32>(global0.a.x, u_input.b, 0i)))), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(-24621i, u_input.d), _wgslsmith_mult_i32(var_0.c, arg_0.a.x))));
    var_1 = Struct_3(arg_0.a.x);
    var_1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.e | 1i, ~var_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-30037i, global1.a, 1i, -2147483647i), vec4<i32>(-1i, u_input.d, 9499i, _wgslsmith_add_i32(arg_0.b.c, 2147483647i)))));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.a.xyw, arg_0.a.wzx, arg_0.a.wyz) & _wgslsmith_mod_vec3_i32((vec3<i32>(0i, -22705i, var_1.a) << (vec3<u32>(36588u, 4294967295u, arg_0.b.a.x) % vec3<u32>(32u))) | u_input.c.wzx, abs(vec3<i32>(var_0.c, arg_0.a.x, -1i))), ~(~(~vec3<i32>(arg_0.b.c, var_0.c, 2147483647i))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(abs(~((vec3<u32>(global0.b.a.x, u_input.a, u_input.a) | vec3<u32>(4294967295u, 1u, u_input.a)) ^ vec3<u32>(32932u, global0.b.a.x, 12618u))), global0.b.a);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(global0.b.b.x, 648f), -702f);
    var var_2 = vec3<i32>(1i, u_input.c.x, -abs(~global0.b.c));
    var var_3 = -400f;
    var var_4 = abs(firstTrailingBit(firstTrailingBit(var_0.x)) >> ((~u_input.a | u_input.a) % 32u)) ^ (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(22798u, 6700u, 1u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, global0.b.a.x, 0u, 79145u), ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 0u))) | reverseBits(0u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(1u, 1u, ~0u >> ((global0.b.a.x & 1u) % 32u)), vec3<f32>(484f, _wgslsmith_div_f32(global0.b.b.x, 1f), global0.b.b.x), _wgslsmith_dot_vec3_i32(global0.a.xwz, max(func_2(Struct_2(global0.a, global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, 2215f, 555f, global0.b.b.x))), select(_wgslsmith_mult_vec3_i32(u_input.c.yyz, u_input.c.zzy), global0.a.ywy, true))));
    let var_1 = select(u_input.c, vec4<i32>(arg_0, 1i, arg_0, _wgslsmith_dot_vec3_i32(u_input.c.wzx, vec3<i32>(0i ^ global1.a, _wgslsmith_mult_i32(global0.b.c, 2402i), ~arg_0))), true);
    var var_2 = ~(~(~45741u));
    global0 = Struct_2(vec4<i32>(u_input.e, func_2(Struct_2(select(u_input.c, u_input.c, vec4<bool>(false, true, false, true)), global0.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.b.x, 592f, global0.b.b.x, 209f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b.x, var_0.b.x, -1525f, global0.b.b.x))))).x, func_2(Struct_2(~vec4<i32>(29569i, global1.a, var_0.c, -45621i), var_0), vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_0.b.x, var_0.b.x, -557f)).x, max(_wgslsmith_div_i32(-2147483647i, u_input.e), 1i) & 22374i), var_0);
    global0 = Struct_2(var_1, Struct_1(~_wgslsmith_div_vec3_u32(~global0.b.a, abs(var_0.a)), global0.b.b, firstTrailingBit(-1i)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-43231i);
    var var_1 = Struct_2(countOneBits(~_wgslsmith_sub_vec4_i32(u_input.c | vec4<i32>(2147483647i, u_input.d, u_input.d, var_0.a), _wgslsmith_mult_vec4_i32(global0.a, vec4<i32>(global1.a, var_0.a, 1i, -2147483647i)))), func_1(-(44586i ^ (-2147483647i | global0.b.c))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-570f, 207f, 2029f), _wgslsmith_f_op_vec3_f32(vec3<f32>(964f, var_1.b.b.x, 950f) * vec3<f32>(global0.b.b.x, 832f, -308f)), true)), var_1.b.b))));
    var var_3 = Struct_2(-(~var_1.a), func_1(~_wgslsmith_mult_i32(var_1.b.c >> (0u % 32u), -1i)));
    var_3 = Struct_2(u_input.c & (vec4<i32>(var_1.a.x, -2316i | u_input.e, _wgslsmith_add_i32(-4759i, var_0.a), ~global1.a) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.a.x, 1u, 37514u, u_input.a), countOneBits(vec4<u32>(u_input.a, 74463u, global0.b.a.x, 103933u))) % vec4<u32>(32u))), func_1(-var_3.a.x));
    var_0 = Struct_3(~0i);
    let var_4 = Struct_2(var_3.a, global0.b);
    var_3 = Struct_2(var_3.a, global0.b);
    var_3 = Struct_2(_wgslsmith_mult_vec4_i32(var_1.a, var_1.a & global0.a), func_1(var_3.a.x >> (135062u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(52212u, ~vec3<u32>(27994u, 1u | var_3.b.a.x, ~firstLeadingBit(118793u)), ~select(~(~1u), ~_wgslsmith_add_u32(1u, var_1.b.a.x), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))));
}

