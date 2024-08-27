struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(13419i, -7470i, arg_2.x), -arg_0), ~_wgslsmith_div_vec3_i32(vec3<i32>(24359i, -1i, u_input.a.x), vec3<i32>(2147483647i, arg_2.x, arg_3.b.b.x))), vec3<i32>(~(~11669i), max(firstLeadingBit(arg_2.x), abs(-arg_3.b.b.x)), arg_3.c.b.x));
    global0 = ~(max(~vec4<u32>(1u, 1u, u_input.b, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 21327u, 0u, u_input.d), vec4<u32>(21351u, 29176u, 4294967295u, global0.x), vec4<u32>(4294967295u, 9614u, u_input.b, 4294967295u))) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(12279u, 0u, 32273u, global0.x), vec4<u32>(u_input.b, global0.x, u_input.b, 63658u)) ^ select(vec4<u32>(0u, 48165u, 18784u, 0u), vec4<u32>(6275u, global0.x, 30601u, 4294967295u), vec4<bool>(false, arg_3.d.x, false, arg_3.d.x)))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_sub_u32(~global0.x, 48323u), ~u_input.b, reverseBits(_wgslsmith_dot_vec2_u32(global0.xw, vec2<u32>(global0.x, global0.x)))), select(select(~vec4<u32>(u_input.d, u_input.d, 18773u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 38050u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u)), arg_3.d.x), abs(reverseBits(vec4<u32>(global0.x, u_input.b, 46166u, 4294967295u))), select(!arg_3.d, !vec4<bool>(true, arg_1, arg_1, arg_1), false))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(global0.yx, global0.zw), select(global0.yz, _wgslsmith_add_vec2_u32(global0.zz, global0.xx), select(arg_3.d.yx, select(arg_3.d.zy, arg_3.d.wx, arg_3.d.zw), vec2<bool>(arg_1, arg_1))), abs(global0.yx)) >> (global0.xw % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(737f, arg_3.b.c, -130f));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(-454f, var_2.x)), -641f);
    return ~(~vec4<u32>(53825u, ~abs(var_1.x), 45783u, _wgslsmith_mult_u32(~1u, select(25146u, 86012u, true))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(-53462i, _wgslsmith_mult_i32(u_input.c, ~u_input.a.x))), ~vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -22367i, -1i), vec3<i32>(18967i, -1i, 25135i)), 0i));
    global0 = ~select(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, global0.x, 12296u, 68459u), func_3(vec3<i32>(13168i, 45287i, var_0.x), false, vec3<i32>(u_input.c, u_input.a.x, var_0.x), Struct_2(Struct_1(vec4<f32>(-488f, -1881f, 301f, 1425f), vec2<i32>(-22414i, var_0.x), 411f), Struct_1(vec4<f32>(1544f, 634f, 214f, -367f), u_input.a, 1000f), Struct_1(vec4<f32>(-668f, 114f, -321f, -1000f), u_input.a, -339f), arg_1))), select(firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, arg_0, global0.x, u_input.d))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, arg_0, 4294967295u, arg_0), ~vec4<u32>(1u, 0u, u_input.d, global0.x)), select(select(vec4<bool>(arg_1.x, arg_1.x, false, true), arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1, arg_1.x)), !arg_1);
    let var_1 = Struct_5(select(!arg_1, !vec4<bool>(false, true, arg_1.x, arg_1.x), false));
    var var_2 = vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, var_0.x)), ~vec2<i32>(u_input.c, -38273i)), u_input.a.x), select(29098i, _wgslsmith_dot_vec2_i32(u_input.a & u_input.a, u_input.a << (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))), any(!arg_1.yzx))), ~var_0.x, min(var_0.x, firstLeadingBit(u_input.c)));
    var_2 = ~vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(var_2.yyw, var_2.zyw), countOneBits(2147483647i)), 1i, ~firstTrailingBit(_wgslsmith_mod_i32(var_0.x, 3388i)), -(~(-2147483647i)));
    return arg_0;
}

fn func_1() -> u32 {
    global0 = vec4<u32>(23523u | _wgslsmith_div_u32(~4115u, ~global0.x), _wgslsmith_mod_u32(global0.x, 33035u), 4294967295u ^ func_2(~u_input.b, select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false)), ~4294967295u) << (_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, abs(min(u_input.d, global0.x))), reverseBits(~(vec4<u32>(1u, 66095u, u_input.b, global0.x) & vec4<u32>(global0.x, 69076u, 59132u, u_input.d)))) % vec4<u32>(32u));
    global0 = ~(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.d, 1u), vec4<u32>(global0.x, u_input.d, 74864u, 1u)) | ~vec4<u32>(global0.x, 4294967295u, global0.x, 105984u)) >> (vec4<u32>(60933u, u_input.b, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, global0.x), ~global0.x), 1u) % vec4<u32>(32u)));
    var var_0 = 1000f;
    let var_1 = vec2<u32>(func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.c), vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, -1i, 5958i), 2147483647i, u_input.c)), !(!select(true, true, true)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c, -2147483647i, -12340i), ~vec3<i32>(2147483647i, 2147483647i, -22083i), (vec3<i32>(-36492i, 32870i, 70357i) | vec3<i32>(7829i, u_input.c, u_input.a.x)) | _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.c), vec3<i32>(u_input.c, -55704i, u_input.c))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(441f, -1103f, 2531f, 432f))), ~vec2<i32>(u_input.a.x, u_input.a.x), -178f), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(618f, -631f, 401f, 535f))), u_input.a, 668f), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1434f, 1183f, -452f, 1221f), vec4<f32>(1943f, -173f, -715f, 1000f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 14551i), vec2<i32>(u_input.c, 25786i), u_input.a), 1000f), vec4<bool>(false, 7492u < u_input.b, true, all(vec4<bool>(false, false, true, false))))).x, 13839u);
    global0 = vec4<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(28480u, ~4294967295u | _wgslsmith_dot_vec2_u32(var_1, var_1)), func_2(4294967295u, vec4<bool>(true, true, true, true)), func_3(-vec3<i32>(u_input.c, -31127i, -17603i), select(true, true, true), vec3<i32>(u_input.a.x, 0i & u_input.c, u_input.a.x), Struct_2(Struct_1(vec4<f32>(-339f, -1074f, 285f, -2409f), vec2<i32>(0i, -9404i), 1913f), Struct_1(vec4<f32>(703f, 609f, 304f, 932f), u_input.a, -1961f), Struct_1(vec4<f32>(879f, -690f, -542f, 472f), vec2<i32>(u_input.a.x, 29712i), -1093f), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true))).x), u_input.d, abs(4294967295u));
    return _wgslsmith_div_u32(~1u, 17770u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(func_1(), u_input.d ^ 0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x, global0.x), global0.x), ~global0.x), firstTrailingBit(vec4<u32>(0u, 1u, _wgslsmith_add_u32(u_input.b, 51092u), 4294967295u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(42271u, global0.x, global0.x, u_input.b), vec4<u32>(54294u, 36169u, global0.x, u_input.b) >> (vec4<u32>(global0.x, global0.x, u_input.b, 111988u) % vec4<u32>(32u))) & abs(countOneBits(vec4<u32>(4294967295u, u_input.b, u_input.d, global0.x))), reverseBits(vec4<u32>(u_input.b ^ 0u, 4294967295u, func_3(vec3<i32>(1i, u_input.a.x, u_input.a.x), true, vec3<i32>(-2147483647i, u_input.a.x, 60701i), Struct_2(Struct_1(vec4<f32>(231f, -678f, 843f, 416f), vec2<i32>(u_input.c, u_input.a.x), -203f), Struct_1(vec4<f32>(304f, -703f, 121f, -876f), u_input.a, -1041f), Struct_1(vec4<f32>(-134f, -650f, 1000f, -717f), u_input.a, -1256f), vec4<bool>(true, false, true, true))).x, u_input.d))));
    let var_0 = Struct_3(select(vec2<bool>(_wgslsmith_div_i32(-1i, u_input.c) >= (2147483647i & u_input.c), true), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), true), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-387f, _wgslsmith_f_op_f32(1428f * -659f), _wgslsmith_f_op_f32(select(-414f, -819f, false)), _wgslsmith_f_op_f32(f32(-1f) * -610f)))), -_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1821f)))), vec2<f32>(-314f, -1066f));
    global0 = abs(vec4<u32>(u_input.b, 0u, min(4294967295u, select(~u_input.b, _wgslsmith_mult_u32(u_input.b, global0.x), true)), 66228u ^ (_wgslsmith_mult_u32(u_input.b, u_input.b) << (func_1() % 32u))));
    var var_1 = Struct_4(Struct_3(var_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1311f, var_0.b.a.x, var_0.b.a.x, -148f) * vec4<f32>(var_0.b.c, 1428f, var_0.c.x, 659f))), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.b.b, vec2<i32>(u_input.a.x, u_input.c)), 44082i), var_0.b.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(max(var_0.c.x, 1031f))) + vec2<f32>(-331f, var_0.c.x))), vec2<bool>(!any(vec3<bool>(var_0.a.x, var_0.a.x, true)), any(!var_0.a)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a.x, 672f, false))), _wgslsmith_f_op_f32(select(-1243f, _wgslsmith_f_op_f32(var_0.c.x * -211f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-229f)) - _wgslsmith_f_op_f32(trunc(var_0.b.c))), _wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(0i, 1i) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), vec2<i32>(10090i, -19511i), vec2<bool>(var_0.a.x, false)), vec2<i32>(u_input.c, var_0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c))), true, true);
    global0 = vec4<u32>(1u, ~reverseBits(abs(global0.x)), _wgslsmith_mod_u32(1u, ~global0.x), 23894u);
    var_1 = Struct_4(Struct_3(!select(vec2<bool>(var_1.b.x, var_1.b.x), !vec2<bool>(false, var_1.d), true), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_1.c.a)), countOneBits(max(var_0.b.b, vec2<i32>(u_input.a.x, 22077i))), _wgslsmith_f_op_f32(floor(-526f))), _wgslsmith_div_vec2_f32(var_0.b.a.xz, vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, var_1.c.c)), var_0.b.c))), vec2<bool>(true, false), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.c.a, var_0.b.a)) - _wgslsmith_f_op_vec4_f32(-var_0.b.a)) * vec4<f32>(var_1.a.c.x, var_0.b.a.x, var_1.c.c, 390f)), _wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, u_input.c), countOneBits(-vec2<i32>(var_0.b.b.x, var_1.a.b.b.x))), var_1.a.c.x), var_0.a.x, var_1.a.a.x || false);
    let var_2 = Struct_5(select(vec4<bool>(any(select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(false, true, false), var_1.e)), false, true, var_0.a.x), !vec4<bool>(true, var_0.a.x, false, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2055f, var_0.b.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1014f, 1534f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(366f)), _wgslsmith_f_op_f32(var_0.b.a.x * 363f)))), vec2<i32>(var_0.b.b.x, reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, var_0.b.b.x, -46461i, var_0.b.b.x), vec4<i32>(var_0.b.b.x, u_input.a.x, var_0.b.b.x, 2147483647i)))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(66668i, -1i, var_0.b.b.x, u_input.c), vec4<i32>(var_0.b.b.x, 86014i, 2147483647i, var_0.b.b.x) << (vec4<u32>(0u, u_input.b, global0.x, 28989u) % vec4<u32>(32u)), -vec4<i32>(-31894i, var_1.a.b.b.x, var_0.b.b.x, var_0.b.b.x)), ~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.c.b.x, -19937i, -1i, 41699i), vec4<i32>(-22323i, -1900i, var_1.a.b.b.x, 31358i))), ~_wgslsmith_mult_vec4_i32(min(vec4<i32>(-5738i, 14260i, 15511i, var_0.b.b.x), vec4<i32>(var_1.a.b.b.x, var_0.b.b.x, var_0.b.b.x, var_1.a.b.b.x)), vec4<i32>(var_1.c.b.x, 45339i, 7875i, var_0.b.b.x))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(1i, u_input.c, var_1.c.b.x), vec3<i32>(u_input.c, u_input.a.x, var_0.b.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-52489i, -11966i, 2147483647i), vec3<i32>(var_0.b.b.x, var_1.c.b.x, -30935i))), -vec3<i32>(var_1.c.b.x, var_1.c.b.x, 55210i) >> ((vec3<u32>(47917u, global0.x, 4294967295u) & global0.wyy) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec3_u32(global0.zzz, vec3<u32>(0u, 1u, 29833u))), 1u, func_3(vec3<i32>(1i, var_0.b.b.x, var_0.b.b.x), var_0.a.x, firstLeadingBit(vec3<i32>(var_1.a.b.b.x, u_input.a.x, 2147483647i)), Struct_2(var_1.a.b, var_0.b, Struct_1(var_0.b.a, var_1.c.b, var_1.c.a.x), var_2.a)).x) % vec3<u32>(32u)), 0i);
}

