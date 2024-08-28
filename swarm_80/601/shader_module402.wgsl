struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(896f, 847f);

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1748f) * _wgslsmith_f_op_vec2_f32(-global1.b)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1164f)), 1471f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b), global1.b))), false & all(!select(arg_0.zy, arg_0.xx, arg_0.yy)));
    let var_0 = Struct_2(Struct_1(-1997f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1353f, global1.b.x)), 554f), -691f)), ~countOneBits(firstLeadingBit(vec3<u32>(global1.a.c.x, 4294967295u, 68329u))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.d.x, 13070u), u_input.b.xy), 4294967295u)), global1.b, arg_0.x);
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(889f)), 575f))))));
    global1 = var_0;
    var var_1 = select(select(select(arg_0, select(!arg_0, !vec4<bool>(true, arg_0.x, arg_0.x, false), !vec4<bool>(true, global1.c, false, true)), !vec4<bool>(false, arg_0.x, false, true)), arg_0, !arg_0), arg_0, select(select(!arg_0, vec4<bool>(true, any(vec3<bool>(true, var_0.c, false)), global1.c, false), !global1.c), !vec4<bool>(false, var_0.c, true, var_0.c), global1.c));
    return vec2<u32>(~1u, u_input.a);
}

fn func_2(arg_0: f32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_sub_i32(abs(-27063i), 18010i), global1.a, -firstLeadingBit(-1i), Struct_2(global1.a, global1.b, true), Struct_2(Struct_1(887f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.b, arg_0)) + _wgslsmith_f_op_f32(-660f * -1568f)), vec3<u32>(_wgslsmith_clamp_u32(global1.a.c.x, u_input.d.x, 58247u), 33518u, 4294967295u), global1.a.d), _wgslsmith_f_op_vec2_f32(-global1.b), !(_wgslsmith_div_f32(arg_0, 895f) == -598f)));
    let var_1 = ~(-43841i);
    var_0 = Struct_3(_wgslsmith_sub_i32(var_0.c, _wgslsmith_add_i32(~(i32(-1i) * -53215i), -(2147483647i >> (u_input.d.x % 32u)))), Struct_1(arg_0, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * var_0.b.a)), (false && global1.c) && true)), ~(~global1.a.c), var_0.b.d), 56709i, var_0.d, Struct_2(Struct_1(global0.x, _wgslsmith_div_f32(global1.a.b, global0.x), abs(~vec3<u32>(4294967295u, u_input.b.x, u_input.a)), _wgslsmith_mod_vec2_u32(firstTrailingBit(var_0.d.a.d), vec2<u32>(14039u, 4294967295u))), var_0.e.b, var_0.d.c));
    let var_2 = Struct_3(2147483647i, global1.a, ~var_0.c, var_0.e, Struct_2(var_0.d.a, var_0.d.b, global1.c));
    global1 = Struct_2(Struct_1(221f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-263f, var_0.e.b.x, true)), _wgslsmith_f_op_f32(-1313f * -561f)), -2454f)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.a.c.x, u_input.b.x, var_2.b.d.x), _wgslsmith_div_vec3_u32(var_2.d.a.c, vec3<u32>(u_input.d.x, global1.a.c.x, 11233u)))), func_3(select(vec4<bool>(var_2.d.c, true, var_0.e.c, true), vec4<bool>(true, false, var_0.e.c, true), global1.c)) & var_0.b.d), var_0.d.b, true);
    return var_2.e.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = 2029u;
    var var_1 = _wgslsmith_mult_vec4_i32(min(arg_3, abs(arg_3 | ~arg_3)), ~arg_3);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.a.b) - _wgslsmith_f_op_f32(max(669f, -1270f))))));
    let var_3 = select(select(vec3<bool>(select(true, select(false, false, arg_1.x), select(true, global1.c, false)), any(arg_1), false), arg_2, true), arg_2, any(!(!(!vec4<bool>(true, false, arg_0.d.c, true)))));
    global1 = arg_0.e;
    return Struct_5(arg_0.b, select(_wgslsmith_div_vec2_i32(select(vec2<i32>(22803i, var_1.x), -var_1.wy, arg_3.x >= arg_0.a), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, 2147483647i), arg_3.yw)), vec2<i32>(1i, 64779i), select(!select(var_3.xy, arg_2.xz, var_3.x), arg_2.xz, true)), global1.a, arg_0.d, var_0);
}

fn func_1() -> Struct_5 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2042f, 220f)), global1.b, vec2<bool>(all(vec3<bool>(false, global1.c, global1.c)), true)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)), global1.b.x)));
    return func_4(Struct_3(1i, global1.a, i32(-1i) * -60637i, Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.a.b + 1889f), -353f, u_input.d, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global1.a.d.x, global1.a.d.x))), _wgslsmith_f_op_vec2_f32(func_2(341f)), false), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(340f, 221f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b.zwz, vec2<u32>(0u, u_input.d.x) << (vec2<u32>(global1.a.c.x, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global0.x) + vec2<f32>(global0.x, 1463f))), global1.c)), !vec2<bool>(any(vec3<bool>(true, true, true)), global1.c), vec3<bool>(all(!(!vec4<bool>(true, false, true, global1.c))), true, false | all(vec2<bool>(true, true))), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, 2147483647i), -15255i), -16889i, _wgslsmith_clamp_i32(-countOneBits(-81453i), 18379i, -11800i), -2147483647i));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: u32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.zx));
    global1 = Struct_2(Struct_1(global1.b.x, global1.a.b, ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 27411u, 57364u), global1.a.c), ~vec3<u32>(arg_2, 60239u, 4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 1065u), firstLeadingBit(arg_1.a.d)), ~(~vec2<u32>(arg_2, u_input.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy), _wgslsmith_f_op_vec2_f32(-global1.b)), global1.c);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.a.a * _wgslsmith_f_op_f32(744f - arg_1.d.b.x)), arg_1.a.b), _wgslsmith_f_op_f32(1025f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))))), arg_0.x);
    return vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.x, -4723i), vec2<i32>(0i, arg_1.b.x))), arg_1.b), abs(_wgslsmith_mult_i32(-arg_1.b.x, 23194i) | ~2147483647i), -9336i);
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = global1.b;
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-global0.x)), global1.a.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2078f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1048f * global1.b.x) - _wgslsmith_f_op_f32(abs(-486f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b, 969f)))));
    global0 = vec2<f32>(global0.x, _wgslsmith_div_f32(-129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f))));
    global1 = func_1().d;
    var var_1 = vec4<bool>(false, func_4(Struct_3(func_5(vec3<f32>(-1106f, global0.x, 551f), Struct_5(Struct_1(var_0.x, var_0.x, global1.a.c, vec2<u32>(0u, u_input.c.x)), arg_0.zy, global1.a, Struct_2(Struct_1(global0.x, 968f, vec3<u32>(1u, u_input.a, 4294967295u), vec2<u32>(arg_1, global1.a.d.x)), vec2<f32>(var_0.x, global0.x), false), 4294967295u), 39094u).x >> (arg_1 % 32u), func_1().c, arg_2.x, func_4(Struct_3(49820i, global1.a, 2147483647i, Struct_2(Struct_1(-565f, 392f, u_input.b.wxz, vec2<u32>(36638u, u_input.b.x)), global1.b, true), Struct_2(Struct_1(436f, -857f, u_input.d, vec2<u32>(0u, 14249u)), vec2<f32>(var_0.x, 1068f), global1.c)), vec2<bool>(true, arg_3.x), !arg_3, ~vec4<i32>(arg_0.x, -1i, arg_2.x, arg_0.x)).d, Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(func_2(global1.a.a)), !global1.c)), select(!arg_3.xy, select(vec2<bool>(arg_3.x, false), arg_3.xy, arg_3.yz), vec2<bool>(true, select(global1.c, arg_3.x, false))), !arg_3, firstLeadingBit(reverseBits(vec4<i32>(arg_2.x, arg_2.x, 23465i, arg_2.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -39069i, -25634i, 0i), vec4<i32>(arg_0.x, arg_2.x, arg_2.x, -2147483647i), vec4<i32>(2147483647i, -60798i, 2147483647i, arg_2.x)))).d.c, all(!select(vec2<bool>(global1.c, arg_3.x), !vec2<bool>(false, arg_3.x), true)), arg_0.x > -35607i);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_mod_vec3_i32(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, global1.a.b, global1.a.b), vec3<f32>(-557f, global1.b.x, global0.x)), func_1(), global1.a.c.x) | max(~vec3<i32>(0i, -2147483647i, -2147483647i), ~vec3<i32>(49390i, 1i, -1i)), ~vec3<i32>(~0i, 26993i, 1i)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(vec4<u32>(4294967295u, global1.a.c.x, 65524u, u_input.a))), ~1u, ~global1.a.c.x), ~max(vec3<i32>(~66459i, 1i, abs(2147483647i)), vec3<i32>(1i, 1i, 1i)), !select(vec3<bool>(global0.x != -822f, true, 1000f != global1.b.x), select(vec3<bool>(true, true, false), !vec3<bool>(false, false, global1.c), !vec3<bool>(global1.c, false, global1.c)), !select(vec3<bool>(false, false, global1.c), vec3<bool>(false, global1.c, false), global1.c)));
    var var_1 = vec4<bool>(true, all(!(!vec3<bool>(global1.c, global1.c, global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2020f, var_0.a) + _wgslsmith_f_op_f32(global0.x - global1.a.b))) != 405f, global1.c);
    let var_2 = _wgslsmith_mult_vec4_u32(min(~vec4<u32>(28199u, 43139u, u_input.c.x, u_input.d.x), u_input.b), vec4<u32>(66967u, var_0.c.x, u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d | vec3<u32>(49871u, 1u, var_0.c.x), _wgslsmith_mod_vec3_u32(var_0.c, vec3<u32>(38021u, 106229u, u_input.b.x))))) | (vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global1.a.c.x, global1.a.d.x, 4294967295u, u_input.c.x)) ^ _wgslsmith_div_u32(u_input.b.x, 0u), min(u_input.d.x, 67288u), abs(countOneBits(global1.a.d.x)), ~var_0.d.x) ^ u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(430f, -111f, false)))), _wgslsmith_f_op_f32(-global0.x), global1.b.x, var_0.b)), global0.x, reverseBits(vec4<i32>(_wgslsmith_sub_i32(1i, 27085i) << (u_input.c.x % 32u), func_1().b.x, firstTrailingBit(-2147483647i), select(1i, 2147483647i, global1.c))));
}

