struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(1u, 1u, 12824u, 0u, 4294967295u, 28315u, 0u, 4294967295u);

var<private> global1: Struct_5;

var<private> global2: Struct_1;

var<private> global3: vec4<f32>;

var<private> global4: array<vec3<u32>, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_5(vec4<f32>(global3.x, 219f, global1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.d.x)))))), global1.b, arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), 404f, _wgslsmith_f_op_f32(1241f + _wgslsmith_f_op_f32(select(global1.a.x, 3224f, global1.b))))));
    global3 = _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a);
    let var_1 = min(~(global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(48199u, 4294967295u, global2.a.x, u_input.b), vec4<u32>(89832u, global2.a.x, 0u, var_0.c.a.x)), 0u), 26u)] | global2.a), firstLeadingBit(~global4[_wgslsmith_index_u32(~0u, 26u)]));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_div_f32(-1107f, 117f))));
    let var_3 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(-27675i, 18560i), -_wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(46528i, -42061i), _wgslsmith_clamp_i32(-2147483647i, -50427i, -21833i)));
    return select(10799u, _wgslsmith_add_u32(global1.c.a.x, global1.c.a.x), true);
}

fn func_2() -> Struct_5 {
    var var_0 = global1.b;
    global2 = global1.c;
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, func_3(global1.c)), 8u)];
    global4 = array<vec3<u32>, 26>();
    var var_2 = Struct_1(~(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(53190u, global1.c.a.x) & 16397u, 26u)] & reverseBits(vec3<u32>(1u, global2.a.x, global0[_wgslsmith_index_u32(1u, 8u)]))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1.a - global1.a))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(534f, 849f, global3.x, global3.x)), global1.a))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, 1667f, 1000f, 369f))))))), !global1.b, Struct_1(~reverseBits(_wgslsmith_mult_vec3_u32(var_2.a, vec3<u32>(var_2.a.x, 4294967295u, global0[_wgslsmith_index_u32(global2.a.x, 8u)])))), global3.xyz);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = !((global1.b || true) | !global1.b);
    var var_1 = 33868u;
    let var_2 = func_2();
    global1 = var_2;
    var var_3 = -1000f;
    return select(vec4<bool>(select(global1.b, global1.b, !select(true, false, false)), false, false, global1.b), select(!select(!vec4<bool>(var_0, false, false, true), !vec4<bool>(true, var_2.b, var_2.b, true), true), vec4<bool>(true || func_2().b, var_2.b, true, !var_0), !(global1.c.a.x < 8045u) && any(select(vec3<bool>(var_0, var_2.b, true), vec3<bool>(var_2.b, false, true), var_0))), vec4<bool>(!(!all(vec2<bool>(var_0, var_2.b))), false, !(!all(vec3<bool>(var_0, true, true))), any(select(!vec3<bool>(true, true, var_0), !vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(false, true, false, global1.b), !vec4<bool>(global1.b, false, false, global1.b), !(!(!func_1(vec2<f32>(global3.x, global1.d.x), -1319i, global1.a.x, vec4<i32>(2147483647i, 49726i, -1i, -1i)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, ~_wgslsmith_sub_u32(0u, max(1u, _wgslsmith_dot_vec3_u32(global1.c.a, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 3213u, 88087u))))), 8u)];
    global3 = global1.a;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, global3.x))), _wgslsmith_f_op_f32(abs(global1.a.x)), 1512f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.a)))), _wgslsmith_div_vec4_f32(global1.a, global1.a)));
    global4 = array<vec3<u32>, 26>();
    global1 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2().d.x, global3.x, -113f, _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)) - vec4<f32>(global3.x, _wgslsmith_f_op_f32(global3.x - 1777f), -484f, _wgslsmith_f_op_f32(min(-107f, -2125f))))), true, func_2().c, vec3<f32>(-1652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), func_2().a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2007f, _wgslsmith_f_op_f32(global1.a.x + -1015f)))), ~vec4<u32>(countOneBits(u_input.a), abs(func_2().c.a.x), ~0u >> (select(u_input.a, global1.c.a.x, true) % 32u), max(abs(global2.a.x), 54123u)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.zy, _wgslsmith_mult_vec2_u32(global2.a.xy, vec2<u32>(7088u, u_input.c.x)), max(reverseBits(vec2<u32>(u_input.b, u_input.a)), reverseBits(vec2<u32>(86593u, 13953u)))), global2.a.yx));
}

