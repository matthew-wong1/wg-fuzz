struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global1 = global2.c;
    global2 = Struct_1(vec2<f32>(1892f, _wgslsmith_f_op_f32(-global2.a.x)), 41833u, select(vec2<bool>(true, true), vec2<bool>(false, !(!global2.c.x)), global1.x), _wgslsmith_dot_vec3_u32(u_input.b, (_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(3141u, 4294967295u, global2.d)) & ~u_input.b) << (select(vec3<u32>(0u, 10781u, 4598u), ~u_input.b, 413f > global2.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1431f) - -1023f) - 510f));
    let var_0 = -_wgslsmith_div_i32(~firstLeadingBit(0i), abs(-u_input.c) ^ min(u_input.c, 2147483647i));
    global0 = array<Struct_2, 27>();
    let var_1 = firstTrailingBit(-reverseBits(abs(~vec3<i32>(var_0, 17812i, u_input.a.x))));
    return _wgslsmith_f_op_f32(min(global2.a.x, global2.e));
}

fn func_2() -> vec3<f32> {
    var var_0 = !vec4<bool>(global2.c.x, false, !global1.x, !((global2.b >= u_input.b.x) && !global2.c.x));
    let var_1 = u_input.a.x;
    global0 = array<Struct_2, 27>();
    let var_2 = var_0.xz;
    var_0 = vec4<bool>(false, var_2.x, (global2.e >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global2.a.x))))) || var_2.x, !all(vec2<bool>(var_2.x, var_2.x)));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), global2.e, all(!var_0.zx))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(174f))))), -191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(267f + -169f)))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e, 939f, global2.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, -1732f, global2.e) * vec3<f32>(global2.e, global2.e, global2.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e, 893f, -481f) + vec3<f32>(-2223f, global2.a.x, -1000f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), vec3<f32>(_wgslsmith_f_op_f32(-global2.e), 227f, global2.e)), vec3<f32>(global2.a.x, -529f, -294f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a), ~45770u, global2.c, select(0u, ~u_input.b.x, !global1.x), -1000f), Struct_1(var_0.yx, countOneBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b.x, 24111u, u_input.b.x, global2.b), vec4<u32>(global2.b, global2.d, 1u, 4294967295u)), ~vec4<u32>(4294967295u, global2.d, u_input.b.x, 24150u))), select(select(vec2<bool>(global1.x, false), global2.c, all(vec4<bool>(global1.x, global2.c.x, global2.c.x, global2.c.x))), !(!vec2<bool>(global1.x, true)), select(true, true, true)), 1u, _wgslsmith_f_op_vec3_f32(func_2()).x), select(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 1431i), u_input.a, u_input.a), vec2<i32>(i32(-1i) * -27007i, -44623i), _wgslsmith_f_op_f32(423f + global2.e) != _wgslsmith_div_f32(var_0.x, 658f)) << (select(~min(vec2<u32>(global2.d, 0u), vec2<u32>(16115u, u_input.b.x)), ~u_input.b.yy ^ reverseBits(u_input.b.xz), true) % vec2<u32>(32u)), max(4294967295u, _wgslsmith_mod_u32(~u_input.b.x << (4294967295u % 32u), 1u)));
    var var_2 = _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(reverseBits(3515u), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(global2.b, 77760u), 1u)));
    let var_3 = !var_1.a.c;
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.e, global2.e, -286f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1858f) * _wgslsmith_f_op_f32(var_0.x - 1000f)), 349f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) * var_0.x))), !select(!select(vec4<bool>(false, var_1.b.c.x, false, false), vec4<bool>(false, false, false, global1.x), var_3.x), vec4<bool>(false, any(var_3), select(global1.x, var_1.b.c.x, global2.c.x), all(vec4<bool>(var_3.x, var_3.x, true, false))), select(vec4<bool>(var_1.a.c.x, true, true, global2.c.x), select(vec4<bool>(true, global1.x, global1.x, var_1.a.c.x), vec4<bool>(true, true, var_3.x, false), false), all(var_3)))));
    return Struct_3(_wgslsmith_add_u32(global2.d, ~(~global2.d)));
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = vec2<f32>(global2.e, 1766f);
    global1 = global2.c;
    let var_1 = reverseBits(50436i) & (u_input.a.x ^ 1i);
    let var_2 = arg_0;
    let var_3 = !(!vec3<bool>(global1.x & all(vec3<bool>(false, global1.x, global1.x)), global1.x, global2.c.x));
    return ~select(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -5886i, var_1, 38992i), vec4<i32>(var_1, var_1, u_input.a.x, -19144i)) >> (_wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 1u, 4294967295u, 40350u), vec4<u32>(5972u, 33292u, 6381u, 4294967295u)), vec4<u32>(4294967295u, var_2.a, 14588u, 0u)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 13342i, u_input.c, var_1), vec4<i32>(1i, -1i, u_input.c, u_input.c)), vec4<i32>(var_1, -8570i, u_input.c, var_1) >> (vec4<u32>(global2.d, u_input.b.x, 4294967295u, var_2.a) % vec4<u32>(32u))), !all(!var_3.yz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(reverseBits(func_4(func_1())), all(select(global2.c, global2.c, u_input.b.x >= abs(4294967295u))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.e + -899f))))), global2.e, -288f, global2.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 234f, -811f, -684f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -477f, -477f, global2.e) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -205f, var_1.x, 282f), vec4<f32>(707f, -275f, 1372f, var_1.x)))))));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(-624f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2487f - global2.a.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)), global2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~global2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), firstTrailingBit(u_input.b.yx)), u_input.b.x | _wgslsmith_sub_u32(global2.b, u_input.b.x), func_1().a) & _wgslsmith_div_vec4_u32(~vec4<u32>(12375u, 68837u, 0u, 3465u) & max(vec4<u32>(44565u, u_input.b.x, global2.b, global2.b), vec4<u32>(global2.b, 0u, 0u, 645u)), ~firstLeadingBit(vec4<u32>(global2.d, u_input.b.x, 1u, u_input.b.x))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.yxw - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(var_1.yxy)))))));
}

