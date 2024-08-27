struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(1000f, -1000f, -1000f), vec3<f32>(-1199f, -1305f, -205f), vec3<f32>(-153f, 1203f, 1622f), vec3<f32>(901f, -1026f, -275f), vec3<f32>(-111f, -1908f, -329f), vec3<f32>(-1676f, -1895f, -411f), vec3<f32>(-139f, -1000f, -855f), vec3<f32>(-1000f, 1298f, -1985f), vec3<f32>(500f, -2036f, 1426f), vec3<f32>(-112f, -352f, 1054f), vec3<f32>(1331f, -537f, 1999f), vec3<f32>(1000f, -110f, 138f));

var<private> global1: bool;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: bool) -> vec4<bool> {
    let var_0 = Struct_5(Struct_4(~arg_2 | _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 27782u, arg_2, 50443u), vec4<u32>(arg_2, u_input.c, u_input.c, u_input.c)), vec4<u32>(arg_2, 0u, 0u, 22701u))), Struct_3(vec4<u32>(arg_2, 88066u, u_input.c, arg_2), vec2<u32>(1u, 1u), Struct_2(-1i << (abs(arg_2) % 32u), -u_input.a >> (select(vec4<u32>(68527u, 52645u, 11259u, arg_2), vec4<u32>(24777u, 102349u, u_input.c, u_input.c), true) % vec4<u32>(32u)), Struct_1(vec4<bool>(true, arg_3, arg_3, false)), Struct_1(!vec4<bool>(true, false, false, arg_3)), Struct_1(!vec4<bool>(arg_3, arg_3, arg_3, arg_3))), Struct_1(!select(vec4<bool>(arg_3, false, arg_3, true), vec4<bool>(false, false, false, true), true))), Struct_4((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_2, u_input.c, arg_2), vec4<u32>(u_input.c, 4294967295u, 51788u, 1u)) | u_input.c) << ((~arg_2 | (27402u & u_input.c)) % 32u)));
    var var_1 = var_0.b.c.b.x;
    var var_2 = var_0.b;
    global0 = array<vec3<f32>, 12>();
    var_1 = -_wgslsmith_sub_i32(var_0.b.c.b.x, var_0.b.c.b.x);
    return var_0.b.c.d.a;
}

fn func_2() -> bool {
    let var_0 = vec2<i32>(u_input.e, u_input.e);
    var var_1 = Struct_2(u_input.b.x, ~_wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(u_input.d.x, 1i, var_0.x, -9843i)), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-59369i, var_0.x, u_input.b.x, u_input.a.x))), Struct_1(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), func_3(315f, 775f, u_input.c, false)), select(func_3(-786f, -130f, 3581u, true), vec4<bool>(false, true, false, true), true), true)), Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))), Struct_1(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), false)));
    let var_2 = u_input.c;
    global0 = array<vec3<f32>, 12>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, -165f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-911f, -912f) + vec2<f32>(581f, -1398f)))))));
    return (0u >> ((0u ^ select(1u ^ var_2, var_2, !var_1.e.a.x)) % 32u)) < ~(~var_2);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_2 {
    global1 = false;
    global1 = true;
    global1 = arg_2.a.x;
    global1 = _wgslsmith_clamp_u32(u_input.c, 1u, 16522u) < 56934u;
    var var_0 = abs(~(~(~(~vec3<u32>(u_input.c, 4294967295u, u_input.c)))));
    return Struct_2(arg_0, u_input.a, Struct_1(select(select(arg_2.a, !arg_2.a, vec4<bool>(false, arg_2.a.x, arg_2.a.x, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_2.a), arg_2.a.x)), Struct_1(select(vec4<bool>(true, arg_0 <= 1i, func_2(), false), vec4<bool>(false, false, u_input.b.x < -28394i, arg_2.a.x == arg_2.a.x), func_3(arg_1.x, _wgslsmith_f_op_f32(select(-100f, 179f, true)), u_input.c, true))), arg_2);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(324f)) - -112f);
    var var_1 = func_4(abs(73760i), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, min(u_input.c, u_input.c)) ^ u_input.c, 12u)], Struct_1(select(vec4<bool>(true, 0u != u_input.c, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), func_2()), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), all(vec2<bool>(true, false))))));
    var var_2 = var_1.d.a.xx;
    global0 = array<vec3<f32>, 12>();
    var var_3 = Struct_3(select(~firstLeadingBit(vec4<u32>(u_input.c, 74571u, 24807u, u_input.c)) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1304u, 0u), vec4<u32>(11518u, u_input.c, 61762u, 0u) & vec4<u32>(u_input.c, 1u, u_input.c, 1u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(24863u, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)) | select(vec4<u32>(55959u, u_input.c, 1u, 32250u), vec4<u32>(88792u, 0u, u_input.c, 0u), vec4<bool>(false, false, var_1.e.a.x, var_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<u32>(u_input.c, u_input.c, 92768u, u_input.c)), var_2.x), vec4<bool>(var_2.x, !any(vec4<bool>(true, var_1.d.a.x, var_1.e.a.x, true)), true, true)), ~vec2<u32>(firstLeadingBit(u_input.c), _wgslsmith_add_u32(u_input.c, _wgslsmith_mult_u32(u_input.c, 0u))), Struct_2(-(~var_1.b.x), _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(var_1.b, var_1.b)), select(vec4<i32>(18622i, var_1.b.x, -35575i, u_input.e), ~vec4<i32>(38925i, var_1.b.x, var_1.b.x, var_1.a), !var_2.x)), var_1.e, func_4(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.a, -77927i, 0i, u_input.d.x), _wgslsmith_mod_vec4_i32(var_1.b, vec4<i32>(var_1.a, -44183i, -16483i, u_input.e))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.c, 12u)]))), var_1.e).c, func_4(var_1.b.x ^ -49239i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(73094u, 12u)]) - vec3<f32>(1155f, 406f, 1679f)), Struct_1(func_3(-1265f, -1000f, 71616u, false))).d), Struct_1(!var_1.d.a));
    return StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(598f, 1749f, 1785f, -796f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1304f, 1000f, -399f, -955f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(684f, -3475f, 1198f, -2507f), vec4<f32>(-920f, 791f, -1314f, 1000f))) + vec4<f32>(790f, 802f, 1200f, -1000f)))), ~var_1.b.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

