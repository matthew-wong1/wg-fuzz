struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = Struct_3(abs(_wgslsmith_mult_u32(u_input.a, ~max(global0.a, u_input.a))), Struct_2(vec2<i32>(-(~global0.d), u_input.b.x)), global0.c, 0i);
    global0 = Struct_3(~u_input.a, global0.b, vec3<bool>(global0.c.x, global0.c.x, false), i32(-1i) * -1i);
    global0 = Struct_3(0u, Struct_2(global0.b.a), !vec3<bool>(all(select(global0.c, global0.c, global0.c.x)), true, !global0.c.x || global0.c.x), global0.d);
    var var_0 = global0.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1459f, -279f)) + 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -665f))), _wgslsmith_f_op_f32(trunc(1048f)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = global0.b;
    global0 = Struct_3(~global0.a, global0.b, !(!global0.c), countOneBits(i32(-1i) * -2147483647i));
    let var_1 = arg_0.a;
    global0 = Struct_3(48740u, global0.b, vec3<bool>(~max(u_input.a, arg_2.a.x) > ~(~4294967295u), global0.c.x, true), min(var_0.a.x, -2147483647i));
    global0 = Struct_3(31079u, global0.b, vec3<bool>(true, any(global0.c), all(vec4<bool>(any(global0.c.yy), true, true, true))), -1i);
    return vec3<bool>(any(select(vec2<bool>(global0.d == global0.d, true), global0.c.xx, !select(vec2<bool>(true, global0.c.x), vec2<bool>(global0.c.x, arg_2.d), true))), !any(vec3<bool>(true, true, true)), (firstLeadingBit(arg_2.b.x) >= 1i) && true);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> vec3<u32> {
    global0 = Struct_3(30585u, global0.b, select(!select(vec3<bool>(global0.c.x, false, true), !vec3<bool>(global0.c.x, false, true), !vec3<bool>(false, global0.c.x, global0.c.x)), func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -403f)), _wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(20127u, arg_1.x, 0u, arg_1.x)), _wgslsmith_f_op_f32(func_3())), vec2<f32>(_wgslsmith_f_op_f32(abs(-162f)), -268f), Struct_1(vec4<u32>(7972u, 4294967295u, u_input.a, 35118u), vec3<i32>(u_input.b.x, 2147483647i, -2147483647i), u_input.b.x ^ u_input.b.x, false, vec3<i32>(17603i, u_input.b.x, global0.b.a.x)), (vec3<i32>(global0.d, -19134i, 67860i) & vec3<i32>(global0.d, -1i, u_input.b.x)) | _wgslsmith_add_vec3_i32(vec3<i32>(global0.b.a.x, global0.b.a.x, -15407i), vec3<i32>(1i, u_input.b.x, global0.d))), !global0.c), firstLeadingBit(global0.b.a.x >> (~arg_0 % 32u)));
    global0 = Struct_3(select(countOneBits(~_wgslsmith_div_u32(global0.a, 0u)), ~(u_input.a | 1u), !all(vec2<bool>(true, false))), Struct_2(u_input.b), global0.c, ~(~(-29301i)) ^ -((-1i & u_input.b.x) << (~1u % 32u)));
    let var_0 = !(!vec3<bool>(true, all(select(vec4<bool>(false, false, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, false, true), vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x))), true));
    global0 = Struct_3(u_input.a, Struct_2(vec2<i32>(u_input.b.x, abs(global0.d))), select(vec3<bool>(false, var_0.x, var_0.x), select(select(!var_0, select(var_0, vec3<bool>(false, global0.c.x, true), var_0), global0.c), !select(vec3<bool>(global0.c.x, true, true), vec3<bool>(true, var_0.x, var_0.x), false), false), true), u_input.b.x);
    var var_1 = select(!select(!vec4<bool>(true, var_0.x, false, true), vec4<bool>(!global0.c.x, true, arg_1.x != u_input.a, global0.c.x), !select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, false, true, false), true)), select(!vec4<bool>(global0.c.x, true, var_0.x == var_0.x, true), select(select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, global0.c.x, global0.c.x), vec4<bool>(false, false, true, var_0.x), vec4<bool>(false, false, false, false)), true), vec4<bool>(global0.c.x, global0.a <= 0u, true, func_4(Struct_4(vec2<f32>(-392f, 764f), arg_1, 917f), vec2<f32>(-230f, 167f), Struct_1(vec4<u32>(global0.a, u_input.a, u_input.a, global0.a), vec3<i32>(-1i, u_input.b.x, -7751i), 0i, global0.c.x, vec3<i32>(global0.b.a.x, -61391i, 0i)), vec3<i32>(global0.d, -35195i, -42117i)).x), !(!vec4<bool>(global0.c.x, true, true, true))), true), vec4<bool>(false, all(select(var_0.xy, vec2<bool>(false, var_0.x), select(global0.c.xx, global0.c.xy, global0.c.yx))), (true != !global0.c.x) | var_0.x, true));
    return ~vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, arg_1.x), 4294967295u), _wgslsmith_mod_u32(arg_1.x, 47664u), min(u_input.a, 4294967295u));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = true;
    let var_1 = vec2<i32>(-2147483647i, 0i);
    var_0 = func_4(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-838f)))), 636f), vec4<u32>(_wgslsmith_mod_u32(u_input.a, ~56800u), global0.a, 1u, arg_2.a), -1095f), vec2<f32>(-537f, _wgslsmith_f_op_f32(176f - -1983f)), Struct_1(arg_3, -vec3<i32>(1i, -global0.d, ~(-30528i)), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(2147483647i), u_input.b.x, ~global0.b.a.x), vec3<i32>(-8939i, ~(-29898i), -70351i)), (arg_2.a & ~global0.a) == select(29382u, ~0u, arg_2.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, arg_2.b.a.x, _wgslsmith_add_i32(-9656i, -1i)), select(abs(vec3<i32>(1i, arg_2.b.a.x, arg_1.a.x)), vec3<i32>(-2147483647i, 2147483647i, -2147483647i), all(vec4<bool>(true, true, true, false))))), vec3<i32>(-_wgslsmith_clamp_i32(1i, global0.b.a.x, global0.d), global0.b.a.x, var_1.x) ^ select(_wgslsmith_add_vec3_i32(vec3<i32>(37474i, global0.d, -1i), vec3<i32>(-37609i, -1i, 1i)), -vec3<i32>(var_1.x, arg_2.b.a.x, global0.b.a.x), func_4(Struct_4(vec2<f32>(-1253f, 579f), arg_3, -183f), vec2<f32>(1000f, -2131f), Struct_1(vec4<u32>(global0.a, global0.a, 0u, 4294967295u), vec3<i32>(var_1.x, var_1.x, -35351i), global0.b.a.x, global0.c.x, vec3<i32>(1i, -26979i, var_1.x)), vec3<i32>(u_input.b.x, 0i, -33217i) | vec3<i32>(arg_1.a.x, -1i, -1i)))).x;
    let var_2 = _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 18064i, 867i)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.x, arg_2.a, arg_0.x, 4294967295u), arg_3) % vec4<u32>(32u)), select(~select(vec4<i32>(-1i, global0.d, arg_1.a.x, 1i), vec4<i32>(-2147483647i, -1663i, global0.d, -26846i), vec4<bool>(false, false, global0.c.x, global0.c.x)), countOneBits(vec4<i32>(var_1.x, -2147483647i, -2147483647i, -2147483647i) | vec4<i32>(arg_2.d, 2092i, -2147483647i, -1i)), select(vec4<bool>(false, false, arg_2.c.x, global0.c.x), vec4<bool>(true, true, arg_2.c.x, global0.c.x), func_4(Struct_4(vec2<f32>(808f, -442f), arg_3, 251f), vec2<f32>(1017f, 850f), Struct_1(arg_3, vec3<i32>(arg_1.a.x, 19406i, 1i), arg_2.b.a.x, global0.c.x, vec3<i32>(global0.b.a.x, -5797i, var_1.x)), vec3<i32>(2147483647i, var_1.x, u_input.b.x)).x))) & -2147483647i;
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1904f, -1098f)), _wgslsmith_f_op_f32(f32(-1f) * -273f), !global0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(380f + -638f)))), abs(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, arg_2.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 15730u), vec2<u32>(arg_2.a, arg_3.x), vec2<u32>(4294967295u, 32769u))), min(1u, arg_0.x), 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-152f)) * _wgslsmith_f_op_f32(abs(695f))))));
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_4 {
    var var_0 = any(arg_1.yy);
    let var_1 = arg_2;
    var_0 = false;
    global0 = func_5(_wgslsmith_clamp_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(49871u, arg_2.a.x, 0u), vec3<u32>(1u, 38714u, 19450u), select(vec3<u32>(44933u, 0u, var_1.a.x), vec3<u32>(0u, 4294967295u, arg_2.a.x), false))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, global0.a), arg_2.a.x, _wgslsmith_clamp_u32(33767u, var_1.a.x, var_1.a.x)), ~vec3<u32>(13026u, 42873u, 0u)), select(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(131391u, 37935u, 18848u, u_input.a), vec4<u32>(4742u, global0.a, 4294967295u, arg_2.a.x)), arg_2.a), ~arg_2.a.ywx, arg_2.a.x != _wgslsmith_sub_u32(73977u, u_input.a))), Struct_2(vec2<i32>(-5244i, -arg_2.e.x) << (~(~arg_2.a.yz) % vec2<u32>(32u))), Struct_3(abs(~arg_3), Struct_2(_wgslsmith_add_vec2_i32(min(var_1.b.yy, vec2<i32>(-26760i, 2147483647i)), vec2<i32>(663i, u_input.b.x) ^ global0.b.a)), !vec3<bool>(select(arg_1.x, true, var_1.d), select(var_1.d, false, false), true), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.e.x, global0.b.a.x, 1i), select(vec3<i32>(1i, u_input.b.x, 2147483647i), var_1.e, arg_1)) & 2147483647i), ~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a, 1u, 8223u, 4294967295u) ^ vec4<u32>(u_input.a, 77109u, var_1.a.x, var_1.a.x)), var_1.a, firstTrailingBit(abs(vec4<u32>(u_input.a, 17841u, var_1.a.x, arg_2.a.x)))));
    let var_2 = ~vec3<i32>(18638i | _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_2.c, var_1.b.x), vec2<i32>(32967i, var_1.b.x), arg_1.x), global0.b.a), reverseBits(func_5(var_1.a.yyx, global0.b, Struct_3(13127u, Struct_2(var_1.e.yz), vec3<bool>(global0.c.x, arg_1.x, arg_1.x), 50822i), _wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(9488u, arg_2.a.x, var_1.a.x, arg_2.a.x))).d), -2147483647i);
    return Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1027f) * vec2<f32>(477f, arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-326f, arg_0)))))), vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(60755u, firstLeadingBit(4294967295u)), ~(~arg_2.a.x), 88955u), _wgslsmith_sub_u32(var_1.a.x, _wgslsmith_dot_vec3_u32(select(var_1.a.zzx, var_1.a.wzz, var_1.d), ~vec3<u32>(u_input.a, global0.a, u_input.a))), 4294967295u), arg_0);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    global0 = func_5(firstLeadingBit(~vec3<u32>(arg_1.b.x, arg_2.b.x, arg_2.b.x)) | firstLeadingBit(vec3<u32>(4294967295u, arg_1.b.x, select(64983u, global0.a, true))), global0.b, func_5(arg_2.b.zxy, func_5(arg_1.b.yzx, Struct_2(u_input.b), Struct_3(~arg_2.b.x, Struct_2(arg_0.wz), select(vec3<bool>(global0.c.x, global0.c.x, true), vec3<bool>(global0.c.x, global0.c.x, true), global0.c), u_input.b.x), arg_2.b).b, Struct_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(6954u, global0.a, 59871u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 33183u, 4294967295u), vec3<u32>(15410u, 33544u, 0u))), func_5(max(arg_2.b.wxw, vec3<u32>(u_input.a, u_input.a, 27951u)), global0.b, Struct_3(0u, Struct_2(global0.b.a), vec3<bool>(false, false, false), u_input.b.x), vec4<u32>(0u, 0u, 1u, 1u)).b, select(global0.c, !global0.c, true), _wgslsmith_div_i32(i32(-1i) * -2147483647i, arg_0.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.b.yyy >> (arg_1.b.xyx % vec3<u32>(32u)), vec3<u32>(arg_1.b.x, u_input.a, u_input.a)), u_input.a, u_input.a, select(abs(global0.a), _wgslsmith_mult_u32(arg_1.b.x, u_input.a), global0.c.x))), firstLeadingBit(~vec4<u32>(~arg_1.b.x, ~u_input.a, _wgslsmith_mod_u32(3361u, global0.a), ~0u)));
    let var_0 = Struct_2(countOneBits(-u_input.b));
    var var_1 = ~1u;
    global0 = Struct_3(1u, Struct_2(global0.b.a), !vec3<bool>(true, true, global0.c.x & true), -2147483647i);
    var var_2 = _wgslsmith_f_op_f32(sign(arg_2.c));
    return func_5(countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_2.b.x, 25573u), ~vec3<u32>(arg_2.b.x, 68620u, arg_1.b.x))) >> ((~vec3<u32>(arg_1.b.x, global0.a, arg_2.b.x) | vec3<u32>(~global0.a, arg_1.b.x, ~58824u)) % vec3<u32>(32u)), func_5(vec3<u32>(arg_1.b.x, reverseBits(4294967295u), func_2(arg_1.b.x, arg_1.b).x), var_0, Struct_3(~8709u, var_0, !(!global0.c), reverseBits(~arg_0.x)), ~(~(~arg_1.b))).b, func_5(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), _wgslsmith_sub_u32(0u, arg_2.b.x)), arg_1.b.x, 4294967295u), func_5(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.b.yzz, arg_2.b.zzw), countOneBits(arg_2.b.zyx)), var_0, func_5(reverseBits(arg_2.b.ywx), func_5(arg_1.b.zxx, global0.b, Struct_3(u_input.a, Struct_2(u_input.b), global0.c, u_input.b.x), arg_1.b).b, Struct_3(34369u, var_0, vec3<bool>(true, false, true), 1i), vec4<u32>(u_input.a, global0.a, arg_2.b.x, u_input.a)), select(arg_1.b, firstTrailingBit(arg_1.b), !vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x))).b, Struct_3(108368u, global0.b, select(vec3<bool>(global0.c.x, false, global0.c.x), global0.c, func_5(arg_2.b.zzy, Struct_2(vec2<i32>(49529i, -25228i)), Struct_3(9319u, Struct_2(vec2<i32>(global0.b.a.x, u_input.b.x)), vec3<bool>(false, global0.c.x, global0.c.x), global0.d), arg_2.b).c), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, arg_0.x), vec2<i32>(u_input.b.x, -1i))), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(arg_2.b.x, 36384u, global0.a, arg_2.b.x) & arg_2.b), u_input.a, arg_2.b.x, func_5(arg_2.b.wxz, global0.b, func_5(arg_2.b.yyy, Struct_2(vec2<i32>(0i, -25255i)), Struct_3(0u, global0.b, vec3<bool>(global0.c.x, false, global0.c.x), 0i), vec4<u32>(0u, 41633u, 100674u, 1u)), vec4<u32>(arg_1.b.x, arg_2.b.x, 62139u, 21777u) >> (vec4<u32>(52319u, global0.a, global0.a, 17632u) % vec4<u32>(32u))).a)), ~vec4<u32>(~abs(arg_1.b.x), 2360u, 1u, arg_2.b.x));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    let var_0 = arg_1.c.x;
    global0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_2)), 1000f)), any(select(!(!vec4<bool>(global0.c.x, arg_1.c.x, var_0, global0.c.x)), vec4<bool>(any(vec2<bool>(var_0, var_0)), true, true, false), !vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, var_0)))));
    global0 = arg_1;
    var var_2 = all(!(!arg_1.c.yx));
    return Struct_2(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i), arg_0.zz), vec2<i32>(arg_0.x, 2147483647i)), func_6(abs(vec4<i32>(global0.b.a.x, global0.b.a.x, global0.b.a.x, 2147483647i)), func_1(2088f, arg_1.c, Struct_1(vec4<u32>(0u, 18767u, global0.a, u_input.a), arg_0, u_input.b.x, var_0, arg_0), 13757u), Struct_4(vec2<f32>(488f, -1473f), vec4<u32>(78072u, global0.a, 0u, global0.a), arg_2)).b.a)));
}

fn func_8(arg_0: Struct_2) -> Struct_2 {
    global0 = func_6(abs(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2944i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(-1i, 2147483647i, 1i, global0.b.a.x)), reverseBits(vec4<i32>(1i, 2147483647i, global0.d, arg_0.a.x))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f) * -2006f), !func_4(Struct_4(vec2<f32>(598f, -840f), vec4<u32>(4294967295u, 31261u, 4294967295u, u_input.a), -1690f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(520f, 1194f), vec2<f32>(1174f, -997f), vec2<bool>(false, false))), Struct_1(vec4<u32>(global0.a, 59010u, 1u, 0u), vec3<i32>(u_input.b.x, arg_0.a.x, -2147483647i), arg_0.a.x, false, vec3<i32>(2147483647i, 45561i, -35330i)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.d, -38468i, global0.b.a.x), vec3<i32>(5874i, 8676i, arg_0.a.x))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 26385u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 74799u, u_input.a, 47444u), vec4<u32>(1020u, u_input.a, 0u, u_input.a))), (vec3<i32>(31732i, arg_0.a.x, 38540i) >> (vec3<u32>(2799u, 1u, global0.a) % vec3<u32>(32u))) & firstTrailingBit(vec3<i32>(-49520i, 0i, u_input.b.x)), _wgslsmith_add_i32(~u_input.b.x, ~1i), !select(global0.c.x, global0.c.x, global0.c.x), vec3<i32>(u_input.b.x, 1i, select(u_input.b.x, -59595i, global0.c.x))), global0.a), Struct_4(func_1(1642f, vec3<bool>(true, all(vec2<bool>(true, true)), any(vec4<bool>(false, global0.c.x, global0.c.x, true))), Struct_1(vec4<u32>(global0.a, 4294967295u, 50368u, 128u), ~vec3<i32>(-14004i, -2147483647i, -2147483647i), abs(global0.d), true, abs(vec3<i32>(-84135i, global0.b.a.x, u_input.b.x))), min(global0.a, ~1u)).a, _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a, 4989u, 4294967295u, 9573u) | vec4<u32>(1u, u_input.a, global0.a, 4294967295u)), abs(vec4<u32>(1u, 0u, global0.a, u_input.a) & vec4<u32>(global0.a, 0u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1378f) + _wgslsmith_f_op_f32(f32(-1f) * -103f))))));
    var var_0 = arg_0.a;
    global0 = func_6(reverseBits(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(3844i, global0.d), -18367i), ~select(u_input.b.x, 14615i, global0.c.x), ~1i, reverseBits(select(2147483647i, 11563i, false)))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-581f, 993f)), _wgslsmith_f_op_f32(ceil(553f))), _wgslsmith_mult_vec4_u32(max(vec4<u32>(1u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 1138u, 4294967295u, u_input.a)) & vec4<u32>(0u, global0.a, 6334u, 44872u), ~(~vec4<u32>(global0.a, global0.a, 1u, u_input.a))), _wgslsmith_div_f32(182f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1198f))))), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1462f, 528f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-2711f, 467f), vec2<f32>(-922f, 1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, -725f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(805f, 251f)), vec2<bool>(global0.c.x, global0.c.x)))), vec4<u32>(_wgslsmith_mod_u32(global0.a, 11916u) << (~1u % 32u), u_input.a, func_6(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, 2147483647i, arg_0.a.x, 1i), vec4<i32>(var_0.x, 42421i, 2147483647i, var_0.x)), func_1(-398f, global0.c, Struct_1(vec4<u32>(0u, u_input.a, u_input.a, 1u), vec3<i32>(arg_0.a.x, 130i, var_0.x), -3811i, global0.c.x, vec3<i32>(0i, global0.b.a.x, arg_0.a.x)), 32978u), Struct_4(vec2<f32>(978f, 877f), vec4<u32>(u_input.a, 43918u, u_input.a, 55398u), -1001f)).a, ~u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(1000f, global0.c, Struct_1(vec4<u32>(u_input.a, global0.a, u_input.a, 19867u), vec3<i32>(global0.d, 1i, -25884i), -14330i, global0.c.x, vec3<i32>(-2147483647i, 0i, var_0.x)), global0.a).c), 124f)));
    let var_1 = ~u_input.a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(607f, global0.c, Struct_1(vec4<u32>(global0.a, global0.a, global0.a, var_1), vec3<i32>(arg_0.a.x, 40978i, 38482i), 2147483647i, global0.c.x, vec3<i32>(0i, arg_0.a.x, var_0.x)), ~11079u).a.x)), 2505f);
    return Struct_2(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, func_8(func_7(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -27712i, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.a.x, -1i, -1i), vec3<i32>(-34482i, 13129i, global0.b.a.x)), vec3<i32>(-1i, global0.d, u_input.b.x)), func_6(vec4<i32>(u_input.b.x, global0.b.a.x, -11877i, global0.b.a.x), Struct_4(vec2<f32>(-307f, 109f), vec4<u32>(4294967295u, 11127u, 1u, u_input.a), 2389f), func_1(1508f, vec3<bool>(global0.c.x, global0.c.x, false), Struct_1(vec4<u32>(0u, u_input.a, global0.a, 4294967295u), vec3<i32>(-1i, u_input.b.x, u_input.b.x), 58979i, true, vec3<i32>(u_input.b.x, u_input.b.x, global0.b.a.x)), 37262u)), -213f)), select(vec3<bool>(!global0.c.x, true, true), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -969f) == _wgslsmith_f_op_f32(round(346f)), !global0.c.x, false), any(select(vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), select(vec4<bool>(global0.c.x, false, true, true), vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false)), !vec4<bool>(true, false, global0.c.x, true)))), ~(-1i) | u_input.b.x);
    let var_0 = select(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(15040u), 4294967295u), vec2<u32>(global0.a | global0.a, _wgslsmith_div_u32(0u, global0.a))), _wgslsmith_div_vec2_u32(func_1(-1000f, func_6(vec4<i32>(-1i, global0.d, -1i, -2147483647i), Struct_4(vec2<f32>(-116f, -1000f), vec4<u32>(global0.a, u_input.a, global0.a, 4294967295u), 416f), Struct_4(vec2<f32>(452f, -419f), vec4<u32>(4294967295u, global0.a, 22787u, 5437u), -194f)).c, Struct_1(vec4<u32>(40247u, u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, -1i), -5122i, global0.c.x, vec3<i32>(41789i, -32176i, 1i)), 56499u).b.yx, reverseBits(countOneBits(vec2<u32>(25561u, 1u))))), ~(select(vec2<u32>(global0.a, global0.a), vec2<u32>(1u, 4294967295u), global0.c.yy) | vec2<u32>(u_input.a, u_input.a)) | vec2<u32>(~(~1u), (global0.a << (0u % 32u)) & firstLeadingBit(global0.a)), global0.c.x);
    global0 = Struct_3(~(~var_0.x), func_6(vec4<i32>(1i, _wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), ~(-2147483647i), 94i), -2147483647i >> (~var_0.x % 32u), abs(-global0.d)), func_1(_wgslsmith_f_op_f32(step(-563f, _wgslsmith_f_op_f32(-1000f - 667f))), select(global0.c, global0.c, true), Struct_1(vec4<u32>(var_0.x, u_input.a, u_input.a, 4294967295u) << (vec4<u32>(var_0.x, global0.a, 1u, u_input.a) % vec4<u32>(32u)), -vec3<i32>(0i, -2147483647i, -54269i), -global0.b.a.x, global0.c.x, vec3<i32>(-1345i, 2147483647i, 25987i)), var_0.x), Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(-405f, 408f), vec2<f32>(1376f, 133f)), (vec4<u32>(u_input.a, 0u, var_0.x, 14523u) >> (vec4<u32>(u_input.a, 11477u, 1u, 1u) % vec4<u32>(32u))) & vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -100f))).b, select(vec3<bool>(true, global0.c.x && !global0.c.x, true), vec3<bool>(global0.c.x, true, !(1u == var_0.x)), global0.c), -global0.d);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-235f + -1047f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-310f, 459f)), _wgslsmith_f_op_f32(min(-1000f, 676f))))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(43796u, u_input.a, ~37407u, ~25481u), select(_wgslsmith_mult_vec4_u32(vec4<u32>(93531u, global0.a, 0u, 0u), vec4<u32>(4294967295u, 83726u, global0.a, 66011u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 20975u, global0.a, global0.a), vec4<u32>(var_0.x, u_input.a, 0u, global0.a), vec4<u32>(global0.a, u_input.a, 0u, global0.a)), vec4<bool>(true, true, true, true)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 12490u, 1u, global0.a), vec4<u32>(var_0.x, global0.a, global0.a, global0.a))), -1150f);
    var_1 = func_1(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c - var_1.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-701f)), -1294f))))), global0.c, Struct_1(var_1.b ^ ~(~var_1.b), vec3<i32>(_wgslsmith_sub_i32(~global0.b.a.x, ~(-2147483647i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global0.b.a.x, -27871i, 2147483647i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x)), u_input.b.x), u_input.b.x, !all(!vec2<bool>(global0.c.x, global0.c.x)), select(vec3<i32>(u_input.b.x | -38993i, 1i, func_7(vec3<i32>(2147483647i, global0.b.a.x, 2147483647i), Struct_3(52441u, global0.b, global0.c, -487i), -1596f).a.x), -(~vec3<i32>(5449i, global0.d, 2147483647i)), select(select(global0.c, global0.c, vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), global0.c, select(false, false, global0.c.x)))), var_1.b.x);
    let var_2 = vec4<bool>(~(i32(-1i) * -global0.b.a.x) <= ~1i, global0.c.x && true, false, any(select(!func_5(vec3<u32>(1u, var_1.b.x, global0.a), global0.b, Struct_3(28775u, global0.b, global0.c, global0.d), var_1.b).c, !select(vec3<bool>(global0.c.x, true, global0.c.x), vec3<bool>(global0.c.x, false, global0.c.x), true), global0.c)));
    let var_3 = select(~vec3<u32>(global0.a, 6646u, reverseBits(~1u)), ~abs(vec3<u32>(120703u, 100532u, var_0.x)), any(select(!select(var_2.zwx, vec3<bool>(global0.c.x, global0.c.x, false), var_2.wwx), global0.c, vec3<bool>(any(vec3<bool>(var_2.x, false, false)), !var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(0i, 24422i, u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-5589i, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, global0.b.a.x, -1i), vec3<i32>(u_input.b.x, global0.b.a.x, 13454i))), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, -2248i), vec3<i32>(-2147483647i, -2147483647i, 27266i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(23250i, u_input.b.x, global0.b.a.x), abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))) ^ vec3<i32>(global0.d, u_input.b.x, max(-15782i, global0.b.a.x))), u_input.a, min(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, global0.b.a.x, -14469i), vec4<i32>(779i, global0.d, u_input.b.x, u_input.b.x)), abs(vec4<i32>(global0.d, u_input.b.x, u_input.b.x, -61473i))), 1i & _wgslsmith_dot_vec4_i32(vec4<i32>(41713i, global0.d, -2147483647i, -8366i), vec4<i32>(-352i, global0.b.a.x, global0.b.a.x, u_input.b.x))) | 26814i, _wgslsmith_f_op_f32(-var_1.a.x));
}

