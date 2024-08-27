struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(vec4<i32>(13940i, 0i, 47651i, -1i))), Struct_3(Struct_1(vec4<i32>(1i, -1i, 1i, 0i))), Struct_3(Struct_1(vec4<i32>(9299i, i32(-2147483648), 2147483647i, 2147483647i))), Struct_3(Struct_1(vec4<i32>(-1i, 30064i, -6582i, 1i))), Struct_3(Struct_1(vec4<i32>(0i, -1i, -46887i, 41756i))), Struct_3(Struct_1(vec4<i32>(-1i, -1i, 2147483647i, 46989i))), Struct_3(Struct_1(vec4<i32>(-1i, 18255i, -84748i, 0i))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 41977i, -50091i))), Struct_3(Struct_1(vec4<i32>(-8461i, -17700i, 2147483647i, 1i))), Struct_3(Struct_1(vec4<i32>(2147483647i, 1i, -49013i, 61829i))), Struct_3(Struct_1(vec4<i32>(0i, -1i, -51664i, i32(-2147483648)))), Struct_3(Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i))), Struct_3(Struct_1(vec4<i32>(-12095i, -13732i, -1i, i32(-2147483648)))), Struct_3(Struct_1(vec4<i32>(2147483647i, 20668i, -1i, 2147483647i))), Struct_3(Struct_1(vec4<i32>(11049i, 0i, -1i, -2745i))), Struct_3(Struct_1(vec4<i32>(1i, 25687i, 2147483647i, 25013i))), Struct_3(Struct_1(vec4<i32>(-9569i, 712i, 66952i, 9272i))), Struct_3(Struct_1(vec4<i32>(-1i, -37966i, 4835i, 3059i))), Struct_3(Struct_1(vec4<i32>(1i, 20570i, -14772i, -18243i))), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, -55270i))));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = ~(-vec4<i32>(u_input.a.x, u_input.a.x, 66278i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)) & u_input.a.x));
    var_0 = vec4<i32>(countOneBits(abs(u_input.a.x)), _wgslsmith_mult_i32(-1i, u_input.a.x), 1i, -1i);
    var_0 = _wgslsmith_add_vec4_i32(-select(min(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 29094i), ~vec4<i32>(2147483647i, var_0.x, u_input.a.x, var_0.x)), ~select(vec4<i32>(var_0.x, var_0.x, -34851i, 29650i), vec4<i32>(var_0.x, 0i, var_0.x, var_0.x), true), vec4<bool>(true, select(false, false, true), true, -1000f < arg_0.x)), vec4<i32>(var_0.x, _wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_div_i32(-16778i, var_0.x)) | -37833i, var_0.x, -u_input.a.x));
    let var_1 = Struct_1(vec4<i32>(59261i, 0i & _wgslsmith_sub_i32(var_0.x, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i >> (0u % 32u), -26596i), firstTrailingBit(u_input.a.xy)), var_0.x));
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, 4294967295u, 36707u, reverseBits(48450u)))));
    return -27886i;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(1f));
    var var_1 = Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 23761u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 11498u, 4294967295u)) < 1u));
    let var_2 = ~2147483647i & ((u_input.a.x ^ u_input.a.x) ^ ((func_3(vec2<f32>(-151f, -1282f)) & u_input.a.x) ^ 1i));
    var var_3 = vec3<u32>(1u, 1u, 1u);
    var_0 = _wgslsmith_f_op_f32(-523f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1613f * _wgslsmith_f_op_f32(f32(-1f) * -1537f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(255f - 1000f)))))));
    return !(any(vec3<bool>(true, true, var_1.b.x | true)) && var_1.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_3, 20>();
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(max(vec4<i32>(-22621i, arg_3.a.x, 2147483647i, arg_3.a.x), arg_3.a | arg_3.a), _wgslsmith_clamp_vec4_i32(abs(arg_3.a), vec4<i32>(-27144i, 1i, 1i, arg_3.a.x) | arg_3.a, vec4<i32>(-14488i, -36699i, 24737i, arg_3.a.x) << (vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x) % vec4<u32>(32u))), arg_0.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_3.a.x, -1i, u_input.a.x), select(arg_3.a, arg_3.a, arg_0.b.x))), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, arg_3.a.x, arg_3.a.x, u_input.a.x) ^ vec4<i32>(36734i, 0i, arg_3.a.x, -2147483647i), arg_3.a));
    let var_1 = Struct_1(~(-firstLeadingBit(_wgslsmith_mult_vec4_i32(arg_3.a, vec4<i32>(arg_3.a.x, 1i, u_input.a.x, -1i)))));
    global0 = array<Struct_3, 20>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, 1430f, !all(arg_0.a))) * arg_2), 691f);
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_2(vec4<bool>(func_2(), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), select(false, true, false) | true, true | any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true)), min(min(abs(vec3<u32>(1u, 1u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u))), reverseBits(select(vec3<u32>(4294967295u, 1569u, 61292u), vec3<u32>(1u, 0u, 21233u), vec3<bool>(false, true, true)))) >> (~vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(13562u, 4294967295u, 4294967295u), vec3<u32>(53446u, 1u, 1u)), 17053u >> (0u % 32u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f + 149f)))), Struct_1(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(5893i, -13624i), u_input.a.x), u_input.a.x, ~firstTrailingBit(u_input.a.x), countOneBits(1i))));
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    let var_1 = var_0.a.x;
    return Struct_1(vec4<i32>(firstLeadingBit(-25162i) | -u_input.a.x, 1i, -38797i, -2147483647i) ^ -_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -30758i, u_input.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> bool {
    var var_0 = Struct_2(!vec4<bool>(!all(vec2<bool>(arg_3, arg_3)), !arg_3 | (u_input.a.x > arg_1.a.x), any(func_4(Struct_2(vec4<bool>(arg_3, arg_3, arg_3, true), vec3<bool>(true, false, false)), vec3<u32>(4294967295u, 4294967295u, arg_0), 595f, arg_1).b.xz), arg_3), !select(vec3<bool>(arg_3, true, true), vec3<bool>(true, true, true), vec3<bool>(false, arg_3 | arg_3, arg_1.a.x <= arg_1.a.x)));
    let var_1 = arg_2;
    var_0 = Struct_2(vec4<bool>(any(var_0.a), var_0.a.x, func_2(), true), !select(var_0.a.wxy, var_0.a.zyy, true));
    var_0 = Struct_2(func_4(Struct_2(vec4<bool>(any(vec2<bool>(false, var_0.b.x)), true & var_0.a.x, arg_3, any(vec3<bool>(false, arg_3, true))), var_0.b), vec3<u32>(arg_0, 26110u, ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-321f))), func_1()).a, !func_4(func_4(Struct_2(var_0.a, vec3<bool>(var_0.b.x, true, arg_3)), ~vec3<u32>(27920u, 1u, 0u), _wgslsmith_f_op_f32(ceil(-141f)), Struct_1(vec4<i32>(7373i, arg_1.a.x, arg_1.a.x, u_input.a.x))), abs(abs(vec3<u32>(var_1, 0u, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(194f)), _wgslsmith_f_op_f32(min(508f, -1349f))), arg_1).a.yyy);
    let var_2 = vec3<bool>(!(!any(!var_0.a)), all(var_0.b.xz), false);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = vec3<bool>(!func_5(0u, func_1(), max(abs(27211u), _wgslsmith_add_u32(40433u, 33688u)), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-500f, -569f), -1381f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-120f, -815f)) * 1f), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(false, false, true)))));
    var var_2 = countOneBits(reverseBits(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(1u, 3070u))));
    var var_3 = func_1();
    var_3 = Struct_1(select(var_3.a << (~max(vec4<u32>(78477u, 30573u, 0u, 34821u), vec4<u32>(51374u, 3322u, 51963u, 4294967295u)) % vec4<u32>(32u)), max(var_3.a, abs(var_3.a)), !(!(!vec4<bool>(false, var_1.x, false, false)))));
    let var_4 = _wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(countOneBits(28238u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18254u, 413u, 27991u), vec4<u32>(0u, 4294967295u, 4294967295u, 52832u)))), vec2<u32>(abs(1u >> (~4294967295u % 32u)), ~1u));
    var_0 = ~var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-287f, -1388f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1228f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, 1329f, -1594f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 512f, 438f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-628f, -455f, -1635f)) - vec3<f32>(-1511f, -190f, 1566f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))), _wgslsmith_mod_u32(~1u, ~_wgslsmith_sub_u32(var_4.x, ~var_4.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f + -128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1029f))), -598f)));
}

