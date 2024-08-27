struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(17371u, 4294967295u), vec2<u32>(42180u, 4294967295u), vec2<u32>(6161u, 52401u), vec2<u32>(0u, 4294967295u), vec2<u32>(59170u, 4294967295u), vec2<u32>(1u, 101040u), vec2<u32>(4294967295u, 1u), vec2<u32>(45331u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 25355u), vec2<u32>(88878u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 2527u), vec2<u32>(4294967295u, 0u), vec2<u32>(49995u, 21214u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 40144u), vec2<u32>(0u, 9870u), vec2<u32>(1u, 45684u), vec2<u32>(1u, 0u), vec2<u32>(1u, 26184u), vec2<u32>(4294967295u, 0u), vec2<u32>(84889u, 1u), vec2<u32>(59558u, 3887u), vec2<u32>(33382u, 0u));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    let var_0 = vec4<bool>((_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1224f, -383f, global1.x)))) >= -177f) == (arg_1.x > ~(~34323u)), all(!vec4<bool>(true, global1.x, global1.x, false)) || ((true & all(vec2<bool>(true, false))) != all(global1.xxw)), true, any(!vec3<bool>(global1.x, true, false)));
    global0 = array<vec2<u32>, 26>();
    let var_1 = arg_0;
    let var_2 = var_0.x;
    var var_3 = ~u_input.a;
    return any(var_0.zz);
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -893f), -1164f))), -1572f);
    let var_1 = ~u_input.a;
    global1 = select(!select(select(vec4<bool>(global1.x, true, global1.x, true), !vec4<bool>(false, global1.x, true, global1.x), select(vec4<bool>(false, false, true, global1.x), vec4<bool>(false, true, false, true), false)), select(vec4<bool>(true, global1.x, true, true), select(vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x)), var_1.x != var_1.x), vec4<bool>(select(global1.x, true, true), global1.x && true, 11976u < var_1.x, select(global1.x, false, global1.x))), vec4<bool>(all(vec3<bool>(any(global1.yz), var_0.x > var_0.x, global1.x)), global1.x, select(true, !all(global1.wzx), global1.x && all(vec3<bool>(global1.x, true, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.x)) == _wgslsmith_f_op_f32(ceil(var_0.x))), false);
    global1 = !vec4<bool>(any(vec3<bool>(global1.x, true, true)), !any(global1.yxz) & global1.x, global1.x, true);
    var var_2 = global1.x;
    return select(~_wgslsmith_sub_vec3_u32(var_1.zyw, countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 0u, 1u), u_input.a.yyw))), u_input.a.wyz ^ var_1.xyx, !select(select(vec3<bool>(false, false, true), global1.xyx, true && global1.x), select(select(global1.xyw, vec3<bool>(true, global1.x, true), true), vec3<bool>(global1.x, global1.x, global1.x), false), func_2(Struct_1(var_1.zyw, vec2<i32>(-2147483647i, 0i)), vec3<u32>(var_1.x, 1u, 10099u))));
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    global1 = vec4<bool>(false, select(!(!global1.x), func_2(Struct_1(u_input.a.zxx, vec2<i32>(-9205i, 2147483647i)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), u_input.a.yxy)), all(vec2<bool>(false, global1.x))) | all(select(global1.zzx, vec3<bool>(false, global1.x, global1.x), 1937f != arg_0.x)), true, (1u << (_wgslsmith_clamp_u32(3220u, ~u_input.a.x, firstLeadingBit(0u)) % 32u)) > u_input.a.x);
    var var_0 = Struct_1(~func_3(), -firstLeadingBit(~vec2<i32>(0i, 2109i)));
    var var_1 = global1.x;
    global1 = !vec4<bool>((_wgslsmith_sub_i32(-1i, var_0.b.x) ^ 6642i) <= ~_wgslsmith_mult_i32(-1i, var_0.b.x), !(false & !global1.x), global1.x, ~min(u_input.a.x, u_input.a.x) == ~u_input.a.x);
    var var_2 = true;
    return vec3<u32>(var_0.a.x, u_input.a.x, ~_wgslsmith_sub_u32(var_0.a.x, ~u_input.a.x)) | (~u_input.a.zyz << ((countOneBits(var_0.a >> (vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, u_input.a.x, 4294967295u), _wgslsmith_mod_vec3_u32(u_input.a.wxy, vec3<u32>(var_0.a.x, 4294967295u, 40737u)))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~(~u_input.a.x)), firstTrailingBit(countOneBits(1u)), 69774u, u_input.a.x) | u_input.a;
    var var_1 = ~(-1i);
    global0 = array<vec2<u32>, 26>();
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(var_0.xyx, func_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(1171f)), _wgslsmith_f_op_f32(f32(-1f) * -739f), 1026f, _wgslsmith_f_op_f32(1469f - 1436f)))), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, -1831i), -vec2<i32>(_wgslsmith_add_i32(-40546i, 5173i), -8656i)));
    var var_3 = !select(!select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, global1.x), global1.zx, global1.x)), !vec2<bool>(global1.x, global1.x), vec2<bool>(select(true, all(global1.zzw), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(~var_2.b.x, _wgslsmith_mod_i32(1i, -2147483647i)), var_2.b.x)), 1f, _wgslsmith_add_i32(var_2.b.x, _wgslsmith_dot_vec4_i32(min(firstTrailingBit(vec4<i32>(2147483647i, var_2.b.x, var_2.b.x, -2147483647i)), countOneBits(vec4<i32>(var_2.b.x, var_2.b.x, -2147483647i, 1i))), -(vec4<i32>(-8840i, var_2.b.x, var_2.b.x, -14377i) & vec4<i32>(var_2.b.x, var_2.b.x, -13523i, -39620i)))));
}

