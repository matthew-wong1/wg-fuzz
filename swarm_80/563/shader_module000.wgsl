struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-381f, 1000f), true);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-534f, 995f), true);

var<private> global2: i32 = 1i;

var<private> global3: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = false;
    global2 = countOneBits(2147483647i);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)) + 646f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + global1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-385f, global1.a.x)))), true))), (_wgslsmith_f_op_f32(min(-1014f, global1.a.x)) != _wgslsmith_f_op_f32(round(global1.a.x))) || !global0.b);
    let var_2 = !vec2<bool>(global0.b, true);
    let var_3 = u_input.e.x ^ -1i;
    return vec2<f32>(924f, var_1.a.x);
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(trunc(-168f))), global1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1077f, _wgslsmith_f_op_f32(sign(global0.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(4294967295u)))))), arg_0.b);
    let var_1 = arg_0;
    var var_2 = arg_0;
    global1 = var_1;
    var var_3 = false;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(ceil(1000f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-873f, 1000f)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(global0.a.x, arg_0.x), true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.wy * _wgslsmith_f_op_vec2_f32(global1.a + global1.a)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.wy - vec2<f32>(arg_1.x, -1376f)), arg_1.zx)))), true);
    global3 = global0.b;
    var var_0 = u_input.e.x;
    let var_1 = global0.a.x > -836f;
    global2 = -22978i ^ u_input.d;
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-500f, 1604f), arg_1.zz)), true);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<u32> {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f), 433f), 152f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.a.x, 951f), global1.a)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1081f, -432f))))), true);
    let var_0 = global0.b;
    global1 = func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(467f)), arg_1.a.x, _wgslsmith_f_op_f32(-global0.a.x), arg_1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0))), !(!vec4<bool>(arg_1.b, true, arg_1.b, true)))))), vec4<f32>(627f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x * 259f), -1000f), global0.a.x)), global1.a.x, arg_1.a.x));
    var var_1 = !(!(u_input.b.x < _wgslsmith_mult_u32(1u, ~1599u)));
    let var_2 = u_input.b.x;
    return min(vec3<u32>(var_2, u_input.b.x ^ u_input.b.x, ~4294967295u), select(~(~vec3<u32>(27578u, 58480u, u_input.c.x)), firstTrailingBit(~vec3<u32>(var_2, u_input.b.x, 4294967295u)), vec3<bool>(arg_1.b, func_1(vec4<f32>(arg_0.x, -505f, -886f, arg_0.x), arg_0).b, func_1(vec4<f32>(-629f, global1.a.x, -391f, -686f), vec4<f32>(313f, -387f, arg_0.x, -1000f)).b)) & _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 9518u, 34494u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_2, 52685u), vec3<u32>(u_input.c.x, 4294967295u, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(-1505f, 1871f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(285f)) + _wgslsmith_f_op_f32(global1.a.x - global1.a.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_div_f32(global1.a.x, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a.x)), -126f)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1152f, -1000f, global1.a.x, 1429f))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0.a.x, _wgslsmith_div_f32(global0.a.x, -2570f), global0.a.x), vec4<f32>(global0.a.x, global0.a.x, 1f, _wgslsmith_f_op_f32(-948f * -959f)))));
    global0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(var_0.x)).x, _wgslsmith_f_op_f32(global1.a.x * -1611f), func_1(vec4<f32>(988f, -274f, global1.a.x, -2292f), vec4<f32>(global1.a.x, global0.a.x, -395f, -1345f)).a.x, global0.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1619f, 462f, -245f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 240f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x)))));
    let var_1 = select(!vec4<bool>(!all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, global0.b)), global0.b == any(vec3<bool>(false, true, false)), !global1.b), vec4<bool>(any(vec3<bool>(true, true, true)), select(any(vec2<bool>(true, true)), true | global1.b, _wgslsmith_f_op_f32(floor(350f)) > _wgslsmith_f_op_f32(-global1.a.x)), 2147483647i > ~u_input.e.x, global0.b), select(vec4<bool>(true, global0.b, true & global0.b, !global0.b), !select(vec4<bool>(false, global1.b, global1.b, global1.b), vec4<bool>(global0.b, global0.b, global1.b, global0.b), !vec4<bool>(false, global0.b, true, global0.b)), !(!select(vec4<bool>(global0.b, global1.b, global1.b, true), vec4<bool>(global1.b, false, true, global1.b), vec4<bool>(global0.b, false, global0.b, true)))));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1094f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -583f)), 1357f, -239f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, global1.a.x, global0.a.x, 219f), vec4<f32>(791f, global0.a.x, -1562f, global1.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-882f, global1.a.x, global0.a.x, -1951f)))))));
    var var_3 = !vec2<bool>(!all(var_1), false);
    let var_4 = vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.a, var_2.a))), true))).x, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(909f * global1.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(abs(u_input.e), _wgslsmith_add_vec4_i32(u_input.e | u_input.e, u_input.e)));
}

