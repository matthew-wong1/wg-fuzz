struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-577f, -288f, -897f, -301f), 18907u, vec4<i32>(1i, -98309i, 31598i, 7586i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), (_wgslsmith_mult_u32(_wgslsmith_sub_u32(87652u, 0u), 1u) << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.b, global0.b), 4294967295u, _wgslsmith_mult_u32(4294967295u, global0.b)) % 32u)) & abs(u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(~(arg_0 ^ -2147483647i), ~2147483647i << (_wgslsmith_div_u32(1u, 39190u) % 32u), abs(i32(-1i) * -13868i), global0.c.x), max(~firstTrailingBit(vec4<i32>(27145i, u_input.c, 2147483647i, 398i)), global0.c)));
    global0 = Struct_1(global0.a, max(~u_input.a.x, ~(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 16115u, 43552u, global0.b), vec4<u32>(16878u, global0.b, u_input.a.x, global0.b)) % 32u))), ~global0.c);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 1777f)))))), ~0u, vec4<i32>(countOneBits(-2147483647i), arg_0, min(-_wgslsmith_div_i32(u_input.d, u_input.c), max(abs(u_input.d), 1i)), min(~(-45503i), reverseBits(-35604i))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a.x, 169f), global0.a.x, 2365f <= global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-458f + global0.a.x) + global0.a.x)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.a + global0.a))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, -315f)), global0.a.x, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) - _wgslsmith_f_op_f32(var_0.x + 1037f))) - global0.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)));
}

fn func_2() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), -1041f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(global0.c.x)), 2050f, _wgslsmith_f_op_f32(ceil(-2350f)), global0.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -1122f), global0.a)))))), 0u, reverseBits(max(abs(global0.c) & (vec4<i32>(1i, 4915i, -8004i, u_input.c) << (vec4<u32>(4294967295u, u_input.a.x, 69357u, u_input.a.x) % vec4<u32>(32u))), global0.c & (global0.c | global0.c))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0))))));
    var var_3 = _wgslsmith_clamp_u32(60646u, 0u, ~global0.b << (10890u % 32u));
    let var_4 = var_1.c.x;
    return ~var_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = global0.a.x;
    global0 = arg_0.b;
    let var_1 = abs(firstTrailingBit(1i));
    let var_2 = -abs(_wgslsmith_mult_i32(~u_input.d, u_input.d >> (arg_0.c.b % 32u))) <= arg_2.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_1.a.wyz - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.a.x, -844f, arg_1.a.x) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.a.yyy, arg_0.c.a.zwz)))));
    return arg_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = 13261i;
    var var_1 = func_4(Struct_2(false, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(2247f)), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -456f)), func_2() ^ u_input.b.x, vec4<i32>(1i, global0.c.x, u_input.c, 14644i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 6673u, 62011u), vec4<u32>(u_input.a.x, 1u, global0.b, global0.b)), _wgslsmith_sub_u32(45539u, 30806u)), -vec4<i32>(1i, global0.c.x, u_input.c, -1i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, true)))), 4294967295u, vec4<i32>(-(~1i), -u_input.c, _wgslsmith_clamp_i32(25304i << (u_input.b.x % 32u), ~(-36284i), 1i), global0.c.x)), vec3<i32>(abs(~(-22697i)), -29073i, 1i), ~u_input.b.x);
    var_0 = _wgslsmith_sub_i32(-18496i >> (var_1.b.b % 32u), ~(~(-11305i) >> (u_input.a.x % 32u)));
    let var_2 = vec4<i32>(firstLeadingBit(~(i32(-1i) * -u_input.d)), 1i & _wgslsmith_clamp_i32(global0.c.x, _wgslsmith_mod_i32(var_1.b.c.x << (global0.b % 32u), 0i), ~_wgslsmith_clamp_i32(global0.c.x, 2147483647i, u_input.c)), global0.c.x, _wgslsmith_mult_i32(u_input.d, global0.c.x));
    var_1 = Struct_2(false, func_4(func_4(func_4(func_4(Struct_2(var_1.a, Struct_1(var_1.b.a, global0.b, vec4<i32>(2147483647i, u_input.c, 40515i, 21732i)), var_1.b), var_1.c, vec3<i32>(13780i, 0i, -1i), var_1.b.b), Struct_1(global0.a, var_1.b.b, var_2), -var_1.c.c.wxz, func_2()), Struct_1(var_1.c.a, _wgslsmith_add_u32(44171u, var_1.c.b), ~global0.c), var_1.b.c.zzz, 0u), var_1.c, vec3<i32>(~2147483647i, var_1.c.c.x, ~u_input.c) | (global0.c.zww | reverseBits(vec3<i32>(var_2.x, global0.c.x, -16287i))), var_1.b.b).b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c.a.x, global0.a.x, 487f, global0.a.x)))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(var_1.c.a.x - -235f), _wgslsmith_f_op_f32(trunc(global0.a.x)), 1387f)), ~var_1.c.b, -var_2));
    return StorageBuffer(-var_2.zxx, ~(~max(u_input.a.zyz, vec3<u32>(global0.b, global0.b, global0.b))) ^ select(select(u_input.b.ywx, _wgslsmith_div_vec3_u32(u_input.a.wwy, u_input.a.yyx), !vec3<bool>(var_1.a, true, true)), countOneBits(vec3<u32>(12593u, 64726u, u_input.b.x)) | ~vec3<u32>(u_input.b.x, 74429u, var_1.b.b), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a.x, global0.a.x, var_1.c.a.x)))))))), u_input.a.zxz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(397f + 253f);
    let x = u_input.a;
    s_output = func_1();
}

