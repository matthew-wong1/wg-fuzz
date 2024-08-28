struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(230f, 715f, -1125f, -1336f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -911f), !vec4<bool>(true, false, arg_0.a.b.x, false), 6779i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.d)))), abs(arg_0.a.e)));
    var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = var_1.a.a;
    var var_3 = !(482f < _wgslsmith_f_op_f32(-var_1.a.a));
    return vec3<u32>(1u, _wgslsmith_add_u32(u_input.a, ~24238u), select(1u, ~77585u, true));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> vec4<f32> {
    let var_0 = u_input.b.zz;
    global0 = _wgslsmith_f_op_vec4_f32(arg_0.a.d - arg_0.a.d);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(435f + _wgslsmith_f_op_f32(-arg_0.a.a)), arg_0.a.a);
    var var_1 = -1i;
    var var_2 = !(!vec4<bool>(false, all(arg_0.a.b) != (arg_0.a.b.x && arg_0.a.b.x), false, var_0.x >= _wgslsmith_dot_vec3_i32(arg_1.wyx, vec3<i32>(var_0.x, -37946i, var_0.x))));
    return arg_0.a.d;
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x), 1880f, _wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(208f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0.x, global0.x)))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1495f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * -306f), -638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))))));
    let var_0 = ~func_2(Struct_3(Struct_1(_wgslsmith_f_op_f32(global0.x - global0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), _wgslsmith_add_i32(-28767i, -1i), vec4<f32>(1677f, -353f, global0.x, global0.x), _wgslsmith_add_u32(u_input.a, u_input.a))));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-552f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * -950f), global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x - 446f)) - global0.x), global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), -1257f, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(global0.x, vec4<bool>(true, false, true, true), 2147483647i, vec4<f32>(global0.x, -424f, 1625f, global0.x), 12914u)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -306f, global0.x) + vec4<f32>(-726f, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 166f, global0.x, global0.x) + vec4<f32>(938f, -1000f, global0.x, 2706f))))));
    let var_1 = global0.x;
    let var_2 = _wgslsmith_div_i32(-18299i, _wgslsmith_dot_vec2_i32(select(select(u_input.b.xx, vec2<i32>(u_input.b.x, 2147483647i), vec2<bool>(true, false)), max(u_input.b.xx, vec2<i32>(u_input.b.x, u_input.b.x)), vec2<bool>(true, true)) << ((_wgslsmith_sub_vec2_u32(var_0.yz, var_0.xy) ^ (vec2<u32>(1u, 1u) ^ vec2<u32>(40480u, u_input.a))) % vec2<u32>(32u)), -u_input.b.zx));
    return _wgslsmith_f_op_f32(round(global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-775f))))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))), global0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3115f, -843f, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1431f, _wgslsmith_f_op_f32(global0.x - -200f)))), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), !select(false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -332f, global0.x, _wgslsmith_f_op_f32(sign(2563f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1140f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1086f, global0.x)))));
    var var_0 = select(abs(firstLeadingBit(abs(vec4<u32>(u_input.a, u_input.a, 69041u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))), select(select(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 12332u, 0u))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), false), abs(vec4<u32>(1755u, u_input.a, u_input.a, u_input.a)) & (~vec4<u32>(126377u, 63946u, u_input.a, u_input.a) << (select(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), true) % vec4<u32>(32u))), true), vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + -584f))) < global0.x, true, true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), false))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), vec4<bool>(true, true, true, true), 2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-444f, _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-1345f - 1000f), global0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1364f, 565f, -1195f, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1367f, global0.x, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, 172f, global0.x)))), max(u_input.a, _wgslsmith_dot_vec2_u32(reverseBits(var_0.wz), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(var_0.x, u_input.a)))), Struct_1(_wgslsmith_div_f32(-1246f, _wgslsmith_f_op_f32(func_1())), vec4<bool>(true, true, true, true), -_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 907f, global0.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-904f, global0.x, 295f, global0.x))))), u_input.a), firstLeadingBit(4294967295u << (~4294967295u % 32u)) <= var_0.x, var_0.xw, _wgslsmith_mult_vec3_u32(vec3<u32>(~0u, min(var_0.x, 29627u), var_0.x) << (reverseBits(~var_0.xxz) % vec3<u32>(32u)), countOneBits(~var_0.yyy)));
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~var_0.wz, ~vec2<u32>(var_0.x, var_1.e.x)) << (var_1.b.e % 32u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, i32(-1i) * -2147483647i, -5235i, _wgslsmith_f_op_f32(-1333f - 2862f), _wgslsmith_f_op_f32(sign(-2229f)));
}

