struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1551f, -258f, -1297f, -641f);

var<private> global1: Struct_1 = Struct_1(645f, vec4<bool>(false, false, false, false), vec4<f32>(2165f, 585f, 1846f, -1249f), vec2<bool>(false, false), vec4<f32>(-634f, 1713f, 1306f, 238f));

var<private> global2: u32 = 64712u;

var<private> global3: bool = true;

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = ~abs(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.yxx, ~vec3<u32>(u_input.a.x, 18694u, arg_0.x)), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, 93410u))));
    global0 = _wgslsmith_f_op_vec4_f32(arg_2.e - global1.e);
    let var_1 = Struct_3(arg_1, ~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -7843i, 1i, 2147483647i) << (vec4<u32>(var_0.x, 1u, u_input.d.x, var_0.x) % vec4<u32>(32u)), -vec4<i32>(arg_1, 29656i, -1i, 0i), ~vec4<i32>(-20184i, arg_1, arg_1, -43508i)), -vec4<i32>(-1i, arg_1, -50869i, 11144i)));
    global3 = any(!select(global1.d, !arg_2.b.xy, arg_2.b.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -366f, -364f)));
    return arg_2.c.x;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = !global1.b.xw;
    var var_1 = Struct_2(~reverseBits(4294967295u >> (u_input.b % 32u)), select(vec2<bool>(global1.b.x, all(vec4<bool>(false, false, global1.b.x, var_0.x))), select(var_0, var_0, !global1.b.x), !(!vec2<bool>(global1.b.x, global1.d.x))), 0i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.yw, _wgslsmith_add_i32(max(-78594i, arg_0), var_1.c) ^ var_1.c, Struct_1(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1099f)), select(select(global1.b, vec4<bool>(global1.d.x, global1.b.x, false, var_0.x), vec4<bool>(global1.d.x, false, true, var_0.x)), vec4<bool>(var_0.x, var_1.b.x, true, true), !global1.b), _wgslsmith_f_op_vec4_f32(-global1.c), !vec2<bool>(false, var_0.x), vec4<f32>(_wgslsmith_f_op_f32(select(global1.c.x, -1159f, false)), -411f, global0.x, _wgslsmith_f_op_f32(global1.a - 588f))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-173f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(393f - global1.e.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f))))), !(!select(!vec4<bool>(true, false, var_1.b.x, false), select(global1.b, global1.b, vec4<bool>(var_0.x, true, false, var_1.b.x)), var_1.b.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(-global1.e.x)), _wgslsmith_f_op_f32(func_3(reverseBits(u_input.a.zz), var_1.c, Struct_1(-262f, vec4<bool>(global1.b.x, var_0.x, true, true), vec4<f32>(148f, 685f, -1896f, -1118f), vec2<bool>(var_0.x, var_1.b.x), global1.e))), global1.e.x, _wgslsmith_f_op_f32(-global0.x)))), var_0, global1.c);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)), _wgslsmith_f_op_f32(trunc(-1000f)));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1205f)) + _wgslsmith_f_op_f32(max(189f, global0.x))), -379f))), select(select(vec4<bool>(true, all(vec3<bool>(true, global1.d.x, false)), true, var_0.x), vec4<bool>(true, var_3.d.x, arg_0 != arg_0, global1.b.x), select(select(var_3.b, var_3.b, global1.b), var_3.b, vec4<bool>(true, var_1.b.x, var_3.d.x, false))), global1.b, var_3.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, _wgslsmith_f_op_f32(min(var_3.a, _wgslsmith_f_op_f32(1000f - var_4.x))), -952f, var_4.x)), vec2<bool>(all(!global1.b), !var_1.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-789f, -121f, 364f, _wgslsmith_f_op_f32(-var_3.e.x))) + _wgslsmith_f_op_vec4_f32(-global1.e)));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    global1 = func_2(arg_0.b.x, vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(arg_1, ~(~1u)), 61172u, u_input.b));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(1f - global1.e.x)))), func_2(4851i, vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, arg_1, min(arg_1, arg_1)), ~55380u, 21215u, _wgslsmith_sub_u32(~1u, ~1u))).b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(global1.e)))), !global1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global1.c + _wgslsmith_f_op_vec4_f32(select(global1.e, global1.e, global1.d.x))), _wgslsmith_f_op_vec4_f32(-global1.c))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(max(-1518f, global0.x)), _wgslsmith_f_op_f32(select(1307f, global0.x, true)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-645f)))) - -174f), -346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1998f + _wgslsmith_f_op_f32(global0.x * global0.x))))));
    var_0 = Struct_1(-1671f, vec4<bool>(any(vec2<bool>(all(var_0.b.yx), u_input.b <= 1457u)), select((arg_1 & 0u) > u_input.a.x, func_2(-2147483647i, ~vec4<u32>(61339u, arg_1, u_input.d.x, 81304u)).b.x, all(func_2(arg_0.a, vec4<u32>(arg_1, arg_1, u_input.c.x, u_input.c.x)).b)), firstLeadingBit(48203i) <= _wgslsmith_clamp_i32(abs(arg_0.a), arg_0.b.x, 1i), true), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1058f)), 1117f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2118f * 997f))), 2659f, _wgslsmith_f_op_f32(-var_1.x)), func_2(~2147483647i, ~_wgslsmith_add_vec4_u32(u_input.d, countOneBits(vec4<u32>(u_input.c.x, u_input.b, 0u, 4294967295u)))).b.ww, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(462f)), -1777f, -985f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-150f - -1045f), 1000f))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 974f, -249f, _wgslsmith_f_op_f32(-global0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.c)))));
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = arg_0.yy;
    var var_1 = true;
    global1 = Struct_1(global0.x, select(global1.b, global1.b, global1.b), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), global1.c.x, global1.a, _wgslsmith_f_op_f32(global0.x * global1.e.x)), vec2<bool>(true, !func_2(1i, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, arg_0.x, var_0.x, 48622u), u_input.d)).b.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global1.c.x, -1167f), vec4<f32>(-1118f, -302f, -988f, global0.x))), global1.e)), vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-391f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-global1.c)));
    var_1 = !(true & global1.b.x);
    var var_2 = func_1(arg_1, ~arg_0.x);
    return reverseBits(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u >= u_input.d.x;
    var_0 = select(!(all(!vec3<bool>(global1.b.x, global1.b.x, global1.d.x)) && true), ~func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(60542u, 21642u, u_input.a.x), vec3<u32>(0u, u_input.d.x, 1u)), func_1(Struct_3(-1i, vec4<i32>(2147483647i, 15837i, 0i, -16995i)), 0u), -1450f) > 26589u, !(!(!global1.d.x)));
    global4 = !global1.d.x;
    let var_1 = Struct_2(_wgslsmith_add_u32(u_input.c.x, 1u), select(select(select(global1.d, global1.b.yx, any(global1.b)), vec2<bool>(false, all(vec3<bool>(false, global1.b.x, global1.b.x))), select(!global1.d, func_2(0i, u_input.c).d, !global1.d.x)), vec2<bool>(false, all(func_2(0i, u_input.d).b.xzx)), true), _wgslsmith_mod_i32(~(-18366i), -select(2147483647i, 0i, global1.d.x & true)));
    global3 = all(!global1.b.yyz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(10405u, 4294967295u, 31407u, u_input.b), u_input.d)), u_input.d.x, _wgslsmith_dot_vec4_u32(~(~u_input.d), reverseBits(u_input.d))));
}

