struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec4<i32>(i32(-2147483648), i32(-2147483648), 22736i, 1i), vec2<i32>(45147i, 1i));

var<private> global1: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1496f, -976f, _wgslsmith_f_op_f32(step(189f, -1280f)))))));
    global1 = arg_1;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 459f, _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-576f, var_0.x, 1433f)))))))));
    let var_1 = Struct_1(~arg_0.a, abs(vec4<i32>(global1.a.b.x, global1.a.b.x, abs(global0.c.x), 1i)) & arg_0.b, vec2<i32>(-10784i, -(~_wgslsmith_dot_vec4_i32(global1.a.b, vec4<i32>(2147483647i, 2147483647i, global1.c.c.x, -21455i)))));
    let var_2 = Struct_4(vec2<i32>(-1i) * -vec2<i32>(1i, -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 392f, 1023f, 421f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1600f, 1088f, var_0.x, 1000f)))))), global1.a.a, firstLeadingBit(select(~0u, abs(global1.c.a), all(vec4<bool>(global1.b.x, global1.b.x, arg_1.b.x, false)))));
    return max(_wgslsmith_div_vec2_u32(vec2<u32>(~var_1.a, ~1u) >> (select(arg_2, vec2<u32>(34258u, var_2.c), u_input.a < 55897i) % vec2<u32>(32u)), countOneBits(arg_2)), ~(~firstLeadingBit(select(vec2<u32>(arg_0.a, arg_1.c.a), arg_2, arg_1.b.zx))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_1 {
    global1 = Struct_3(Struct_1(global1.a.a, global1.a.b, countOneBits(vec2<i32>(arg_2.x, 2147483647i))), vec3<bool>(any(!(!vec3<bool>(arg_1.x, arg_0.x, false))), !(true | all(vec3<bool>(global1.b.x, false, false))), !select(global1.b.x, true, any(vec4<bool>(false, false, global1.b.x, false)))), global1.c);
    var var_0 = ~(~reverseBits(func_3(Struct_1(0u, global1.c.b, vec2<i32>(2147483647i, arg_2.x)), Struct_3(global1.a, global1.b, Struct_1(1u, vec4<i32>(global1.a.b.x, global0.b.x, u_input.a, global1.a.b.x), vec2<i32>(global0.c.x, -8951i))), vec2<u32>(global1.c.a, 16556u))) >> (vec2<u32>(global1.a.a, 4294967295u ^ ~global0.a) % vec2<u32>(32u)));
    var_0 = firstTrailingBit(min(countOneBits(func_3(Struct_1(1u, vec4<i32>(global0.b.x, arg_2.x, 1i, -7799i), vec2<i32>(global0.b.x, 0i)), Struct_3(global1.c, vec3<bool>(true, arg_1.x, false), Struct_1(4294967295u, vec4<i32>(33699i, u_input.a, arg_2.x, 15127i), vec2<i32>(54598i, global0.c.x))), vec2<u32>(global0.a, 40513u))), vec2<u32>(firstTrailingBit(57671u), global1.a.a)));
    global0 = Struct_1(~var_0.x & reverseBits(select(global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 29219u, 85113u, var_0.x), vec4<u32>(global1.a.a, global1.a.a, 26548u, var_0.x)), true)), -_wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.c.c.x, 8168i, global1.c.c.x, arg_2.x), vec4<i32>(-78704i, global1.a.b.x, arg_2.x, 1i))), ~vec4<i32>(u_input.a, global0.b.x, global1.c.b.x, global1.c.b.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, arg_2.x) & global1.c.c, _wgslsmith_div_vec2_i32(global1.a.b.wx << (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a, 69478i))), min(-_wgslsmith_mult_i32(-19026i, -37835i), _wgslsmith_mult_i32(max(-2147483647i, arg_2.x), u_input.a))));
    global1 = Struct_3(Struct_1(_wgslsmith_add_u32(27403u, ~min(global1.a.a, 59204u)), min(-vec4<i32>(-10352i, global1.c.c.x, 1i, u_input.a), _wgslsmith_div_vec4_i32(~vec4<i32>(0i, 28078i, 0i, 1i), vec4<i32>(global0.b.x, global1.c.c.x, 72694i, 1i))), -reverseBits(-vec2<i32>(2147483647i, global0.c.x))), vec3<bool>(global1.b.x | true, !select(false, arg_0.x & arg_1.x, global0.c.x == 24933i), all(vec2<bool>(false, any(vec2<bool>(global1.b.x, true))))), Struct_1(firstTrailingBit(select(func_3(Struct_1(79009u, global0.b, vec2<i32>(global0.c.x, 0i)), Struct_3(global1.a, arg_1.zyw, Struct_1(global1.c.a, vec4<i32>(-13071i, 1i, global1.c.c.x, global0.b.x), global1.a.b.zy)), vec2<u32>(var_0.x, 35881u)).x, ~global1.c.a, arg_1.x && arg_1.x)), vec4<i32>(24963i, -abs(global1.c.c.x), abs(-6898i) | min(2147483647i, global1.c.c.x), reverseBits(_wgslsmith_mult_i32(-38976i, -33152i))), global0.b.wy));
    return global1.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    var var_0 = !global1.b;
    let var_1 = arg_0.x << ((arg_0.x ^ 1u) % 32u);
    var var_2 = false;
    let var_3 = Struct_1(~_wgslsmith_mod_u32(85374u, func_2(vec2<bool>(global1.b.x, var_0.x), vec4<bool>(true, false, false, true), select(vec3<i32>(0i, arg_1.b.x, 1i), vec3<i32>(global1.c.b.x, -1i, -2147483647i), global1.b)).a), -(~(-(~vec4<i32>(global1.c.b.x, -2147483647i, u_input.a, -1i)))), vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), global0.b.yx), (i32(-1i) * -2147483647i) ^ -global0.b.x) | global1.c.c);
    let var_4 = Struct_4(-(~(~vec2<i32>(arg_1.c.x, 0i))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, -1128f, -1941f, -969f))))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(74694u, arg_1.a), ~24368u), min(1u, ~1u), global1.a.a, 45725u), ~reverseBits(arg_2)), var_3.a);
    return true && any(!(!select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.x, global1.b.x, global1.b.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> vec4<u32> {
    return ~(~firstTrailingBit(~abs(vec4<u32>(arg_1.d, global0.a, 4294967295u, arg_1.c))));
}

fn func_6(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    global1 = Struct_3(Struct_1(~func_3(func_2(global1.b.xy, vec4<bool>(false, arg_3.x, global1.b.x, global1.b.x), global1.c.b.wyx), arg_2, arg_0.xx).x, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(global1.c.b, _wgslsmith_mod_vec4_i32(global1.a.b, global1.c.b)), ~abs(global1.c.b)), _wgslsmith_sub_vec2_i32(abs(select(global1.c.c, global1.c.b.xw, global1.b.yy)), countOneBits(firstTrailingBit(vec2<i32>(35874i, 1i))))), select(!select(global1.b, !arg_2.b, arg_2.b), !arg_3.zzw, arg_2.b.x), global1.a);
    let var_0 = Struct_2(vec2<i32>(-34427i, -min(max(-26769i, -35386i), 0i)));
    var var_1 = Struct_1(arg_2.a.a, vec4<i32>(abs(-21861i), -u_input.a, arg_1, u_input.a), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, arg_2.c.c.x), vec2<i32>(-22535i, global0.c.x)), abs(~(~vec2<i32>(-1i, 2147483647i)))));
    return var_0;
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(624f - -1000f), _wgslsmith_div_f32(563f, 286f))) * _wgslsmith_f_op_f32(f32(-1f) * -197f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(749f, 105f) - _wgslsmith_f_op_f32(trunc(-1065f))))));
    global0 = global1.c;
    var var_1 = abs(abs(~(~abs(vec4<u32>(global1.c.a, global1.c.a, global0.a, 14321u)))));
    let var_2 = var_1.x;
    let var_3 = countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(max(abs(vec2<u32>(1u, 41808u)), ~var_1.yz), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 29314u), var_1.yx) ^ _wgslsmith_mult_vec2_u32(var_1.wz, vec2<u32>(1u, 0u))), vec2<u32>(select(var_1.x >> (var_1.x % 32u), global0.a, global1.b.x && global1.b.x), _wgslsmith_div_u32(global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global0.a, 52188u, var_1.x), vec4<u32>(global0.a, 1u, 4294967295u, global0.a))))));
    return Struct_3(func_2(vec2<bool>(true, true), vec4<bool>(true, true, true, true), -(~vec3<i32>(-22482i, -2147483647i, -45376i))), select(vec3<bool>(global1.b.x && true, ~50904u <= var_3.x, global1.b.x && !global1.b.x), global1.b, true), global1.a);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_3(arg_2, !(!(!select(vec3<bool>(global1.b.x, global1.b.x, arg_1.x), global1.b, vec3<bool>(global1.b.x, arg_1.x, true)))), arg_2);
    let var_0 = func_7(vec2<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.a.b.xw, vec2<i32>(0i, arg_0.a.x)), ~2147483647i), firstTrailingBit(_wgslsmith_div_i32(global1.c.b.x, arg_2.c.x)))), func_6(func_5(arg_0.b.x, Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(-26271i, -603i), arg_2.b.yx), _wgslsmith_div_vec4_f32(arg_0.b, arg_0.b), firstTrailingBit(4294967295u), 35602u), Struct_2(-vec2<i32>(u_input.a, arg_0.a.x)), func_4(~vec4<u32>(global1.a.a, arg_0.c, 1u, 1u), func_2(vec2<bool>(true, true), vec4<bool>(false, arg_1.x, global1.b.x, global1.b.x), vec3<i32>(u_input.a, -1i, 0i)), vec4<u32>(global1.c.a, global0.a, 33959u, arg_0.d))), ~(-23453i), Struct_3(Struct_1(firstTrailingBit(1u), -vec4<i32>(global0.b.x, global0.c.x, arg_0.a.x, 0i), ~arg_0.a), vec3<bool>(global1.c.c.x < global0.b.x, all(vec4<bool>(false, global1.b.x, global1.b.x, false)), false), func_2(vec2<bool>(false, global1.b.x), select(vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(false, arg_1.x, true, arg_1.x), true), vec3<i32>(arg_0.a.x, arg_0.a.x, 11092i))), select(vec4<bool>(true, !arg_1.x, -456f >= arg_0.b.x, 1i > u_input.a), vec4<bool>(true, select(global1.b.x, true, false), all(global1.b), true), !vec4<bool>(arg_1.x, false, false, true))), arg_0.a.x);
    let var_1 = arg_0;
    global1 = func_7(arg_0.a, func_6(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global1.a.a, 23075u, var_1.c, 61982u)), abs(vec4<u32>(1u, global1.a.a, 1u, 38624u)) | ~vec4<u32>(0u, 1u, 1u, global1.c.a)), 27160i, Struct_3(var_0.a, vec3<bool>(var_1.b.x <= 1173f, true, var_0.b.x), func_7(reverseBits(vec2<i32>(-2147483647i, 0i)), Struct_2(global0.b.wz), global0.b.x).a), select(vec4<bool>(var_0.b.x, true, false, false), vec4<bool>(global1.b.x, !global1.b.x, any(arg_1), true), select(select(vec4<bool>(var_0.b.x, var_0.b.x, false, false), vec4<bool>(true, arg_1.x, var_0.b.x, false), vec4<bool>(global1.b.x, arg_1.x, false, false)), select(vec4<bool>(arg_1.x, true, global1.b.x, var_0.b.x), vec4<bool>(global1.b.x, var_0.b.x, false, var_0.b.x), vec4<bool>(true, true, global1.b.x, arg_1.x)), var_0.b.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~arg_2.b.wwz, _wgslsmith_mod_vec3_i32(~vec3<i32>(-14467i, arg_2.c.x, var_0.a.c.x), countOneBits(arg_2.b.wzx))), vec3<i32>(global1.a.b.x, global1.a.c.x, u_input.a)));
    var var_2 = select(~_wgslsmith_div_u32(~(~global0.a), 28073u), firstTrailingBit(_wgslsmith_div_u32(arg_0.c ^ func_7(vec2<i32>(global0.b.x, -2147483647i), Struct_2(vec2<i32>(-1229i, -24765i)), 16645i).a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, 66070u), vec3<u32>(1u, arg_2.a, 27967u) >> (vec3<u32>(56182u, 18734u, 3152u) % vec3<u32>(32u))))), any(vec2<bool>(any(!vec3<bool>(var_0.b.x, var_0.b.x, true)), true)));
    return Struct_1(11685u, vec4<i32>(_wgslsmith_div_i32(~71587i << (global1.c.a % 32u), ~(-2147483647i) ^ (-9814i >> (var_1.d % 32u))), -1i, ~abs(global0.c.x), _wgslsmith_dot_vec4_i32(max(global1.c.b, vec4<i32>(35815i, 2147483647i, u_input.a, u_input.a)), arg_2.b)), firstTrailingBit(min(-vec2<i32>(2147483647i, arg_2.c.x), vec2<i32>(1i, 1i))));
}

fn func_8(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_2 {
    global1 = Struct_3(arg_0.a, !func_7(vec2<i32>(1i, 1i), func_6(vec4<u32>(global1.a.a, 4294967295u, 1u, 2688u) ^ vec4<u32>(arg_0.c.a, 41690u, global1.a.a, 551u), -15690i, func_7(vec2<i32>(arg_3.a.x, 0i), Struct_2(global0.b.ww), -3015i), vec4<bool>(arg_0.b.x, true, global1.b.x, global1.b.x)), arg_3.a.x).b, arg_0.a);
    return Struct_2(arg_3.a);
}

fn func_9(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = func_7(vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(global1.c.b.yw) & global0.b.ww, global0.b.xz), (_wgslsmith_mult_i32(-1i, global1.c.b.x) << (arg_0 % 32u)) << (global0.a % 32u)), func_6(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(global0.a, global1.a.a, 9185u, global1.c.a)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.a, 4294967295u, arg_0, global0.a), vec4<u32>(global0.a, 0u, arg_0, global0.a))), 22078i, Struct_3(func_2(!vec2<bool>(global1.b.x, true), vec4<bool>(false, global1.b.x, true, global1.b.x), arg_2), global1.b, Struct_1(global1.a.a, vec4<i32>(-91640i, arg_2.x, arg_2.x, global1.c.b.x), select(arg_2.xz, vec2<i32>(arg_1.a.x, 2147483647i), true))), !(!vec4<bool>(true, true, global1.b.x, false))), _wgslsmith_sub_i32(0i, -8506i << (global1.a.a % 32u)));
    let var_1 = arg_1;
    var var_2 = func_7(global1.a.b.xy, func_6(max(vec4<u32>(64409u, global1.c.a, global1.c.a, var_0.c.a), vec4<u32>(32624u, countOneBits(var_0.c.a), 4294967295u, global1.c.a)), global1.c.b.x, Struct_3(Struct_1(~global1.a.a, vec4<i32>(-35979i, -19385i, 23123i, 57610i), ~global1.c.c), vec3<bool>(any(vec2<bool>(true, global1.b.x)), !global1.b.x, !global1.b.x), func_2(vec2<bool>(false, true), !vec4<bool>(var_0.b.x, false, var_0.b.x, global1.b.x), arg_2)), !(!(!vec4<bool>(false, var_0.b.x, true, false)))), ~_wgslsmith_clamp_i32(abs(-var_1.a.x), -2147483647i, -1315i)).b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-652f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)), -111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(685f + -1019f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1055f, -264f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, 259f, -332f, 400f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2705f, 1869f, -1355f, -1509f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1171f, 1490f, -677f, 960f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, -837f, 2354f, 370f) * vec4<f32>(1000f, 425f, 851f, 958f)), vec4<f32>(-1609f, 1431f, 1000f, 1000f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1299f, -180f, 877f, -896f), _wgslsmith_f_op_vec4_f32(vec4<f32>(554f, -596f, 679f, 136f) - vec4<f32>(-419f, -2009f, 751f, 1890f)))))));
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(global1.a.b.x, -global1.a.b.x, 1i, select(~(-32878i), func_2(func_7(vec2<i32>(-35465i, -15175i), arg_1, var_1.a.x).b.yx, vec4<bool>(true, true, var_0.b.x, false), vec3<i32>(2147483647i, -55218i, 12083i)).b.x, _wgslsmith_f_op_f32(select(var_3.x, 514f, false)) > var_3.x)), global0.b);
    return _wgslsmith_mult_vec3_u32(select(vec3<u32>(_wgslsmith_clamp_u32(global0.a, 46437u, global0.a), global1.c.a ^ arg_0, var_0.c.a), ~vec3<u32>(var_0.c.a, arg_0, 4294967295u), global1.b.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, 4294967295u, arg_0) ^ vec3<u32>(global1.a.a, 1u, global0.a), min(vec3<u32>(arg_0, 2354u, var_0.a.a), vec3<u32>(global0.a, 1u, 1u)))) & vec3<u32>(103190u, var_0.c.a, (var_0.a.a ^ global1.c.a) >> ((func_5(var_3.x, Struct_4(vec2<i32>(arg_2.x, 2147483647i), vec4<f32>(var_3.x, 488f, -1000f, var_3.x), global0.a, var_0.c.a), Struct_2(global1.a.c), true).x & ~0u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_9(~((global0.a & global0.a) >> (27081u % 32u)), func_8(Struct_3(global1.c, !global1.b, func_1(Struct_4(vec2<i32>(global0.b.x, -14710i), vec4<f32>(953f, -1526f, 1497f, 1208f), 18959u, global1.a.a), global1.b.xz, Struct_1(global1.c.a, global1.c.b, global1.a.b.wy))), _wgslsmith_f_op_f32(abs(628f)), global0.c, Struct_4(global1.c.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1479f, 267f, 537f, -433f), vec4<f32>(-2051f, -715f, 1184f, -1000f))), _wgslsmith_div_u32(0u, global0.a), _wgslsmith_mod_u32(0u, global1.a.a))), vec3<i32>(-68640i, 1i, -35620i)));
    global1 = Struct_3(global1.a, vec3<bool>(false && (u_input.a != firstLeadingBit(global1.a.c.x)), true, !(global1.b.x | global1.b.x)), func_2(!(!(!vec2<bool>(global1.b.x, global1.b.x))), vec4<bool>(global1.c.a == ~4294967295u, all(vec4<bool>(global1.b.x, false, true, global1.b.x)) && (global1.c.b.x > -10390i), false, global1.b.x), max(global1.c.b.xwx, vec3<i32>(-78611i, global1.a.c.x, -60321i << (global1.a.a % 32u)))));
    var var_1 = func_6(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(0u, 1u, var_0.x, 1u)), vec4<u32>(4294967295u, global0.a, var_0.x, global0.a) ^ vec4<u32>(26870u, 0u, global1.a.a, 21159u), abs(vec4<u32>(var_0.x, 1u, 18544u, global1.a.a))), vec4<u32>(32407u, 6307u, 4294967295u, ~var_0.x)), func_1(Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-45757i, global0.c.x) & global0.c, countOneBits(global0.b.yy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-143f, -449f, -1000f, 221f))) - vec4<f32>(661f, 1615f, -1215f, 1568f)), 89995u, 59891u), global1.b.yy, Struct_1(_wgslsmith_mod_u32(max(18784u, var_0.x), var_0.x), ~firstLeadingBit(global0.b), vec2<i32>(u_input.a << (49622u % 32u), -1i))).b.x, Struct_3(Struct_1(global0.a ^ abs(global0.a), ~global0.b, ~vec2<i32>(global1.c.c.x, global0.c.x)), vec3<bool>(any(global1.b.zz), any(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true)), all(vec4<bool>(false, global1.b.x, true, false))), func_1(Struct_4(~vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(210f, -815f, 570f, -1000f), vec4<f32>(-1000f, -1113f, 1000f, -1848f))), global1.a.a & 25444u, global0.a), !select(global1.b.zz, global1.b.yy, vec2<bool>(false, false)), global1.a)), !(!(!select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, false), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x)))));
    var_1 = func_8(Struct_3(global1.a, global1.b, func_2(select(!vec2<bool>(global1.b.x, true), select(vec2<bool>(true, true), global1.b.yx, false), vec2<bool>(true, true)), select(select(vec4<bool>(true, global1.b.x, true, false), vec4<bool>(false, false, false, global1.b.x), true), vec4<bool>(false, global1.b.x, global1.b.x, false), false && global1.b.x), min(vec3<i32>(-6657i, var_1.a.x, 1i), global1.c.b.wzy & global0.b.wzz))), _wgslsmith_f_op_f32(round(-346f)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(global0.b.ww ^ func_6(vec4<u32>(1u, 40557u, 1u, 63098u), -2147483647i, Struct_3(global1.a, global1.b, global1.a), vec4<bool>(false, global1.b.x, false, global1.b.x)).a, vec2<i32>(_wgslsmith_clamp_i32(2147483647i, global0.b.x, -24768i), 1i)), -firstLeadingBit(~vec2<i32>(-2147483647i, global0.c.x))), Struct_4(global0.b.zx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1074f, -584f, -708f, -899f), vec4<f32>(-273f, -2077f, 299f, 802f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(575f, -1570f, -884f, 559f), vec4<f32>(-143f, 2080f, 1444f, -644f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1804f, 743f, 204f, 200f) * vec4<f32>(1182f, 231f, 644f, -218f)))))), ~func_9(4294967295u, Struct_2(vec2<i32>(u_input.a, var_1.a.x)), vec3<i32>(1i, var_1.a.x, u_input.a)).x << (~(~0u) % 32u), ~var_0.x));
    let var_2 = global0.a;
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1693f, 1328f, -1677f)), vec3<f32>(1f, 1f, 1f))) + vec3<f32>(_wgslsmith_f_op_f32(-353f - 1656f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1881f, 106f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) * -1000f))), ~0u, _wgslsmith_div_vec4_i32(global0.b, vec4<i32>(select(-2147483647i, func_8(Struct_3(Struct_1(4294967295u, global0.b, vec2<i32>(2147483647i, 0i)), vec3<bool>(false, global1.b.x, global1.b.x), global1.a), -1577f, var_1.a, Struct_4(var_1.a, vec4<f32>(-737f, 1205f, -1212f, -1151f), 4294967295u, 0u)).a.x, select(global1.b.x, true, global1.b.x)), ~(-2147483647i), -2147483647i, -(u_input.a ^ var_1.a.x))), ~12863u);
}

