struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(30437u, 12578u, 20050u);

var<private> global1: array<i32, 11> = array<i32, 11>(-1623i, 2147483647i, -1i, 2147483647i, 189i, -38350i, i32(-2147483648), 50770i, -73474i, -4981i, 1i);

var<private> global2: vec2<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    var var_0 = !select(!arg_1.b.e.x, arg_1.e.e.x, true);
    global1 = array<i32, 11>();
    let var_1 = any(arg_1.b.e);
    var_0 = true;
    global2 = _wgslsmith_f_op_vec2_f32(-arg_1.b.d.xw);
    return _wgslsmith_f_op_f32(f32(-1f) * -1615f);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(func_3(~(~u_input.b.x), Struct_2(true, Struct_1(u_input.d, vec4<f32>(1390f, arg_0, arg_1, -349f), arg_0, vec4<f32>(arg_0, -1885f, -398f, arg_0), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(-arg_1), Struct_1(u_input.c.yzy, vec4<f32>(-905f, arg_1, arg_0, arg_0), 152f, vec4<f32>(global2.x, global2.x, arg_1, 102f), vec3<bool>(false, true, false)), Struct_1(vec3<u32>(global0.x, u_input.b.x, global0.x), vec4<f32>(global2.x, 283f, -450f, -891f), 338f, vec4<f32>(arg_0, 502f, -427f, global2.x), vec3<bool>(false, true, true)))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(1000f, 949f)))))));
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(max(-1i, 0i), firstTrailingBit(i32(-1i) * -15927i)) << (abs(~global0.xx) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, (u_input.a | vec2<i32>(-10203i, u_input.a.x)) & firstLeadingBit(u_input.a), _wgslsmith_div_vec2_i32(u_input.a, u_input.a)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(33529i, 58250i) << (u_input.b.yy % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(25064u, 11u)], -2147483647i), u_input.a)), firstTrailingBit(u_input.a)), ~u_input.a & ~vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 11u)], u_input.a.x)));
    let var_2 = select(vec3<u32>(~(~u_input.c.x), u_input.d.x & _wgslsmith_mult_u32(4294967295u, global0.x), ~(u_input.d.x >> (1u % 32u))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(u_input.d, u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(48252u, 100635u, 1u) & vec3<u32>(u_input.d.x, global0.x, u_input.d.x), ~vec3<u32>(global0.x, global0.x, 76277u))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(u_input.a.x == global1[_wgslsmith_index_u32(0u, 11u)], all(vec4<bool>(false, true, false, true)), arg_0 >= global2.x))) ^ u_input.d;
    var var_3 = Struct_2(all(vec2<bool>(true, any(vec2<bool>(true, false)))), Struct_1(_wgslsmith_div_vec3_u32(u_input.c.yyx, ~vec3<u32>(global0.x, 1u, 4294967295u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, -252f, arg_0, global2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, 426f, 1000f))))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1706f - -128f), global2.x, true))), vec4<f32>(-393f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1809f, 866f) + _wgslsmith_f_op_f32(global2.x - -582f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) + _wgslsmith_f_op_f32(func_3(4294967295u, Struct_2(true, Struct_1(var_2, vec4<f32>(1241f, -422f, arg_1, 1195f), 866f, vec4<f32>(2840f, arg_0, 150f, arg_0), vec3<bool>(false, true, true)), arg_1, Struct_1(var_2, vec4<f32>(665f, -311f, global2.x, global2.x), -1000f, vec4<f32>(arg_1, arg_0, -533f, global2.x), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(global0.x, 38348u, u_input.c.x), vec4<f32>(847f, arg_0, 592f, arg_0), global2.x, vec4<f32>(459f, -144f, arg_0, 1100f), vec3<bool>(false, true, false)))))), -237f), select(vec3<bool>(true, any(vec4<bool>(false, true, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~var_1.x <= reverseBits(var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1289f)) - -637f))), Struct_1(~vec3<u32>(~68321u, 2336u, ~15966u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -584f, global2.x, -1130f)))), 698f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-548f - -178f), _wgslsmith_f_op_f32(min(global2.x, arg_1))), -289f, 546f, -362f), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), Struct_1(abs(u_input.b), vec4<f32>(591f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1912f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1076f - arg_0) * arg_0), 1000f), global2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(889f, arg_0, _wgslsmith_div_f32(450f, arg_0), 2602f)), vec3<bool>(any(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)))));
    let var_4 = Struct_1(abs(vec3<u32>(~(~var_3.e.a.x), var_3.e.a.x | global0.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b.b - _wgslsmith_f_op_vec4_f32(round(var_3.d.b))) * _wgslsmith_f_op_vec4_f32(min(var_3.e.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1737f, 110f, global2.x), vec4<f32>(var_3.d.b.x, var_3.c, arg_1, arg_0), var_3.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) + global2.x)), _wgslsmith_f_op_vec4_f32(-var_3.d.b), vec3<bool>(false, true, !(reverseBits(u_input.c.x) > var_2.x)));
    return Struct_3(568f);
}

fn func_1() -> Struct_3 {
    return func_2(_wgslsmith_f_op_f32(f32(-1f) * -3068f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(693f + 1211f) + _wgslsmith_f_op_f32(abs(-966f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d;
    var var_0 = 4294967295u;
    let var_1 = func_1();
    var var_2 = min(~countOneBits(_wgslsmith_mod_u32(abs(40971u), abs(u_input.d.x))), _wgslsmith_div_u32(min(_wgslsmith_dot_vec3_u32(u_input.b, u_input.d), min(_wgslsmith_mult_u32(u_input.d.x, 0u), global0.x)), 60821u));
    var var_3 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1663f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_f_op_f32(-var_1.a)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 489f, -252f, global2.x) + vec4<f32>(-1052f, var_1.a, 1000f, -669f))))))), var_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -713f, var_1.a, 689f))), vec4<f32>(359f, -2474f, _wgslsmith_f_op_f32(674f + var_1.a), _wgslsmith_f_op_f32(abs(global2.x))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1828f), _wgslsmith_f_op_f32(abs(global2.x)))))), !vec3<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_4 = vec4<f32>(-2003f, -324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 1416f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - var_1.a), _wgslsmith_f_op_f32(-var_3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_3.a.x, Struct_2(var_3.e.x, Struct_1(vec3<u32>(1u, 86968u, 1u), var_3.d, var_1.a, var_3.b, vec3<bool>(true, var_3.e.x, false)), var_3.d.x, Struct_1(u_input.d, vec4<f32>(global2.x, var_1.a, var_3.d.x, -851f), -748f, vec4<f32>(1279f, var_3.c, var_3.b.x, 795f), var_3.e), Struct_1(vec3<u32>(52232u, 4294967295u, var_3.a.x), vec4<f32>(var_3.c, var_3.c, global2.x, var_3.d.x), global2.x, vec4<f32>(var_3.c, var_1.a, var_3.d.x, var_3.c), var_3.e)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.c + global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(419f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.yw) * _wgslsmith_f_op_vec2_f32(var_4.yw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-666f, var_3.b.x))))));
}

