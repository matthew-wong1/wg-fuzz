struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: vec2<i32>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(abs(0u));
    var var_1 = vec2<u32>(~u_input.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 17649u, global0.c.x), countOneBits(vec3<u32>(0u, var_0.a, 12668u)))) >> (global1.e.c.xy % vec2<u32>(32u));
    var var_2 = -1i;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(631f * _wgslsmith_f_op_f32(sign(global1.e.b))), 194f));
    var var_4 = _wgslsmith_div_i32(global2.x, -3080i);
    return Struct_2(global1.a, global1.d, any(vec2<bool>(all(vec3<bool>(true, global1.d, global1.c)), !global1.b)), !all(select(vec3<bool>(global1.b, global1.c, false), vec3<bool>(true, false, false), false)), global1.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_2 {
    global1 = arg_2.b;
    let var_0 = vec4<u32>(143076u, arg_2.a | arg_2.c.c.x, ~firstLeadingBit(~(arg_2.b.e.a >> (60936u % 32u))), min(92963u, ~u_input.a.x));
    var var_1 = !vec4<bool>(arg_1.x, true, arg_2.b.b, !arg_2.b.c);
    let var_2 = 4797i;
    return func_2();
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>) -> vec2<f32> {
    global1 = arg_0.b;
    global3 = func_2().a.c.x;
    global0 = func_2().a;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b, -401f, arg_0.d.b)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.b, global0.b, global1.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-714f, global1.e.b, arg_0.c.b) - vec3<f32>(global0.b, 127f, -752f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b, global1.a.b, global1.e.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-572f, 1000f, 579f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.e.b, global1.a.b, -1594f), vec3<f32>(-1256f, arg_0.c.b, -474f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + -1035f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.b - _wgslsmith_div_f32(2874f, -1106f))), _wgslsmith_f_op_f32(abs(-623f))));
    var var_1 = vec2<bool>(true, true);
    return var_0.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.e;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(85676u, func_1(vec4<i32>(2147483647i, -1i, 5032i, global2.x), vec4<bool>(global1.b, global1.d, false, global1.d), Struct_3(global0.a, Struct_2(Struct_1(1u, -845f, global1.e.c, vec4<i32>(-2147483647i, global1.a.d.x, 17387i, global2.x)), global1.b, global1.d, global1.b, global1.e), global1.a, global1.e)), func_1(vec4<i32>(-47362i, -1095i, -14624i, global1.a.d.x), vec4<bool>(false, global1.c, global1.c, global1.d), Struct_3(global0.a, Struct_2(Struct_1(19558u, 564f, vec4<u32>(global0.a, 54201u, 39639u, u_input.e.x), global0.d), false, global1.d, global1.c, Struct_1(global0.c.x, global0.b, u_input.c, global1.a.d)), Struct_1(69813u, global1.a.b, global1.e.c, vec4<i32>(1i, global0.d.x, u_input.b.x, -38723i)), Struct_1(27504u, global1.e.b, vec4<u32>(u_input.c.x, 49666u, global1.a.c.x, 97227u), u_input.b))).e, Struct_1(global0.a, global1.e.b, vec4<u32>(global0.c.x, 1u, global0.c.x, 4294967295u), vec4<i32>(34361i, global0.d.x, u_input.b.x, 7097i))), ~vec2<i32>(u_input.b.x, 0i))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1905f), _wgslsmith_f_op_f32(abs(356f)))))));
    var var_1 = true;
    global3 = ~(~_wgslsmith_clamp_u32(1u, u_input.c.x, _wgslsmith_clamp_u32(global1.a.a, global1.e.c.x, 4294967295u)));
    let var_2 = Struct_5(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(4294967295u), _wgslsmith_sub_u32(func_1(vec4<i32>(-2147483647i, 0i, -2147483647i, global2.x), vec4<bool>(false, true, false, global1.c), Struct_3(u_input.e.x, Struct_2(global1.a, true, false, true, global1.a), Struct_1(808u, -452f, global0.c, global0.d), global1.e)).a.c.x, ~u_input.a.x)), ~global0.c.zy));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, -506f, _wgslsmith_f_op_f32(157f * global0.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1057f, -2186f, global0.b), vec3<f32>(var_0.x, -582f, global0.b))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1050f, _wgslsmith_f_op_f32(step(1901f, _wgslsmith_f_op_f32(-global1.a.b))), -2127f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(415f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(886f, -1581f, global1.d))), _wgslsmith_f_op_f32(sign(-1326f)))), func_2().e.b), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(82167u, 4294967295u), global0.c.xx & vec2<u32>(u_input.e.x, u_input.d))), abs(select(_wgslsmith_clamp_u32(var_2.a, global1.a.c.x, global0.a) ^ var_2.a, 1u, global1.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-183f, -1000f) - vec2<f32>(-1498f, global1.e.b)), _wgslsmith_f_op_vec2_f32(-var_3.zz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(982f, var_0.x), vec2<f32>(1377f, global0.b))))))), _wgslsmith_f_op_f32(var_0.x + global1.e.b));
}

