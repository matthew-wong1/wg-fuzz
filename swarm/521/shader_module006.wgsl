struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.a;
    var_0 = -abs(arg_1.a);
    var var_1 = false;
    var_1 = true;
    var var_2 = false;
    return true;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_i32(u_input.c, ~(~(vec3<i32>(arg_1, -1i, u_input.c.x) ^ u_input.c))), Struct_1(vec4<i32>(arg_1, i32(-1i) * -1i, -2147483647i, u_input.c.x), !vec4<bool>(func_3(arg_1, Struct_1(vec4<i32>(arg_1, arg_1, 3069i, -1i), vec4<bool>(false, false, true, arg_0), vec4<u32>(0u, u_input.d, 0u, u_input.d))), any(vec3<bool>(false, false, true)), arg_0, true), vec4<u32>(31897u, u_input.d & 0u, u_input.d, ~u_input.d)), Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(13930i, -6812i, u_input.c.x, u_input.b) | vec4<i32>(u_input.a, -4881i, u_input.c.x, arg_1), -vec4<i32>(1i, u_input.b, arg_1, -2147483647i)), select(select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, true, true, true)), !vec4<bool>(true, arg_0, arg_0, arg_0), true), vec4<bool>(true, arg_0, arg_0, arg_0), select(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, false, false, arg_0), false), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, false, true, true), arg_0), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)))), ~vec4<u32>(u_input.d, 0u, 3029u, u_input.d)));
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(~(~u_input.a ^ (u_input.b | arg_1)), var_0.b.a.x), var_0.c.a.zy);
    var_0 = Struct_2(u_input.c, Struct_1(vec4<i32>(~(arg_1 & -2147483647i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, var_1.x), u_input.c), countOneBits(2147483647i)), -5481i, ~0i), vec4<bool>(select(var_0.b.b.x, true, any(vec4<bool>(false, false, var_0.c.b.x, arg_0))), true, true, !any(vec2<bool>(arg_0, true))), var_0.c.c), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.b.a.x, 12960i, 1i) & var_0.c.a, _wgslsmith_mult_vec4_i32(var_0.b.a, vec4<i32>(-25746i, 30686i, -4799i, 0i))) ^ var_0.b.a, vec4<bool>(true, true, var_0.c.b.x, arg_0), vec4<u32>(~(68155u | u_input.d), ~_wgslsmith_add_u32(36076u, 1u), ~u_input.d, ~u_input.d)));
    let var_2 = !vec4<bool>(var_0.c.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -835f), _wgslsmith_f_op_f32(trunc(-657f)))) < 290f, arg_0, !arg_0);
    let var_3 = Struct_2(var_0.c.a.wzw, var_0.c, var_0.b);
    return Struct_2(var_0.b.a.yzy, var_3.b, var_0.c);
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = func_2(all(!select(vec3<bool>(false, true, arg_0.b.b.x), vec3<bool>(arg_0.c.b.x, arg_0.c.b.x, false), false)), -2147483647i);
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1313f)) * 874f), _wgslsmith_f_op_f32(753f - _wgslsmith_f_op_f32(1890f * -552f)))))));
    let var_3 = Struct_2(vec3<i32>(~0i, abs(var_1.a.x), var_1.a.x), Struct_1(_wgslsmith_mult_vec4_i32(select(arg_0.c.a, vec4<i32>(var_0.b.a.x, var_1.a.x, arg_0.c.a.x, 15066i), var_1.b.x), _wgslsmith_mult_vec4_i32(var_0.b.a, vec4<i32>(var_0.c.a.x, -451i, 0i, arg_0.b.a.x))) ^ arg_0.c.a, arg_0.b.b, var_0.b.c), func_2(any(func_2(var_0.b.b.x, abs(arg_0.a.x)).b.b.zz), select(1i, reverseBits(31373i), true)).b);
    var_1 = var_0.b;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(select(any(vec3<bool>(false, false, false)), true, true), true));
    let var_1 = false;
    var var_2 = Struct_1(-vec4<i32>(-2147483647i, ~6919i, -8520i >> (u_input.d % 32u), ~(-2147483647i)), select(select(vec4<bool>(true, true, true, all(vec4<bool>(var_1, false, false, var_1))), !(!vec4<bool>(true, true, true, var_1)), select(vec4<bool>(var_1, var_1, true, false), vec4<bool>(var_1, var_1, false, true), var_1 || var_1)), vec4<bool>(all(vec2<bool>(var_1, false)), true, true, true), true), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, 54243u, u_input.d), vec4<u32>(u_input.d, 40002u, 19830u, 2708u), vec4<u32>(u_input.d, 112038u, u_input.d, 4294967295u)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, _wgslsmith_f_op_f32(1836f - -1146f), _wgslsmith_f_op_f32(min(1580f, -338f)), _wgslsmith_f_op_f32(func_1(Struct_2(vec3<i32>(u_input.a, -24257i, 11203i), Struct_1(var_2.a, vec4<bool>(var_2.b.x, var_1, false, true), var_2.c), Struct_1(vec4<i32>(1i, var_2.a.x, u_input.c.x, u_input.c.x), vec4<bool>(false, true, var_1, true), var_2.c)))))))));
    var var_4 = u_input.c.zy;
    var_4 = _wgslsmith_div_vec2_i32(u_input.c.xz, _wgslsmith_div_vec2_i32(vec2<i32>(select(-8630i, var_2.a.x, false) << (_wgslsmith_mod_u32(u_input.d, u_input.d) % 32u), ~var_2.a.x), _wgslsmith_sub_vec2_i32((vec2<i32>(u_input.b, var_4.x) << (var_2.c.yx % vec2<u32>(32u))) & ~vec2<i32>(2147483647i, 56006i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(21078i, 2418i), vec2<i32>(2147483647i, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_2.a.x), ~reverseBits(firstTrailingBit(vec2<i32>(u_input.b, 31853i))), vec2<i32>(-_wgslsmith_mult_i32(u_input.c.x, 18792i), 0i)), reverseBits(var_2.a.x), min(reverseBits(func_2(var_2.b.x, var_2.a.x).b.a.x ^ var_4.x), _wgslsmith_mod_i32(-15823i, i32(-1i) * -u_input.b)), u_input.c);
}

