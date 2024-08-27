struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -270f);
    let var_1 = vec3<i32>(-17849i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(-11597i, -2147483647i), ~u_input.c, global0.x), -(vec4<i32>(global0.x, -40130i, u_input.c, -21225i) | vec4<i32>(-1i, global0.x, -2147483647i, 1i)))), u_input.d.x ^ ~15643i);
    let var_2 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), false);
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, _wgslsmith_clamp_i32(2147483647i, u_input.c, var_1.x), global0.x), vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(var_1.x ^ -62757i, -26753i), u_input.c));
    let var_4 = global0.yyx;
    return select(select(vec4<bool>(true, !(var_2.x != var_2.x), 27640u <= countOneBits(u_input.a.x), true), vec4<bool>(any(select(vec3<bool>(var_2.x, var_2.x, false), var_2, var_2.x)), true, ~u_input.a.x > 0u, any(var_2)), var_2.x), vec4<bool>(false, var_2.x, (var_2.x != true) && any(!var_2), var_2.x), select(!(!select(vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(false, false, var_2.x, false), false)), select(select(select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(false, true, true, var_2.x)), vec4<bool>(var_2.x, false, true, var_2.x), !vec4<bool>(var_2.x, var_2.x, true, var_2.x)), select(vec4<bool>(false, var_2.x, var_2.x, true), select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, false, false, true), vec4<bool>(false, true, var_2.x, true)), var_2.x), !(var_2.x & var_2.x)), var_2.x || true));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = true && all(select(!select(vec4<bool>(var_0.a.x, var_0.b.a, arg_0.c.a, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.c.a, arg_0.a.x, true), arg_0.c.a), func_3(), !select(vec4<bool>(arg_0.b.a, false, true, var_0.a.x), vec4<bool>(arg_0.b.a, var_0.a.x, false, true), arg_0.b.a)));
    let var_2 = var_1;
    var var_3 = Struct_5(Struct_3(select(!(!arg_0.a), vec3<bool>(var_2, func_3().x, true), !(!var_2)), var_0.b, var_0.b), vec3<i32>(-(countOneBits(arg_2) | (arg_0.b.b.x >> (0u % 32u))), _wgslsmith_add_i32(-29596i, select(global0.x, countOneBits(-1i), arg_0.c.a)), select(1i, -72388i, false)), -vec2<i32>(-(17554i ^ arg_1.x), -_wgslsmith_sub_i32(-5331i, arg_1.x)));
    global0 = ~(vec4<i32>(u_input.d.x << (10282u % 32u), arg_0.c.b.x, firstTrailingBit(var_0.c.b.x) << (firstLeadingBit(u_input.a.x) % 32u), 33251i) << (abs(_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.a), vec4<u32>(u_input.a.x, 43450u, arg_3, 40711u), max(vec4<u32>(1u, arg_3, 28048u, u_input.a.x), u_input.a))) % vec4<u32>(32u)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-321f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(675f)))), 201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1076f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1903f, 175f), _wgslsmith_f_op_f32(ceil(520f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(486f, 563f, -1341f), vec3<f32>(-890f, 718f, -1524f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1944f, -231f, -508f))) * vec3<f32>(1344f, 673f, -1957f)))), -28712i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_3 {
    global0 = ~abs(reverseBits(-arg_0));
    global0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(~(-arg_1.c), 1i, arg_1.c, 40215i), arg_0, arg_0);
    let var_0 = vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.b.x)))) - arg_1.b.x), arg_1.a.x, arg_1.a.x);
    var var_1 = any(func_3());
    var_1 = all(!select(vec4<bool>(arg_2.x, true, false, arg_2.x & false), !(!vec4<bool>(arg_2.x, false, true, arg_2.x)), select(func_3(), vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(false, false, false, false))));
    return Struct_3(select(!vec3<bool>(arg_2.x || arg_2.x, !arg_2.x, any(vec4<bool>(false, false, true, arg_2.x))), vec3<bool>(68637u <= ~u_input.a.x, func_3().x, any(vec3<bool>(arg_2.x, true, arg_2.x))), vec3<bool>(all(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), select(1i, arg_0.x, arg_2.x) > ~arg_1.c, true)), Struct_2(false, vec3<i32>(global0.x, 2147483647i, arg_1.c)), Struct_2(19213i >= _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 56015i, u_input.b, 2147483647i), vec4<i32>(arg_1.c, 2147483647i, u_input.b, arg_0.x)), vec4<i32>(-2147483647i, arg_1.c, 1i, arg_0.x)), -arg_0.xyz));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    global0 = vec4<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(global0.x, arg_1 | ~arg_2.b.b.x)), 4451i, _wgslsmith_div_i32(-max(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -19957i), arg_2.c.b.yy)), reverseBits(2147483647i)), arg_2.c.b.x & 1i);
    global0 = select(vec4<i32>(~_wgslsmith_mult_i32(1i, ~(-1i)), global0.x, arg_0 | func_4(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -39925i, 2147483647i, 28099i), vec4<i32>(-14102i, 13288i, 6757i, 1i)), func_2(Struct_3(arg_2.a, Struct_2(arg_2.a.x, vec3<i32>(-1i, -2147483647i, 0i)), arg_2.b), global0.yyw, arg_1, u_input.a.x), !arg_2.a.yy).c.b.x, 17469i), vec4<i32>(_wgslsmith_div_i32(5042i, ~arg_1), 2147483647i, max(arg_0, _wgslsmith_dot_vec2_i32(global0.ww, u_input.d.yx)), arg_1) ^ firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-3173i, arg_1, -4301i, 0i), vec4<i32>(1300i, arg_1, arg_0, arg_2.c.b.x), vec4<i32>(u_input.c, arg_1, arg_0, arg_1))), arg_2.a.x);
    var var_0 = Struct_5(Struct_3(func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(global0.wy, global0.ww), -global0.x, 15160i, 24254i), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(578f, 1001f, -490f, 125f), vec4<f32>(-328f, -1000f, -850f, 1590f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-872f, -130f, 388f) * vec3<f32>(269f, 1426f, 429f)), -arg_0), !arg_2.a.zx).a, arg_2.b, func_4(vec4<i32>(global0.x, -26208i & u_input.c, ~(-2325i), _wgslsmith_add_i32(arg_2.b.b.x, -1i)), func_2(Struct_3(vec3<bool>(false, true, true), arg_2.c, arg_2.b), u_input.d, -arg_2.c.b.x, firstLeadingBit(u_input.a.x)), arg_2.a.xy).b), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -(~2147483647i), global0.x), abs(vec3<i32>(-29018i, global0.x, u_input.c))), vec2<i32>(_wgslsmith_add_i32(~(-1i), -2147483647i) << (_wgslsmith_mod_u32(1u, max(5169u, u_input.a.x)) % 32u), _wgslsmith_clamp_i32(29327i, 8538i, 0i) | -2147483647i));
    global0 = vec4<i32>(arg_1, 32574i, firstLeadingBit(_wgslsmith_dot_vec2_i32(var_0.b.yz, vec2<i32>(~55419i, _wgslsmith_mod_i32(u_input.b, arg_0)))), arg_2.c.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(arg_2, arg_2.b.b, -7785i, 6373u).a.x, _wgslsmith_f_op_f32(select(775f, -2965f, true)), -404f)) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-1103f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(543f)) - 1277f), _wgslsmith_f_op_f32(select(-450f, _wgslsmith_f_op_f32(floor(617f)), all(vec2<bool>(arg_2.a.x, arg_2.c.a)))))));
    return func_4(_wgslsmith_add_vec4_i32(~vec4<i32>(-21033i, ~arg_1, max(-52307i, 1575i), -arg_2.b.b.x), select(reverseBits(vec4<i32>(0i, u_input.b, arg_1, 6434i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-44379i, 2147483647i, 0i, -57093i), vec4<i32>(global0.x, arg_0, 44074i, 12228i)), !vec4<bool>(false, arg_2.c.a, var_0.a.a.x, false))), func_2(Struct_3(!select(arg_2.a, arg_2.a, arg_2.c.a), func_4(~vec4<i32>(-2147483647i, 39381i, global0.x, arg_1), func_2(Struct_3(var_0.a.a, arg_2.b, Struct_2(true, vec3<i32>(arg_1, arg_2.c.b.x, arg_1))), arg_2.b.b, -2147483647i, 4294967295u), arg_2.a.xy).c, Struct_2(-407f > var_1.x, vec3<i32>(2147483647i, -2147483647i, var_0.b.x))), global0.wwy, abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -8590i, arg_2.c.b.x, -1i), vec4<i32>(global0.x, 0i, arg_2.b.b.x, u_input.b))), 17799u), func_4(select(vec4<i32>(-53736i, 0i, 0i, arg_2.b.b.x), -vec4<i32>(arg_2.b.b.x, 1i, 2147483647i, var_0.a.c.b.x), true) ^ ~(-vec4<i32>(6394i, 26167i, -1i, arg_1)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1603f, -272f, 761f)), !vec4<bool>(var_0.a.a.x, false, arg_2.a.x, arg_2.c.a))), _wgslsmith_f_op_vec3_f32(-var_1), -36028i), !var_0.a.a.zz).a.zy);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>, arg_3: f32) -> Struct_2 {
    var var_0 = func_2(arg_0, vec3<i32>(1i >> (0u % 32u), reverseBits(~(-16189i)), -_wgslsmith_mod_i32(-12019i, -9146i)), ~((_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.b.x, u_input.d.x), u_input.d.yz) ^ _wgslsmith_mult_i32(u_input.b, -31001i)) & firstTrailingBit(~arg_0.b.b.x)), 60679u);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x)));
    global0 = ~countOneBits(_wgslsmith_mult_vec4_i32(-(vec4<i32>(-940i, -32455i, arg_0.b.b.x, 18675i) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), (vec4<i32>(u_input.c, var_0.c, u_input.d.x, global0.x) ^ vec4<i32>(u_input.b, global0.x, global0.x, var_0.c)) & min(vec4<i32>(global0.x, arg_0.b.b.x, u_input.d.x, 22123i), vec4<i32>(arg_0.c.b.x, u_input.c, var_0.c, var_0.c))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(var_0.a.zw));
    var var_3 = ~0i >> (u_input.a.x % 32u);
    return Struct_2(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(0i, var_0.c), arg_0.c.b.x) >= 1i, arg_0.c.b);
}

fn func_7(arg_0: Struct_2) -> bool {
    global0 = countOneBits(abs(~_wgslsmith_add_vec4_i32(select(vec4<i32>(-13219i, -28760i, 34899i, 2147483647i), vec4<i32>(35621i, arg_0.b.x, u_input.c, 13850i), true), vec4<i32>(-2245i, global0.x, 6708i, u_input.d.x))));
    global0 = vec4<i32>(arg_0.b.x << (~0u % 32u), 0i, u_input.b, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(func_5(u_input.c, global0.x, Struct_3(vec3<bool>(true, arg_0.a, arg_0.a), arg_0, Struct_2(arg_0.a, arg_0.b))).b.b.x, 21810i), -select(arg_0.b.x, -10584i, !arg_0.a)));
    var var_0 = Struct_4(~(~u_input.a.yw), !vec2<bool>(func_3().x || all(vec2<bool>(true, true)), _wgslsmith_add_i32(arg_0.b.x, global0.x) != ~global0.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(~21074i, u_input.c), -firstLeadingBit(vec2<i32>(u_input.b, u_input.b))));
    global0 = -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(23485i, 27781i, 14956i, global0.x), vec4<i32>(9342i, u_input.b, arg_0.b.x, 1i) & vec4<i32>(global0.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)) & -(~vec4<i32>(u_input.b, arg_0.b.x, global0.x, arg_0.b.x)), vec4<i32>(1i, 0i, func_4(vec4<i32>(-1i, var_0.c, global0.x, 2147483647i), Struct_1(vec4<f32>(-620f, 1000f, 482f, 541f), vec3<f32>(814f, -1000f, 1000f), 37538i), var_0.b).b.b.x & reverseBits(-1i), firstTrailingBit(~(-2147483647i))));
    var_0 = Struct_4((~(~vec2<u32>(var_0.a.x, 54815u)) >> (vec2<u32>(var_0.a.x << (var_0.a.x % 32u), 4294967295u) % vec2<u32>(32u))) >> (vec2<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(82548u, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)) & 4294967295u) % vec2<u32>(32u)), !(!vec2<bool>(true, !arg_0.a)), ~u_input.c);
    return func_3().x;
}

fn func_1() -> Struct_3 {
    var var_0 = func_7(func_6(func_5(-u_input.b, ~(~3852i), func_4(vec4<i32>(global0.x, u_input.d.x, global0.x, 1i) ^ vec4<i32>(global0.x, 1i, 56156i, u_input.c), func_2(Struct_3(vec3<bool>(false, true, false), Struct_2(true, vec3<i32>(1i, u_input.b, -42079i)), Struct_2(true, vec3<i32>(78i, -2644i, 2147483647i))), global0.xxy, u_input.d.x, u_input.a.x), vec2<bool>(true, true))), false, func_5(10451i, global0.x, Struct_3(vec3<bool>(true, false, true), Struct_2(false, vec3<i32>(-30758i, 57579i, u_input.b)), func_5(u_input.b, global0.x, Struct_3(vec3<bool>(true, false, false), Struct_2(true, global0.yxz), Struct_2(false, u_input.d))).b)).a.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1778f))))));
    var var_1 = func_5(u_input.b, ~(-2147483647i), func_5(8922i, func_4(vec4<i32>(abs(0i), i32(-1i) * -1i, 2147483647i, u_input.c), func_2(Struct_3(vec3<bool>(true, false, true), Struct_2(true, vec3<i32>(u_input.d.x, global0.x, 2147483647i)), Struct_2(true, vec3<i32>(u_input.c, global0.x, 1i))), -global0.zwx, -61028i, u_input.a.x), vec2<bool>(func_4(vec4<i32>(-1i, global0.x, global0.x, u_input.c), Struct_1(vec4<f32>(387f, -868f, -196f, -432f), vec3<f32>(263f, -1000f, 1000f), 2147483647i), vec2<bool>(false, true)).b.a, all(vec3<bool>(true, true, true)))).c.b.x, Struct_3(vec3<bool>(true, true, 0u < u_input.a.x), Struct_2(all(vec3<bool>(true, false, false)), -u_input.d), Struct_2(true, global0.zww)))).a.zz;
    var_1 = vec2<bool>((~_wgslsmith_dot_vec4_i32(vec4<i32>(-27771i, 18086i, global0.x, 11418i), vec4<i32>(-17683i, 7821i, u_input.b, -2147483647i)) < -_wgslsmith_div_i32(-2147483647i, u_input.c)) && func_7(Struct_2(false | var_1.x, vec3<i32>(global0.x, -1i, u_input.c))), true);
    global0 = firstLeadingBit(~select(~vec4<i32>(global0.x, global0.x, 26568i, global0.x), vec4<i32>(firstLeadingBit(-2147483647i), ~38922i, -u_input.d.x, global0.x), select(func_3(), !vec4<bool>(false, var_1.x, var_1.x, true), func_7(Struct_2(false, vec3<i32>(u_input.c, -1i, global0.x))))));
    var var_2 = select(var_1.x, u_input.a.x >= ~u_input.a.x, var_1.x);
    return func_5(u_input.b, _wgslsmith_add_i32(-u_input.d.x ^ -55470i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, -1i, -36i), vec4<i32>(-19035i, global0.x, 37188i, u_input.d.x), vec4<i32>(u_input.c, u_input.c, 2147483647i, -1i)), vec4<i32>(0i, global0.x, -1i, 35550i))) << (u_input.a.x % 32u), Struct_3(func_5(func_5(4337i, u_input.b, func_5(0i, 0i, Struct_3(vec3<bool>(false, var_1.x, true), Struct_2(var_1.x, u_input.d), Struct_2(var_1.x, u_input.d)))).c.b.x, i32(-1i) * -13836i, func_5(u_input.c, u_input.b, Struct_3(vec3<bool>(false, false, true), Struct_2(var_1.x, u_input.d), Struct_2(var_1.x, vec3<i32>(-22977i, -1i, global0.x))))).a, func_4(abs(firstLeadingBit(vec4<i32>(global0.x, 0i, 31712i, 2147483647i))), func_2(Struct_3(vec3<bool>(var_1.x, true, true), Struct_2(true, u_input.d), Struct_2(var_1.x, vec3<i32>(global0.x, -24263i, global0.x))), global0.wyx, _wgslsmith_clamp_i32(u_input.c, global0.x, 4650i), ~38444u), vec2<bool>(all(vec4<bool>(false, false, true, var_1.x)), global0.x != 14809i)).c, Struct_2(true, vec3<i32>(_wgslsmith_mod_i32(47232i, 57752i), -2147483647i, 12303i))));
}

fn func_8(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_1 {
    global0 = ~vec4<i32>(-arg_2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-34112i, ~(-1i), arg_0.b.b.x, arg_3.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.c.x, 2147483647i, -12218i, 2147483647i), vec4<i32>(12962i, -666i, -1i, 1i)) >> (u_input.a % vec4<u32>(32u))), min(-(~arg_0.b.b.x), -4922i), firstTrailingBit(_wgslsmith_mult_i32(global0.x | u_input.d.x, -15864i)));
    global0 = vec4<i32>(abs(~u_input.b) ^ ~_wgslsmith_clamp_i32(global0.x, arg_3.c.x, -11830i), arg_3.a.b.b.x, 21153i, countOneBits(arg_0.b.b.x)) & -abs(abs(select(vec4<i32>(30590i, arg_2.b.x, arg_3.b.x, u_input.b), vec4<i32>(2147483647i, 1i, 1i, -1i), true)));
    let var_0 = ~(-42981i);
    var var_1 = ~(u_input.a.x << (~select(max(4294967295u, u_input.a.x), 1u, true) % 32u));
    var_1 = countOneBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(firstLeadingBit(1u), firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, 4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), u_input.a.x << (u_input.a.x % 32u), _wgslsmith_add_u32(u_input.a.x, 15411u), 1u), u_input.a)));
    return func_2(func_4(-((vec4<i32>(global0.x, u_input.d.x, -1i, arg_2.b.x) & vec4<i32>(global0.x, -1i, var_0, u_input.b)) | firstLeadingBit(vec4<i32>(global0.x, global0.x, 52086i, arg_3.a.c.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-469f, 257f, 374f, -1448f), vec4<f32>(-137f, 230f, -618f, -1015f), arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, 602f, -1144f) + vec3<f32>(680f, 1074f, 1000f))), var_0), !func_5(_wgslsmith_div_i32(u_input.b, 2147483647i), var_0, Struct_3(vec3<bool>(false, arg_0.b.a, false), arg_3.a.b, arg_3.a.c)).a.zz), vec3<i32>(1i, -_wgslsmith_sub_i32(23649i, 32304i | var_0), -55670i), func_5(_wgslsmith_mod_i32(-(~global0.x), arg_2.b.x), _wgslsmith_mod_i32(max(22753i, -2147483647i), var_0) ^ -2147483647i, arg_0).b.b.x, ~1u);
}

fn func_9(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_4 {
    global0 = min(countOneBits(vec4<i32>(arg_1.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(42268i, -22105i), max(-2147483647i, u_input.c)), ~(-u_input.c), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b.b.x, global0.x, 17089i, 0i), vec4<i32>(-61894i, arg_1.c, 0i, u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(-18341i, global0.x, arg_1.c, -1i), vec4<i32>(arg_2.c.b.x, -30200i, arg_2.c.b.x, -1i))))), min(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.d.x, u_input.c, 1i), -vec4<i32>(-51285i, 2147483647i, 1i, 1i)), ~_wgslsmith_sub_i32(u_input.b, 9800i), abs(arg_2.c.b.x >> (0u % 32u)), func_8(Struct_3(arg_2.a, arg_2.c, arg_2.c), vec4<bool>(false, arg_2.b.a, arg_2.a.x, true), arg_2.b, Struct_5(Struct_3(vec3<bool>(arg_2.b.a, arg_2.a.x, arg_2.b.a), Struct_2(false, arg_2.c.b), Struct_2(arg_2.b.a, vec3<i32>(-1i, -910i, 29536i))), u_input.d, vec2<i32>(3114i, arg_1.c))).c), vec4<i32>(arg_1.c, 0i, abs(1i), arg_2.c.b.x)));
    global0 = _wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(arg_1.c, arg_2.b.b.x, 1i, -21531i)) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c, global0.x, u_input.b, -4122i), vec4<i32>(2147483647i, -15108i, 31597i, -13497i)) >> ((vec4<u32>(9381u, 1u, arg_3.x, 4863u) | u_input.a) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(1i, 0i), -2147483647i & arg_2.c.b.x, u_input.c, global0.x)), min(countOneBits(~vec4<i32>(-29350i, arg_1.c, arg_1.c, arg_2.c.b.x)), vec4<i32>(-1i) * -vec4<i32>(39936i, global0.x, -63907i, arg_2.c.b.x))));
    global0 = vec4<i32>(arg_2.b.b.x, -(arg_1.c << (0u % 32u)), -2147483647i, global0.x >> (1u % 32u));
    global0 = ~_wgslsmith_sub_vec4_i32(abs(~vec4<i32>(arg_2.c.b.x, arg_1.c, 21829i, global0.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-45993i, global0.x, 2147483647i, 1i) >> (firstLeadingBit(u_input.a) % vec4<u32>(32u)), abs(~vec4<i32>(-1i, arg_2.b.b.x, arg_1.c, 2147483647i)), reverseBits(vec4<i32>(2147483647i, global0.x, global0.x, arg_1.c))));
    global0 = -vec4<i32>(_wgslsmith_mult_i32(26283i, _wgslsmith_dot_vec2_i32(~vec2<i32>(5638i, -51261i), func_4(vec4<i32>(u_input.c, global0.x, global0.x, -6741i), arg_1, arg_2.a.xz).b.b.yx)), u_input.b, global0.x, ~40006i);
    return Struct_4(u_input.a.zz, func_4(vec4<i32>(~global0.x, u_input.c, ~(~u_input.d.x), func_4(vec4<i32>(u_input.d.x, arg_2.b.b.x, arg_1.c, u_input.d.x), arg_1, vec2<bool>(arg_2.a.x, arg_2.c.a)).b.b.x & arg_2.b.b.x), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1121f, arg_0.x, arg_1.b.x, 2494f)), _wgslsmith_f_op_vec4_f32(-arg_1.a)), arg_1.b, 1i), vec2<bool>(true, true)).a.zy, _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(arg_2.b.b.x), arg_2.b.b.x), arg_2.c.b.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(vec2<f32>(1452f, -960f), func_8(func_1(), !vec4<bool>(true, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, true, true)), true), func_6(Struct_3(vec3<bool>(true, true, true), Struct_2(false, vec3<i32>(global0.x, global0.x, 2147483647i)), func_4(vec4<i32>(-10954i, global0.x, 2147483647i, -3821i), Struct_1(vec4<f32>(-503f, -537f, 755f, 316f), vec3<f32>(403f, -240f, 537f), 26915i), vec2<bool>(false, true)).b), true, !func_4(vec4<i32>(u_input.b, 25399i, 11242i, u_input.c), Struct_1(vec4<f32>(763f, -1000f, -486f, 717f), vec3<f32>(-324f, -1463f, 711f), u_input.b), vec2<bool>(false, false)).a.zx, _wgslsmith_f_op_f32(sign(-1630f))), Struct_5(func_5(_wgslsmith_add_i32(3924i, global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d.x, 68991i), u_input.d), func_4(vec4<i32>(2147483647i, -2147483647i, global0.x, u_input.d.x), Struct_1(vec4<f32>(1000f, -527f, 199f, -497f), vec3<f32>(1876f, -482f, 815f), global0.x), vec2<bool>(true, false))), global0.xyz, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(global0.xy, vec2<i32>(-15710i, u_input.b)), u_input.d.xy))), Struct_3(select(func_1().a, vec3<bool>(true, true, true), select(func_5(13175i, u_input.d.x, Struct_3(vec3<bool>(false, true, true), Struct_2(true, global0.zzw), Struct_2(false, vec3<i32>(2147483647i, u_input.b, 2147483647i)))).a, vec3<bool>(true, true, true), true)), Struct_2(true, _wgslsmith_mult_vec3_i32(func_1().b.b, ~vec3<i32>(-1i, global0.x, global0.x))), Struct_2(select(any(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, true)), true), select(countOneBits(global0.xxx), ~global0.ywy, u_input.a.x >= 4294967295u))), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(35019u, 0u, 4294967295u) | _wgslsmith_mult_vec3_u32(vec3<u32>(84512u, 22322u, u_input.a.x), u_input.a.yyz), vec3<u32>(u_input.a.x | 0u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(64103u, 5100u)))));
    global0 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global0.x, global0.x, ~global0.x, ~(-14126i))), ~(~(~reverseBits(vec4<i32>(u_input.b, 1i, var_0.c, global0.x)))));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 75947u, var_0.a.x)), 34013u)), _wgslsmith_div_vec3_u32(u_input.a.xzz, ~u_input.a.xxz));
    var var_2 = ~(~_wgslsmith_sub_u32(var_1.x, abs(4294967295u)));
    var var_3 = var_0.b.x || ((2816u >> (_wgslsmith_clamp_u32(~var_1.x, ~1861u, 4294967295u >> (var_0.a.x % 32u)) % 32u)) != var_0.a.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(879f, -931f, 205f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1921f, 1000f) - vec3<f32>(-1112f, 1554f, -416f))) - vec3<f32>(_wgslsmith_f_op_f32(min(929f, 463f)), _wgslsmith_f_op_f32(1479f * -1000f), -1000f)), vec3<f32>(-1653f, 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(826f, 240f, var_0.b.x)))))));
    global0 = vec4<i32>(_wgslsmith_add_i32(u_input.c, -24109i), global0.x << ((~0u ^ var_0.a.x) % 32u), func_1().b.b.x, 1i);
    let var_5 = func_5(global0.x, countOneBits(func_5(var_0.c, abs(u_input.d.x), Struct_3(vec3<bool>(var_0.b.x, true, false), Struct_2(var_0.b.x, vec3<i32>(-8197i, global0.x, 1i)), Struct_2(var_0.b.x, global0.yyx))).c.b.x), Struct_3(!func_1().a, Struct_2(any(var_0.b), vec3<i32>(global0.x, u_input.d.x, var_0.c)), Struct_2(true, firstLeadingBit(global0.wyy)))).a.x && true;
    var var_6 = 64739u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec3<i32>(~0i, u_input.b, global0.x & var_0.c)), var_0.a);
}

