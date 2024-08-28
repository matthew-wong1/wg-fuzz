struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = Struct_2(arg_3.a, abs(firstTrailingBit(arg_2.a.b) | firstTrailingBit(min(vec2<u32>(35374u, arg_3.a.a), vec2<u32>(4294967295u, arg_2.d.b.x)))), arg_3.c | ~arg_2.c, Struct_1(~(~_wgslsmith_div_u32(arg_2.d.a, 0u)), arg_2.b, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_2.d.c)), true));
    var_0 = arg_3;
    var var_1 = Struct_1(firstLeadingBit(93937u), ~abs(vec2<u32>(~var_0.d.b.x, arg_2.b.x)), !(!arg_1), true);
    var var_2 = var_0.d;
    let var_3 = arg_2.a;
    return all(!(!select(!vec2<bool>(true, arg_2.d.d), !vec2<bool>(false, var_2.d), !vec2<bool>(var_1.d, false))));
}

fn func_2() -> u32 {
    let var_0 = !select(vec3<bool>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1065f, 336f) + vec2<f32>(-1583f, -546f)), select(false, true, false), Struct_2(Struct_1(37498u, vec2<u32>(39983u, 44533u), true, false), vec2<u32>(29496u, 7769u), u_input.c.x, Struct_1(38213u, vec2<u32>(5604u, 0u), true, false)), Struct_2(Struct_1(588u, vec2<u32>(74041u, 72236u), true, false), vec2<u32>(0u, 4294967295u), u_input.c.x, Struct_1(4891u, vec2<u32>(4294967295u, 1705u), true, false))), !func_3(vec2<f32>(-2773f, -478f), true, Struct_2(Struct_1(2371u, vec2<u32>(45383u, 4294967295u), true, true), vec2<u32>(15356u, 45024u), u_input.b.x, Struct_1(4294967295u, vec2<u32>(1u, 1u), true, false)), Struct_2(Struct_1(4294967295u, vec2<u32>(1u, 15332u), true, true), vec2<u32>(40489u, 88359u), u_input.a.x, Struct_1(34206u, vec2<u32>(7204u, 106412u), true, true))), true), vec3<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-21483i, u_input.a.x, -1i) >> (vec3<u32>(170325u, 1u >> (1u % 32u), 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), 1i, -10789i));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-453f, -321f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, 1197f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1057f + 385f), -558f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1200f, 1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2608f, -2098f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1020f, -605f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-1725f)), _wgslsmith_f_op_f32(ceil(672f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1383f, 303f)))), true))));
    var var_3 = _wgslsmith_f_op_f32(min(var_2.x, -666f));
    var_3 = var_2.x;
    return abs(52254u);
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<u32>(4294967295u, max(_wgslsmith_mod_u32(1u, ~50805u), 1u), 1u, 46111u);
    var_0 = _wgslsmith_sub_vec4_u32(min(vec4<u32>(var_0.x, max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), var_0.xw), select(0u, 1u, false)), var_0.x, var_0.x), ~vec4<u32>(min(var_0.x, var_0.x), _wgslsmith_sub_u32(var_0.x, 4294967295u), var_0.x, func_2())), vec4<u32>(1u, _wgslsmith_mult_u32(43987u, var_0.x), func_2(), ~(~(var_0.x << (53594u % 32u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(max(441f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(f32(-1f) * -1057f))))) * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2012f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(675f, -1887f)), 1f))));
    let var_2 = Struct_1(reverseBits(10666u), select(var_0.zx, vec2<u32>(~47145u, ~(~var_0.x)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), false)), all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), func_3(vec2<f32>(-405f, -1260f), true, Struct_2(Struct_1(var_0.x, vec2<u32>(var_0.x, var_0.x), false, true), vec2<u32>(52716u, var_0.x), u_input.b.x, Struct_1(4294967295u, vec2<u32>(var_0.x, 37799u), true, false)), Struct_2(Struct_1(var_0.x, vec2<u32>(var_0.x, var_0.x), true, true), var_0.yx, u_input.c.x, Struct_1(var_0.x, vec2<u32>(15208u, 77856u), false, true)))), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1125f))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-833f, _wgslsmith_f_op_f32(floor(-1002f)), false)))));
    return StorageBuffer(-1727f, _wgslsmith_sub_i32(u_input.c.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-827f, -672f, -1447f, 1399f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-603f, 1552f, -1973f, -786f), vec4<f32>(594f, -781f, -2346f, 1942f)))), vec4<f32>(-2083f, _wgslsmith_div_f32(1000f, 778f), _wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(1044f + -332f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

