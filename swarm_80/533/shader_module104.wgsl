struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(43753u, 25120u, 12182u);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(-43877i, -18448i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(-43095i, -1i)), Struct_1(vec2<i32>(0i, 23421i)), Struct_1(vec2<i32>(31369i, 1i)), Struct_1(vec2<i32>(-57558i, 64010i)), Struct_1(vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(67312i, -26978i)), Struct_1(vec2<i32>(-2133i, -32437i)), Struct_1(vec2<i32>(-1i, -30039i)), Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(26091i, 2147483647i)), Struct_1(vec2<i32>(-1i, -7863i)), Struct_1(vec2<i32>(-55490i, 11429i)), Struct_1(vec2<i32>(1i, 42200i)), Struct_1(vec2<i32>(0i, 1009i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(-66857i, 78536i)), Struct_1(vec2<i32>(10529i, 1i)), Struct_1(vec2<i32>(-27100i, i32(-2147483648))), Struct_1(vec2<i32>(3822i, 0i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(-34361i, -8704i)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(-18822i, 2147483647i)), Struct_1(vec2<i32>(18910i, -33883i)), Struct_1(vec2<i32>(-712i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -1i)));

var<private> global2: i32;

var<private> global3: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = !(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), true));
    var var_1 = Struct_1(global3.a.a);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1373f, _wgslsmith_f_op_f32(round(1191f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1472f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-479f)) + -1852f))), -1000f));
    let var_3 = Struct_3(Struct_1(vec2<i32>(global3.b.a.x, var_1.a.x)), global3.b, _wgslsmith_mod_vec2_u32(reverseBits(global3.c), vec2<u32>(firstTrailingBit(select(4294967295u, 20216u, var_0.x)), 23165u)));
    let var_4 = Struct_1(abs(vec2<i32>(global3.b.a.x, var_3.b.a.x) & global3.a.a) | (-var_1.a >> (var_3.c % vec2<u32>(32u))));
    return vec4<bool>(false, true, var_0.x, var_0.x);
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = !any(vec2<bool>(any(func_3()), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))));
    let var_1 = global3.a;
    let var_2 = vec2<i32>(firstLeadingBit(firstTrailingBit(u_input.b ^ -3924i)), _wgslsmith_div_i32(51936i, 1i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1504f)));
    var_0 = !(372f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -927f)));
    return ~abs(~(~vec4<u32>(global3.c.x, 55166u, 0u, global0.x)));
}

fn func_4(arg_0: vec4<u32>) -> u32 {
    global3 = Struct_3(global3.b, Struct_1(-abs(abs(vec2<i32>(u_input.b, 2147483647i)))), ~(~firstTrailingBit(_wgslsmith_mult_vec2_u32(arg_0.xz, vec2<u32>(arg_0.x, global0.x)))));
    return arg_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1483f);
    global1 = array<Struct_1, 29>();
    var var_1 = true & (!(!(!arg_1)) && any(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(arg_1, arg_1)), !vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1))));
    var var_2 = abs(global0.x);
    var_2 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -1236f) + _wgslsmith_f_op_f32(-var_0))) >> ((firstTrailingBit(~vec4<u32>(global3.c.x, 7548u, 0u, 14353u)) >> (~abs(vec4<u32>(0u, global0.x, global3.c.x, arg_2)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.c.x, select(countOneBits(_wgslsmith_div_u32(arg_2, arg_2) << (~3872u % 32u)), 1u >> (~_wgslsmith_dot_vec2_u32(global3.c, vec2<u32>(4294967295u, global3.c.x)) % 32u), any(vec4<bool>(func_3().x, true, arg_1 || arg_1, true)))), 29u)];
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(global3.c.x, 63657u)), ~(~_wgslsmith_mult_vec2_u32(~global0.yz, global3.c)), reverseBits(~vec2<u32>(~global3.c.x, select(global3.c.x, 26766u, false))));
    let var_1 = Struct_1(firstTrailingBit(global3.a.a));
    global2 = 9520i;
    let var_2 = vec3<bool>(true, !arg_1, any(!arg_2.d));
    let var_3 = min(17054u, firstTrailingBit(_wgslsmith_mod_u32(global3.c.x, _wgslsmith_div_u32(~global3.c.x, ~global0.x))));
    return arg_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(global3.a.a.x, select(-45357i << (select(global3.c.x, 0u, true) % 32u), abs(reverseBits(global3.a.a.x)), true)), reverseBits(-2147483647i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1036f)) * 1f) + _wgslsmith_div_f32(588f, _wgslsmith_f_op_f32(func_5(func_1(global1[_wgslsmith_index_u32(39404u, 29u)], false, global0.x), true, Struct_2(global3.b, 821f, vec3<f32>(1083f, 889f, -738f), vec4<bool>(false, true, false, false), vec3<i32>(global3.a.a.x, -2147483647i, 16617i)))))));
    global2 = 123795i >> (1u % 32u);
    let var_2 = 1i;
    let var_3 = func_3().xw;
    global2 = ~global3.b.a.x;
    var_0 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(76309i, func_1(global3.a, false & var_3.x, reverseBits(global0.x)).a.x), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~abs(func_1(global3.a, false, global0.x).a.x)));
}

