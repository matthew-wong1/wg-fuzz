struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: vec3<f32> = vec3<f32>(-444f, 184f, 1235f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<bool>) -> i32 {
    global0 = Struct_1(select(global0.a, ~2147483647i, !arg_3.x && false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.x - -182f), 106f, _wgslsmith_f_op_f32(sign(-1322f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1352f, global2.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), global0.b.x, _wgslsmith_f_op_f32(-arg_2)))));
    var var_0 = arg_1.a.a;
    var var_1 = arg_3.yz;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(abs(1031f)), 1f, global0.b.x);
    global0 = arg_1.a;
    return _wgslsmith_dot_vec3_i32((~vec3<i32>(1i, -2147483647i, 0i) << (vec3<u32>(abs(1u), 0u, 1u) % vec3<u32>(32u))) & u_input.b.yzy, countOneBits(vec3<i32>(_wgslsmith_div_i32(0i, -5382i), abs(~arg_1.a.a), -(~0i))));
}

fn func_2() -> vec2<u32> {
    global0 = Struct_1(min(-u_input.b.x, -global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x * -367f), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(trunc(725f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.x)) - _wgslsmith_f_op_f32(global2.x * global2.x)))));
    var var_0 = ~_wgslsmith_add_vec2_u32(u_input.c.xy, vec2<u32>(50209u, 54630u));
    var var_1 = Struct_2(Struct_1(i32(-1i) * -27098i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(-global0.b.x)), global0.b.x)), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(~func_3(4294967295u, Struct_2(Struct_1(u_input.b.x, vec3<f32>(607f, -447f, 142f)), vec4<i32>(2147483647i, global0.a, 0i, u_input.b.x), global0.b.x), 501f, vec3<bool>(false, false, true)), -select(-1205i, u_input.b.x, false), ~_wgslsmith_sub_i32(u_input.b.x, global0.a)), -abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), global0.a | -_wgslsmith_sub_i32(1i, global0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.x))))));
    global1 = any(!(!vec4<bool>(all(vec2<bool>(false, false)), var_0.x == u_input.c.x, 21672i > u_input.b.x, true)));
    let var_2 = var_1.a.b.x;
    return abs(vec2<u32>(u_input.a, countOneBits(~var_0.x))) & _wgslsmith_sub_vec2_u32(~u_input.c.yx, ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.xy, u_input.c.yy), vec2<u32>(u_input.c.x, u_input.c.x) ^ u_input.c.yw));
}

fn func_1(arg_0: f32) -> Struct_5 {
    let var_0 = u_input.a;
    let var_1 = ~(~func_2()) << (u_input.c.zx % vec2<u32>(32u));
    let var_2 = ~vec2<i32>(global0.a, -1i);
    let var_3 = var_1.x;
    global0 = Struct_1(~var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2115f, arg_0, 943f) * vec3<f32>(1712f, -1000f, arg_0))))) * global0.b));
    return Struct_5(select(vec3<bool>(true, any(vec2<bool>(true, true)), false), vec3<bool>(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), Struct_1(_wgslsmith_clamp_i32(-(global0.a >> (var_0 % 32u)), min(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_2.x, -29869i, 54379i, u_input.b.x)), select(global0.a, -1i, true)), _wgslsmith_mult_i32(u_input.b.x << (var_3 % 32u), i32(-1i) * -1i)), _wgslsmith_f_op_vec3_f32(step(global0.b, vec3<f32>(690f, _wgslsmith_f_op_f32(-global0.b.x), global0.b.x)))), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -256f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b.x, -502f)) + -1510f))))), -752f);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1678f, var_0, arg_1.b.b.x)) + vec3<f32>(global2.x, -106f, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), global0.b.x, -706f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - arg_1.b.b.x)))));
    let var_1 = u_input.b.www;
    let var_2 = Struct_4(60016u, Struct_3(func_1(_wgslsmith_f_op_f32(max(-100f, -902f))).b, arg_1.b, !(!(!vec4<bool>(arg_0.x, arg_1.c, false, arg_0.x))), vec4<bool>(arg_1.c, true, arg_0.x && (arg_1.a.x | arg_1.c), !(global0.b.x <= -1000f)), reverseBits(vec2<u32>(u_input.a, 10834u) ^ ~vec2<u32>(u_input.c.x, 4294967295u))), _wgslsmith_div_i32(~(~global0.a), u_input.b.x) & 28789i);
    return var_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), func_1(737f));
    let var_0 = func_1(-150f).a.zy;
    global1 = true;
    var var_1 = max(reverseBits(countOneBits(0u)), ~(~u_input.a));
    global0 = Struct_1(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x), ~(2147483647i ^ global0.a), func_3(~u_input.a, Struct_2(Struct_1(-38043i, global0.b), u_input.b, global0.b.x), _wgslsmith_div_f32(global2.x, -124f), func_1(-1643f).a)) >> (~_wgslsmith_add_u32(5784u | u_input.c.x, ~u_input.c.x) % 32u), _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(global2.x, -327f, global2.x)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, _wgslsmith_f_op_f32(round(800f))), vec2<f32>(1f, 1f))))), vec2<f32>(_wgslsmith_f_op_f32(-232f + _wgslsmith_f_op_f32(783f + _wgslsmith_f_op_f32(-global0.b.x))), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-u_input.b)));
}

