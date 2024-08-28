struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = global0.xy;
    var_0 = select(select(!arg_1.a.zy, select(vec2<bool>(true, all(vec3<bool>(false, arg_1.b.x, arg_1.a.x))), arg_1.a.ww, false), global0.yx), global0.xy, vec2<bool>(global0.x, (firstTrailingBit(4294967295u) ^ arg_3.b.x) >= _wgslsmith_div_u32(0u, 1u & arg_1.c.x)));
    let var_1 = arg_1.a.x;
    var var_2 = arg_1.d.b.x;
    global0 = select(vec3<bool>(any(!select(vec4<bool>(true, true, false, true), arg_1.b, vec4<bool>(true, true, true, false))), false | (_wgslsmith_f_op_f32(ceil(arg_3.a)) < arg_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -880f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + _wgslsmith_div_f32(arg_3.a, arg_3.a))), select(!arg_1.a.xww, !vec3<bool>(global0.x, true, false), global0.x), select(select(!vec3<bool>(var_1, var_0.x, arg_1.a.x), vec3<bool>(global0.x, !global0.x, false), all(select(arg_1.b.xzy, vec3<bool>(var_1, false, true), arg_1.b.wzy))), arg_1.b.zxw, vec3<bool>(global0.x, true, var_1)));
    return _wgslsmith_mod_u32(arg_1.c.x, countOneBits(~(~arg_3.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = arg_3.d.b.x;
    global0 = !arg_0.a.zwy;
    var var_1 = vec4<bool>(!global0.x, false, true, !global0.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_3.d.a, _wgslsmith_f_op_f32(max(arg_3.d.a, -2385f)), true)), _wgslsmith_f_op_f32(-1776f - _wgslsmith_div_f32(642f, -2066f)))) + _wgslsmith_f_op_f32(exp2(arg_3.d.a))), -356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.d.a + arg_0.d.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(295f + _wgslsmith_f_op_f32(abs(arg_3.d.a))) - arg_0.d.a)));
    let var_3 = Struct_1(-299f, max(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.c.x, arg_0.d.b.x), vec2<u32>(4294967295u, 30071u), arg_0.c.zw)), ~vec2<u32>(~arg_3.c.x, firstLeadingBit(arg_0.c.x))), ~(-u_input.c));
    return arg_3.b.wzx;
}

fn func_2() -> Struct_1 {
    global0 = select(!func_4(Struct_2(vec4<bool>(global0.x, global0.x, false, true), !vec4<bool>(global0.x, false, global0.x, false), ~vec4<u32>(41189u, 34580u, 128u, 1u), Struct_1(1024f, vec2<u32>(7347u, 1u), 1i)), _wgslsmith_add_vec2_i32(-vec2<i32>(-48482i, u_input.b), -vec2<i32>(u_input.c, 2147483647i)), vec3<u32>(func_3(u_input.c, Struct_2(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, true, global0.x, global0.x), vec4<u32>(27554u, 1u, 4294967295u, 60039u), Struct_1(225f, vec2<u32>(0u, 53717u), 2147483647i)), vec4<f32>(-380f, 531f, -111f, -1120f), Struct_1(-1000f, vec2<u32>(49550u, 69359u), u_input.a)), ~15518u, ~4294967295u), Struct_2(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x), abs(vec4<u32>(4294967295u, 3706u, 4294967295u, 45378u)), Struct_1(828f, vec2<u32>(4294967295u, 1u), 10289i))), vec3<bool>(global0.x && true, global0.x, -73956i < _wgslsmith_clamp_i32(-42650i, i32(-1i) * -1i, _wgslsmith_div_i32(3008i, 35181i))), global0.x);
    global0 = vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -588f) <= _wgslsmith_f_op_f32(floor(-417f)), any(select(!vec4<bool>(true, false, global0.x, true), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, global0.x, false, global0.x)), true), vec4<bool>(!global0.x, global0.x, false, true))), true);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2246f, -1733f)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1502f, 554f)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 305f) * _wgslsmith_f_op_f32(select(-918f, -609f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1711f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, -1245f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(f32(-1f) * -895f)), false))));
    let var_1 = u_input.c;
    let var_2 = (select(-(~vec2<i32>(var_1, var_1)), vec2<i32>(~var_1, u_input.a), global0.xz) & firstTrailingBit(vec2<i32>(-18304i, var_1))) & vec2<i32>(~u_input.a, u_input.b);
    return Struct_1(var_0.x, countOneBits(~countOneBits(select(vec2<u32>(18005u, 8708u), vec2<u32>(0u, 25157u), global0.zz))), -1i);
}

fn func_1() -> StorageBuffer {
    global0 = !(!vec3<bool>(global0.x, global0.x, true));
    var var_0 = func_2();
    let var_1 = firstTrailingBit(~min(vec4<u32>(~var_0.b.x, var_0.b.x, _wgslsmith_mult_u32(var_0.b.x, 4421u), ~1u), select(vec4<u32>(4294967295u, 1u, var_0.b.x, 4294967295u), vec4<u32>(1u, var_0.b.x, 75765u, 0u) << (vec4<u32>(12676u, var_0.b.x, var_0.b.x, var_0.b.x) % vec4<u32>(32u)), true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_1.yz, ~_wgslsmith_clamp_i32((var_0.c << (4294967295u % 32u)) << (abs(var_0.b.x) % 32u), u_input.a, -15349i));
    var var_2 = min(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 67471u, var_1.x), var_1.wwz, vec3<u32>(var_0.b.x, 52627u, 2995u)), vec3<u32>(41189u, 17651u, 1u), vec3<bool>(global0.x, true, global0.x)) << (var_1.wzy % vec3<u32>(32u)), select(vec3<u32>(42080u, _wgslsmith_add_u32(~8777u, var_0.b.x), firstTrailingBit(func_2().b.x)), _wgslsmith_mod_vec3_u32(min(var_1.yxw, ~vec3<u32>(30611u, var_0.b.x, 23684u)), _wgslsmith_add_vec3_u32(var_1.xyy | vec3<u32>(0u, 54848u, var_0.b.x), vec3<u32>(var_0.b.x, 45150u, var_0.b.x))), any(!(!vec3<bool>(global0.x, global0.x, global0.x)))));
    return StorageBuffer(~(~1i), ~abs(-783i), ~(~(var_1.x ^ 1u)), _wgslsmith_dot_vec4_u32(min(var_1, select(var_1 >> (vec4<u32>(34459u, 5647u, 0u, var_1.x) % vec4<u32>(32u)), vec4<u32>(var_1.x, var_0.b.x, 1u, var_0.b.x), vec4<bool>(false, false, global0.x, true))), vec4<u32>(1u, 15253u, _wgslsmith_mult_u32(~1u, max(1u, var_1.x)), ~24379u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global0 = select(!select(vec3<bool>(!global0.x, global0.x, true), !vec3<bool>(true, false, global0.x), select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(true, true, false))), vec3<bool>(any(vec2<bool>(true, false)), !all(vec4<bool>(false, global0.x, global0.x, global0.x)), global0.x), vec3<bool>(global0.x, true, !(global0.x || global0.x)));
    let var_1 = all(vec4<bool>(!global0.x, global0.x, true, false));
    let var_2 = ~_wgslsmith_mod_u32(~49443u, 23929u << (1u % 32u));
    var var_3 = 519f;
    let x = u_input.a;
    s_output = func_1();
}

