struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-10593i, -8710i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    let var_0 = reverseBits(abs(countOneBits(u_input.a)) << (u_input.c.x % 32u));
    global1 = Struct_2(~(global1.a ^ global1.a));
    let var_1 = arg_1.b;
    let var_2 = global1.a;
    global0 = array<vec2<f32>, 27>();
    return !(!(!(!(arg_1.c.a == 25481i))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(vec3<bool>(select(func_3(-1318f, Struct_3(vec3<bool>(true, true, false), Struct_1(u_input.a), Struct_1(2147483647i), Struct_1(-30775i), true), vec2<u32>(u_input.b, 29973u)), all(vec2<bool>(true, true)), true), all(vec2<bool>(true, true)), global1.a.x == abs(1i)), Struct_1(u_input.a), Struct_1(reverseBits(countOneBits(14895i)) >> (u_input.c.x % 32u)), Struct_1(u_input.a), true);
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    let var_1 = ~(~1u >> ((~u_input.b & _wgslsmith_mult_u32(u_input.b, u_input.b)) % 32u)) | ~u_input.b;
    global0 = array<vec2<f32>, 27>();
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> bool {
    global1 = Struct_2(vec2<i32>(2147483647i, _wgslsmith_mod_i32(~abs(33337i), u_input.a)));
    let var_0 = arg_0;
    global0 = array<vec2<f32>, 27>();
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec4_u32(select(abs(vec4<u32>(93354u, 1u, ~10576u, u_input.b)), select(countOneBits(abs(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 46250u))), select(vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 1u), vec4<u32>(u_input.c.x, 15866u, 66584u, u_input.c.x), vec4<bool>(arg_3.x, arg_3.x, true, true)), vec4<bool>(true, true, true, true)), false), vec4<u32>(0u, abs(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) & u_input.b), 16070u, 4294967295u));
    return false;
}

fn func_1() -> bool {
    var var_0 = vec4<bool>(true, false, true, all(vec2<bool>(true, func_4(func_2(), Struct_2(global1.a), Struct_3(vec3<bool>(false, false, false), Struct_1(-11017i), Struct_1(1i), Struct_1(2147483647i), false), vec2<bool>(true, true)))));
    global1 = Struct_2(firstLeadingBit(countOneBits(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, 9325i), min(global1.a, global1.a)))));
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 115955u, 0u), vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b)), vec4<u32>(u_input.c.x, 1u, u_input.b, 3416u) | vec4<u32>(u_input.c.x, 29607u, 2667u, 1u)) << (select(firstLeadingBit(vec4<u32>(u_input.c.x, 1u, 1u, 54222u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 92453u, 0u, u_input.c.x), vec4<u32>(77542u, 0u, u_input.b, u_input.b), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b)), min(vec4<u32>(4294967295u, 73874u, u_input.c.x, u_input.c.x), vec4<u32>(91285u, 1u, 49143u, u_input.b)) ^ abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 3535u)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)) % vec4<u32>(32u)));
    let var_2 = select(vec2<bool>(var_0.x, var_0.x | var_0.x), !select(var_0.zw, select(vec2<bool>(true, true), var_0.yy, all(var_0.xyy)), false), vec2<bool>(var_0.x, !(!var_0.x)));
    var var_3 = Struct_3(select(select(vec3<bool>(!var_0.x, var_2.x, true), vec3<bool>(true, select(false, true, var_0.x), var_2.x), false), vec3<bool>(all(vec3<bool>(false, var_2.x, var_0.x)), var_2.x, var_2.x), true), func_2(), Struct_1(~_wgslsmith_sub_i32(abs(-1i), _wgslsmith_mult_i32(23902i, global1.a.x))), Struct_1(-1i), false);
    return var_0.x;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    global1 = Struct_2(vec2<i32>(-46346i, ~1i));
    global1 = Struct_2(countOneBits(vec2<i32>(max(_wgslsmith_mod_i32(arg_0.b.a, 32326i), arg_0.c.a), u_input.a)));
    global1 = Struct_2(_wgslsmith_add_vec2_i32(global1.a, global1.a));
    let var_0 = select(~min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1.x, 1u), vec3<u32>(0u, 15836u, u_input.b)) | min(vec3<u32>(arg_1.x, 0u, u_input.b), u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 29183u, arg_1.x) ^ vec3<u32>(10458u, arg_1.x, arg_1.x), arg_1)), vec3<u32>(~min(1u, abs(arg_1.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 42155u), arg_1.yx >> (u_input.c.yy % vec2<u32>(32u)), u_input.c.yx), reverseBits(arg_1.yz)), ~(~arg_1.x)), arg_0.a);
    let var_1 = u_input.a;
    return Struct_2(vec2<i32>(-countOneBits(-26836i), ~(i32(-1i) * -1i)) >> (vec2<u32>(arg_1.x, _wgslsmith_mult_u32(u_input.c.x, 54867u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), true), vec3<bool>(true, any(vec4<bool>(true, true, true, false)), func_1()), vec3<bool>(any(vec2<bool>(true, false)), true, all(vec2<bool>(false, true)))), func_2(), Struct_1(global1.a.x), func_2(), false), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 41476u, u_input.b), vec3<u32>(u_input.b, 23025u, 0u))));
    var_0 = func_5(Struct_3(vec3<bool>(true, false, all(vec4<bool>(false, false, true, true)) != true), Struct_1(0i), func_2(), func_2(), true), _wgslsmith_add_vec3_u32(u_input.c, ~u_input.c));
    var var_1 = Struct_1(var_0.a.x);
    var var_2 = Struct_3(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), Struct_1(-2147483647i), Struct_1(-38696i ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -1i, 5632i, -38367i), vec4<i32>(1i, 0i, u_input.a, -26297i)) << (u_input.b % 32u))), Struct_1(~firstLeadingBit(25117i)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1231f), Struct_3(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), func_2(), func_2(), func_2(), false), (~u_input.c.yx ^ ~u_input.c.zz) >> (vec2<u32>(u_input.b, 10221u) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-abs(countOneBits(-30744i)), global1.a.x), -_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, var_0.a.x));
    let var_4 = Struct_3(!var_2.a, Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(min(var_1.a, -1i), ~var_0.a.x), 1i)), Struct_1(0i), var_2.c, !(var_2.e || true));
    var_1 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.b) ^ vec4<u32>(61687u, u_input.c.x, u_input.c.x, 35655u)), firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.b, 31612u, u_input.c.x))), func_5(Struct_3(var_4.a, var_4.c, Struct_1(1i), func_2(), any(vec2<bool>(true, var_2.e))), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(~u_input.c.x, firstTrailingBit(u_input.b), _wgslsmith_div_u32(u_input.b, 0u)))).a.x, max(_wgslsmith_add_vec4_i32(-vec4<i32>(global1.a.x, var_2.b.a, -61194i, var_4.c.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-24974i, 19193i, 20941i, u_input.a), -vec4<i32>(global1.a.x, var_2.c.a, -33349i, 1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_4.c.a, 27557i, 0i) << (vec4<u32>(9681u, u_input.c.x, 7991u, u_input.b) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.a, var_0.a.x), vec3<i32>(-29254i, var_0.a.x, var_2.c.a)), firstLeadingBit(-2147483647i), var_2.b.a, -45133i))), abs(~(vec3<i32>(2147483647i, var_4.d.a, -1i) & vec3<i32>(0i, var_4.b.a, -2147483647i)) | (vec3<i32>(-31104i, u_input.a, -22877i) << (~vec3<u32>(45105u, 7005u, 45432u) % vec3<u32>(32u)))), -1258f);
}

