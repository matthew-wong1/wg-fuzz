struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: Struct_3,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_5;

var<private> global2: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = global1.c.b.b.x;
    global1 = Struct_5(Struct_3(select(select(!arg_0.a, select(global1.c.b.a, vec4<bool>(global0.x, true, false, true), global0.x), global1.a.a), vec4<bool>(-1307f != global1.e.x, true, false, true), !(true & global1.c.b.a.x))), -42835i, global1.c, !select(!(!arg_0.a.zxz), select(vec3<bool>(global1.c.c.a.x, true, arg_0.a.x), select(global0.wwy, global1.c.b.a.zzw, global0.yxy), false), vec3<bool>(!global0.x, true, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e)) * vec3<f32>(_wgslsmith_f_op_f32(min(global1.e.x, 1000f)), global1.e.x, _wgslsmith_div_f32(-202f, -1656f))) * vec3<f32>(1000f, -457f, global1.e.x)));
    let var_1 = ~(~vec4<i32>(-1629i, -30705i, reverseBits(_wgslsmith_div_i32(2147483647i, -2147483647i)), global2.x));
    global2 = var_1;
    global2 = var_1;
    return firstLeadingBit(global1.b) ^ 0i;
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.e.x, _wgslsmith_f_op_f32(floor(-212f)))))));
    var var_1 = (all(select(global1.a.a, vec4<bool>(global1.a.a.x, global1.d.x, false, global0.x), true)) && !global1.d.x) & global0.x;
    var_0 = _wgslsmith_f_op_f32(-global1.e.x);
    return vec4<i32>(-global2.x, select(func_3(global1.a) & firstLeadingBit(-1i), _wgslsmith_div_i32(u_input.a.x | ~global1.b, _wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 20156i))), global0.x), u_input.a.x, abs(-1i));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(arg_0.e)))));
    global0 = global1.a.a;
    let var_1 = _wgslsmith_div_vec4_u32(abs(~vec4<u32>(13256u, 28228u, arg_0.d.x, 18070u)), firstLeadingBit(global1.c.b.b) | vec4<u32>(0u & arg_0.d.x, global1.c.b.b.x, 1u, global1.c.b.b.x)) & _wgslsmith_sub_vec4_u32(~global1.c.b.b, ~select(countOneBits(global1.c.b.b), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.x, global1.c.b.b.x, arg_0.d.x, 4294967295u), vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 1u)), global0.x));
    var var_2 = -arg_0.a.x;
    var var_3 = ~abs(1u);
    return Struct_2(_wgslsmith_div_i32(global2.x, 0i), Struct_1(select(vec4<bool>(all(vec4<bool>(arg_0.b, true, true, true)), global0.x, global1.c.a != 13742i, !arg_0.b), global1.c.b.a, arg_0.c.a.x), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.b.b.x, 95615u, arg_0.d.x, 136341u), vec4<u32>(46235u, var_1.x, global1.c.c.b.x, var_1.x)), vec4<u32>(80018u, global1.c.b.b.x, global1.c.b.b.x, global1.c.c.b.x), _wgslsmith_div_vec4_u32(var_1, vec4<u32>(61378u, arg_0.d.x, 87729u, global1.c.c.b.x))))), global1.c.c);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<bool>) -> Struct_5 {
    let var_0 = vec2<i32>(-1i) * -(global2.zy ^ vec2<i32>(40465i, _wgslsmith_clamp_i32(1i, -33970i, arg_0.c.a)));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global1 = func_5(Struct_5(Struct_3(select(vec4<bool>(false, true, true, global1.c.b.a.x), !vec4<bool>(global0.x, global1.d.x, global1.c.c.a.x, true), all(vec2<bool>(true, global0.x)))), -global1.c.a, func_4(Struct_4(func_2(), global0.x, global1.a, global1.c.c.b.xy, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.e.x, -1000f, global1.e.x, -1000f), vec4<f32>(global1.e.x, global1.e.x, global1.e.x, global1.e.x))))), global1.c.c.a.wwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-213f, global1.e.x, -433f), vec3<f32>(global1.e.x, global1.e.x, 160f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-263f, global1.e.x, -445f))))), select(func_4(Struct_4(firstLeadingBit(vec4<i32>(global2.x, global2.x, global2.x, -50246i)), true, global1.a, firstLeadingBit(global1.c.c.b.yz), _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, global1.e.x, global1.e.x, 480f), vec4<f32>(global1.e.x, global1.e.x, 884f, 204f)))).b.a.wxx, vec3<bool>(true, true, true), true));
    global1 = Struct_5(global1.a, 0i, func_4(Struct_4(func_2(), any(vec4<bool>(global1.c.c.a.x, global1.c.b.a.x, false, global1.a.a.x)), func_5(Struct_5(Struct_3(global1.c.b.a), u_input.a.x, global1.c, vec3<bool>(global1.c.b.a.x, false, global1.c.b.a.x), global1.e), !global1.c.b.a.xxz).a, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 47803u), min(vec2<u32>(global1.c.c.b.x, 4294967295u), global1.c.c.b.yz)), vec4<f32>(func_5(Struct_5(global1.a, global2.x, global1.c, global1.d, global1.e), global1.c.c.a.xxw).e.x, global1.e.x, -401f, _wgslsmith_f_op_f32(-1252f + 804f)))), func_4(Struct_4(vec4<i32>(~2147483647i, _wgslsmith_sub_i32(global1.c.a, -39821i), -28175i, ~(-1i)), true, Struct_3(func_5(Struct_5(Struct_3(global1.a.a), 52430i, Struct_2(global1.c.a, Struct_1(global1.a.a, global1.c.b.b), global1.c.b), global0.wxx, global1.e), global1.c.b.a.wzw).c.c.a), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9969u, global1.c.b.b.x), global1.c.c.b.ywy), countOneBits(arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(573f, -1299f, global1.e.x, global1.e.x), vec4<f32>(global1.e.x, global1.e.x, 988f, 378f)))))).b.a.yzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) - -882f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.e.x, global1.e.x), -472f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.e.x), global1.e.x)))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(~global1.c.c.b.x, global1.c.b.b.x, 0u >> (global1.c.c.b.x % 32u), 43199u), global1.c.b.b), max(abs(_wgslsmith_mod_vec4_u32(global1.c.b.b, global1.c.b.b)), vec4<u32>(func_1(global1.c.c.b.yx), _wgslsmith_mult_u32(global1.c.c.b.x & 15347u, reverseBits(1u)), reverseBits(global1.c.c.b.x), ~reverseBits(global1.c.b.b.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2390f - global1.e.x) + global1.e.x)), _wgslsmith_f_op_f32(-global1.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(global1.c.b.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global1.c.b.b.x, 84470u, 33279u, 4294967295u)), global1.c.b.b, min(global1.c.c.b, vec4<u32>(1u, 80605u, 1u, 88315u))), vec4<u32>(var_0.x, _wgslsmith_sub_u32(global1.c.c.b.x, var_0.x), _wgslsmith_div_u32(var_0.x, 31523u), ~global1.c.c.b.x), vec4<u32>(max(var_0.x, var_0.x), 1u, ~38537u, global1.c.c.b.x))));
}

