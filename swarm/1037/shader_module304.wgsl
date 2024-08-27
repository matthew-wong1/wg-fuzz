struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: vec2<i32>;

var<private> global2: vec4<i32> = vec4<i32>(1i, -5464i, 32263i, -12193i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)));
    var_0 = 703f;
    var var_1 = 1473f;
    global0 = array<Struct_1, 23>();
    let var_2 = Struct_1(_wgslsmith_sub_i32(global2.x, ~countOneBits(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), -global1.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(40330u, _wgslsmith_sub_u32(38763u, 1u), arg_0 << (arg_1.d.x % 32u)), select(abs(u_input.b), ~arg_2.d.x, false)) << (~(~(~15338u)) % 32u), vec4<u32>(~_wgslsmith_add_u32(4294967295u, arg_1.d.x), ~abs(arg_2.d.x), arg_2.d.x, 1u));
    return _wgslsmith_f_op_f32(floor(728f));
}

fn func_4(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = false;
    var var_1 = Struct_1(reverseBits(~1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.x, u_input.a.x), -u_input.a.wwz)), reverseBits(-_wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), -29654i)), 4294967295u, _wgslsmith_sub_vec4_u32(~(~(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) ^ vec4<u32>(u_input.b, 34864u, u_input.b, u_input.b))), ~vec4<u32>(1u, ~1u, countOneBits(1u), ~u_input.b)));
    var var_2 = Struct_2(true, Struct_1(-_wgslsmith_clamp_i32(abs(54433i), u_input.a.x | global2.x, -25231i), 19023i << (reverseBits(var_1.c) % 32u), _wgslsmith_mult_u32(1u, 1u), vec4<u32>(29954u, 5010u, _wgslsmith_sub_u32(u_input.b, 1u >> (1u % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(10272u, 50765u), ~vec2<u32>(var_1.c, 63774u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~var_1.d.x, Struct_1(8761i, global1.x, var_1.c, var_1.d), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(46412u, u_input.b, var_1.c), 23u)], vec3<bool>(false, false, true))))), select(vec3<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), any(vec4<bool>(true, true, true, true)) | all(vec4<bool>(true, true, true, true))));
    let var_3 = var_2.b;
    var var_4 = 1i;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(min(min(4294967295u, var_2.b.d.x), 4294967295u), Struct_1(0i, 1i, ~var_3.d.x, min(var_2.b.d, vec4<u32>(var_1.d.x, 1u, 19261u, var_3.c))), var_2.b, var_2.d)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.b.c, Struct_1(var_1.a, var_3.b, var_1.c, vec4<u32>(0u, 4294967295u, 0u, var_2.b.c)), Struct_1(global1.x, var_2.b.a, 2308u, var_3.d), var_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = vec4<f32>(786f, -642f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1706f, 486f)), _wgslsmith_f_op_f32(func_3(firstLeadingBit(u_input.b), arg_0, arg_0, vec3<bool>(true, true, false))))) + 1000f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1000f * -197f)));
    var var_1 = arg_0;
    var_1 = Struct_1(global1.x, -8647i, ~abs(countOneBits(4294967295u)) >> (abs(~var_1.d.x) % 32u), var_1.d);
    var var_2 = var_1.d;
    global1 = -vec2<i32>(-25092i, i32(-1i) * -select(global1.x, 0i, false));
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    let var_0 = firstTrailingBit(arg_0.b.d);
    let var_1 = func_2(arg_0.b, -2147483647i);
    global2 = vec4<i32>(var_1.a, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~1i, -633i & global2.x, arg_1), var_1.b) & arg_2.x, global1.x >> (~0u % 32u), global1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(step(arg_0.c, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2550f + 1258f) * _wgslsmith_f_op_f32(floor(1258f))))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(true, func_2(Struct_1(1i, -12051i, arg_1.b.d.x, arg_1.b.d), arg_1.b.a), -907f, select(arg_1.d, arg_1.d, arg_0)), arg_1.b.b, ~reverseBits(vec3<i32>(-2147483647i, global1.x, global2.x)), _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(arg_1.c - arg_1.c))))));
    var var_1 = -294f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(!(true != arg_1.d.x), func_2(func_2(Struct_1(global2.x, arg_1.b.a, 23833u, arg_1.b.d), arg_1.b.b), ~global2.x), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(sign(arg_1.c)), arg_1.d.x)), arg_1.d), 43692i, max(-vec3<i32>(2147483647i, u_input.a.x, 0i), _wgslsmith_clamp_vec3_i32(~u_input.a.yyz, _wgslsmith_mult_vec3_i32(u_input.a.www, global2.yzz), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.b, 50802i, 2147483647i), global2.zzy))), var_0)) - var_0);
    global0 = array<Struct_1, 23>();
    var var_3 = arg_1;
    return global2.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(_wgslsmith_div_vec3_i32(vec3<i32>(-9224i, -25537i, global2.x), vec3<i32>(global1.x, 39794i, global1.x))) & (-vec3<i32>(u_input.a.x, max(-7947i, global1.x), -5569i & global1.x) ^ countOneBits(vec3<i32>(-1i, reverseBits(u_input.a.x), _wgslsmith_mod_i32(2147483647i, u_input.a.x))));
    let var_1 = !vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)) || false, 34857u != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 21098u, u_input.b) & vec3<u32>(u_input.b, 74510u, 25952u), vec3<u32>(u_input.b, 18544u, u_input.b)), any(vec2<bool>(true, false)), true);
    var_0 = min(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(func_1(false, Struct_2(true, global0[_wgslsmith_index_u32(u_input.b, 23u)], -439f, var_1.xyw), vec2<u32>(u_input.b, u_input.b)), u_input.a.xxw ^ vec3<i32>(u_input.a.x, 1i, u_input.a.x)) ^ ~func_1(var_1.x, Struct_2(var_1.x, global0[_wgslsmith_index_u32(31858u, 23u)], 1017f, var_1.zwx), vec2<u32>(4294967295u, u_input.b)), _wgslsmith_add_vec3_i32(global2.zwx, global2.yzy)), global2.xzw);
    let var_2 = ~(~((vec4<u32>(0u, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(38275u, u_input.b, u_input.b, u_input.b)) | ~vec4<u32>(u_input.b, u_input.b, 39176u, u_input.b))) & vec4<u32>(u_input.b, max(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 1u, u_input.b), max(vec4<u32>(55646u, 92175u, 22954u, 53968u), vec4<u32>(u_input.b, 89243u, 1u, u_input.b)))), 0u, _wgslsmith_div_u32(~(~u_input.b), 1u));
    var_0 = vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.x, global2.x, -38366i), func_1(var_1.x, Struct_2(true, Struct_1(global1.x, 1407i, 0u, vec4<u32>(1u, var_2.x, u_input.b, u_input.b)), -802f, var_1.yzx), vec2<u32>(var_2.x, 27992u)).x), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.x, -29585i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, global2.x, 0i, u_input.a.x))), var_0.x) << (abs(var_2.xyw) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(715f, global2.x);
}

