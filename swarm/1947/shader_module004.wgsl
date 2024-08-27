struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    global1 = array<Struct_1, 6>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.c.x, 1u)];
    var var_1 = vec3<i32>(-arg_0, ~(-select(arg_0, min(arg_0, arg_0), any(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)))), max(_wgslsmith_div_i32(u_input.d, -arg_0), var_0.c.x));
    let var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(var_0.b, 1u)];
    return var_0.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = vec3<bool>(-_wgslsmith_sub_i32(1158i, arg_1.e) > (i32(-1i) * -u_input.b.x), true, any(vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)))));
    global1 = array<Struct_1, 6>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(-(~u_input.a.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, true), !vec3<bool>(true, false, var_0.x))) & func_2(u_input.a.x, vec3<bool>(true, true, !var_0.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~21816u, abs(u_input.c.x), _wgslsmith_div_u32(arg_1.b, u_input.c.x)), 4294967295u), _wgslsmith_dot_vec2_u32(~min(u_input.c.yy, u_input.c.zz), abs(_wgslsmith_div_vec2_u32(vec2<u32>(36509u, 623u), vec2<u32>(4294967295u, 4294967295u)))))), 6u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f - -1000f)), _wgslsmith_f_op_f32(sign(-392f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1720f, 1000f, -440f) - vec3<f32>(arg_3, arg_3, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, -459f, arg_1.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), -834f, arg_3), vec3<bool>(any(var_0.yz), any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), false))))));
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 35009u, ~(~var_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 57964u, 4294967295u, 42127u), ~vec4<u32>(arg_1.b, arg_1.b, 30314u, u_input.e))), select(abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b, 50629u, 0u, 43495u), vec4<u32>(59380u, 21444u, var_1.b, arg_1.b))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, arg_1.b, u_input.c.x, arg_1.b), vec4<u32>(var_1.b, 1u, u_input.e, 26938u)), vec4<bool>(true, true, var_0.x, any(vec2<bool>(true, var_0.x))))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.b, 1u, u_input.c.x, arg_1.b), ~vec4<u32>(1u, var_1.b, arg_1.b, var_1.b)), abs(~vec4<u32>(u_input.e, 4294967295u, 38970u, 64865u))));
    return u_input.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(func_2(34479i, vec3<bool>(false, false, false)), u_input.e >> (var_0 % 32u), _wgslsmith_div_u32(var_0, 43566u), ~var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(13562u, func_2(_wgslsmith_clamp_i32(-3164i, 2147483647i, 0i), vec3<bool>(true, true, true)), var_0, ~4294967295u), vec4<u32>(min(62189u, u_input.e), ~select(50351u, u_input.c.x, true), 1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, var_0), max(10969u, 27574u))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(76006u, var_0, var_0, 18750u), select(vec4<u32>(var_0, 55712u, 38244u, 1u), vec4<u32>(58078u, u_input.e, var_0, 4294967295u), false)), countOneBits(vec4<u32>(4294967295u, 28781u, 33873u, u_input.c.x) << (vec4<u32>(4294967295u, var_0, 1u, 1u) % vec4<u32>(32u))), select(vec4<u32>(57421u, u_input.e, 78971u, 22153u), min(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 2953u), vec4<u32>(var_0, var_0, var_0, 0u)), false)))), 6u)];
    var var_2 = select(func_3(var_1.d, global1[_wgslsmith_index_u32(~u_input.c.x, 6u)], var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-222f, _wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 1i, var_1.e), vec3<i32>(-16870i, var_1.e, 1i))), _wgslsmith_f_op_f32(round(311f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(2585f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), var_1.a)));
    var_2 = var_1.c.x;
    var var_3 = ~vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(~u_input.c.zx, u_input.c.yz)), func_2(~(~u_input.a.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), var_0);
    return Struct_1(var_1.a, reverseBits(0u), _wgslsmith_div_vec2_i32(var_1.c, vec2<i32>(-47339i, ~firstLeadingBit(u_input.b.x))), var_1.a, _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(5263i, 2147483647i) & u_input.a.yy, countOneBits(var_1.c)), var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(1i, -_wgslsmith_div_i32(0i, u_input.b.x), -2147483647i), vec3<i32>(u_input.d, 2147483647i, u_input.d), true), select(u_input.b, u_input.b, vec3<bool>(true, false, true)));
    let var_1 = Struct_1(-1254f, 1u >> (~u_input.c.x % 32u), _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.d, max(_wgslsmith_clamp_i32(u_input.b.x, -23563i, 2147483647i), u_input.b.x | -2147483647i)), countOneBits(vec2<i32>(-1i, u_input.a.x) << ((u_input.c.zy | u_input.c.yx) % vec2<u32>(32u)))), 1390f, firstLeadingBit(-6567i));
    let var_2 = var_1.d;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(132f - _wgslsmith_f_op_f32(var_2 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.d, -268f, true)), 1f))), u_input.c.x, var_0.zx | u_input.b.xz, 981f, _wgslsmith_dot_vec4_i32(u_input.a, reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, 1i, var_0.x), vec3<i32>(-16583i, u_input.a.x, 0i)), 20517i, _wgslsmith_add_i32(var_0.x, -24790i), ~var_0.x))));
    let var_4 = func_1();
    let var_5 = func_1();
    let var_6 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(firstTrailingBit(1u)), 50220u) >> (_wgslsmith_add_u32(var_3.b, ~4294967295u) % 32u), 6u)];
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -713f)))));
}

