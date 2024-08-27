struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(1i, -493f, 1678u, vec4<u32>(11669u, 363u, 4294967295u, 4294967295u)), Struct_2(-16136i, 618f, 78464u, vec4<u32>(0u, 281u, 4294967295u, 0u)), Struct_2(-13754i, -957f, 0u, vec4<u32>(1u, 52364u, 0u, 0u)), Struct_2(-1734i, -1000f, 4294967295u, vec4<u32>(0u, 62786u, 107179u, 1u)), Struct_2(2147483647i, -1200f, 76346u, vec4<u32>(1u, 4294967295u, 1u, 61874u)), Struct_2(-29956i, -794f, 39928u, vec4<u32>(53212u, 29496u, 81320u, 60953u)), Struct_2(i32(-2147483648), 263f, 36109u, vec4<u32>(23389u, 25038u, 84165u, 49125u)), Struct_2(17743i, -1769f, 0u, vec4<u32>(10940u, 68876u, 42409u, 103951u)), Struct_2(14373i, -1151f, 1u, vec4<u32>(0u, 34762u, 4294967295u, 5415u)), Struct_2(3603i, -988f, 11205u, vec4<u32>(0u, 4294967295u, 40173u, 1u)), Struct_2(-37478i, -369f, 0u, vec4<u32>(4294967295u, 4884u, 66723u, 34735u)), Struct_2(-1i, 2071f, 13861u, vec4<u32>(20115u, 55034u, 13309u, 34391u)), Struct_2(-3158i, -633f, 4294967295u, vec4<u32>(21095u, 4294967295u, 25952u, 0u)), Struct_2(i32(-2147483648), -121f, 39074u, vec4<u32>(4294967295u, 123670u, 38941u, 0u)), Struct_2(-1i, 429f, 0u, vec4<u32>(0u, 4294967295u, 31116u, 0u)), Struct_2(41499i, -1000f, 0u, vec4<u32>(1758u, 4294967295u, 82855u, 1u)), Struct_2(0i, 1154f, 4294967295u, vec4<u32>(1u, 28445u, 11122u, 1u)), Struct_2(0i, -1054f, 1u, vec4<u32>(61736u, 4294967295u, 32328u, 1u)), Struct_2(1i, 577f, 4294967295u, vec4<u32>(26175u, 0u, 0u, 106852u)), Struct_2(-23997i, 1203f, 82934u, vec4<u32>(0u, 40110u, 25608u, 25467u)));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(1159f + _wgslsmith_f_op_f32(f32(-1f) * -953f))))), -1000f);
    var var_1 = arg_0;
    let var_2 = all(global1.zzy);
    let var_3 = _wgslsmith_div_u32(u_input.a, abs(_wgslsmith_mod_u32(firstLeadingBit(~u_input.a), (arg_1.c ^ arg_1.c) | abs(arg_1.c))));
    return max(-firstLeadingBit(abs(-84349i)), -2147483647i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> f32 {
    global1 = vec4<bool>(func_3(Struct_2(arg_1.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), u_input.a, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(45333u, 4294967295u, 0u, 1u) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(max(~u_input.a, u_input.a), 20u)]) > -8518i, false, true, !all(!(!global1.yx)));
    var var_0 = ~min(arg_1.x, 72611i);
    global1 = vec4<bool>(global1.x, !(abs(_wgslsmith_mod_i32(17470i, 2147483647i)) >= func_3(global0[_wgslsmith_index_u32(43684u, 20u)], global0[_wgslsmith_index_u32(~4294967295u, 20u)])), all(!vec4<bool>(all(vec4<bool>(false, false, true, arg_2.x)), global1.x && false, global1.x, any(vec4<bool>(false, false, true, true)))), false);
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(u_input.a, max(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 10087u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(4294967295u, 0u, 4294967295u))), _wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(88663u, 4294967295u, 14367u), select(vec3<bool>(false, false, false), global1.xzy, false)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), 1u, u_input.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(-659f, 1229f))));
    return _wgslsmith_f_op_f32(abs(var_2.c));
}

fn func_4(arg_0: f32, arg_1: f32) -> u32 {
    return u_input.a;
}

fn func_1() -> vec2<i32> {
    var var_0 = global1.x;
    var var_1 = Struct_1(u_input.a, vec3<u32>(select(u_input.a, func_4(_wgslsmith_f_op_f32(func_2(vec3<f32>(-1000f, 929f, -1000f), vec2<i32>(-9514i, -1i), global1.yx)), _wgslsmith_f_op_f32(1417f * -537f)), true), ~reverseBits(~u_input.a), reverseBits(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1140f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(441f)), _wgslsmith_f_op_f32(-729f - 544f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c, -1000f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c, 662f))), any(vec2<bool>(global1.x, global1.x)))))))));
    var_0 = false;
    var var_3 = global0[_wgslsmith_index_u32(1u & _wgslsmith_mod_u32(var_1.a, var_1.a), 20u)];
    return -reverseBits(vec2<i32>(min(2147483647i, abs(-2147483647i)), select(~var_3.a, var_3.a, all(vec4<bool>(global1.x, false, global1.x, global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_1();
    var var_2 = Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), global1.x), ~(~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), countOneBits(vec2<u32>(u_input.a, 4294967295u))), ~(~vec2<u32>(u_input.a, 13527u)))), u_input.a ^ 1u);
    global1 = vec4<bool>(true, all(!select(global1.zxy, vec3<bool>(false, global1.x, global1.x), global1.x)) || true, !global1.x && global1.x, all(!select(select(global1.xz, global1.ww, false), vec2<bool>(global1.x, global1.x), true)));
    let var_3 = Struct_3(~vec2<u32>(104176u, u_input.a), _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 73172u))), ~max(vec3<u32>(var_2.b, 4294967295u, u_input.a) & vec3<u32>(var_2.a.x, 0u, var_2.a.x), vec3<u32>(var_2.b, 47857u, u_input.a))));
    global1 = select(vec4<bool>((~var_2.a.x > ~4294967295u) & all(!vec2<bool>(global1.x, global1.x)), true, global1.x, true), !vec4<bool>(false, true, all(!vec4<bool>(false, true, true, global1.x)), global1.x), !vec4<bool>(true, global1.x, true, true));
    global0 = array<Struct_2, 20>();
    let var_4 = Struct_1(var_3.b, min(_wgslsmith_mod_vec3_u32(vec3<u32>(48102u, 34347u, u_input.a), min(vec3<u32>(var_2.a.x, var_3.a.x, 0u), vec3<u32>(var_2.b, 1u, 1u))) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_3.a.x, var_3.b), vec3<u32>(var_3.a.x, u_input.a, u_input.a)), firstTrailingBit(~vec3<u32>(var_3.b, 5114u, var_2.a.x))), -583f);
    var var_5 = Struct_2(var_1.x, _wgslsmith_div_f32(var_4.c, _wgslsmith_f_op_f32(select(644f, _wgslsmith_f_op_f32(trunc(var_4.c)), !(var_1.x > 60546i)))), 108991u >> (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, 11119u, var_4.b.x, 2197u), abs(vec4<u32>(5375u, var_2.b, var_2.b, 4294967295u)))) % 32u), _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_4.b.x, 1u, var_2.b, var_3.a.x), vec4<u32>(4294967295u, var_4.a, 0u, var_2.a.x) >> (vec4<u32>(3892u, 1u, 1u, u_input.a) % vec4<u32>(32u))), max(~(~vec4<u32>(0u, var_3.a.x, var_2.a.x, 48618u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2.a.x, u_input.a, var_3.b), vec4<u32>(18702u, u_input.a, 22302u, var_3.b)))), ~select(~vec4<u32>(22210u, u_input.a, 6205u, 0u), vec4<u32>(4294967295u, var_2.b, u_input.a, 4294967295u) << (vec4<u32>(86427u, var_4.a, 1u, 4294967295u) % vec4<u32>(32u)), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_5.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_5.b)) + _wgslsmith_f_op_f32(sign(-430f)))))), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_5.a & var_1.x, var_5.a, i32(-1i) * -30895i), -reverseBits(vec3<i32>(var_5.a, 64266i, var_5.a) >> (vec3<u32>(0u, var_4.a, var_3.b) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b, _wgslsmith_f_op_f32(floor(819f)), _wgslsmith_f_op_f32(trunc(var_5.b)), _wgslsmith_f_op_f32(f32(-1f) * -1728f))), vec4<f32>(var_5.b, _wgslsmith_f_op_f32(min(var_5.b, _wgslsmith_f_op_f32(min(var_4.c, 1437f)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-301f, -465f, var_4.c), vec3<f32>(var_5.b, var_5.b, -803f)), vec2<i32>(var_5.a, 0i) | vec2<i32>(var_5.a, var_1.x), select(vec2<bool>(false, global1.x), global1.xz, global1.yw))), var_4.c), ~abs(1i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(var_5.a, var_5.a), ~vec2<i32>(var_1.x, -23428i)))));
}

