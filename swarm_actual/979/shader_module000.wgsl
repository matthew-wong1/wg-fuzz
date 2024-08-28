struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(-140f, -866f), vec4<f32>(-2095f, 356f, 626f, 124f), vec2<bool>(false, false), -1599f), Struct_1(vec2<f32>(424f, -436f), vec4<f32>(-1072f, 1000f, -709f, -842f), vec2<bool>(false, false), -1000f), Struct_1(vec2<f32>(1949f, -316f), vec4<f32>(-485f, -138f, -1037f, -355f), vec2<bool>(true, false), 346f), true);

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-369f, 554f), vec4<f32>(-259f, -1420f, 1097f, -1000f), vec2<bool>(false, false), -975f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<f32> {
    let var_0 = 53703u;
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global3.a, global3.b.wy)), _wgslsmith_f_op_vec2_f32(-global3.b.xx)))), vec4<f32>(-123f, -542f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(global1.x - 773f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.a.d))))), select(global3.c, !vec2<bool>(global2.c.c.x, global0.x), true), _wgslsmith_f_op_f32(floor(831f))), global2.a, global2.c, true);
    let var_1 = ((~(~vec2<u32>(0u, 22365u)) & select(u_input.a.yy, u_input.a.zz, global3.c)) | abs(vec2<u32>(var_0, _wgslsmith_mod_u32(u_input.d, 12944u)))) << (~min(vec2<u32>(47122u, 10405u | var_0), u_input.a.yy) % vec2<u32>(32u));
    let var_2 = vec2<bool>(all(!select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, false), any(global2.b.c))), true);
    let var_3 = -(~firstLeadingBit(_wgslsmith_mod_i32(min(u_input.b, -46716i), _wgslsmith_add_i32(arg_0, -1i))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-156f, -1547f, _wgslsmith_f_op_f32(global3.a.x - 1102f), _wgslsmith_f_op_f32(-203f - global2.b.b.x)), vec4<f32>(_wgslsmith_f_op_f32(global2.a.b.x - global2.b.a.x), _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-global2.a.b.x), -1605f))) - _wgslsmith_f_op_vec4_f32(-global3.b)));
}

fn func_2() -> Struct_4 {
    global0 = !vec3<bool>(all(!global3.c), global0.x, global3.c.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(446f + _wgslsmith_f_op_f32(exp2(global3.b.x))))), global3.a.x, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1092f, 656f)))))), _wgslsmith_f_op_f32(step(861f, global1.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, var_0.x, 478f)), vec3<f32>(-306f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, global2.b.a.x), global3.a.x)), global2.b.d)) - global3.b.zzz);
    var var_2 = Struct_2(Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(func_3(-(u_input.b & u_input.b))), vec2<bool>(select(true, select(global0.x, true, global2.a.c.x), global2.d), (u_input.d & u_input.d) <= (u_input.d | 96451u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(194f, 1000f)) - -1131f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1742f))))), Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - -808f), _wgslsmith_f_op_f32(global2.c.a.x * 2334f), _wgslsmith_div_f32(-1190f, 998f), var_0.x)), vec2<bool>(global2.a.c.x, _wgslsmith_f_op_f32(928f + -1201f) >= _wgslsmith_f_op_f32(global1.x * -455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f * global3.d))), global2.c, all(vec2<bool>(global0.x, true)));
    let var_3 = var_2.b.c.x;
    return Struct_4(-1040f);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b.x, global3.d)))), global2.c.b, !select(vec2<bool>(true, false), vec2<bool>(global3.c.x, global2.a.c.x), true), 1854f), global2.a, Struct_1(vec2<f32>(var_0.a, _wgslsmith_div_f32(global2.c.d, _wgslsmith_f_op_f32(-global2.a.b.x))), _wgslsmith_f_op_vec4_f32(func_3(-(arg_0.x >> (u_input.c.x % 32u)))), !global3.c, var_0.a), any(select(vec4<bool>(!arg_2.a, !global0.x, any(vec3<bool>(arg_2.a, arg_2.a, false)), false), select(vec4<bool>(true, true, global3.c.x, global3.c.x), vec4<bool>(false, true, global0.x, false), select(vec4<bool>(arg_2.a, true, global3.c.x, false), vec4<bool>(arg_2.a, false, global2.a.c.x, true), global0.x)), all(!vec4<bool>(false, true, true, arg_2.a)))));
    global0 = !vec3<bool>(global3.c.x, !(!(!global3.c.x)), false);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2217f), _wgslsmith_f_op_f32(-global1.x))) - -861f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-392f + global2.c.b.x), _wgslsmith_f_op_f32(-global1.x))))));
    global0 = select(vec3<bool>(true, true, true), vec3<bool>(false, 42639i >= _wgslsmith_add_i32(u_input.b << (4294967295u % 32u), arg_0.x), any(vec3<bool>(all(vec2<bool>(false, false)), true, false))), vec3<bool>(all(select(vec3<bool>(global2.c.c.x, false, global3.c.x), vec3<bool>(true, true, global2.c.c.x), false)) & any(vec2<bool>(true, global0.x)), all(select(select(vec4<bool>(false, global0.x, true, global2.c.c.x), vec4<bool>(true, var_1.a.c.x, false, global0.x), vec4<bool>(global2.a.c.x, arg_2.a, false, arg_2.a)), vec4<bool>(true, true, var_1.a.c.x, false), !vec4<bool>(false, arg_2.a, arg_2.a, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - arg_1.x) != var_0.a));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.a.xxx;
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 0u, 1u), ~(~(~(~vec3<u32>(var_1.x, 1272u, u_input.d)))));
    global3 = global2.a;
    let var_3 = func_1(-_wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(u_input.b), -47660i, -1i ^ u_input.b), vec3<i32>(-u_input.b, i32(-1i) * -18761i, _wgslsmith_add_i32(1i, -77307i)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b, -1i), abs(vec3<i32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_vec2_f32(-global2.a.b.zy), Struct_3(firstTrailingBit(u_input.b) >= (i32(-1i) * -28012i)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_i32(-28961i, _wgslsmith_mult_i32(~u_input.b, 1i)))).x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(select(global3.b.x, _wgslsmith_f_op_f32(abs(-493f)), true))))));
    var var_5 = _wgslsmith_f_op_vec4_f32(round(global2.a.b));
    let var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(u_input.b, u_input.b, 2147483647i)), ~0i >> (1u % 32u)) ^ u_input.b);
}

