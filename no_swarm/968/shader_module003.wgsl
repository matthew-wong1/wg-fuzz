struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    global0 = 15263u;
    global0 = _wgslsmith_clamp_u32(19054u, 47842u & arg_1, 57063u);
    var var_0 = select(vec2<i32>(_wgslsmith_mod_i32(max(u_input.b.x, u_input.d), u_input.b.x), _wgslsmith_sub_i32(1i, -_wgslsmith_mod_i32(1i, u_input.b.x))), _wgslsmith_div_vec2_i32(countOneBits(-countOneBits(vec2<i32>(u_input.b.x, u_input.c))), vec2<i32>(-firstLeadingBit(u_input.c), -1i)), !arg_0);
    let var_1 = ~u_input.a;
    let var_2 = u_input.b.xx;
    return Struct_1(~(~_wgslsmith_div_u32(80687u, 58853u >> (u_input.a % 32u))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = true;
    var var_1 = ~max(vec4<u32>(max(arg_0.d.a, _wgslsmith_dot_vec2_u32(arg_0.c.yz, arg_0.c.yw)), u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_0.c.wxx, arg_0.c.zwz), ~37157u), select(firstTrailingBit(71031u), 71958u, !arg_0.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_0.c.x, 4294967295u, 10959u) ^ firstTrailingBit(vec4<u32>(299u, arg_0.c.x, arg_0.b.a, arg_0.c.x)), arg_0.c));
    global0 = 0u;
    let var_2 = min(u_input.a, ~29550u);
    global0 = var_2;
    return firstLeadingBit(73506u);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> i32 {
    global0 = 0u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(765f, 899f)) - _wgslsmith_f_op_f32(f32(-1f) * -1119f)))));
    var var_1 = func_1(select(vec2<bool>(arg_1.a.a.x, !(99778u == arg_1.c.a)), vec2<bool>(arg_1.d, !(!arg_1.a.a.x)), arg_1.d), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0, arg_1.c.a & u_input.a), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0, u_input.a), firstTrailingBit(arg_1.c.a))));
    var_1 = func_1(arg_1.a.a.zx, 4294967295u);
    let var_2 = reverseBits(abs(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.a, 10773u, 1u), vec3<u32>(1u, 7967u, u_input.a)) << (~vec3<u32>(0u, 4294967295u, 78817u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 1u), ~vec3<u32>(103027u, u_input.a, 32316u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(24796u, arg_0, u_input.a), vec3<u32>(arg_1.c.a, 40107u, u_input.a), vec3<u32>(arg_0, 4294967295u, var_1.a)) & select(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(0u, 0u, 0u), arg_1.a.a.xzw))));
    return 0i;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(vec2<bool>(true, all(!(!vec4<bool>(arg_0.a.x, false, true, arg_0.a.x)))), arg_0.d, ~abs(vec4<u32>(45057u, 1u, u_input.a, 76928u)) | _wgslsmith_div_vec4_u32(arg_0.c, vec4<u32>(countOneBits(u_input.a), ~4294967295u, u_input.a, 11094u)), Struct_1(~((1u | u_input.a) | 4791u)));
    var_0 = Struct_3(arg_0.a, func_1(select(arg_0.a, vec2<bool>(true, all(vec3<bool>(arg_0.a.x, var_0.a.x, true))), var_0.a), ~arg_0.d.a), ~_wgslsmith_sub_vec4_u32(min(abs(arg_0.c), ~arg_0.c), arg_0.c), arg_0.d);
    let var_1 = _wgslsmith_sub_i32(~func_4(func_3(arg_0, 1u), Struct_4(Struct_2(vec4<bool>(var_0.a.x, true, var_0.a.x, false), u_input.b), Struct_2(vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec3<i32>(20302i, -38870i, u_input.c)), func_1(vec2<bool>(true, var_0.a.x), 20878u), all(var_0.a)), _wgslsmith_mult_i32(2147483647i, 1i & u_input.d)), u_input.b.x);
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~var_0.c.x, reverseBits(~u_input.a)), ~(~vec3<u32>(42278u, ~u_input.a, var_0.b.a)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-907f, 291f, var_0.a.x)))), 1208f)) * _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-762f)) * -230f))));
    return Struct_2(vec4<bool>(false, var_0.a.x, false, true), -_wgslsmith_clamp_vec3_i32(min(u_input.b, ~u_input.b), ~abs(vec3<i32>(-1i, 0i, u_input.d)), ~vec3<i32>(-1i, var_1, -52948i) | _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, 58914i), vec3<i32>(u_input.d, var_1, var_1), u_input.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = -firstTrailingBit(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(arg_2.a.b.x, -2314i)), vec2<i32>(_wgslsmith_mult_i32(19220i, arg_1.b.x), arg_1.b.x)));
    let var_1 = -1100f;
    global0 = ~abs(func_3(Struct_3(arg_1.a.xz, Struct_1(arg_0.a), vec4<u32>(arg_2.c.a, arg_0.a, arg_2.c.a, 123043u), arg_2.c), _wgslsmith_mod_u32(4294967295u, 2088u)) >> (1u % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) + -174f), _wgslsmith_f_op_f32(var_1 + -1087f), var_1, 1802f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 284f, var_1, var_1)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1), var_1, var_1, _wgslsmith_f_op_f32(var_1 * -917f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1229f, 465f, -398f, var_1), vec4<f32>(-525f, -642f, var_1, 663f)), vec4<f32>(545f, -2940f, -807f, -243f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_2.xwz + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1126f, var_2.x, var_1) - var_2.xyy)), _wgslsmith_f_op_vec3_f32(var_2.yxw + _wgslsmith_div_vec3_f32(var_2.yxx, vec3<f32>(332f, var_1, -845f))))))));
    return ~vec3<i32>(9080i & min(_wgslsmith_clamp_i32(var_0.x, arg_1.b.x, 0i), arg_2.b.b.x), firstTrailingBit(countOneBits(23314i)) ^ _wgslsmith_dot_vec2_i32(select(arg_2.b.b.xy, u_input.b.zy, vec2<bool>(arg_2.d, false)), vec2<i32>(1i, var_0.x)), -var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(max(u_input.a, u_input.a), _wgslsmith_clamp_u32(u_input.a, 0u, u_input.a)), u_input.a), firstLeadingBit(_wgslsmith_mult_u32(4294967295u, ~u_input.a)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a | 0u, ~u_input.a, 0u)), abs(~countOneBits(vec3<u32>(5174u, 40619u, u_input.a)))));
    global0 = _wgslsmith_sub_u32(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(43060u, u_input.a, u_input.a), vec3<u32>(21028u, u_input.a, u_input.a))), 17061u) & _wgslsmith_mult_u32(u_input.a, 4294967295u);
    let var_0 = func_5(Struct_1(u_input.a), func_2(Struct_3(vec2<bool>(true, true), Struct_1(~22124u), reverseBits(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a)), func_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), 1u))), Struct_4(func_2(Struct_3(func_2(Struct_3(vec2<bool>(false, true), Struct_1(0u), vec4<u32>(16002u, u_input.a, 7765u, u_input.a), Struct_1(u_input.a))).a.ww, func_1(vec2<bool>(true, false), u_input.a), vec4<u32>(u_input.a, u_input.a, 59901u, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(u_input.a))), func_2(Struct_3(select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_1(vec2<bool>(true, true), 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 15555u), vec4<u32>(61253u, 13686u, u_input.a, u_input.a)), Struct_1(4294967295u))), Struct_1(_wgslsmith_div_u32(80768u >> (u_input.a % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a))), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(-2147483647i, select(-1i, u_input.c & var_0.x, true))));
}

