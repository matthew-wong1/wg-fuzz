struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-834f, -1708f, 1129f, 393f), vec4<f32>(-507f, 395f, -201f, 464f), vec4<f32>(732f, 1000f, 434f, -153f), vec4<f32>(972f, 600f, 772f, -763f), vec4<f32>(-950f, 950f, -1000f, 165f), vec4<f32>(302f, -1096f, -1000f, 574f), vec4<f32>(742f, -1316f, -684f, -172f), vec4<f32>(-1083f, 610f, -669f, -463f), vec4<f32>(-1442f, -936f, -333f, 1195f), vec4<f32>(-642f, -1479f, 195f, 266f), vec4<f32>(1059f, 871f, -357f, 421f), vec4<f32>(-748f, 962f, 763f, -1000f), vec4<f32>(-783f, 347f, -1429f, -1358f));

var<private> global1: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = select(select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), all(vec4<bool>(true, true, false, false))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, u_input.c.x > u_input.c.x), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)))), select(vec2<bool>(true, arg_0.c.x <= -346f), vec2<bool>(arg_0.a == arg_0.a, all(vec4<bool>(true, false, true, true))), false), vec2<bool>(false, true)), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    var var_1 = var_0.x;
    global0 = array<vec4<f32>, 13>();
    return u_input.c.x;
}

fn func_2() -> Struct_5 {
    var var_0 = ~(~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c.x, -7506i, u_input.c.x, 79955i), u_input.c), u_input.c));
    return Struct_5(u_input.d, ~firstLeadingBit(vec4<i32>(-1i, var_0.x, func_3(Struct_5(4294967295u, vec4<i32>(var_0.x, var_0.x, u_input.c.x, 25138i), vec2<f32>(1814f, -892f))), u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(326f, -673f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, -1738f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1804f, 364f) + _wgslsmith_div_vec2_f32(vec2<f32>(242f, -708f), vec2<f32>(1826f, 762f))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    let var_1 = false;
    let var_2 = Struct_1(select(select(!vec3<bool>(var_1, true, var_1), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, var_1, var_1)), var_1), !vec3<bool>(var_0.a <= var_0.a, var_1, false), vec3<bool>(all(select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, false, true, var_1), vec4<bool>(var_1, var_1, var_1, true))), var_1, true)), _wgslsmith_clamp_i32(var_0.b.x, -1i, 24464i), vec3<i32>(-u_input.c.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(46314i, var_0.b.x), abs(var_0.b.yz), vec2<bool>(var_1, true)), ~(vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(4294967295u, var_0.a) % vec2<u32>(32u)))), var_0.b.x));
    var var_3 = vec3<u32>(~(~(~1u)), ~u_input.b, var_0.a);
    var var_4 = _wgslsmith_dot_vec2_i32(u_input.c.zw, _wgslsmith_mod_vec2_i32(var_2.c.xx, vec2<i32>(~_wgslsmith_sub_i32(-23029i, -2147483647i), var_0.b.x)));
    return Struct_2(_wgslsmith_add_i32(-8831i, var_2.c.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(0u | u_input.d, 13u)])), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<i32>(max(1i, i32(-1i) * -_wgslsmith_sub_i32(var_0.a, -2515i)), -firstTrailingBit(-_wgslsmith_div_i32(u_input.c.x, u_input.c.x)), ~_wgslsmith_mult_i32(~(~2147483647i), var_0.d.c.x), ~(-30596i));
    var_0 = func_1();
    let var_2 = var_0.c.x;
    var var_3 = Struct_2(reverseBits(firstTrailingBit(-u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.b))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, _wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(0u, 15022u), u_input.a.x ^ 4294967295u)), ~vec3<u32>(_wgslsmith_add_u32(u_input.b, 0u), u_input.d, ~u_input.b)), 13u)], var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

