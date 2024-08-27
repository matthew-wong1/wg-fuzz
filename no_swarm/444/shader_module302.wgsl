struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 27>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1105f, 533f, -308f, 256f), vec3<u32>(25731u, 0u, 4294967295u), vec3<bool>(false, true, false), vec2<bool>(false, false), 88314u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>) -> bool {
    global1 = array<vec4<i32>, 27>();
    let var_0 = !global2.c.x;
    global1 = array<vec4<i32>, 27>();
    global2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * 807f))), -238f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.a.x, global2.a.x), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) - _wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1337f), global2.a.x, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(arg_1.x + 1237f)))), ~vec3<u32>(arg_0.x, ~_wgslsmith_add_u32(54102u, u_input.b.x), 67235u), vec3<bool>(select(global0.x, -3284i, !var_0) >= 40810i, all(global2.c.zx), false), global2.d, ~_wgslsmith_mult_u32(arg_0.x, global2.b.x) | 18899u);
    var var_1 = 681f;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec2<bool> {
    let var_0 = arg_0.a.x;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-1f), 561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + -234f))) * global2.a), vec3<u32>(1u, _wgslsmith_mult_u32(~arg_0.b.x, _wgslsmith_mult_u32(31002u, 30848u)), min(max(arg_2, 4294967295u), ~0u)) | ~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, 4294967295u, 44088u), vec3<u32>(34110u, 4294967295u, 4294967295u))), !global2.c, arg_0.d, ~0u);
    let var_1 = arg_0;
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(20836i, 1i), 7949i, _wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(global0.x, -52263i)), firstLeadingBit(abs(vec2<i32>(-1i, global0.x))))), _wgslsmith_clamp_i32(-global0.x, -41117i, 48150i), global0.x, global0.x >> (global2.b.x % 32u));
    global1 = array<vec4<i32>, 27>();
    return !vec2<bool>(arg_2 != 1u, !(!global2.d.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1087f * 611f), _wgslsmith_div_f32(global2.a.x, global2.a.x)), global2.a.x, global2.a.x, -911f)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 0u, ~u_input.d), countOneBits(countOneBits(u_input.c.yzx))), select(!vec3<bool>(global2.c.x, any(global2.c.zx), true), vec3<bool>(global2.d.x, true, global2.d.x), global2.d.x), vec2<bool>(true, global2.c.x), 4294967295u);
    global0 = vec2<i32>(1i, global0.x);
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1156f, -1347f, global2.a.x))), u_input.c.zwy, vec3<bool>(!(true | any(vec3<bool>(false, global2.d.x, var_0.d.x))), true, var_0.c.x), func_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.a.x, global2.a.x, -876f) - vec4<f32>(var_0.a.x, global2.a.x, -540f, global2.a.x)), _wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a))), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(0u, 88648u, 7095u)), vec3<bool>(true, -1000f != var_0.a.x, global2.c.x), vec2<bool>(any(vec2<bool>(global2.c.x, global2.d.x)), func_3(u_input.c.xyx, global2.a)), _wgslsmith_dot_vec3_u32(var_0.b, min(global2.b, u_input.b))), 13324u, 43258u), ~var_0.e);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global2.a.x, 1438f)), 1256f, any(vec2<bool>(var_0.d.x, true)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - var_0.a.x) * -1149f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x - 304f), 1945f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-495f * -363f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(sign(var_0.a.x))))), global2.b, !select(vec3<bool>(!var_0.c.x, !global2.c.x, !global2.c.x), select(vec3<bool>(global2.d.x, true, false), vec3<bool>(global2.d.x, false, false), all(vec4<bool>(true, var_0.c.x, var_0.c.x, true))), false), vec2<bool>((var_0.a.x == global2.a.x) | true, false), global2.e);
}

fn func_1() -> Struct_1 {
    var var_0 = global2.c.x;
    let var_1 = func_2();
    global1 = array<vec4<i32>, 27>();
    var var_2 = var_1;
    let var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, abs(2147483647i)), countOneBits(-(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(1i, global0.x)) ^ (vec2<i32>(global0.x, 1i) >> (global2.b.xy % vec2<u32>(32u))))));
    return Struct_1(_wgslsmith_div_vec4_f32(var_1.a, var_1.a), min(var_1.b, ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 35894u, var_1.b.x), var_2.b)) >> (u_input.c.xyy % vec3<u32>(32u)), var_1.c, func_2().d, 52857u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a.x, global2.a.x, -371f, 1484f))) - global2.a))), vec3<u32>(1u, global2.e, 1u), func_2().c, vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-7445i, global0.x, global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(0i, 2147483647i, 11363i))) >= (global0.x ^ 2147483647i), !func_1().d.x), u_input.b.x);
    var var_0 = 0i;
    var_0 = global0.x << (_wgslsmith_clamp_u32(~u_input.b.x, u_input.a.x, u_input.c.x) % 32u);
    var var_1 = vec3<bool>(all(vec4<bool>(true, global2.a.x >= _wgslsmith_f_op_f32(global2.a.x - 441f), true, any(vec4<bool>(true, true, true, true)))), any(vec3<bool>(any(global2.c), global2.d.x, true)), global2.d.x);
    var_0 = select(global0.x ^ max(global0.x, _wgslsmith_mod_i32(global0.x, global0.x)), ~global0.x, !func_4(Struct_1(global2.a, u_input.c.yww, vec3<bool>(var_1.x, false, global2.c.x), vec2<bool>(true, false), 0u), 40752u, func_1().e).x) | _wgslsmith_div_i32(global0.x, 1i);
    var_1 = vec3<bool>(_wgslsmith_add_i32(global0.x, _wgslsmith_sub_i32(global0.x, global0.x ^ -9489i)) != -2147483647i, global2.a.x < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global2.a.x, 1776f)))), 1499f)), !all(vec2<bool>(any(vec4<bool>(var_1.x, false, true, true)), all(var_1.xy))));
    var var_2 = var_1.xy;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(vec2<i32>(firstLeadingBit(global0.x), ~2147483647i)), -abs(abs(vec2<i32>(1i, 2147483647i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2003f)))), global0.x);
}

