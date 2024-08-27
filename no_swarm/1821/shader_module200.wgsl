struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: array<Struct_5, 3>;

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    global0 = array<Struct_5, 3>();
    var var_1 = ~_wgslsmith_dot_vec2_u32(~(~(~u_input.b.yz)), u_input.b.yy);
    global2 = all(!vec2<bool>(arg_0.a < var_0.a, any(vec2<bool>(true, false)))) || true;
    let var_2 = _wgslsmith_add_u32(20334u, 0u);
    return _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(trunc(global3.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_5) -> Struct_3 {
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x - -360f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -369f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_3(Struct_1(global3.x, vec3<f32>(-1085f, 1000f, -1000f))))))), _wgslsmith_f_op_f32(max(-1129f, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, 636f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1170f, var_0.a.x, true)) - var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1202f + 747f) + _wgslsmith_f_op_f32(round(var_0.a.x))))));
    var var_2 = Struct_1(-768f, vec3<f32>(-1182f, -1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, var_0.a.x)) + _wgslsmith_div_f32(1868f, -1611f)))));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_div_f32(549f, 743f), 905f))));
    var var_3 = true;
    return Struct_3(1u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(round(453f)), _wgslsmith_f_op_f32(var_0.a.x + -941f))))), arg_0.xy, _wgslsmith_add_i32(~(i32(-1i) * -2147483647i), abs(_wgslsmith_dot_vec3_i32(arg_0.xzy, vec3<i32>(arg_0.x, u_input.c, 17641i) ^ vec3<i32>(u_input.a.x, arg_0.x, u_input.a.x)))), max(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), countOneBits(vec3<i32>(u_input.a.x, -30035i, -14566i))), _wgslsmith_add_i32(arg_0.x, i32(-1i) * -39377i))));
}

fn func_1() -> Struct_5 {
    let var_0 = func_2(-(~vec4<i32>(~u_input.a.x, -23684i, u_input.c, firstLeadingBit(u_input.c))), 1u, Struct_5(vec2<bool>(true, true | any(vec2<bool>(true, false)))));
    let var_1 = -abs(-(~(-6178i) ^ min(u_input.c, 2341i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.b.x, global3.x, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(929f * 1490f))) + _wgslsmith_f_op_f32(-var_0.b.a)));
    let var_3 = u_input.a.xz;
    let var_4 = ~68545u;
    return Struct_5(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), any(vec4<bool>(false, true, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 3>();
    let var_0 = func_1();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global3.x, global3.x)))), _wgslsmith_f_op_f32(global3.x + global3.x));
    global2 = true;
    let var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-4785i);
}

