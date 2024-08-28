struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 83736u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_5(true, 27088i, Struct_3(_wgslsmith_add_i32(countOneBits(arg_0.c.e.a.x) ^ -2147483647i, 5212i), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, arg_0.c.e.b, 1u), vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(64687u, 10722u), u_input.a.x)), Struct_1(vec2<i32>(-1i) * -arg_0.b.a, arg_0.b.d.x, vec4<i32>(1i, -1i, arg_0.c.e.c.x, 1i), _wgslsmith_add_vec3_u32(~arg_0.a.d, ~vec3<u32>(u_input.a.x, 0u, 4294967295u)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, 0i, arg_0.c.e.c.x), arg_0.a.e)), u_input.a.x != ~(arg_0.c.c.x & 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(511f, -907f, 896f)) + vec3<f32>(-750f, _wgslsmith_f_op_f32(-1223f + 1130f), -632f))), arg_1.x, !select(select(select(arg_1, vec2<bool>(false, arg_1.x), arg_1.x), arg_1, !arg_1), arg_0.d.zy, vec2<bool>(!arg_1.x, false)));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(16382u, 10838u, 31986u), vec3<u32>(1u, arg_0.b.b, 4294967295u))), _wgslsmith_dot_vec2_u32(~arg_0.b.d.yy, select(vec2<u32>(u_input.a.x, 0u), u_input.a.xy, arg_0.d.zz)), var_1.c.b.x), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 56918u, var_1.c.c.d.x)))) << (u_input.a.x % 32u);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -firstLeadingBit(-2147483647i), abs(var_1.c.a), var_1.b) >> (~(~vec4<u32>(u_input.a.x, var_1.c.c.b, arg_0.a.d.x, var_1.c.b.x)) % vec4<u32>(32u)), vec4<i32>(-1i, abs(1i), ~_wgslsmith_add_i32(~arg_0.c.e.a.x, 2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(2009i, -7589i), select(var_1.c.c.e.wz, vec2<i32>(var_1.b, arg_0.b.e.x), arg_0.d.xz), var_1.c.c.a), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.e.wy, var_1.c.c.e.wz), arg_0.c.e.a.x))));
    var_2 = ~(-_wgslsmith_div_i32(firstLeadingBit(-2147483647i >> (var_1.c.b.x % 32u)), _wgslsmith_mod_i32(-2147483647i, arg_0.c.e.a.x)));
    return var_1.c.e.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5) -> bool {
    var var_0 = Struct_5(!all(!arg_1.e), 28797i, Struct_3(_wgslsmith_mult_i32(arg_1.b, -arg_1.b), _wgslsmith_add_vec3_u32(vec3<u32>(42488u, min(arg_1.c.b.x, arg_1.c.b.x), ~4294967295u), u_input.a.xxx), Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_1.c.a, arg_1.c.c.c.x), -vec2<i32>(arg_1.c.c.a.x, 0i)), arg_1.c.c.b, vec4<i32>(-6675i, -1i, arg_1.b, 1i), arg_1.c.c.d, arg_1.c.c.c), false, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(arg_1.c.c.c.yx, u_input.a.x, vec4<i32>(arg_1.b, arg_1.c.a, 21203i, arg_1.b), vec3<u32>(1u, 4294967295u, arg_1.c.c.b), vec4<i32>(-2147483647i, -39031i, 18771i, 0i)), Struct_1(vec2<i32>(2147483647i, -43805i), 1u, vec4<i32>(-51765i, arg_1.b, 44306i, 27422i), arg_1.c.c.d, vec4<i32>(arg_1.c.a, arg_1.c.c.a.x, -23943i, 12868i)), Struct_2(u_input.a.x, u_input.a.xxw, u_input.a.xwz, vec4<u32>(arg_1.c.b.x, arg_1.c.b.x, 0u, 36783u), Struct_1(arg_1.c.c.c.yz, 0u, vec4<i32>(arg_1.b, arg_1.c.a, arg_1.c.a, arg_1.c.a), vec3<u32>(arg_1.c.c.b, arg_1.c.c.d.x, 4294967295u), vec4<i32>(arg_1.b, 0i, 2875i, arg_1.c.c.a.x))), vec3<bool>(false, true, true)), select(vec2<bool>(arg_1.d, arg_1.d), arg_1.e, vec2<bool>(arg_1.e.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.e.x + -1407f)))), true & any(vec2<bool>(false, arg_1.c.d)), arg_1.e);
    var var_1 = select(arg_1.c.d, all(vec4<bool>(all(select(vec4<bool>(arg_1.e.x, arg_1.c.d, true, arg_1.c.d), vec4<bool>(var_0.d, arg_1.a, var_0.e.x, true), false)), arg_1.a, true, all(vec3<bool>(arg_1.d, var_0.d, false)))), all(!vec3<bool>(all(vec3<bool>(false, false, true)), false, all(vec4<bool>(false, var_0.d, var_0.a, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, _wgslsmith_f_op_f32(sign(var_0.c.e.x))) - _wgslsmith_f_op_vec2_f32(-var_0.c.e.xz)) + var_0.c.e.zz));
    var_1 = false;
    global0 = _wgslsmith_mult_u32(var_0.c.b.x, max(~4294967295u, var_0.c.c.d.x));
    return !(!((0u | _wgslsmith_clamp_u32(0u, 0u, 90244u)) <= var_0.c.b.x));
}

fn func_1(arg_0: Struct_5) -> Struct_3 {
    var var_0 = vec2<u32>(70072u, ~select(abs(_wgslsmith_div_u32(arg_0.c.c.d.x, arg_0.c.c.b)), 7114u, !func_2(arg_0.c.e, arg_0)));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 47431u, _wgslsmith_div_u32(arg_0.c.c.d.x, 1u)), select(max(~vec4<u32>(arg_0.c.b.x, u_input.a.x, 1u, arg_0.c.b.x), vec4<u32>(var_0.x, u_input.a.x, 55176u, 40965u) ^ u_input.a), u_input.a >> (~vec4<u32>(arg_0.c.b.x, 37946u, 42057u, u_input.a.x) % vec4<u32>(32u)), arg_0.c.d)) >> (34399u % 32u);
    global0 = _wgslsmith_mod_u32(1u, u_input.a.x);
    let var_1 = countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.c.a, 32262i), -vec2<i32>(arg_0.b, arg_0.c.a)), -_wgslsmith_clamp_i32(-2147483647i, -2147483647i, arg_0.b)), vec2<i32>(arg_0.b, abs(-2147483647i | arg_0.c.c.e.x))));
    var_0 = u_input.a.ww;
    return Struct_3(_wgslsmith_add_i32(arg_0.c.c.a.x, ~_wgslsmith_sub_i32(i32(-1i) * -6465i, -1i)), firstLeadingBit(arg_0.c.b), Struct_1(reverseBits(-arg_0.c.c.a), _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.c.c.d.x, 5448u, _wgslsmith_clamp_u32(96113u, var_0.x, u_input.a.x)), ~u_input.a.x), vec4<i32>(_wgslsmith_div_i32(var_1.x, -3632i), _wgslsmith_div_i32(-2147483647i, -22658i), 0i, -2147483647i), arg_0.c.b, firstTrailingBit(countOneBits(vec4<i32>(-1i, 1i, arg_0.b, 2147483647i)) & ~arg_0.c.c.c)), any(arg_0.e), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1033f * _wgslsmith_f_op_f32(arg_0.c.e.x - 707f)), _wgslsmith_f_op_f32(select(-1270f, _wgslsmith_div_f32(-242f, 592f), true)), 848f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.c.e.x, 2170f, arg_0.c.e.x), vec3<f32>(arg_0.c.e.x, arg_0.c.e.x, -881f))), _wgslsmith_f_op_vec3_f32(abs(arg_0.c.e)))) * arg_0.c.e))));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_3) -> vec4<i32> {
    global0 = min(_wgslsmith_sub_u32(arg_3.c.b & abs(4294967295u), arg_3.c.b) | ~55463u, u_input.a.x);
    let var_0 = !vec3<bool>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(1i, arg_0.x)) != -37820i, true, arg_2.x);
    var var_1 = arg_3.e.x;
    global0 = 98061u;
    let var_2 = var_0.yy;
    return vec4<i32>(abs(arg_0.x), -71479i, ~75883i, -arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -1i, 2147483647i, 1i), func_4(-vec3<i32>(-5686i, 1i, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1104f), vec2<bool>(true, true), func_1(Struct_5(true, -57329i, Struct_3(-31858i, u_input.a.xww, Struct_1(vec2<i32>(-14830i, 8884i), 55304u, vec4<i32>(-7177i, -5611i, 1i, 14190i), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, -21817i, 2147483647i, 2147483647i)), true, vec3<f32>(855f, -494f, 577f)), true, vec2<bool>(false, true))))), ~(-2147483647i)), ~countOneBits(~u_input.a.x), vec4<i32>(-54820i >> (0u % 32u), max(~(i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(i32(-1i) * -24303i, -1i, 2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(26892i, 48957i)), min(func_1(Struct_5(true, -1i, Struct_3(17532i, u_input.a.yyz, Struct_1(vec2<i32>(1610i, 7210i), 4294967295u, vec4<i32>(1i, 1i, 1i, 19382i), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, -1i, -27664i, -2147483647i)), true, vec3<f32>(378f, 559f, 822f)), false, vec2<bool>(false, false))).c.e.xz, vec2<i32>(-1i, -1i))), firstTrailingBit(_wgslsmith_div_i32(i32(-1i) * -2147483647i, 14919i))), vec3<u32>(~29814u, ~(~u_input.a.x), ~1u), firstTrailingBit(-reverseBits(vec4<i32>(0i, -1049i, 1i, 1i)) >> (select(u_input.a, vec4<u32>(u_input.a.x, 50986u, u_input.a.x, u_input.a.x), true) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1332f);
    let var_2 = Struct_2(_wgslsmith_clamp_u32(~func_1(Struct_5(true, -23030i, Struct_3(var_0.e.x, var_0.d, Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), 33107u, vec4<i32>(var_0.e.x, 0i, 1i, -57141i), vec3<u32>(2848u, u_input.a.x, var_0.b), vec4<i32>(var_0.e.x, var_0.a.x, 18023i, 30250i)), false, vec3<f32>(-643f, -1830f, 299f)), true, vec2<bool>(true, false))).b.x, ~u_input.a.x, var_0.b), var_0.d, ~var_0.d, (select(min(vec4<u32>(12521u, 83890u, 52888u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_0.d.x)), u_input.a, true) & u_input.a) << (min(u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, var_0.d.x, 25362u, 1u))) % vec4<u32>(32u)), Struct_1(vec2<i32>(var_0.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_0.c.x, var_0.e.x), vec3<i32>(-1i, -60861i, 9478i)), var_0.c.zwx)), 0u, ~func_1(Struct_5(true, var_0.c.x, Struct_3(var_0.c.x, var_0.d, Struct_1(var_0.c.yy, u_input.a.x, var_0.c, vec3<u32>(u_input.a.x, 4294967295u, var_0.d.x), var_0.e), false, vec3<f32>(-2506f, -1504f, 641f)), false, vec2<bool>(false, false))).c.c, ~u_input.a.yzx, select(vec4<i32>(var_0.e.x, var_0.a.x, 0i, var_0.c.x), _wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(-2147483647i, -19552i, -61534i, 1i)), vec4<bool>(false, false, true, true)) | (select(vec4<i32>(2147483647i, 35876i, var_0.e.x, -58596i), var_0.e, vec4<bool>(false, true, false, false)) >> (vec4<u32>(var_0.d.x, u_input.a.x, 27709u, 1u) % vec4<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1272f, -2485f, 1304f, 561f), vec4<f32>(2132f, -300f, -141f, 462f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, 184f, -207f, -777f)) - vec4<f32>(982f, 381f, 427f, -1422f)))))));
    global0 = 51995u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(abs(-var_2.e.c.x), -(i32(-1i) * -41311i)), var_0.c.x), firstLeadingBit(1i), func_1(Struct_5(true, _wgslsmith_div_i32(var_2.e.e.x, var_0.c.x), func_1(Struct_5(true, var_2.e.a.x, Struct_3(var_0.c.x, vec3<u32>(0u, 31790u, var_0.d.x), var_2.e, true, vec3<f32>(var_3.x, 1168f, var_3.x)), true, vec2<bool>(false, false))), select(false, true, false), vec2<bool>(true, false))).c.e & var_2.e.c, _wgslsmith_clamp_vec2_u32(var_2.d.zx, ~select(var_0.d.zx, vec2<u32>(var_2.e.b, var_2.b.x), true), ~max(vec2<u32>(4294967295u, var_2.d.x), vec2<u32>(0u, 1u))) | (vec2<u32>(~var_2.c.x, ~1u) & u_input.a.wz));
}

