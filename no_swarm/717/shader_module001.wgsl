struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> vec3<f32> {
    var var_0 = Struct_2(vec2<u32>(~reverseBits(_wgslsmith_div_u32(65520u, 1u)), abs(u_input.c)), Struct_1(arg_0.a, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -786f))), ~arg_0.d, abs(~vec3<i32>(arg_0.e.x, arg_3, arg_3))));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(~(vec3<u32>(1u, 18621u, arg_2.x) ^ vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x))), ~vec3<u32>(var_0.a.x, 90u, _wgslsmith_dot_vec4_u32(vec4<u32>(33380u, u_input.c, arg_2.x, u_input.c), vec4<u32>(45427u, arg_2.x, 4294967295u, 0u)))), _wgslsmith_mod_u32(arg_2.x, 104734u) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.x, 1u), u_input.c), abs(arg_2.x)) % 32u), select(arg_2.x, 24594u, global0[_wgslsmith_index_u32(arg_2.x, 30u)]), 52580u >> (_wgslsmith_sub_u32(var_0.a.x, ~u_input.c) % 32u));
    var_1 = firstLeadingBit(firstLeadingBit(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, 0u), ~vec3<u32>(12518u, 0u, 4294967295u)), u_input.c, ~4294967295u)));
    var var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, _wgslsmith_div_u32(4294967295u, 47581u) >> (firstTrailingBit(1u) % 32u)), var_1.yx);
    global0 = array<bool, 30>();
    return vec3<f32>(-1146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1489f);
}

fn func_2(arg_0: bool) -> f32 {
    global0 = array<bool, 30>();
    var var_0 = Struct_2(max(firstTrailingBit(~vec2<u32>(4294967295u, 34518u) | max(vec2<u32>(7780u, 0u), vec2<u32>(4294967295u, u_input.c))), ~vec2<u32>(_wgslsmith_div_u32(u_input.c, 0u), 1u)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(-908f, -1461f, 970f), vec2<bool>(false, arg_0), -994f, -2147483647i, vec3<i32>(u_input.d.x, u_input.a.x, u_input.a.x)), Struct_1(vec3<f32>(-783f, 1085f, 715f), vec2<bool>(true, false), 157f, u_input.a.x, vec3<i32>(11614i, u_input.d.x, -2147483647i)), vec2<u32>(u_input.c, 0u), u_input.a.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(112f, -1159f, 1520f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1677f, -402f, -972f) - vec3<f32>(519f, -1000f, 559f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, 209f, -205f)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 30u)], true, false), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 30u)], arg_0))))), !vec2<bool>(!arg_0, u_input.c <= 4294967295u), -2018f, -1i, _wgslsmith_mult_vec3_i32(max(u_input.a, vec3<i32>(-15097i, -1i, u_input.a.x)), vec3<i32>(6355i, 83700i, -37588i)) | _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)));
    var_0 = Struct_2(_wgslsmith_mult_vec2_u32(var_0.a, _wgslsmith_clamp_vec2_u32(~vec2<u32>(52041u, var_0.a.x), vec2<u32>(~1u, select(u_input.c, var_0.a.x, true)), vec2<u32>(4294967295u, _wgslsmith_div_u32(118871u, 42693u)))), var_0.b);
    let var_1 = var_0.b;
    var_0 = Struct_2(vec2<u32>(firstLeadingBit(~0u), _wgslsmith_mod_u32(u_input.c, 787u)) & (select(vec2<u32>(var_0.a.x, 1u), var_0.a, true) | ~(~var_0.a)), var_0.b);
    return _wgslsmith_f_op_f32(-var_0.b.c);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false))));
    global0 = array<bool, 30>();
    var var_1 = 36280i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(-947f, var_0, -1344f))))));
    var var_3 = ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, ~0u), u_input.c), u_input.c, _wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(~0u, u_input.c)), u_input.c);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) * -644f), -272f, var_0)), select(!vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 2127u, 15488u), 30u)], global0[_wgslsmith_index_u32(188u, 30u)] && true), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(var_3.x, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)]))), select(vec2<bool>(all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 30u)])), !global0[_wgslsmith_index_u32(u_input.c, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(29400u >> (var_3.x % 32u), 30u)], !global0[_wgslsmith_index_u32(11968u, 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, min(var_3.x, u_input.c)), 30u)])), 1000f, max(u_input.d.x, ~0i), countOneBits(_wgslsmith_mult_vec3_i32(~u_input.a, vec3<i32>(u_input.d.x, -2147483647i, 2147483647i))) << (~_wgslsmith_sub_vec3_u32(firstLeadingBit(var_3.yzz), _wgslsmith_mult_vec3_u32(var_3.xyw, var_3.yxz)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = func_1();
    var_0 = Struct_1(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(floor(416f)), arg_1), vec2<bool>(true, arg_2.b.b.x), 936f, arg_0.e.x, vec3<i32>(~(~(-56579i)), -2147483647i, i32(-1i) * -1i));
    var_0 = arg_2.b;
    let var_1 = abs(vec2<u32>(~(~(43839u << (u_input.c % 32u))), ~(~9344u)));
    let var_2 = arg_2;
    return vec4<bool>(true, !arg_2.b.b.x, any(!(!vec3<bool>(global0[_wgslsmith_index_u32(71385u, 30u)], var_0.b.x, arg_0.b.x))), 4294967295u == u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(u_input.a.x > u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(25194u, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.c)), 30u)], true, global0[_wgslsmith_index_u32(4294967295u, 30u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)], true, global0[_wgslsmith_index_u32(60455u, 30u)]), select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(41588u, 30u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)]), true), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 30u)], true))), select(vec4<bool>(!global0[_wgslsmith_index_u32(2280u, 30u)], true, global0[_wgslsmith_index_u32(u_input.c, 30u)], any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.c, 30u)]))), vec4<bool>(global0[_wgslsmith_index_u32(1u | u_input.c, 30u)], true, true, global0[_wgslsmith_index_u32(0u, 30u)]), func_4(func_1(), -405f, Struct_2(vec2<u32>(70820u, 4294967295u), Struct_1(vec3<f32>(544f, 1000f, 876f), vec2<bool>(true, true), -303f, 0i, vec3<i32>(1i, u_input.d.x, 0i)))))), vec4<bool>(_wgslsmith_div_i32(-32572i >> (u_input.c % 32u), max(-35617i, 1i)) <= min(u_input.d.x, i32(-1i) * -1i), all(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(18224u, 30u)], false), true)), true, func_4(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(619f, -2915f)), _wgslsmith_f_op_f32(floor(-1140f))), Struct_2(~vec2<u32>(0u, 38536u), func_1())).x), func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-434f, -2794f)), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(60388u, u_input.c)) ^ vec2<u32>(1298u, 0u), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-2601f, -143f, 869f), vec3<f32>(-272f, 226f, 450f)), vec2<bool>(true, true), -592f, u_input.a.x, _wgslsmith_sub_vec3_i32(u_input.a, u_input.a)))));
    global0 = array<bool, 30>();
    let var_1 = Struct_2(~select(abs(vec2<u32>(0u, 1u)) << (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, u_input.c), true), func_1());
    var var_2 = Struct_2(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.c, var_1.a.x) >> (vec2<u32>(24359u, 39265u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(var_1.a.x, u_input.c), var_1.a.x)) << (vec2<u32>(53241u, ~(var_1.a.x << (11599u % 32u))) % vec2<u32>(32u)), Struct_1(var_1.b.a, vec2<bool>(true, false), -339f, 5810i, u_input.a));
    let var_3 = Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(25112u, 66242u), ~((var_2.a ^ vec2<u32>(var_1.a.x, var_2.a.x)) >> (~vec2<u32>(var_2.a.x, 1u) % vec2<u32>(32u)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c)), _wgslsmith_f_op_f32(-var_2.b.a.x), var_1.b.c), var_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.c + 516f) * var_1.b.a.x)), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-12815i, -1i, var_1.b.e.x, 0i), vec4<i32>(var_1.b.d, var_2.b.e.x, 1i, -1i)), var_1.b.e.x)), abs(select(var_2.b.e, var_2.b.e, var_2.b.b.x == global0[_wgslsmith_index_u32(4294967295u, 30u)]))));
    var var_4 = func_1();
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x);
}

