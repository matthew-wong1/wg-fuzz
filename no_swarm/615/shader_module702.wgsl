struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-1i, 48881i, 47860i), vec3<i32>(69539i, -5038i, -25792i), vec3<i32>(-40231i, 2147483647i, 1i), vec3<i32>(2147483647i, -14794i, 0i), vec3<i32>(4930i, -1i, -374i), vec3<i32>(i32(-2147483648), -1i, 59663i), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(52439i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-27217i, 1i, 2147483647i), vec3<i32>(0i, -42161i, 16475i), vec3<i32>(41825i, 20758i, i32(-2147483648)), vec3<i32>(11816i, -5582i, i32(-2147483648)), vec3<i32>(44225i, 77806i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(2147483647i, 0i, 6798i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(6557i, -1i, 0i), vec3<i32>(1i, -38431i, -3305i), vec3<i32>(-1i, 13561i, -57181i), vec3<i32>(-18937i, -43199i, -6760i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1419f), 11439u, firstTrailingBit(abs(1u)), u_input.a), Struct_1(true, -729f, u_input.a, ~30280u, u_input.b));
    var var_1 = ~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(~44695u, max(1u, 48177u)), reverseBits(var_0.a.d)));
    global0 = array<vec3<i32>, 22>();
    var var_2 = Struct_1(false, -689f, u_input.a, _wgslsmith_mod_u32(55089u << (var_0.a.d % 32u), u_input.b >> ((abs(var_0.a.c) | var_0.b.d) % 32u)), _wgslsmith_sub_u32(29074u, 13410u));
    global0 = array<vec3<i32>, 22>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1342f);
}

fn func_2() -> Struct_5 {
    var var_0 = -1i;
    global0 = array<vec3<i32>, 22>();
    var var_1 = ~_wgslsmith_add_i32(firstTrailingBit(countOneBits(_wgslsmith_sub_i32(-23694i, 8401i))), -1i);
    let var_2 = Struct_1(!(true & all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(func_3())), ~u_input.a, ~countOneBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, 9974u), firstLeadingBit(u_input.b))), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(23538u, u_input.a, u_input.a)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(20436u, 37418u, 0u) & vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)), ~(~vec3<u32>(25832u, u_input.a, u_input.a)))));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + var_2.b)), _wgslsmith_f_op_f32(-378f + var_2.b)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1248f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f), _wgslsmith_f_op_f32(1000f * var_2.b))), -263f, u_input.a, ~var_2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, max(50166u, abs(u_input.b)), ~u_input.a), firstTrailingBit(firstTrailingBit(vec4<u32>(var_2.c, 0u, 16766u, 1u) | vec4<u32>(0u, u_input.a, 73986u, 1u)))));
    return Struct_5(var_2, ~vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(29931i, 7316i, 0i, -1i), vec4<i32>(-5865i, 17373i, -1i, -2147483647i), var_3.a), vec4<i32>(2147483647i, 0i, -1i, 0i)), abs(-38480i)), vec3<i32>(1i, select(-(~(-2147483647i)), select(~1i, 1i, !var_3.a), false), 1i), countOneBits(countOneBits(vec2<u32>(var_3.d, var_2.e) & (vec2<u32>(15596u, 1u) | vec2<u32>(var_2.c, var_3.c)))), var_3.d);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 22u)];
    global0 = array<vec3<i32>, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(444f, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.x, -1291f) - vec3<f32>(-1014f, -488f, arg_1.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.x, 660f) + vec3<f32>(arg_1.x, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(683f, -509f, arg_1.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, 1962f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -1453f) + vec3<f32>(915f, arg_1.x, -592f)))))));
    let var_2 = func_2();
    let var_3 = Struct_4(func_2().a, var_2.a);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(min(4294967295u, ((u_input.b ^ 20270u) | 1u) | firstLeadingBit(u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-520f * 1306f), _wgslsmith_div_f32(-1207f, 782f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), -vec2<i32>(abs(~(-2147483647i)), _wgslsmith_mult_i32(0i, -23101i) << (u_input.b % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(574f * _wgslsmith_f_op_f32(min(212f, _wgslsmith_div_f32(-1000f, -383f)))))));
}

