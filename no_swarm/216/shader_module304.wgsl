struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(89262i, -48031i), vec2<i32>(-6845i, -1i), vec2<i32>(9169i, -52039i), vec2<i32>(-1i, -15335i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-36641i, -1i), vec2<i32>(13844i, i32(-2147483648)), vec2<i32>(0i, 0i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b);
    global1 = array<vec2<i32>, 9>();
    global0 = -countOneBits(var_0.x);
    global0 = 10964i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, 285f))))))), true);
    return ~_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(select(u_input.c.wy, vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(false, false)), ~u_input.c.xz, ~vec2<u32>(0u, 0u)), vec2<u32>(0u, ~4294967295u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = ~32513i;
    var_0 = min(arg_1.x, u_input.a);
    global1 = array<vec2<i32>, 9>();
    let var_1 = vec3<bool>(arg_0.x, false, _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-arg_2))) >= arg_2);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-959f, -2060f)) + _wgslsmith_f_op_f32(select(-910f, -952f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(select(arg_2, -1494f, var_1.x))))));
    return min(countOneBits(42682i), -35015i);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = ~func_2();
    var var_1 = -2147483647i;
    var_1 = arg_0 ^ abs(-15811i);
    var_1 = ~func_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -25449i), global1[_wgslsmith_index_u32(var_0.x, 9u)]), -2147483647i, max(-1i, -1490i)), 499f, 1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1167f, -1087f, -1456f), vec3<f32>(-377f, -172f, 1000f)) - vec3<f32>(1000f, 303f, -112f))), vec3<f32>(-132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-114f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, 892f, false))))))));
    return ~_wgslsmith_mult_i32(-(i32(-1i) * -12930i), u_input.b.x | _wgslsmith_add_i32(_wgslsmith_mod_i32(-54796i, arg_0), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(abs(~(-5270i)) << (0u % 32u));
    let var_0 = u_input.b.x;
    let var_1 = countOneBits(countOneBits(_wgslsmith_mod_vec3_u32(u_input.c.zzw, u_input.c.wyy)));
    global0 = firstLeadingBit(5425i);
    global1 = array<vec2<i32>, 9>();
    let var_2 = Struct_4(vec3<i32>(select(-2147483647i, 0i, true), 829i, 1i), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-643f, -606f, 655f), vec3<f32>(-320f, -757f, -1854f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1220f, 2090f, 1529f), vec3<f32>(380f, -441f, -662f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(var_2.b.a));
    var var_4 = all(select(vec3<bool>(false, _wgslsmith_f_op_f32(-var_2.b.a.x) >= var_2.b.a.x, select(false, false, true) | true), select(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), var_1.x <= u_input.c.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), !(select(true, false, false) | true)));
    var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(11433u, 1u, 0u, 43770u), vec4<u32>(47119u, u_input.c.x, 40994u, 1u))), vec3<i32>(~min(-1i, -2147483647i) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_2.a.x), global1[_wgslsmith_index_u32(72239u, 9u)]), min(var_2.a.x, u_input.a), -(u_input.b.x ^ 1i)), var_0, _wgslsmith_div_f32(727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), 0u);
}

