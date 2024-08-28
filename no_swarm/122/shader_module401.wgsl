struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = array<Struct_4, 28>();
    var var_0 = vec3<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(u_input.a, 2147483647i))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-6954i, 2147483647i), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(0i, u_input.a)))), _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(select(vec2<i32>(19772i, 104648i), vec2<i32>(u_input.a, 15837i), false), vec2<i32>(u_input.a, u_input.a)), abs(abs(vec2<i32>(u_input.a, 52909i))) >> (select(vec2<u32>(4294967295u, u_input.b.x), ~vec2<u32>(67352u, 47473u), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))) % vec2<u32>(32u))));
    var var_1 = ~select(0u, 34723u, (all(vec3<bool>(false, true, false)) && true) && all(vec4<bool>(true, false, true, false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1090f, -894f, 103f) + vec3<f32>(316f, 1626f, -226f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1046f, 1078f, 377f))))))));
    global0 = array<Struct_4, 28>();
    return !(countOneBits(-var_0.x) <= ~(~(2147483647i & u_input.a)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1841f, -1070f, 1339f) - arg_0) - vec3<f32>(392f, arg_1.x, arg_0.x)))));
    let var_1 = Struct_3(Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), func_3(), -496f, 1u, -select(firstLeadingBit(vec3<i32>(-2249i, u_input.a, -2147483647i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-12245i, 0i, -30114i)), select(vec3<i32>(34402i, u_input.a, 7412i), vec3<i32>(u_input.a, u_input.a, -30274i), true), select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<bool>(false, true, false))), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_2 = vec2<bool>(true, any(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(var_1.b, var_1.a.a)), false), !func_3())));
    let var_3 = i32(-1i) * -44343i;
    let var_4 = Struct_1(var_2.x);
    return Struct_1(all(!vec2<bool>(false & var_2.x, select(var_2.x, var_4.a, false))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-490f, _wgslsmith_f_op_f32(ceil(-1061f)), any(vec3<bool>(true, true, true))))), -168f, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * 1144f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(339f, 693f, true)), _wgslsmith_f_op_f32(sign(1000f)))))));
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zww + _wgslsmith_f_op_vec3_f32(vec3<f32>(303f, var_0.x, 1049f) * vec3<f32>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-var_0.wwx)), vec3<bool>(true, true, true));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x >> (73482u % 32u), reverseBits(0u)), _wgslsmith_add_u32(~_wgslsmith_div_u32(0u, u_input.b.x), u_input.b.x)), ~(~firstLeadingBit(~u_input.b.x))), 28u)];
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    return func_2(var_0.www, var_0.xyw);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = ~firstTrailingBit(vec4<i32>(-30308i, -2147483647i, arg_1.a.e.x, 5368i));
    return any(!select(vec3<bool>(arg_3.a.a, true, arg_0.a), select(!vec3<bool>(arg_1.a.b, arg_0.a, arg_3.a.a), select(vec3<bool>(true, arg_1.c.x, true), arg_1.c.zxz, true), arg_3.b), !vec3<bool>(arg_1.c.x, false, arg_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 28>();
    let var_0 = ~u_input.b;
    global1 = true;
    global1 = select(false, func_4(func_1(), Struct_4(Struct_3(Struct_1(false), false, -1400f, min(var_0.x, 4772u), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(34844i, -2147483647i, u_input.a))), u_input.a, vec4<bool>(true, true, true, true)), 9370u, Struct_2(Struct_1(2147483647i == u_input.a), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))))), !func_3() & false);
    global1 = true && any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), true));
    global0 = array<Struct_4, 28>();
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i), ~0u, ~vec4<u32>(10391u, 4294967295u, u_input.b.x, ~u_input.b.x | (1u | u_input.b.x)), min(vec4<i32>(u_input.a, ~(-47123i), u_input.a, abs(reverseBits(u_input.a))), -(~firstLeadingBit(vec4<i32>(26554i, -2147483647i, 1i, u_input.a)))));
}

