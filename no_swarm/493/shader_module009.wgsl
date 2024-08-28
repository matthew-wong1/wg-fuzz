struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -628f))), 124f, -785f, -795f))));
    let var_1 = countOneBits(u_input.c.ww);
    let var_2 = Struct_2(Struct_1(max(u_input.a, ~u_input.c & (u_input.a << (u_input.c % vec4<u32>(32u)))), true, false, vec3<f32>(_wgslsmith_f_op_f32(select(675f, 171f, all(vec3<bool>(false, arg_3, false)))), var_0.x, _wgslsmith_f_op_f32(round(-1424f)))), arg_3, vec4<i32>(abs(u_input.b.x), -30430i, -1i, _wgslsmith_sub_i32(u_input.b.x, -2480i)));
    var var_3 = var_2.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1839f, var_2.a.d.x) + _wgslsmith_f_op_vec2_f32(-var_0.zx)));
    return vec2<u32>(4294967295u, ~var_1.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<i32> {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, 20647i, arg_0.c.x, 36211i), vec4<i32>(u_input.d, arg_0.c.x, -2147483647i, 0i)), vec4<i32>(37561i, arg_0.c.x, u_input.b.x, arg_0.c.x | arg_0.c.x)), reverseBits(abs(vec4<i32>(-385i, u_input.b.x, u_input.d, -2147483647i) | vec4<i32>(arg_0.c.x, 2147483647i, arg_0.c.x, arg_0.c.x)))), ~_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.d, -15600i), arg_0.c.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(56690i, -45003i, arg_0.c.x), vec3<i32>(-36292i, arg_0.c.x, 7743i) << (vec3<u32>(70951u, arg_0.a.a.x, 1u) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(arg_0.a.d.x));
    let var_2 = vec4<bool>(4294967295u >= _wgslsmith_div_u32(arg_1.x, ~0u), any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.a.b)), !vec3<bool>(false, arg_0.b, arg_0.b), !vec3<bool>(arg_0.b, arg_0.b, true)), vec3<bool>(true, false, arg_0.b), vec3<bool>(all(vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.b)), true, true))), select(true, false, !arg_0.b), all(vec4<bool>(!any(vec3<bool>(arg_0.b, true, false)), !all(vec3<bool>(arg_0.a.c, false, arg_0.a.c)), !select(false, arg_0.b, true), true)));
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-var_0.x, 1i, u_input.d), -(~vec3<i32>(19973i, -16857i, arg_0.c.x))) ^ ~vec3<i32>(select(-1i, 2147483647i, true), var_0.x, _wgslsmith_div_i32(arg_0.c.x, -7186i)), vec3<i32>(-1i) * -var_3.yxy);
    return _wgslsmith_clamp_vec4_i32(u_input.b, var_3, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(var_3, var_3, ~vec4<i32>(-1i, -65640i, 3737i, 66349i)), ~var_3, ~vec4<i32>(arg_0.c.x, 0i, reverseBits(-2147483647i), 2147483647i)));
}

fn func_1() -> vec2<i32> {
    var var_0 = select(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 67539u), 1u), vec2<u32>(4294967295u, _wgslsmith_mult_u32(~1u, 1u)), false);
    var var_1 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.c.x) | u_input.a.wz, ~u_input.c.zw << (vec2<u32>(46595u, 32357u) % vec2<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(false, false), any(vec4<bool>(true, true, false, false)))) >> (vec2<u32>(u_input.a.x, ~_wgslsmith_div_u32(var_0.x, var_0.x)) % vec2<u32>(32u)), u_input.a.yy);
    var_0 = _wgslsmith_mod_vec2_u32(select(reverseBits(~(~u_input.a.wx)), func_2(vec3<i32>(u_input.d, u_input.b.x, 1i), vec2<bool>(true, true), _wgslsmith_mod_i32(u_input.b.x ^ u_input.d, 2147483647i), true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))), ~(~_wgslsmith_add_vec2_u32(~u_input.a.yw, u_input.a.xx)));
    var_0 = u_input.c.xw;
    let var_2 = Struct_2(Struct_1((~u_input.a ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 11992u, 1u, u_input.c.x), vec4<u32>(u_input.a.x, var_0.x, 19572u, 0u))) ^ u_input.c, true, false, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 2384f, -696f)))), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), u_input.b.x > u_input.d)), reverseBits(~func_3(Struct_2(Struct_1(u_input.c, false, true, vec3<f32>(1469f, 816f, -1151f)), false, u_input.b), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 12130u)))));
    return vec2<i32>(func_3(var_2, var_2.a.a).x, -412i);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = all(!select(!(!vec2<bool>(arg_3.b, arg_3.b)), select(vec2<bool>(false, false), select(vec2<bool>(arg_1, true), vec2<bool>(arg_3.b, arg_1), arg_3.b), select(vec2<bool>(true, false), vec2<bool>(arg_3.b, true), false)), false));
    var var_1 = _wgslsmith_f_op_f32(1809f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)), _wgslsmith_div_f32(571f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1212f - -1568f), _wgslsmith_f_op_f32(abs(-614f)))), arg_1)));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1231f, -2396f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-685f, -538f), vec2<f32>(1f, 1f))), vec2<bool>(var_0, true))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 1329f)) + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_2.x, 1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), -687f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1515f - 761f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(step(1654f, _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-915f * var_2.x)))));
    var_1 = var_2.x;
    return Struct_3(arg_3.a, arg_2.x > (_wgslsmith_mult_i32(-6478i ^ arg_3.a, arg_0.x << (0u % 32u)) ^ min(_wgslsmith_clamp_i32(arg_0.x, 2147483647i, arg_3.a), u_input.b.x & arg_0.x)), arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = ~_wgslsmith_mod_u32(~firstLeadingBit(u_input.a.x), ~_wgslsmith_mod_u32(var_0, 4294967295u)) & u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-504f * -351f)))))) - _wgslsmith_f_op_f32(f32(-1f) * -323f));
    var var_3 = func_4(max(func_1(), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.b.x, -1i)) << (u_input.a.zw % vec2<u32>(32u)), ~(vec2<i32>(-2147483647i, u_input.d) << (vec2<u32>(var_1, var_1) % vec2<u32>(32u))))), false, u_input.b.ywx, Struct_3(u_input.d, false, var_0));
    var var_4 = (_wgslsmith_sub_i32(2121i, ~(-var_3.a)) | -_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(var_3.a, u_input.b.x))) == -u_input.b.x;
    var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~1u), var_1 | var_3.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, u_input.a.x, var_1), u_input.a), 1u), min(abs(vec4<u32>(var_3.c, 0u, u_input.a.x, u_input.c.x)) ^ ~u_input.a, ~vec4<u32>(0u, 0u, var_0, 21549u))) == (16743u << (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-abs(vec3<i32>(37377i, -2147483647i, 19304i) | vec3<i32>(u_input.d, -21621i, 0i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.b.wxy, vec3<i32>(var_3.a, 29869i, 1i)), -vec3<i32>(46459i, 0i, u_input.b.x) ^ u_input.b.zwy)), u_input.a >> ((~vec4<u32>(u_input.c.x, u_input.a.x, 0u, var_3.c) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, u_input.a.x, 44572u, var_3.c), u_input.c), ~u_input.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32((u_input.a << (~vec4<u32>(u_input.c.x, var_0, 67875u, 21548u) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(u_input.c << (u_input.a % vec4<u32>(32u)), vec4<u32>(var_0, var_1, 1367u, var_0)), vec4<u32>(firstTrailingBit(30276u), ~_wgslsmith_mod_u32(var_1, var_3.c), u_input.a.x, ~(var_3.c | var_0)), vec4<u32>(0u, ~1u, var_1, ~(~u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-913f)), -1051f))))), _wgslsmith_sub_vec2_i32(vec2<i32>(-abs(2780i), ~24157i), -u_input.b.xx));
}

