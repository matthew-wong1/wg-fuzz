struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> i32 {
    global0 = ~u_input.a;
    var var_0 = !all(vec4<bool>(true, true, true, true)) & global1.e;
    return i32(-1i) * -1i;
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = -vec2<i32>(func_2(), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, global0.x), u_input.d.ywy));
    global1 = arg_0.a;
    global1 = Struct_1(~global1.c ^ u_input.b, -firstLeadingBit(_wgslsmith_mult_i32(global1.b, -2147483647i)), global1.c, arg_0.a.b, any(vec4<bool>(select(global1.e, arg_0.a.b >= arg_0.a.b, all(vec4<bool>(true, global1.e, false, false))), global1.e, any(select(vec4<bool>(global1.e, false, false, false), vec4<bool>(true, true, global1.e, global1.e), arg_0.a.e)), false)));
    global0 = vec2<i32>(reverseBits(0i), ~arg_0.a.b);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1085f), arg_0.c.x))), -351f, arg_0.c.x, _wgslsmith_f_op_f32(abs(arg_0.c.x)));
    return !select(true, global1.e, _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-var_0.x)) == var_0.x);
}

fn func_1() -> vec2<i32> {
    var var_0 = !vec4<bool>(false, ~_wgslsmith_add_u32(u_input.c.x, 4294967295u) != 0u, !all(vec2<bool>(global1.e, true)), true);
    let var_1 = func_3(Struct_2(Struct_1(_wgslsmith_div_u32(u_input.b, max(4294967295u, 4294967295u)), abs(_wgslsmith_sub_i32(u_input.a.x, global0.x)), 0u, func_2(), global1.e), ~(abs(vec4<u32>(u_input.b, u_input.c.x, 18582u, u_input.c.x)) >> (min(vec4<u32>(0u, 1u, global1.a, 1u), vec4<u32>(u_input.b, global1.c, 17687u, u_input.b)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1703f, -416f, -809f) * vec3<f32>(-1607f, -1000f, -1163f)), vec3<f32>(1000f, -1795f, 112f)))))));
    let var_2 = -_wgslsmith_clamp_i32(-1i, 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -43377i, 10719i, 103016i), u_input.d) & vec4<i32>(global0.x, -5836i, -2147483647i, -2147483647i), u_input.d));
    let var_3 = Struct_3(Struct_1(28906u, 2646i, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(8235u, 1u, global1.a)), vec3<u32>(u_input.c.x, 50563u, ~1u)), -_wgslsmith_div_i32(var_2, 1i), false), Struct_1(_wgslsmith_clamp_u32(~global1.c, global1.c, _wgslsmith_mod_u32(u_input.b ^ u_input.b, global1.a << (19441u % 32u))), -2147483647i, global1.a, -40233i, !(!var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f + _wgslsmith_f_op_f32(step(-1373f, 736f))) * 1140f)), Struct_1(abs(0u), firstTrailingBit(35057i), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(u_input.c.x, u_input.b, 1u), ~vec3<u32>(0u, u_input.c.x, global1.c)), ~max(vec3<u32>(7128u, u_input.c.x, global1.a), vec3<u32>(1u, u_input.c.x, 104771u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(global1.b, 30796i), max(-global0.x, -2147483647i)), true || var_1));
    var var_4 = _wgslsmith_mult_vec3_u32(~vec3<u32>(global1.a, u_input.b, 1u), max(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, 4294967295u, 19026u, global1.c) & vec4<u32>(var_3.d.c, global1.c, global1.a, 76994u), ~vec4<u32>(27157u, var_3.a.a, u_input.c.x, 0u)), var_3.b.c), vec3<u32>(var_3.a.c, 61144u, ~45666u ^ (global1.c ^ 4294967295u))));
    return _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_clamp_i32(-39119i, var_2, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.d.ywx, u_input.d.zyy), -var_2)), i32(-1i) * -(20745i & global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(countOneBits(u_input.a) & func_1());
    global1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(27402u, global1.c), 50551u), 2981u), ~(-global1.d), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 105061u, 4827u)), vec3<u32>(global1.a, ~global1.a, global1.a)) << (global1.a % 32u), _wgslsmith_mult_i32(-(global1.d & 4464i), -5796i) << (global1.c % 32u), global1.e);
    global1 = Struct_1(0u, -50605i, countOneBits(_wgslsmith_mult_u32(u_input.c.x, global1.c)), -94771i, all(select(!select(vec4<bool>(false, true, global1.e, global1.e), vec4<bool>(true, false, global1.e, global1.e), vec4<bool>(false, false, global1.e, true)), !select(vec4<bool>(global1.e, global1.e, false, false), vec4<bool>(global1.e, false, false, global1.e), vec4<bool>(true, global1.e, false, true)), vec4<bool>(false, true, true, true))));
    var var_0 = 48610i;
    global1 = Struct_1(~global1.a, -1535i, global1.c, -8271i, all(vec4<bool>(false, false != global1.e, global1.b != global1.d, global1.e)) || select(_wgslsmith_dot_vec2_i32(u_input.d.wz, vec2<i32>(global0.x, 39565i)) > -37838i, true, global1.e));
    let var_1 = vec4<bool>(!(!global1.e), true, any(!select(select(vec4<bool>(true, global1.e, global1.e, global1.e), vec4<bool>(false, false, global1.e, true), false), select(vec4<bool>(true, global1.e, false, global1.e), vec4<bool>(global1.e, global1.e, global1.e, global1.e), true), global1.e)), func_3(Struct_2(Struct_1(~u_input.b, -22590i, global1.a, 0i, false), ~(~vec4<u32>(u_input.c.x, 4294967295u, 44445u, 99087u)), vec3<f32>(_wgslsmith_f_op_f32(1000f - 1551f), _wgslsmith_f_op_f32(-599f + 876f), _wgslsmith_f_op_f32(trunc(850f))))));
    var var_2 = ~u_input.c.x;
    var var_3 = u_input.d.xw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-798f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_f_op_f32(f32(-1f) * -1499f), -827f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) + 910f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -943f))), _wgslsmith_f_op_f32(f32(-1f) * -148f))));
}

