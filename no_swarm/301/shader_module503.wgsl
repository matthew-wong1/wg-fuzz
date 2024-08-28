struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = true;
    var var_1 = Struct_4(!arg_0);
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(-9829i), u_input.a.x, max(-u_input.a.x, ~arg_1.c.e) >> (~87142u % 32u), -1i), -(~max(vec4<i32>(arg_1.c.c, u_input.a.x, arg_1.c.c, arg_1.a.a), vec4<i32>(u_input.a.x, -15870i, arg_1.a.c, 18163i))) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(43045u, 0u, 68594u, 1u), vec4<u32>(0u, 4294967295u, 2269u, 19901u), vec4<u32>(15659u, 4294967295u, 4294967295u, 1u)), ~vec4<u32>(4294967295u, 4294967295u, 2442u, 56164u)) % vec4<u32>(32u)));
    global0 = array<Struct_2, 27>();
    var var_3 = vec3<bool>(var_0, false, -31171i <= var_2.x);
    return Struct_3(arg_1.c, !vec2<bool>(false, var_3.x | arg_0.x));
}

fn func_3() -> Struct_1 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2123f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -768f), -2121f, true)))))));
    var var_2 = _wgslsmith_sub_i32(~2147483647i, -u_input.a.x);
    let var_3 = Struct_3(func_2(vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(1u, _wgslsmith_sub_u32(50652u, 1u), false), 73659u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 24917u, 9326u), vec3<u32>(4294967295u, 32462u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u)))), 27u)]).a, select(vec2<bool>(true, true), vec2<bool>(true, true), !func_2(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(37869u, 39586u), 27u)]).b));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)), 1196f, _wgslsmith_f_op_f32(var_3.a.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(f32(-1f) * -970f))));
    return func_2(vec4<bool>(func_2(!select(vec4<bool>(true, var_3.b.x, var_3.b.x, false), vec4<bool>(var_3.b.x, true, true, false), vec4<bool>(false, var_3.b.x, var_3.b.x, true)), Struct_2(var_3.a, vec3<i32>(var_3.a.a, -20465i, var_3.a.e), func_2(vec4<bool>(false, false, var_3.b.x, var_3.b.x), Struct_2(Struct_1(1i, -231f, 0i, var_3.a.d, var_3.a.e), vec3<i32>(u_input.a.x, u_input.a.x, -20018i), var_3.a)).a)).b.x, true, any(!(!vec2<bool>(var_3.b.x, true))), true), Struct_2(var_3.a, vec3<i32>(~_wgslsmith_add_i32(-28437i, -1i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-10834i, -69415i, var_3.a.a)), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -(~u_input.a.x)), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f)))), var_3.a.e, vec4<f32>(_wgslsmith_f_op_f32(1131f + var_3.a.d.x), _wgslsmith_div_f32(-772f, var_3.a.b), _wgslsmith_div_f32(-1000f, var_1), _wgslsmith_f_op_f32(f32(-1f) * -1167f)), max(~(-1i), 1i)))).a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    var var_0 = min(74149u, ~1u);
    global0 = array<Struct_2, 27>();
    let var_1 = firstTrailingBit(_wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(8600u, ~_wgslsmith_add_u32(33476u, 0u))));
    var var_2 = vec3<u32>(var_1, 4294967295u >> (var_1 % 32u), (4294967295u ^ ~(~var_1)) & 1u);
    var var_3 = arg_1;
    return Struct_4(select(select(vec4<bool>(true, arg_0.b.x, arg_2.b.x, true), vec4<bool>(true, true, false, arg_2.b.x), !vec4<bool>(arg_2.b.x, false, true, false)), vec4<bool>(!(!arg_2.b.x), arg_2.b.x, arg_2.b.x, true), vec4<bool>(func_2(select(vec4<bool>(arg_0.b.x, false, arg_2.b.x, arg_2.b.x), vec4<bool>(true, true, arg_0.b.x, arg_2.b.x), false), Struct_2(Struct_1(1i, 1000f, 12930i, var_3.a.d, arg_1.a.a), var_3.b, arg_1.c)).b.x, !func_2(vec4<bool>(arg_0.b.x, arg_2.b.x, false, arg_0.b.x), global0[_wgslsmith_index_u32(var_1, 27u)]).b.x, u_input.a.x < (i32(-1i) * -48968i), !arg_2.b.x)));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: f32) -> vec2<u32> {
    global0 = array<Struct_2, 27>();
    let var_0 = 10687u;
    var var_1 = select(any(arg_2.a.yy), false, true);
    global0 = array<Struct_2, 27>();
    var_1 = all(vec4<bool>(any(vec4<bool>(false, any(arg_2.a), var_0 < 4294967295u, !arg_2.a.x)), arg_2.a.x, any(!arg_2.a), true && !arg_0));
    return vec2<u32>(_wgslsmith_add_u32(var_0, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0, var_0) & var_0, _wgslsmith_mult_u32(4294967295u, reverseBits(var_0)), ~_wgslsmith_clamp_u32(var_0, 1u, var_0))), var_0);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = func_5(arg_2, _wgslsmith_f_op_vec2_f32(min(arg_0.a.d.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(577f, arg_0.a.d.x) - arg_0.a.d.wz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.a.b))))), func_4(func_2(vec4<bool>(arg_0.b.x, arg_3.x, arg_3.x, any(vec3<bool>(false, false, true))), global0[_wgslsmith_index_u32(1u, 27u)]), Struct_2(arg_0.a, _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, 20531i, arg_0.a.a)), -vec3<i32>(23243i, arg_0.a.c, 2147483647i), abs(vec3<i32>(arg_0.a.e, -1i, -23213i))), func_3()), func_2(arg_3, Struct_2(arg_0.a, reverseBits(vec3<i32>(arg_0.a.a, 57328i, arg_0.a.c)), Struct_1(arg_1.x, 1335f, u_input.a.x, arg_0.a.d, -26853i))), Struct_1(-1i, _wgslsmith_f_op_f32(ceil(-2100f)), _wgslsmith_div_i32(min(arg_0.a.a, arg_1.x), _wgslsmith_div_i32(u_input.a.x, arg_1.x)), vec4<f32>(-146f, _wgslsmith_div_f32(arg_0.a.b, -1851f), _wgslsmith_f_op_f32(-arg_0.a.b), -1921f), ~(arg_1.x ^ 1i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.d.x), arg_0.a.b, arg_2)))));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(1u, var_0.x)) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(37493u, 8863u)), vec2<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), ~vec3<u32>(var_0.x, 44160u, var_0.x)))), vec2<u32>(abs(var_0.x), var_0.x) ^ vec2<u32>(~firstTrailingBit(0u), var_0.x << (47096u % 32u)));
    return func_3().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(firstTrailingBit(-u_input.a.x), u_input.a.x, -1i), -1i), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f), 705f))), u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1602f, -729f, -1483f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1713f, -800f, -1277f, -432f), vec4<f32>(1000f, 412f, 499f, -1392f))))) * vec4<f32>(-901f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-284f - 610f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(u_input.a.x, 971f, -25553i, vec4<f32>(-888f, 706f, -450f, 256f), u_input.a.x), vec2<bool>(true, false)), vec2<i32>(3458i, -16290i), false, vec4<bool>(false, false, true, false))), 459f)), 635f)), u_input.a.x);
    let var_1 = func_4(Struct_3(var_0, vec2<bool>(false, true)), Struct_2(Struct_1(-1i, var_0.d.x, max(~(-40873i), -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -296f, var_0.b, -1347f)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), var_0.c & u_input.a.x)), reverseBits(-vec3<i32>(-1i, -26673i, u_input.a.x)), var_0), func_2(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, -1548f <= var_0.d.x, true, select(true, false, false)), true & func_2(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(31549u, 27u)]).b.x), global0[_wgslsmith_index_u32(select(~(~65821u), 1u, _wgslsmith_sub_i32(2147483647i, u_input.a.x) <= ~10581i), 27u)]), var_0);
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_2 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(6270i, ~(~abs(~51337u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2243f)))));
}

