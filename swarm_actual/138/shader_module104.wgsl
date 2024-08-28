struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32) -> vec2<bool> {
    return vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) * _wgslsmith_f_op_f32(global0.a.x + 268f)) * global0.a.x) < arg_1, false);
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    global1 = Struct_1(select(func_3(_wgslsmith_clamp_i32(max(2147483647i, arg_0.x), _wgslsmith_div_i32(arg_0.x, -2147483647i), _wgslsmith_sub_i32(arg_0.x, -2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(347f)), -2111f), 1f), global0.c.a, global1.a), true, !(!select(select(vec3<bool>(true, global1.a.x, false), global1.c, vec3<bool>(global0.b.a.x, true, global1.a.x)), vec3<bool>(false, true, false), false && global0.b.c.x)));
    return -16430i;
}

fn func_1() -> vec4<bool> {
    let var_0 = ~17577u;
    global1 = global0.c;
    global1 = Struct_1(select(global0.b.c.yy, vec2<bool>(_wgslsmith_f_op_f32(abs(923f)) <= global0.a.x, false), global1.c.x), u_input.b <= (-u_input.b ^ func_2(countOneBits(vec4<i32>(43333i, u_input.b, u_input.b, -2147483647i)))), global1.c);
    let var_1 = Struct_1(!global0.b.c.zx, false, global1.c);
    var var_2 = var_0;
    return vec4<bool>(!(!((51067u & var_0) <= _wgslsmith_add_u32(var_0, u_input.c))), var_1.c.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(239f))) < -954f) | true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(func_1(), select(!vec4<bool>(true, true, global0.c.b, global0.b.b), vec4<bool>(false, true, global0.b.a.x, false), !global0.b.b), false));
    global1 = global0.b;
    var var_1 = func_1().zzz;
    let var_2 = u_input.c;
    var var_3 = 49758u ^ ~(~(~u_input.c << (~u_input.c % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.a.x), -u_input.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.a | 1i), -vec2<i32>(-2147483647i, 39653i) >> (vec2<u32>(6307u, var_2) % vec2<u32>(32u))), ~vec2<i32>(u_input.a, -992i) << (vec2<u32>(1u, abs(4294967295u)) % vec2<u32>(32u)), min(vec2<i32>(min(-22254i, u_input.b), -55278i), vec2<i32>(14768i, u_input.a) ^ vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mod_u32(~0u, var_2), u_input.a);
}

