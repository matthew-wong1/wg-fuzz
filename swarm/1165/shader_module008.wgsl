struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 29421u, 0u));

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    global2 = arg_1.c;
    var var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1.a, arg_1.d)) * _wgslsmith_f_op_vec4_f32(trunc(arg_1.a))))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-2417f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, -398f)))), all(!vec4<bool>(global1.x, true, global1.x, global1.x)) && !(var_0.x != -703i))), Struct_1(_wgslsmith_clamp_vec4_u32(u_input.e, ~(~vec4<u32>(42124u, global2.a.x, u_input.e.x, 713u)), ~(arg_2.a & arg_1.c.a))), arg_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_1.a.x, 254f, global1.x)), arg_1.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * arg_0)));
    let var_2 = arg_2;
    var var_3 = var_1.c;
    return vec3<bool>(((77834u ^ firstTrailingBit(var_3.a.x)) << (_wgslsmith_mult_u32(arg_2.a.x, firstTrailingBit(var_2.a.x)) % 32u)) > 46082u, global1.x, all(vec3<bool>(false, global1.x, arg_0 > 1349f)) && all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, global1.x), true), vec3<bool>(false, global1.x, false), vec3<bool>(false, true, global1.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<bool>) -> vec3<bool> {
    let var_0 = arg_0.e;
    let var_1 = Struct_1(u_input.e);
    global0 = arg_0.c;
    let var_2 = _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))), arg_0.a.x))))));
    var var_3 = u_input.b;
    return vec3<bool>(((true && arg_2.x) && global1.x) | global1.x, arg_1.x && false, any(!vec2<bool>(any(vec4<bool>(arg_2.x, true, true, false)), arg_2.x)));
}

fn func_2() -> Struct_2 {
    global1 = !select(select(func_4(Struct_2(vec4<f32>(377f, -984f, -230f, -1713f), 478f, Struct_1(vec4<u32>(global2.a.x, 33206u, 25793u, global0.a.x)), vec4<f32>(-447f, -1114f, -482f, 1400f), -2630f), func_3(1940f, Struct_2(vec4<f32>(-1213f, 2471f, -1000f, 350f), -501f, Struct_1(global0.a), vec4<f32>(-591f, -1672f, 628f, -787f), -461f), Struct_1(vec4<u32>(14802u, 0u, 32528u, 55405u)), -1920f), vec3<bool>(false, false, global1.x)), !vec3<bool>(global1.x, global1.x, false), true), !(!func_3(829f, Struct_2(vec4<f32>(1050f, 463f, 788f, 884f), -843f, Struct_1(u_input.e), vec4<f32>(-961f, 1000f, 1965f, 1697f), 2773f), Struct_1(vec4<u32>(u_input.e.x, global0.a.x, 14827u, 26991u)), -250f)), -(~2147483647i) < u_input.c.x);
    let var_0 = Struct_1(countOneBits(~u_input.e));
    return Struct_2(vec4<f32>(-1889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-811f + _wgslsmith_f_op_f32(select(-344f, -230f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1123f))) - 371f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1718f)))), _wgslsmith_f_op_f32(-513f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1038f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(629f))))), Struct_1(global2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(107f, -1000f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(305f + 559f))))), -3669f);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global1 = !vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1572f)) > arg_1, select(any(vec3<bool>(global1.x, global1.x, false)), arg_1 > _wgslsmith_f_op_f32(floor(-745f)), global1.x));
    var var_0 = func_2();
    var var_1 = !select(vec4<bool>(true, global1.x, all(!vec4<bool>(global1.x, false, true, global1.x)), !global1.x), vec4<bool>(true, true || !global1.x, select(global1.x, true, any(vec3<bool>(false, global1.x, false))), func_3(_wgslsmith_f_op_f32(arg_1 - arg_1), func_2(), var_0.c, _wgslsmith_div_f32(var_0.a.x, var_0.b)).x), vec4<bool>(global1.x, !all(vec3<bool>(true, true, global1.x)), _wgslsmith_f_op_f32(select(arg_1, -215f, false)) < arg_1, select(false, all(global1.yz), select(false, global1.x, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, arg_1, 361f, -1000f)), _wgslsmith_f_op_vec4_f32(var_0.d + var_0.a))), !all(vec4<bool>(global1.x, global1.x, true, var_1.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(trunc(-591f)))), func_2().c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b + arg_1), -408f, _wgslsmith_f_op_f32(-arg_1), -2462f)) - var_0.d), arg_1);
    var var_3 = var_0.c;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-_wgslsmith_add_i32(u_input.b ^ -u_input.d, -28229i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(f32(-1f) * -2031f)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1511f, _wgslsmith_f_op_f32(min(-1092f, 1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -763f))));
    var var_1 = !(!(!vec4<bool>(global1.x, global1.x, global1.x, global1.x & global1.x)));
    var_1 = select(!select(!(!vec4<bool>(false, global1.x, false, global1.x)), select(select(vec4<bool>(false, global1.x, var_1.x, false), vec4<bool>(true, false, true, var_1.x), vec4<bool>(false, var_1.x, global1.x, false)), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, false, global1.x, global1.x), false), true), var_1.x), !select(!(!vec4<bool>(false, global1.x, var_1.x, true)), select(vec4<bool>(global1.x, false, var_1.x, false), !vec4<bool>(true, true, false, var_1.x), !vec4<bool>(false, false, var_1.x, global1.x)), select(select(vec4<bool>(var_1.x, true, true, global1.x), vec4<bool>(var_1.x, global1.x, var_1.x, true), var_1.x), select(vec4<bool>(false, var_1.x, global1.x, true), vec4<bool>(false, var_1.x, var_1.x, global1.x), vec4<bool>(false, true, var_1.x, false)), vec4<bool>(true, true, true, true))), !var_1.x);
    var var_2 = ~_wgslsmith_add_vec3_u32(global0.a.yxx & vec3<u32>(func_2().c.a.x, _wgslsmith_div_u32(global0.a.x, 0u), u_input.e.x), ~((global2.a.xzz | u_input.e.xzz) << (vec3<u32>(global0.a.x, u_input.e.x, 118036u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1313f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1457f * var_0)))), var_0));
}

