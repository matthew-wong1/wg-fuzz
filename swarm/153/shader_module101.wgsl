struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<bool>) -> vec4<u32> {
    return countOneBits(~vec4<u32>(~u_input.a.x, ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, ~0u | ~u_input.a.x));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_3(firstLeadingBit(reverseBits(_wgslsmith_sub_u32(15766u, 1u))), _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1095i, 0i, -23228i), vec4<i32>(-1i, -55746i, -5880i, -20627i)), vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-1i, -1i, -2147483647i, 1i)) << (min(max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_3(arg_0.x, vec4<f32>(-887f, -138f, -691f, -175f), -1i, vec3<bool>(true, arg_0.x, false))), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), !vec2<bool>(!(!arg_0.x), true), Struct_1(!(all(arg_0) & any(arg_0)), 1i, arg_0, _wgslsmith_div_u32(~(~u_input.a.x), select(~17435u, 0u, true))), Struct_1(all(select(!vec2<bool>(arg_0.x, false), vec2<bool>(true, true), arg_0.x | true)), -1i, vec3<bool>(false, true, !arg_0.x), 0u));
    let var_1 = countOneBits(var_0.b.wy);
    let var_2 = all(select(select(select(vec4<bool>(var_0.d.a, var_0.e.c.x, var_0.c.x, arg_0.x), vec4<bool>(true, arg_0.x, var_0.c.x, var_0.d.a), vec4<bool>(arg_0.x, false, arg_0.x, true)), !vec4<bool>(false, false, true, arg_0.x), all(arg_0)), !select(vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), false), select(vec4<bool>(arg_0.x, var_0.c.x, arg_0.x, false), !vec4<bool>(var_0.c.x, false, true, true), any(vec3<bool>(false, var_0.e.c.x, var_0.c.x))))) || var_0.d.a;
    let var_3 = vec4<bool>(!any(vec2<bool>(all(arg_0), var_2)), true, var_2, true);
    let var_4 = Struct_1(~39944u >= var_0.a, _wgslsmith_mult_i32(var_1.x, select(4886i, _wgslsmith_add_i32(var_1.x, var_1.x), var_0.c.x)) & (_wgslsmith_div_i32(var_0.e.b, _wgslsmith_mult_i32(var_1.x, var_1.x)) << (var_0.a % 32u)), select(arg_0, vec3<bool>(true, (true & var_2) || true, any(!arg_0)), vec3<bool>(all(vec2<bool>(false, true)), false, false)), min(_wgslsmith_clamp_u32(2844u, firstTrailingBit(select(1240u, var_0.a, arg_0.x)), _wgslsmith_mod_u32(max(u_input.a.x, 59880u), _wgslsmith_add_u32(var_0.e.d, u_input.a.x))), 4294967295u));
    return Struct_2(func_3(all(!var_0.d.c.yy) & false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_f_op_f32(abs(-1000f)), -634f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(676f, -415f))))), -29140i, var_4.c).xxz, Struct_1(var_2, max(-9166i, var_4.b & var_4.b) | ~_wgslsmith_add_i32(var_0.b.x, var_1.x), arg_0, reverseBits(1u)), var_4.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 30u)])), vec3<i32>(var_1.x, 1i, 13456i));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = func_2(vec3<bool>(all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), !(false & all(vec2<bool>(true, false))), !(true && all(vec4<bool>(false, false, false, false)))));
    var var_1 = -_wgslsmith_dot_vec3_i32(~max(var_0.e, vec3<i32>(var_0.b.b, var_0.e.x, var_0.e.x)), vec3<i32>(-23492i, _wgslsmith_clamp_i32(var_0.e.x, 23191i, 19234i), -22871i)) << (u_input.a.x % 32u);
    var_1 = _wgslsmith_mult_i32(var_0.b.b, _wgslsmith_mod_i32(var_0.b.b, ~var_0.e.x));
    var var_2 = Struct_1(var_0.b.a, ~1i, var_0.b.c, func_3(var_0.b.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, _wgslsmith_f_op_f32(sign(var_0.d.x)), var_0.d.x, _wgslsmith_f_op_f32(min(-2159f, arg_0.x)))), -45502i >> (u_input.a.x % 32u), !var_0.b.c).x);
    var var_3 = Struct_3(_wgslsmith_mult_u32(u_input.a.x, ~var_2.d) ^ firstLeadingBit(func_3(var_0.b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1755f, arg_0.x, 3124f, -473f)), var_2.b, select(var_2.c, var_0.b.c, vec3<bool>(false, var_0.b.a, var_0.b.c.x))).x), firstLeadingBit(max(countOneBits(vec4<i32>(var_0.b.b, -2147483647i, var_0.b.b, 8638i)), vec4<i32>(9028i, var_0.b.b, -6316i, var_2.b))) | (vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.b, -46907i, var_0.e.x), vec4<i32>(var_0.b.b, 5666i, var_0.e.x, var_0.b.b))), var_2.c.xx, Struct_1(false, var_0.e.x, func_2(!(!var_2.c)).b.c, select(0u, ~(var_2.d & var_0.c), var_0.b.a)), func_2(!vec3<bool>(arg_0.x >= 231f, var_2.c.x, !var_2.c.x)).b);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 0i), -(-_wgslsmith_clamp_i32(31795i, 0i, -51452i) & -6465i), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-330f, -269f, -793f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, -676f, -2406f))))));
    global0 = array<vec2<f32>, 30>();
    var_0 = _wgslsmith_div_i32(-13305i, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(i32(-1i) * -8340i, _wgslsmith_clamp_i32(-18141i, -40227i, 7597i)), _wgslsmith_mod_i32(~1i, func_2(vec3<bool>(false, true, false)).b.b), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, -73156i, 1i, -49256i), vec4<i32>(8532i, -1i, -2147483647i, -47983i)), vec4<i32>(58530i, 91543i, -2147483647i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~u_input.a) ^ ~vec4<u32>(78706u, u_input.a.x, u_input.a.x, u_input.a.x)), -((vec2<i32>(-1i) * -vec2<i32>(0i, -7205i)) | _wgslsmith_add_vec2_i32(vec2<i32>(-64368i, 1i) >> (u_input.a.yx % vec2<u32>(32u)), select(vec2<i32>(0i, 1i), vec2<i32>(1i, -2147483647i), false))));
}

