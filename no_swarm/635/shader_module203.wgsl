struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<u32>(81426u, 63401u), 31928u, vec2<i32>(i32(-2147483648), 34861i), 1776f, vec4<u32>(86158u, 0u, 2212u, 0u)), Struct_1(vec2<u32>(1u, 1u), 22661u, vec2<i32>(-24260i, -57832i), 341f, vec4<u32>(1u, 27412u, 5077u, 45774u)), Struct_1(vec2<u32>(1u, 1u), 4294967295u, vec2<i32>(26410i, -13460i), 118f, vec4<u32>(4294967295u, 27497u, 1u, 38198u)), Struct_1(vec2<u32>(64679u, 4053u), 63714u, vec2<i32>(i32(-2147483648), 0i), -205f, vec4<u32>(0u, 0u, 0u, 5682u)), Struct_1(vec2<u32>(0u, 42699u), 28025u, vec2<i32>(23207i, 2147483647i), -653f, vec4<u32>(32212u, 50332u, 61334u, 22401u)), Struct_1(vec2<u32>(57014u, 13585u), 1u, vec2<i32>(23203i, -25348i), 754f, vec4<u32>(1u, 1u, 48817u, 48360u)), Struct_1(vec2<u32>(4294967295u, 21242u), 0u, vec2<i32>(21109i, 12322i), -709f, vec4<u32>(26524u, 0u, 46539u, 32717u)), Struct_1(vec2<u32>(36795u, 12812u), 36257u, vec2<i32>(0i, 8894i), -1143f, vec4<u32>(12331u, 36300u, 24465u, 1u)));

var<private> global2: f32 = 632f;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(2212u, 1u), 29579u, vec2<i32>(-21059i, -1i), -1080f, vec4<u32>(0u, 40107u, 1u, 1u));

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(global3.e.x, 26u)];
    global4 = array<Struct_1, 26>();
    let var_1 = Struct_1(~(~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(17141u, var_0.a.x), arg_2.e.yz), vec2<u32>(arg_2.b, arg_2.b))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.e.x, 0u, 44174u, arg_2.a.x), vec4<u32>(reverseBits(0u), _wgslsmith_dot_vec2_u32(global3.e.yw, vec2<u32>(11237u, 27458u)), 1u, ~arg_2.e.x)), ~(5748u | (0u ^ var_0.b))), arg_2.c | var_0.c, arg_2.d, ~var_0.e | (((vec4<u32>(var_0.a.x, 0u, 0u, var_0.b) >> (vec4<u32>(arg_2.a.x, arg_2.a.x, global3.b, 4294967295u) % vec4<u32>(32u))) >> (vec4<u32>(var_0.a.x, 0u, arg_2.a.x, 23469u) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a.x, 0u, global3.b, 24389u), vec4<u32>(0u, 1u, 73088u, var_0.e.x), _wgslsmith_clamp_vec4_u32(global3.e, var_0.e, var_0.e)) % vec4<u32>(32u))));
    var var_2 = true;
    global2 = _wgslsmith_f_op_f32(sign(207f));
    return ~18951u;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.d, 565f, -1155f, global3.d), vec4<f32>(1398f, 278f, 1000f, global3.d)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1809f, 353f, global3.d, 880f) - vec4<f32>(297f, global3.d, -1489f, global3.d))))))));
    let var_1 = Struct_1(vec2<u32>(~func_3(_wgslsmith_f_op_vec2_f32(round(var_0.xx)), global3.d, global1[_wgslsmith_index_u32(global3.e.x, 8u)]), global3.a.x), ~0u, ~(-(~vec2<i32>(0i, 21505i))), 1081f, firstTrailingBit(vec4<u32>(22629u, ~global3.e.x, _wgslsmith_dot_vec4_u32(global3.e, global3.e), ~5997u) << (~(vec4<u32>(global3.e.x, global3.a.x, 8344u, 45501u) << (vec4<u32>(0u, global3.b, global3.b, global3.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = any(!vec4<bool>(false, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true)), all(vec2<bool>(true, false))));
    var var_3 = var_1;
    var var_4 = !vec2<bool>(true, var_2);
    return reverseBits(~var_1.b);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = global3.c.x;
    global3 = Struct_1(~global3.e.yw, ~func_2(~arg_0.c.x), _wgslsmith_add_vec2_i32(global3.c, global3.c), _wgslsmith_f_op_f32(select(2206f, 460f, true)), ~firstTrailingBit(reverseBits(vec4<u32>(41863u, global3.b, global3.a.x, 0u)) & ~vec4<u32>(global3.a.x, 5266u, global3.e.x, 1u)));
    let var_1 = abs(0i);
    let var_2 = reverseBits(vec4<i32>(~46973i, ~(~1i), ~firstLeadingBit(global3.c.x), global3.c.x)) | vec4<i32>(arg_0.c.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global3.c.x, u_input.a, -2147483647i), 2147483647i), 1i), ~(~firstLeadingBit(var_1)), global3.c.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d - global3.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1459f, 1493f, true)), _wgslsmith_f_op_f32(-global3.d))) + global3.d) - 532f));
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) - _wgslsmith_f_op_f32(func_1(global4[_wgslsmith_index_u32(global3.a.x, 26u)]))), _wgslsmith_f_op_f32(sign(250f))));
    var var_1 = _wgslsmith_div_u32(abs(~1u), global3.e.x);
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(4294967295u, ~52500u, global3.b), ~global3.e.x, reverseBits(~0u), _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(14201u, ~global3.a.x)) << (_wgslsmith_div_u32(abs(global3.b), (4294967295u & global3.e.x) | 0u) % 32u));
    var var_3 = u_input.a;
    let var_4 = global1[_wgslsmith_index_u32(~(~0u), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(~global3.e.zz & var_2.xy, var_4.c.x, vec2<f32>(global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d + _wgslsmith_div_f32(1525f, var_4.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global4[_wgslsmith_index_u32(firstTrailingBit(var_4.b), 26u)])) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-518f)))))), var_4.d);
}

