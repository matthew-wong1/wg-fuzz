struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, true), 42268i, false, 1091f), 363u);

var<private> global2: u32;

var<private> global3: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = ~(vec4<u32>(global3.b.b, abs(~1u), _wgslsmith_mod_u32(global3.a.x, 0u) ^ (41941u ^ global3.d.b), u_input.b) | _wgslsmith_mult_vec4_u32(~(vec4<u32>(0u, global1.b, 42707u, u_input.b) << (vec4<u32>(global1.b, global1.b, 71303u, 4294967295u) % vec4<u32>(32u))), select(~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 54061u), vec4<u32>(43331u, 4294967295u, u_input.b, 30359u), vec4<bool>(false, global3.d.a.c, global3.d.a.a.x, true))));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(1u, 12055u), _wgslsmith_add_u32(36937u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, global3.d.b, global1.b, global3.b.b), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 41784u, u_input.b, 1u), vec4<u32>(var_0.x, 0u, global1.b, 1u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, u_input.b, global3.b.b, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.b, global3.d.b, 49520u), vec4<u32>(21672u, global1.b, 4294967295u, 4294967295u))))), 4294967295u, ~firstTrailingBit(_wgslsmith_clamp_u32(0u, ~28654u, abs(global1.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(global3.e));
    var var_3 = abs(abs(select(var_0.yy, var_1.zw, select(select(global1.a.a.zx, global3.d.a.a.wz, vec2<bool>(true, global3.b.a.c)), select(vec2<bool>(true, global1.a.a.x), vec2<bool>(false, false), vec2<bool>(false, false)), true))));
    var_1 = vec4<u32>(0u, 67822u, 1u, _wgslsmith_mod_u32(var_0.x, u_input.b) & var_3.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-565f)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    var var_0 = false;
    global1 = Struct_2(global1.a, 1u);
    var_0 = _wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d) + _wgslsmith_f_op_f32(round(-1012f)))), global1.a.d, true, ~global1.a.b)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1306f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.a.d) - _wgslsmith_f_op_f32(global1.a.d + global3.e.x))) - _wgslsmith_f_op_f32(-global3.d.a.d));
    var var_1 = global3.b;
    var_1 = global3.d;
    return global3.b;
}

fn func_1(arg_0: f32) -> u32 {
    global1 = func_2(29851i, -global3.d.a.b);
    var var_0 = select(vec3<bool>(true, true, select(all(global3.c.a) & !global3.b.a.a.x, global1.a.c, false)), func_2(global3.c.b, -8563i).a.a.zzy, global1.a.a.wxy);
    global2 = 4294967295u;
    var var_1 = global3.d;
    var var_2 = func_2(_wgslsmith_dot_vec2_i32(abs(firstTrailingBit(vec2<i32>(0i, var_1.a.b))) >> (~vec2<u32>(40855u, 0u) % vec2<u32>(32u)), vec2<i32>(-1i, func_2(-global3.b.a.b, -var_1.a.b).a.b)), -1i).a;
    return 17328u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(global3.a.x, 86011u), u_input.b, _wgslsmith_add_u32(func_1(-107f), global1.b)) << (abs(reverseBits(_wgslsmith_add_u32(global3.a.x, 35206u))) % 32u));
    var var_0 = !(!vec2<bool>(func_2(-1i ^ global3.b.a.b, ~global3.d.a.b).a.a.x, all(!global3.c.a)));
    let var_1 = func_2(-_wgslsmith_add_i32(u_input.a, -2147483647i), 17845i);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.b, vec4<f32>(var_1.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1071f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(628f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.d * _wgslsmith_f_op_f32(-global1.a.d)), global1.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c.d))))));
}

