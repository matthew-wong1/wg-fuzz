struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1143f, -626f, -754f, -424f), vec4<f32>(arg_1.c.b.x, arg_3.c.a, 1041f, arg_3.c.c))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a, -1502f, arg_1.a, 1000f)))))))));
    let var_1 = arg_3.c.c;
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-724f, arg_3.c.b.x, arg_1.c.b.x, _wgslsmith_f_op_f32(max(-311f, arg_3.a.c)))));
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    return _wgslsmith_f_op_f32(f32(-1f) * -667f);
}

fn func_2() -> f32 {
    global0 = array<u32, 31>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -567f))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1205f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -928f)), vec2<f32>(var_0, _wgslsmith_f_op_f32(func_3(u_input.a, Struct_3(-1360f, u_input.b.x, Struct_1(var_0, vec2<f32>(-161f, var_0), -839f), global0[_wgslsmith_index_u32(70586u, 31u)], false), ~u_input.a, Struct_2(Struct_1(841f, vec2<f32>(-137f, 391f), 1303f), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), Struct_1(var_0, vec2<f32>(var_0, -429f), var_0))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1090f, _wgslsmith_div_f32(1126f, var_0)))))), vec3<i32>(u_input.b.x, ~_wgslsmith_sub_i32(u_input.b.x << (1u % 32u), -32456i), ~u_input.b.x), Struct_1(_wgslsmith_f_op_f32(ceil(var_0)), vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0), var_0));
    let var_2 = Struct_4(-1004f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1879f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-409f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - _wgslsmith_f_op_f32(f32(-1f) * -1358f)) + 246f)));
    let var_3 = var_2.c;
    return var_3.c;
}

fn func_4(arg_0: f32) -> bool {
    let var_0 = ~u_input.a.zx;
    global0 = array<u32, 31>();
    var var_1 = vec4<i32>(countOneBits(_wgslsmith_div_i32(u_input.b.x, firstTrailingBit(max(u_input.b.x, -1i)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(u_input.b.yx), vec2<i32>(24275i, 0i), select(vec2<i32>(u_input.b.x, 0i), u_input.b.xx, vec2<bool>(true, true))), vec2<i32>(u_input.b.x, 0i) | ~u_input.b.xz), u_input.b.x), _wgslsmith_add_i32(u_input.b.x ^ -2147483647i, ~1i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(-vec4<i32>(u_input.b.x, -1i, u_input.b.x, -1i), ~vec4<i32>(u_input.b.x, 0i, 2147483647i, u_input.b.x)), -countOneBits(vec4<i32>(-2147483647i, u_input.b.x, -10701i, u_input.b.x))), abs(firstTrailingBit(select(vec4<i32>(-19705i, u_input.b.x, u_input.b.x, -1i), vec4<i32>(u_input.b.x, -35451i, -2147483647i, u_input.b.x), vec4<bool>(false, false, true, true))))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1762f, arg_0)), 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, arg_0))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(arg_0))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-640f, arg_0), vec2<f32>(-628f, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(1156f - arg_0)))));
    let var_3 = vec3<bool>(true, !all(vec2<bool>(true, true)), !(arg_0 <= var_2.b.x));
    return all(var_3);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: f32) -> vec2<bool> {
    let var_0 = !(!(!arg_2));
    let var_1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~(u_input.c >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 31u)], 31u)] % 32u)), ~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73897u, 31u)], 31u)])), abs(vec2<u32>(firstLeadingBit(56051u), ~18492u)));
    let var_2 = arg_3;
    global0 = array<u32, 31>();
    let var_3 = select(vec4<bool>(arg_2.x, arg_2.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-702f - 188f))), max(arg_1.x, -22634i << (var_1.x % 32u)) >= -2147483647i), vec4<bool>(func_4(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0.x, var_1.x, 19478u), Struct_3(var_2, u_input.b.x, Struct_1(arg_3, vec2<f32>(-465f, arg_3), -1141f), 17974u, true), vec3<u32>(66782u, 1u, 2621u), Struct_2(Struct_1(arg_3, vec2<f32>(var_2, -996f), -624f), vec3<i32>(arg_1.x, u_input.b.x, 2147483647i), Struct_1(-344f, vec2<f32>(var_2, var_2), 381f)))))), true, all(vec3<bool>(true, -882f > var_2, true)), false), !(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), arg_2, arg_2), var_0, arg_2)));
    return var_0.xw;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = !arg_3.x;
    var var_1 = -497f;
    global0 = array<u32, 31>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1071f + arg_0)));
    var_1 = var_2;
    return Struct_1(-1090f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + -451f)), arg_1), arg_1, true)), _wgslsmith_f_op_f32(func_2()));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    global0 = array<u32, 31>();
    var var_0 = vec4<bool>(true, !(0u > u_input.a.x), all(vec2<bool>(true, true)), true);
    let var_1 = u_input.b.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -114f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 31>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(func_6(vec2<u32>(abs(47896u), ~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16394u, 31u)], 31u)]))), vec4<i32>(_wgslsmith_div_i32(u_input.b.x >> (~u_input.a.x % 32u), -(~u_input.b.x)), 32208i, 21267i, ~(~reverseBits(u_input.b.x))), Struct_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(412f))), vec2<f32>(626f, _wgslsmith_f_op_f32(-312f - 324f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -110f), 1602f)), select(func_1(u_input.a.zx, u_input.b.xy, vec4<bool>(false, var_0, var_0, var_0), -415f), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), true), vec2<bool>(false, false))), u_input.b, func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, -666f) - 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, -134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -252f)), func_1(_wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 31u)], 8769u)), vec2<i32>(u_input.b.x, 1i), vec4<bool>(true, true, var_0, var_0), _wgslsmith_f_op_f32(step(-684f, 1721f)))))));
    let var_2 = -1i;
    global0 = array<u32, 31>();
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1822f, var_1, 1f) + vec3<f32>(_wgslsmith_f_op_f32(-var_1), 793f, _wgslsmith_f_op_f32(1093f + var_1))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(func_2()), var_1, _wgslsmith_f_op_f32(sign(505f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, 1000f)) * -183f), _wgslsmith_f_op_f32(func_3(u_input.a, Struct_3(var_1, 22161i, Struct_1(1383f, vec2<f32>(var_1, var_1), 460f), 4294967295u, var_0), firstTrailingBit(u_input.a), Struct_2(Struct_1(-107f, vec2<f32>(813f, -1000f), -1344f), vec3<i32>(42540i, -1i, -3891i), Struct_1(981f, vec2<f32>(var_1, var_1), 1266f)))), var_1)), true));
    var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 438f, 1696f)) - vec3<f32>(-435f, 406f, _wgslsmith_f_op_f32(1121f + 1200f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_1)), var_1, 644f))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 4294967295u, u_input.c), 31u)], 26036u)), ~min(vec3<u32>(1u, 79095u, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), countOneBits(vec3<u32>(60653u, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
}

