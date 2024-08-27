struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(828f, vec2<u32>(54621u, 1u), vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), vec4<i32>(0i, i32(-2147483648), 0i, -1i)), Struct_1(-1713f, vec2<u32>(38535u, 61474u), vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), vec4<i32>(9347i, 0i, 20314i, i32(-2147483648))), Struct_1(607f, vec2<u32>(4294967295u, 87257u), vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), vec4<i32>(-1i, 0i, 0i, i32(-2147483648))), Struct_1(359f, vec2<u32>(4294967295u, 1u), vec4<bool>(true, true, false, true), vec3<bool>(true, true, false), vec4<i32>(-4811i, i32(-2147483648), 51333i, 1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = vec2<bool>(all(!select(!arg_0.c, vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_2.d.x), all(arg_2.c.xz))), arg_0.c.x);
    let var_1 = -27376i;
    global0 = array<Struct_1, 4>();
    var var_2 = select(vec4<bool>(false, !(!any(vec2<bool>(false, arg_2.d.x))), 1638f < arg_2.a, arg_2.d.x), !vec4<bool>(false, var_0.x, var_0.x, false), arg_2.c);
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(-877f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f + arg_2.a))) * _wgslsmith_f_op_f32(f32(-1f) * -1293f)));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1017f))), _wgslsmith_f_op_f32(func_3(Struct_1(-1230f, u_input.b, vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), select(vec4<i32>(15317i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(1i, u_input.c.x, u_input.c.x, 10823i), vec4<bool>(true, false, true, false))), vec4<i32>(-1i, -2147483647i, _wgslsmith_clamp_i32(-9407i, u_input.c.x, -4836i), 9086i ^ u_input.c.x), global0[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b.x))), vec2<u32>(~17432u, u_input.b.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), max(vec4<i32>(~2147483647i, u_input.c.x, u_input.c.x ^ u_input.c.x, -1i & u_input.c.x), -(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))) & (select(vec4<i32>(u_input.c.x, u_input.c.x, 39524i, u_input.c.x), firstTrailingBit(vec4<i32>(0i, -2147483647i, 11661i, -13762i)), false) ^ -(vec4<i32>(u_input.c.x, 3257i, -2147483647i, u_input.c.x) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)))));
    let var_1 = !(!(!(u_input.c.x < -13459i)) | ((true && any(var_0.d.xy)) || false));
    var var_2 = Struct_1(var_0.a, var_0.b & var_0.b, select(select(var_0.c, vec4<bool>(!var_1, var_1, 4294967295u <= var_0.b.x, true), select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(var_1, var_0.d.x, true, true), var_0.b.x >= 32122u)), select(vec4<bool>(any(var_0.c.ywy), !var_1, all(var_0.d), false), vec4<bool>(false, u_input.c.x > var_0.e.x, true, true), var_0.d.x), any(vec2<bool>(var_0.d.x & false, var_1 | var_1))), var_0.c.wxy, var_0.e);
    global0 = array<Struct_1, 4>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-1091f - var_0.a)))), var_0.b, !(!var_0.c), select(!var_0.c.yyz, !(!(!vec3<bool>(var_1, false, var_1))), false), _wgslsmith_mult_vec4_i32(~max(~var_0.e, vec4<i32>(var_0.e.x, var_2.e.x, 0i, -1i) ^ vec4<i32>(var_2.e.x, var_0.e.x, var_2.e.x, u_input.c.x)), _wgslsmith_sub_vec4_i32(-var_0.e, var_2.e)));
    return ~u_input.b.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 4u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-866f, _wgslsmith_f_op_f32(var_0.a - 633f))), 230f))), abs(max(var_0.b, vec2<u32>(arg_0.x, 4294967295u)) ^ u_input.b), vec4<bool>(select(all(vec2<bool>(true, true)), true, var_0.c.x), true, !(!var_0.c.x), true), !(!(!(!var_0.c.wxw))), vec4<i32>(u_input.c.x | _wgslsmith_dot_vec3_i32(var_0.e.xyz, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.e.x, u_input.c.x, 2147483647i), vec3<i32>(40498i, arg_1.x, -2147483647i))), ~_wgslsmith_mult_i32(-26822i, _wgslsmith_sub_i32(-3622i, u_input.c.x)), (_wgslsmith_dot_vec3_i32(vec3<i32>(-16405i, var_0.e.x, 1i), vec3<i32>(u_input.c.x, u_input.c.x, arg_1.x)) ^ ~(-28327i)) | var_0.e.x, 16578i));
    var var_2 = min(_wgslsmith_clamp_u32(var_1.b.x, arg_0.x, ~41898u) & func_2(), firstLeadingBit(_wgslsmith_div_u32(4294967295u, max(72567u, 0u))) ^ arg_0.x);
    let var_3 = -231f;
    global0 = array<Struct_1, 4>();
    return firstTrailingBit(~firstLeadingBit(var_1.b.x));
}

fn func_4(arg_0: u32) -> bool {
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(218f, 261f) - vec2<f32>(-1742f, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, -1679f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2082f, 469f), vec2<f32>(-1000f, -1372f), true))))), vec2<f32>(-1121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1802f - 1969f)) + -1446f))));
    let var_1 = vec3<bool>(!(!any(vec2<bool>(true, false)) || true), true, false);
    return all(select(vec2<bool>(false, !var_1.x), var_1.yx, select(var_1.yx, vec2<bool>(true, any(vec3<bool>(var_1.x, var_1.x, var_1.x))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = func_4(func_1(_wgslsmith_div_vec3_u32(abs(firstTrailingBit(vec3<u32>(u_input.b.x, u_input.a, u_input.d))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, u_input.b.x), vec3<u32>(u_input.b.x, 90u, u_input.d)), vec3<u32>(u_input.a, 34658u, u_input.a))), vec3<i32>(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, -11670i, 33918i)), 1i, firstLeadingBit(u_input.c.x))));
    var var_1 = !select(!select(!vec3<bool>(var_0, false, var_0), !vec3<bool>(false, true, var_0), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, false), true), vec3<bool>(var_0, var_0, true), true), select(vec3<bool>(false, false, var_0), select(vec3<bool>(false, var_0, true), vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, false)), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, false, var_0), var_0)), !var_0 | !var_0), vec3<bool>(var_0 | any(vec4<bool>(true, true, var_0, var_0)), select(true, true, true), false));
    let var_2 = Struct_1(488f, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.b.x, 20170u), ~vec4<u32>(1u, u_input.a, u_input.b.x, u_input.b.x)), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a), 4294967295u)), select(select(select(select(vec4<bool>(var_0, var_0, var_1.x, false), vec4<bool>(false, var_0, true, false), vec4<bool>(var_0, false, var_1.x, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(var_0, true, true, false), false), true), vec4<bool>(!var_0, false, true, all(vec4<bool>(var_1.x, false, var_1.x, false))), all(vec4<bool>(var_0, false, false, var_1.x))), vec4<bool>(var_0, all(select(vec3<bool>(true, var_0, false), vec3<bool>(false, true, var_1.x), var_0)), true, var_1.x), false), vec3<bool>(all(vec4<bool>(true, true, var_1.x, var_1.x)), true & var_0, var_1.x), -min(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, -1i, -52244i), vec4<i32>(9536i, -2147483647i, 2147483647i, u_input.c.x)), select(abs(vec4<i32>(28382i, 30356i, u_input.c.x, 2147483647i)), vec4<i32>(39491i, u_input.c.x, u_input.c.x, u_input.c.x), !vec4<bool>(var_1.x, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-var_2.e.x), abs(7464i)), u_input.c);
}

