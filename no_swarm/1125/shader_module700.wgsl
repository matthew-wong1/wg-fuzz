struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<bool>, 9>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(11019u, 0u, ~global0.a.a.a | firstLeadingBit(global0.a.a.a)), arg_0.xww);
    let var_1 = Struct_2(global0.a.a, _wgslsmith_div_i32(global0.a.b, -_wgslsmith_mod_i32(-1i, global0.a.b)), 25267u);
    var var_2 = ~0u;
    let var_3 = Struct_3(arg_0, all(global0.a.a.d), min(_wgslsmith_clamp_vec2_i32(~(~vec2<i32>(1738i, -17871i)), vec2<i32>(~2147483647i, global0.a.b), _wgslsmith_add_vec2_i32(vec2<i32>(global0.a.b, global0.a.b), _wgslsmith_div_vec2_i32(vec2<i32>(global0.a.b, 0i), vec2<i32>(var_1.b, var_1.b)))), countOneBits(~select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(2147483647i, global0.a.b), vec2<bool>(false, global0.a.a.c.x)))));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-337f)))))))));
    return ~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_3.a.x & abs(0u), u_input.a), var_1.c & var_1.c);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(global0.a.a.a, !(!select(false, true, all(vec4<bool>(global0.a.a.b, false, global0.a.a.c.x, false)))), !global0.a.a.d.zy, vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(16569u, arg_0.x, 0u, global0.a.c), vec4<u32>(43199u, global0.a.a.a, u_input.a, u_input.a)) != ~(~31253u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f + -191f) * _wgslsmith_f_op_f32(floor(-1000f))) >= -1078f, all(vec3<bool>(false, true, all(vec4<bool>(false, true, false, global0.a.a.d.x))))));
    let var_1 = Struct_4(vec4<u32>(~_wgslsmith_dot_vec2_u32(arg_0, arg_0), 48032u, global0.a.c, var_0.a) & countOneBits(~(~vec4<u32>(var_0.a, arg_0.x, global0.a.c, 0u))), Struct_3(abs(firstLeadingBit(select(vec4<u32>(u_input.a, 35237u, 4294967295u, 1u), vec4<u32>(0u, var_0.a, arg_0.x, 1u), vec4<bool>(var_0.d.x, var_0.c.x, false, global0.a.a.d.x)))), select(!all(global0.a.a.d), false || any(global1[_wgslsmith_index_u32(4294967295u, 9u)]), var_0.d.x), ~vec2<i32>(~1i, -3091i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(464f, -1387f, arg_2)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-773f, arg_2, arg_2))), vec3<f32>(1776f, 1000f, _wgslsmith_f_op_f32(-arg_2)), !(arg_2 <= 1000f)))), 0u, ~_wgslsmith_mod_vec3_i32(max(vec3<i32>(arg_1.x, 21271i, arg_1.x), vec3<i32>(arg_1.x, -27860i, 38032i)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -6591i, 4223i), vec3<i32>(arg_1.x, global0.a.b, global0.a.b))) & vec3<i32>(arg_1.x, select(2147483647i, -1i, false), -(~1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.c.yy))));
    global1 = array<vec3<bool>, 9>();
    let var_3 = vec4<u32>(~u_input.a, 1u, ~(~(~4294967295u | _wgslsmith_mult_u32(global0.a.a.a, 778u))), _wgslsmith_clamp_u32(17804u, var_1.a.x, 1u) << (37014u % 32u));
    return ~(u_input.a << (_wgslsmith_sub_u32(var_1.b.a.x, global0.a.c) % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_5 {
    global1 = array<vec3<bool>, 9>();
    let var_0 = arg_1.c.x;
    let var_1 = arg_1.a.xw;
    global0 = Struct_5(Struct_2(arg_2.a.a, arg_2.a.b, ~1u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(1057f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1442f))), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1016f, 1000f)) - -255f)))), 609f);
    return arg_2;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.x, 11335i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, -48979i), arg_0.wz << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), select(arg_0.wx, vec2<i32>(global0.a.b, 34649i), global0.a.a.d.yx))));
    global1 = array<vec3<bool>, 9>();
    let var_1 = _wgslsmith_div_u32(9948u, u_input.a);
    global1 = array<vec3<bool>, 9>();
    var var_2 = func_4(arg_0.xx, Struct_3(vec4<u32>(~func_2(vec4<u32>(13562u, 57260u, 67319u, 0u)), 10822u, ~global0.a.a.a, func_3(vec2<u32>(6709u, u_input.a) & vec2<u32>(global0.a.a.a, 8727u), vec2<i32>(0i, -19364i), _wgslsmith_f_op_f32(min(1638f, -1244f)))), true, vec2<i32>(abs(8898i), global0.a.b) >> (vec2<u32>(_wgslsmith_add_u32(1u, global0.a.c), firstTrailingBit(3924u)) % vec2<u32>(32u))), Struct_5(Struct_2(global0.a.a, ~arg_0.x, func_2(firstLeadingBit(vec4<u32>(var_1, 44375u, global0.a.a.a, 1u))))), global0.a.a.d.zz);
    return func_4(arg_0.xz, Struct_3(max(abs(vec4<u32>(85510u, var_1, global0.a.c, var_2.a.a.a) & vec4<u32>(36251u, 5855u, 4294967295u, var_2.a.a.a)), select(vec4<u32>(11016u, 17571u, 1u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.a.a, var_2.a.c, var_2.a.c, var_1), vec4<u32>(19054u, var_1, var_1, u_input.a)), true)), !(!(var_1 != u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i) >> (~vec2<u32>(u_input.a, var_2.a.c) % vec2<u32>(32u)), ~(~arg_0.wz))), Struct_5(Struct_2(var_2.a.a, 31799i, ~var_1)), !vec2<bool>(!global0.a.a.d.x, func_4(-arg_0.wz, Struct_3(vec4<u32>(global0.a.c, var_2.a.a.a, 2130u, 4294967295u), false, vec2<i32>(global0.a.b, arg_0.x)), func_4(vec2<i32>(-85751i, 56099i), Struct_3(vec4<u32>(0u, 0u, 1u, u_input.a), var_2.a.a.d.x, arg_0.ww), Struct_5(Struct_2(Struct_1(global0.a.a.a, var_2.a.a.b, vec2<bool>(global0.a.a.b, var_2.a.a.c.x), global1[_wgslsmith_index_u32(var_2.a.c, 9u)]), -2147483647i, 49238u)), global0.a.a.d.xx), global0.a.a.d.xx).a.a.b)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.a.c.x;
    var var_1 = !vec4<bool>(true, all(select(!vec4<bool>(true, true, global0.a.a.d.x, global0.a.a.c.x), !vec4<bool>(false, false, false, global0.a.a.c.x), global0.a.a.c.x)), any(!select(vec4<bool>(true, global0.a.a.b, true, false), vec4<bool>(global0.a.a.c.x, false, global0.a.a.b, global0.a.a.c.x), global0.a.a.b)), false);
    let var_2 = false;
    var var_3 = Struct_5(func_1(vec4<i32>(abs(global0.a.b ^ global0.a.b), ~_wgslsmith_mod_i32(global0.a.b, global0.a.b), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.b, 1i, global0.a.b, 19940i), ~vec4<i32>(global0.a.b, global0.a.b, global0.a.b, -10008i)), firstLeadingBit(1i))));
    let var_4 = Struct_4(~_wgslsmith_add_vec4_u32(vec4<u32>(~var_3.a.a.a, 12697u, 4294967295u, global0.a.c), vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), var_3.a.c, _wgslsmith_sub_u32(85252u, global0.a.c), 53484u | global0.a.a.a)), Struct_3(~vec4<u32>(~12909u, var_3.a.a.a >> (4294967295u % 32u), var_3.a.a.a, ~u_input.a), true, vec2<i32>(~(39595i << (global0.a.c % 32u)), -9831i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(485f, 234f, -1000f), vec3<f32>(-198f, -1181f, -802f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, 971f, 113f)))))), (global0.a.a.a ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.a.a.a, 60498u, var_3.a.a.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.a.c, var_3.a.a.a, var_3.a.a.a, 0u), vec4<u32>(u_input.a, 0u, var_3.a.a.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 42248u)))) | ~var_3.a.c, min(~(~abs(vec3<i32>(-1i, var_3.a.b, -16008i))), reverseBits(select(vec3<i32>(global0.a.b, -25455i, -1748i), vec3<i32>(var_3.a.b, 2147483647i, -1i), true) | select(vec3<i32>(global0.a.b, var_3.a.b, global0.a.b), vec3<i32>(var_3.a.b, global0.a.b, -12564i), vec3<bool>(var_3.a.a.d.x, false, global0.a.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.b.a.yww);
}

