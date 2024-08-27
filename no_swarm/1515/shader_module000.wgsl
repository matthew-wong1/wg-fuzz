struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = ~abs(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(17958u, 758u), vec2<u32>(4294967295u, u_input.e.x)), 1u));
    global0 = array<Struct_1, 2>();
    var var_1 = u_input.a;
    let var_2 = Struct_3(u_input.e.x);
    var var_3 = abs(_wgslsmith_sub_vec2_i32(abs(u_input.b.zy), abs(~vec2<i32>(arg_0.a, arg_0.a))));
    return Struct_3(_wgslsmith_mod_u32(24141u, var_0));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(arg_2.a, u_input.d.x << (firstTrailingBit(1656u) % 32u)), 60445i);
    var_0 = countOneBits(arg_2.b);
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var_0 = ~(-(~u_input.b.yz));
    return ~arg_3.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_2 {
    return Struct_2(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -991f) - _wgslsmith_f_op_f32(f32(-1f) * -624f)), max(vec4<u32>(arg_0.a, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.e.x, u_input.e.x, 83854u, 22624u)) >> (select(vec4<u32>(arg_0.a, u_input.a.x, 1u, u_input.e.x), vec4<u32>(arg_0.a, arg_0.a, 8585u, 4294967295u), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), Struct_2(-1i, u_input.c.yz, Struct_1(vec3<f32>(-353f, 1000f, 1497f))), Struct_2(arg_2.x << (12168u % 32u), ~arg_1.xy, Struct_1(vec3<f32>(2469f, -1197f, 251f)))), -11281i), vec2<i32>(-12322i, _wgslsmith_add_i32((arg_2.x | arg_2.x) >> (_wgslsmith_mod_u32(arg_0.a, 1u) % 32u), ~(~arg_1.x))), global0[_wgslsmith_index_u32(~2786u, 2u)]);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = 22311i;
    var var_1 = u_input.c;
    let var_2 = select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false))), select(arg_2.c.a.x != -392f, all(vec3<bool>(true, any(vec3<bool>(true, true, false)), 1u != u_input.a.x)), false));
    var_0 = 40699i;
    var var_3 = Struct_2(~countOneBits(firstTrailingBit(_wgslsmith_sub_i32(var_1.x, -6828i))), vec2<i32>(arg_1, u_input.d.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(921f, 1259f, 2363f) + vec3<f32>(arg_0.a.x, arg_2.c.a.x, 1001f))) - vec3<f32>(966f, _wgslsmith_f_op_f32(-370f - -1101f), arg_2.c.a.x))));
    return func_2(Struct_3(4294967295u), max(~(~countOneBits(vec4<i32>(-30599i, u_input.c.x, arg_2.a, 1i))), -vec4<i32>(var_1.x, arg_1, 27046i, -30106i) | -(~vec4<i32>(2147483647i, var_1.x, -38805i, u_input.b.x))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(arg_2.b << (vec2<u32>(4294967295u, 51919u) % vec2<u32>(32u))), var_1.xy, max(vec2<i32>(-1i, arg_2.b.x), max(vec2<i32>(40573i, var_1.x), vec2<i32>(var_3.a, -37809i)))), arg_2.b)).c;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(u_input.a.x), abs(~vec4<i32>(-2907i, -2147483647i, 2147483647i, arg_1.b.x)), arg_1.b).c.a.x * _wgslsmith_f_op_f32(-func_4(Struct_1(arg_1.c.a), 1i, arg_1).a.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1556f)), arg_0.x)))));
    global0 = array<Struct_1, 2>();
    var var_1 = func_1(Struct_2(-arg_1.a, _wgslsmith_add_vec2_i32(select(vec2<i32>(arg_1.a, u_input.c.x), vec2<i32>(u_input.c.x, u_input.b.x), vec2<bool>(true, true)), _wgslsmith_sub_vec2_i32(-u_input.b.zx, u_input.d)), func_2(Struct_3(44446u), -vec4<i32>(arg_1.a, arg_1.b.x, 0i, arg_1.a), _wgslsmith_add_vec2_i32(arg_1.b, arg_1.b)).c));
    return func_2(Struct_3(firstTrailingBit(~4294967295u)), vec4<i32>(_wgslsmith_clamp_i32(~countOneBits(u_input.d.x), arg_1.b.x, -26630i), min(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -10057i, -2147483647i)), u_input.c), 2147483647i), _wgslsmith_mult_i32((arg_1.b.x << (4294967295u % 32u)) ^ 2147483647i, 2147483647i), abs(countOneBits(0i) | -arg_1.b.x)), reverseBits(countOneBits(vec2<i32>(-u_input.d.x, -2120i)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f) * _wgslsmith_f_op_f32(f32(-1f) * -660f)), 590f, _wgslsmith_f_op_f32(f32(-1f) * -190f)))), Struct_2(u_input.c.x, ~vec2<i32>(u_input.d.x, u_input.c.x), func_4(global0[_wgslsmith_index_u32(13567u, 2u)], abs(~(-32599i)), func_2(func_1(Struct_2(1i, vec2<i32>(-2147483647i, 12637i), global0[_wgslsmith_index_u32(u_input.a.x, 2u)])), -vec4<i32>(6680i, u_input.c.x, u_input.c.x, -2147483647i), _wgslsmith_sub_vec2_i32(u_input.b.zz, u_input.d)))), _wgslsmith_f_op_f32(sign(func_2(Struct_3(1u), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 35263i, -55963i), vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.b.x)), vec4<i32>(2147483647i, -27373i, u_input.d.x, u_input.b.x) << (vec4<u32>(u_input.e.x, u_input.a.x, u_input.e.x, 60035u) % vec4<u32>(32u))), u_input.d).c.a.x)));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_1 = Struct_2(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x) >> ((_wgslsmith_clamp_u32(4294967295u, ~u_input.e.x, 45322u) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.e.x, u_input.a.x, u_input.e.x)), ~u_input.a)) % 32u), u_input.d, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a.x)), 1438f, true)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(1421f + var_0.a.x)))));
    var var_2 = func_1(func_2(Struct_3(_wgslsmith_mult_u32(4294967295u, u_input.e.x) << (_wgslsmith_div_u32(u_input.a.x, 97577u) % 32u)), ~(~(-vec4<i32>(u_input.b.x, var_1.b.x, u_input.b.x, -13986i))), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(vec4<u32>(~var_2.a, ~0u, 0u >> (1u % 32u), 0u))), -(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, var_1.a, u_input.d.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, var_1.a, 4557i)) & _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, 1i, -14121i, -4619i)), vec4<i32>(var_1.a, u_input.b.x, 1i, u_input.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 529f, var_0.a.x, var_0.a.x), vec4<f32>(var_1.c.a.x, -1648f, 322f, 1000f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1395f, var_1.c.a.x, -1583f) + vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -341f)) * vec4<f32>(737f, -440f, 680f, -492f)))), _wgslsmith_div_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(638u, 1u), u_input.e.x), 32229u), _wgslsmith_add_vec2_u32(vec2<u32>(func_1(func_2(Struct_3(4294967295u), vec4<i32>(2147483647i, 11027i, u_input.c.x, -5397i), vec2<i32>(var_1.a, 0i))).a, var_2.a), vec2<u32>(13391u, u_input.e.x)));
}

