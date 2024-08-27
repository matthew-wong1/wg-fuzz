struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = u_input.a;
    let var_1 = Struct_3(Struct_2(234f, Struct_1(vec4<u32>(u_input.c, 79409u, var_0.x, _wgslsmith_mult_u32(39327u, 96472u))), Struct_1(~(~vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.c)))), global0[_wgslsmith_index_u32(~(~(u_input.c & abs(var_0.x))), 21u)]);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_add_u32(var_0.x & _wgslsmith_div_u32(~u_input.a.x | _wgslsmith_dot_vec3_u32(u_input.a, var_1.a.b.a.wwz), ~0u), 58355u);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-649f * -208f), Struct_1(vec4<u32>(~57368u, ~_wgslsmith_clamp_u32(26660u, var_1.a.c.a.x, 1u), ~abs(1u), _wgslsmith_div_u32(u_input.a.x, var_0.x))), Struct_1(var_1.a.c.a & ~(~var_1.a.b.a)));
    return !vec3<bool>(false, _wgslsmith_mult_i32(i32(-1i) * -1i, firstTrailingBit(arg_0.x)) > var_2.x, true);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = arg_2.x;
    global0 = array<vec3<bool>, 21>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, -648f, any(vec3<bool>(false, arg_0.d.x, false))))), Struct_1(~vec4<u32>(4294967295u, u_input.a.x, u_input.c, arg_0.c)), Struct_1(abs(vec4<u32>(var_0, u_input.a.x, arg_0.c, arg_0.c)) & vec4<u32>(arg_0.c, u_input.a.x, 101393u, 25599u))), vec3<bool>(arg_0.d.x, true, true));
    var var_2 = var_1.a.c;
    global0 = array<vec3<bool>, 21>();
    return firstTrailingBit(_wgslsmith_clamp_u32((4294967295u | arg_0.c) | select(1u, arg_0.c, arg_0.d.x), ~(~1u), var_1.a.c.a.x) >> (~abs(~var_0) % 32u));
}

fn func_1() -> Struct_2 {
    var var_0 = 23794u;
    var_0 = func_3(Struct_4(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 29175i), vec3<i32>(0i, u_input.b, u_input.b)), _wgslsmith_f_op_f32(-1640f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f))), ((u_input.a.x & 1u) << (u_input.a.x % 32u)) << (4294967295u % 32u), func_2(~vec3<i32>(u_input.b, u_input.b, -1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f))), 352f), _wgslsmith_mod_vec3_u32(u_input.a | ~(~u_input.a), min(~u_input.a ^ ~u_input.a, _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 46511u, 25291u), u_input.a))));
    var var_1 = Struct_2(-686f, Struct_1(vec4<u32>(u_input.c, min(func_3(Struct_4(vec3<i32>(27206i, u_input.b, u_input.b), -177f, u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<f32>(2994f, 555f), vec3<u32>(1u, 0u, 41639u)), _wgslsmith_add_u32(56050u, 1u)), _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.a.x, u_input.c)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 30062u, u_input.c), vec4<u32>(1605u, u_input.a.x, u_input.a.x, 43304u)), countOneBits(vec4<u32>(u_input.c, 24584u, u_input.a.x, 4294967295u))))), Struct_1(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c), vec4<u32>(u_input.c, u_input.c, 30182u, 7013u)), 1u, 1u) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 16835u), vec4<u32>(1u, u_input.c, 91122u, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(9144u, 1u, u_input.a.x, u_input.c), vec4<u32>(u_input.c, 1u, 37604u, 1u)), u_input.a.x | 48926u, reverseBits(u_input.c))));
    var var_2 = -firstTrailingBit(max(-(vec3<i32>(u_input.b, u_input.b, 0i) >> (vec3<u32>(37411u, var_1.b.a.x, 6841u) % vec3<u32>(32u))), -max(vec3<i32>(61391i, u_input.b, u_input.b), vec3<i32>(13353i, 2147483647i, u_input.b))));
    let var_3 = vec3<u32>(0u, 30012u, ~_wgslsmith_add_u32(min(65039u, ~1u), 4294967295u ^ var_1.b.a.x));
    return Struct_2(1278f, Struct_1(abs(~vec4<u32>(var_3.x, 10602u, var_1.b.a.x, u_input.a.x))), var_1.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_5) -> Struct_4 {
    global0 = array<vec3<bool>, 21>();
    let var_0 = arg_1.a.b.a;
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    return Struct_4(vec3<i32>(abs(u_input.b), ~(-1i), arg_2.c ^ firstTrailingBit(u_input.b & arg_2.a.x)), arg_1.a.a, (arg_0 << (~53746u % 32u)) | firstTrailingBit(arg_1.a.c.a.x), vec3<bool>(arg_1.b.x, true, arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~0u, Struct_3(func_1(), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, _wgslsmith_clamp_u32(4294967295u, 22316u, u_input.a.x), 17059u), 21u)]), Struct_5((select(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, 0i, u_input.b), true) | -vec4<i32>(u_input.b, -2147483647i, 8335i, u_input.b)) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(-32819i, 0i, -1000i, -2147483647i), vec4<i32>(u_input.b, 2147483647i, 25329i, -29071i)), select(!all(vec4<bool>(false, false, true, true)), !func_2(vec3<i32>(u_input.b, u_input.b, u_input.b)).x, true), u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1755f)), _wgslsmith_f_op_f32(round(-590f)), _wgslsmith_f_op_f32(ceil(-1398f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(-1050f + 1284f), -605f))));
    let var_1 = u_input.a;
    global0 = array<vec3<bool>, 21>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b)))), func_1().b, Struct_1(vec4<u32>(~u_input.c, var_0.c >> (37359u % 32u), _wgslsmith_add_u32(u_input.c, 6054u), 1u) ^ ((vec4<u32>(4294967295u, 0u, var_0.c, var_0.c) | vec4<u32>(var_1.x, 4294967295u, var_0.c, 0u)) ^ vec4<u32>(u_input.c, 0u, 49521u, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_2.c.a.x, _wgslsmith_mod_u32(func_3(var_0, vec2<f32>(-531f, -1179f), var_1 >> (vec3<u32>(31579u, var_1.x, var_2.b.a.x) % vec3<u32>(32u))), ~(37378u | var_1.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.c.a.zzy >> (vec3<u32>(46806u, 52189u, var_1.x) % vec3<u32>(32u)), ~min(vec3<u32>(0u, 0u, 27498u), vec3<u32>(22871u, 4294967295u, 0u))), ~(~reverseBits(var_0.c))), -147f, abs(firstTrailingBit(countOneBits(-39085i))), ~u_input.c << (func_3(var_0, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -224f)))), abs(u_input.a)) % 32u));
}

