struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: f32;

var<private> global2: vec2<f32> = vec2<f32>(-1028f, -197f);

var<private> global3: f32 = 570f;

var<private> global4: bool;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec3<bool> {
    global4 = select(4294967295u != _wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_0.x, 1u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(u_input.c.x, arg_0.x, 0u, 4294967295u)), arg_0.x)), u_input.b.x >= 2147483647i, true);
    global2 = _wgslsmith_f_op_vec2_f32(step(arg_1.zy, _wgslsmith_f_op_vec2_f32(arg_1.xz + _wgslsmith_f_op_vec2_f32(-arg_1.xz))));
    global4 = select(~arg_0.x > 82363u, 12902i == u_input.b.x, true);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    var var_0 = vec4<bool>(!(global0.x && !global0.x), true, !(!(899f != arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.x)))) * arg_1.x) <= 1138f);
    return select(select(vec3<bool>(global0.x, global0.x, !var_0.x), select(select(select(var_0.yxy, vec3<bool>(true, var_0.x, var_0.x), var_0.xzy), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, false, var_0.x), var_0.wxy), true), select(vec3<bool>(var_0.x, global0.x, global0.x), var_0.zwy, var_0.xzy), global0.x), !select(true, any(vec3<bool>(var_0.x, global0.x, false)), true)), !vec3<bool>((arg_0.x | arg_0.x) < 0u, all(select(vec4<bool>(true, global0.x, false, true), vec4<bool>(var_0.x, false, false, true), false)), _wgslsmith_f_op_f32(round(573f)) != _wgslsmith_f_op_f32(f32(-1f) * -1013f)), select(!select(var_0.zxy, select(vec3<bool>(var_0.x, false, var_0.x), var_0.zzw, vec3<bool>(global0.x, global0.x, global0.x)), true), select(vec3<bool>(var_0.x, any(vec4<bool>(true, true, false, var_0.x)), global0.x), !vec3<bool>(true, false, var_0.x), true), select(!(u_input.b.x != u_input.a), false, false)));
}

fn func_2(arg_0: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_4(u_input.b.x, Struct_3(u_input.b.x, u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(global2.x - 508f), global2.x, global2.x), abs(-u_input.a ^ 0i), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1392f, global2.x, -625f)), vec3<i32>(u_input.a, -2147483647i, u_input.a)))), 526f, (false && global0.x) || any(vec4<bool>(false, all(vec3<bool>(global0.x, false, false)), !arg_0.x, -2243f <= global2.x)), arg_0.x);
    var var_1 = false;
    let var_2 = countOneBits(vec2<u32>(40980u, _wgslsmith_sub_u32(1u, 13562u ^ ~u_input.c.x)));
    global0 = select(arg_0, arg_0, !select(arg_0, func_3(vec4<u32>(u_input.c.x, 71116u, 1u, u_input.c.x) >> (vec4<u32>(var_2.x, var_2.x, 1u, 19490u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-291f, -363f, global2.x) - var_0.b.e.b.a)), !(u_input.c.x <= u_input.c.x)));
    let var_3 = var_0.b.a;
    return _wgslsmith_add_vec2_i32((_wgslsmith_div_vec2_i32(u_input.b, -u_input.b) ^ vec2<i32>(select(27050i, var_0.b.e.b.b.x, arg_0.x), var_0.b.e.b.b.x)) ^ var_0.b.e.b.b.zz, -abs(u_input.b));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> Struct_4 {
    let var_0 = vec3<u32>(~0u, ~4294967295u, u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) * -290f);
    global0 = select(!select(func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 48764u, 0u, 0u), vec4<u32>(9962u, var_0.x, 1u, u_input.c.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2043f, var_1, -2544f), vec3<f32>(global2.x, 1198f, global2.x)))), select(!vec3<bool>(true, true, global0.x), !vec3<bool>(true, global0.x, true), true), true), func_3(vec4<u32>(u_input.c.x & ~81163u, abs(4294967295u), u_input.c.x, 17911u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 383f, _wgslsmith_f_op_f32(exp2(arg_0))), vec3<f32>(_wgslsmith_f_op_f32(arg_0 + global2.x), 502f, _wgslsmith_f_op_f32(var_1 * arg_0)), func_3(~vec4<u32>(63469u, var_0.x, var_0.x, 24273u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 175f, -1000f) * vec3<f32>(global2.x, var_1, 152f))).x))), vec3<bool>(true, global0.x, global0.x));
    let var_2 = Struct_4(_wgslsmith_div_i32(-60670i, -13631i) << (min(countOneBits(20484u) >> ((0u & var_0.x) % 32u), 0u) % 32u), Struct_3(-29303i ^ _wgslsmith_mult_i32(-1i, abs(u_input.a)), ~min(16585u, u_input.c.x) ^ min(var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(global2.x, 517f, false)), -1384f, 1755f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-915f, arg_0, -1649f), vec3<f32>(-488f, -185f, arg_0), global0.x)))), true)), arg_2.x, Struct_2(-392f, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, global2.x, 514f)), vec3<i32>(arg_2.x, u_input.a, -26594i)))), arg_0, true, true);
    let var_3 = Struct_5(-1i);
    return var_2;
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_4 {
    global0 = vec3<bool>(true, true, true);
    let var_0 = func_4(arg_1, (0u == ~_wgslsmith_mod_u32(u_input.c.x, 25964u)) || false, _wgslsmith_sub_vec2_i32(-func_2(vec3<bool>(global0.x, false, global0.x)) | -select(vec2<i32>(u_input.a, u_input.a), arg_0.e.b.b.xy, vec2<bool>(global0.x, true)), _wgslsmith_add_vec2_i32(u_input.b, arg_0.e.b.b.xz)));
    return Struct_4(31870i, func_4(global2.x, select(true, true, global0.x), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.b.e.b.b.zy, vec2<i32>(u_input.a, -1i), ~arg_0.e.b.b.yx), _wgslsmith_div_vec2_i32(arg_0.e.b.b.zz, -vec2<i32>(-44192i, arg_0.e.b.b.x)))).b, 1f, !global0.x, false);
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-625f)))), func_1(Struct_3(1i, firstTrailingBit(reverseBits(arg_0.x)), vec3<f32>(func_4(-1000f, true, vec2<i32>(arg_2.a, 0i)).c, _wgslsmith_f_op_f32(-arg_2.b.c.x), _wgslsmith_f_op_f32(ceil(arg_3.x))), func_2(select(vec3<bool>(arg_2.e, true, false), vec3<bool>(global0.x, arg_2.d, false), vec3<bool>(arg_2.d, arg_2.e, true))).x, arg_2.b.e), arg_3.x).b.e.b);
    global0 = select(func_3(select(vec4<u32>(1u & arg_2.b.b, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, 4294967295u, arg_0.x)), ~4294967295u, arg_2.b.b), ~(~vec4<u32>(arg_0.x, 0u, arg_2.b.b, u_input.c.x)), vec4<bool>(true, global0.x || global0.x, !global0.x, global2.x >= var_0.a)), vec3<f32>(-1761f, arg_2.c, arg_3.x)), vec3<bool>(!(!(!arg_2.e)), !global0.x, _wgslsmith_f_op_f32(max(1f, 450f)) > _wgslsmith_f_op_f32(-arg_2.b.c.x)), vec3<bool>(arg_2.e, false, all(!global0.yx)));
    global0 = select(vec3<bool>(true, false, global0.x), !(!select(!vec3<bool>(global0.x, arg_2.d, false), !vec3<bool>(arg_2.e, global0.x, true), vec3<bool>(false, arg_2.e, arg_2.e))), !select(vec3<bool>(!arg_2.e, true, true), !(!vec3<bool>(arg_2.d, true, true)), _wgslsmith_f_op_f32(-arg_3.x) > arg_3.x));
    global2 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * arg_3.x), _wgslsmith_f_op_f32(arg_2.c * global2.x))))));
    var var_1 = _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(4294967295u, 88178u, 1u), ~arg_0), arg_0, vec3<u32>(u_input.c.x, ~u_input.c.x, 1u)), vec3<u32>(~(~(arg_0.x & 4294967295u)), ~1639u, func_1(arg_2.b, func_1(arg_2.b, arg_3.x).c).b.b));
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), !(max(_wgslsmith_dot_vec3_u32(arg_0, arg_0), 1u) <= u_input.c.x), _wgslsmith_mod_vec2_i32(-vec2<i32>(~(-29027i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b.x, var_0.b.b.x, arg_2.a, -3466i), vec4<i32>(arg_1, 19341i, 4612i, -1i))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(func_1(arg_2.b, global2.x).b.e.b.b.xz, vec2<i32>(u_input.b.x, u_input.a) ^ u_input.b), vec2<i32>(~1i, u_input.a)))).b.e;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x) - arg_0.b.a.x) - _wgslsmith_f_op_f32(1f - 182f)))));
    let var_0 = Struct_5(abs(arg_1.b.x));
    var var_1 = firstTrailingBit(~vec4<u32>(63109u, firstLeadingBit(0u), ~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u), select(4294967295u, 1u, true) | 0u));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.b.a.yz)) + _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.xz)));
    var var_2 = var_1.xy & select(~min(select(vec2<u32>(u_input.c.x, 2312u), vec2<u32>(var_1.x, u_input.c.x), global0.yz), select(var_1.zx, u_input.c, false)), ~_wgslsmith_add_vec2_u32(var_1.yw, u_input.c), true);
    return _wgslsmith_mod_i32(countOneBits(2147483647i), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(reverseBits(func_6(func_5(vec3<u32>(u_input.c.x, 32334u, 4294967295u) >> (vec3<u32>(0u, u_input.c.x, 85319u) % vec3<u32>(32u)), _wgslsmith_add_i32(u_input.b.x, u_input.a), func_1(Struct_3(-2147483647i, u_input.c.x, vec3<f32>(-1589f, global2.x, 1522f), u_input.a, Struct_2(global2.x, Struct_1(vec3<f32>(global2.x, -250f, 1700f), vec3<i32>(-1i, u_input.b.x, u_input.b.x)))), 2150f), vec4<f32>(231f, global2.x, global2.x, -205f)), func_1(Struct_3(u_input.b.x, 12552u, vec3<f32>(global2.x, global2.x, global2.x), 37597i, Struct_2(global2.x, Struct_1(vec3<f32>(307f, -780f, -1180f), vec3<i32>(u_input.b.x, -1i, 44973i)))), _wgslsmith_f_op_f32(floor(1852f))).b.e.b)), u_input.b.x);
    var var_1 = _wgslsmith_mult_vec3_u32(~(vec3<u32>(reverseBits(u_input.c.x), ~81298u, func_1(Struct_3(-8893i, u_input.c.x, vec3<f32>(global2.x, -957f, -588f), 1i, Struct_2(1677f, Struct_1(vec3<f32>(global2.x, global2.x, global2.x), vec3<i32>(var_0, u_input.b.x, 37884i)))), global2.x).b.b) | _wgslsmith_div_vec3_u32(~vec3<u32>(35128u, u_input.c.x, 4294967295u), ~vec3<u32>(84860u, u_input.c.x, 32828u))), vec3<u32>(0u, ~_wgslsmith_mult_u32(59556u, ~u_input.c.x), u_input.c.x));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, ~(u_input.b.x | abs(var_0)), -var_0 | -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(~(-var_0), 23764i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), ~u_input.b)), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0, -32782i), func_1(Struct_3(-11i, u_input.c.x, vec3<f32>(global2.x, -1000f, 1000f), u_input.a, Struct_2(global2.x, Struct_1(vec3<f32>(1863f, 1494f, 168f), vec3<i32>(var_0, -2147483647i, -2147483647i)))), 313f).b.e.b.b)));
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) - _wgslsmith_f_op_f32(round(global2.x))), all(func_3(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(1u, 41119u, 117668u, var_1.x)), vec4<u32>(51202u, u_input.c.x, 77634u, 1u) & vec4<u32>(var_1.x, u_input.c.x, 1u, 1u), !vec4<bool>(global0.x, true, global0.x, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(755f, 792f, -399f), vec3<f32>(235f, -644f, -1565f), vec3<bool>(false, global0.x, global0.x)))))), u_input.b);
    global4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(50866u, ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 27453u), vec2<u32>(10895u, var_3.b.b)))));
}

