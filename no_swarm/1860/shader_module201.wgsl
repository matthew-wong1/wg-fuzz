struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(4294967295u, Struct_2(Struct_1(vec4<f32>(1000f, 2060f, -1062f, 1000f), 1i, 1688i, vec2<i32>(-14182i, -32073i))));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: array<Struct_2, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    var var_0 = true;
    let var_1 = Struct_5(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.d, u_input.b), 4294967295u) <= global0.a, true);
    var var_2 = Struct_5(any(select(select(!vec4<bool>(var_1.b, arg_2, true, false), !vec4<bool>(var_1.a, arg_2, arg_2, global1.x), false), select(!vec4<bool>(global1.x, false, false, true), select(vec4<bool>(var_1.b, true, true, true), vec4<bool>(global1.x, var_1.a, arg_2, var_1.a), true), true), select(vec4<bool>(var_1.a, false, arg_2, arg_2), select(vec4<bool>(global1.x, arg_2, false, arg_2), vec4<bool>(var_1.b, global1.x, var_1.a, arg_2), vec4<bool>(true, arg_2, arg_2, false)), global1.x))), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-859f, arg_1.a.a.x))), _wgslsmith_f_op_f32(trunc(arg_0.b.a.a.x)), arg_1.a.a.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(294f, 1864f) * arg_1.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) - _wgslsmith_f_op_f32(-global0.b.a.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -927f)))))), any(select(global1.xw, vec2<bool>(!var_2.b, var_1.b | false), global1.zx))));
    return _wgslsmith_f_op_f32(-arg_1.a.a.x);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_mod_u32(~23327u, max(u_input.d, 4294967295u)), Struct_2(global0.b.a)), global0.b, any(select(vec4<bool>(true, global1.x, true, false), !vec4<bool>(false, global1.x, global1.x, global1.x), true)), vec2<i32>(_wgslsmith_clamp_i32(~u_input.c.x, 1i, 2147483647i), _wgslsmith_sub_i32(-arg_3.c, -2147483647i >> (global0.a % 32u))))));
    return Struct_2(Struct_1(global0.b.a.a, -2147483647i, global0.b.a.b, abs(u_input.c.yz)));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(_wgslsmith_f_op_f32(step(-420f, 1236f)), _wgslsmith_f_op_vec3_f32(sign(global0.b.a.a.wxw)), global0.b.a, Struct_1(global0.b.a.a, -2147483647i, ~(~(-1i)), select(firstTrailingBit(u_input.c.wz), vec2<i32>(u_input.c.x, global0.b.a.d.x), global1.x)));
    global1 = vec4<bool>(true, false, select(true, global1.x, true), global1.x);
    var var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(f32(-1f) * -886f))), _wgslsmith_f_op_f32(max(func_2(global0.b.a.a.x, vec3<f32>(-325f, 624f, -753f), Struct_1(global0.b.a.a, -27205i, 2147483647i, vec2<i32>(u_input.c.x, 1i)), Struct_1(var_0.a.a, global0.b.a.d.x, u_input.c.x, global0.b.a.d)).a.a.x, 1f)), 1417f, _wgslsmith_f_op_f32(-1530f * _wgslsmith_f_op_f32(global0.b.a.a.x * 869f))), global0.b.a.b, ~(global0.b.a.c ^ 2147483647i) & (i32(-1i) * -2147483647i), ~u_input.c.yz), vec2<u32>(_wgslsmith_mod_u32(~firstLeadingBit(u_input.a.x), 3027u), global0.a), 0u);
    let var_2 = var_0;
    let var_3 = countOneBits(20501u);
    return Struct_4(51490u, Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1505f * var_2.a.a.x) - 2007f), var_0.a.a.xwz, func_2(var_2.a.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, -260f, var_1.a.a.x) - var_2.a.a.xxw), func_2(var_2.a.a.x, var_0.a.a.xxz, Struct_1(var_1.a.a, var_2.a.d.x, var_0.a.c, var_0.a.d), var_2.a).a, var_1.a).a, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1248f, -100f, -835f, var_0.a.a.x))), global0.b.a.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global0.b.a.c, -1i, var_1.a.c), vec4<i32>(var_0.a.c, var_2.a.b, global0.b.a.c, 31271i)), countOneBits(vec2<i32>(-44648i, var_1.a.d.x)))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -46795i;
    var var_1 = Struct_3(global0.b.a, select(u_input.a, ~(u_input.e ^ _wgslsmith_mult_vec2_u32(u_input.e, u_input.a)), vec2<bool>(true, !(global1.x || global1.x))), global0.a);
    global0 = func_1();
    var var_2 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-23736i, -func_1().b.a.d.x), vec2<i32>(~14234i, u_input.c.x) ^ u_input.c.yx);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(global0.b.a.a.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_1().b.a.a.xy, var_1.a.a.xy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.a.a.x, 165f), _wgslsmith_f_op_f32(f32(-1f) * -408f)))));
}

