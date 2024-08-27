struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = Struct_2(arg_0.b, (vec3<i32>(-1i) * -(~vec3<i32>(-42607i, u_input.c, 65769i))) ^ -vec3<i32>(2147483647i, abs(u_input.c), u_input.c));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-867f, 1203f, true)) - _wgslsmith_f_op_f32(-405f - 418f))))));
    var var_3 = Struct_3(Struct_1(u_input.b.xz, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.a | arg_0.a, ~vec2<u32>(4294967295u, 0u)), max(~u_input.b.yx, u_input.b.yx))), ~u_input.a, Struct_2(~0u, vec3<i32>(-countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, -25873i)), vec2<i32>(-1i, 25328i)), i32(-1i) * -41748i)), Struct_1(_wgslsmith_add_vec2_u32(u_input.b.yz, ~arg_0.a << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), ~(~u_input.b.x >> (0u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)), _wgslsmith_f_op_f32(-553f * var_2), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-186f, 1909f, false)), -110f) - -591f)));
    var_3 = Struct_3(var_3.d, ~(~arg_0.b), Struct_2(~(~var_1.a), ~max(firstTrailingBit(vec3<i32>(-20636i, 1317i, 31220i)), _wgslsmith_div_vec3_i32(var_1.b, vec3<i32>(-5821i, var_1.b.x, u_input.c)))), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 68907u, var_1.a, arg_0.a.x), vec4<u32>(36804u, 20550u, 77582u, arg_0.a.x)), select(1u, 21081u, true)), vec2<u32>(var_0.b, 17280u) & vec2<u32>(var_3.c.a, var_1.a)), ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), var_3.e);
    return !select(vec2<bool>(var_1.a <= ~u_input.a, !(var_3.e.x != var_3.e.x)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    var var_0 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(u_input.c > -25557i, false, true, true), any(func_3(Struct_1(u_input.b.zz, 58903u)))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), any(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, func_3(Struct_1(vec2<u32>(0u, u_input.a), 0u)).x))), select(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true), vec4<bool>(all(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, false, false, true))), select(true, true, false)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, all(vec3<bool>(false, false, true)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, false, false)), vec4<bool>(true, select(false, false, false), arg_0 >= arg_0, true), !all(vec4<bool>(false, true, true, true))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), false)));
    var_0 = !(!select(select(!vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, true, var_0.x, true)), vec4<bool>(var_0.x, all(vec2<bool>(var_0.x, false)), var_0.x, true), true));
    var_0 = vec4<bool>(true | var_0.x, select(var_0.x, any(vec2<bool>(!var_0.x, u_input.c < 11175i)), true), (var_0.x & (var_0.x || all(vec4<bool>(var_0.x, var_0.x, false, false)))) && true, true);
    var var_1 = vec3<u32>(47737u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(32446u, arg_0 >> (4294967295u % 32u), select(arg_0, 78443u, true)), ~_wgslsmith_mult_vec3_u32(u_input.b, u_input.b), vec3<u32>(u_input.b.x | 58634u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.a, 23540u), vec4<u32>(24993u, u_input.a, arg_0, 1u)))), u_input.b), max(u_input.b.x, _wgslsmith_mod_u32(1u & (u_input.b.x & arg_0), arg_0)));
    return (min(~countOneBits(u_input.b.x), _wgslsmith_mod_u32(abs(arg_0), arg_0)) ^ ~(var_1.x >> (var_1.x % 32u))) ^ arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = ~(vec4<u32>(~15225u, firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(arg_0.b, ~1u), _wgslsmith_mult_u32(func_2(u_input.a, arg_3.c.b.zx), arg_0.b ^ u_input.a)) & ~(~max(vec4<u32>(11990u, 4294967295u, arg_3.d.a.x, 90111u), vec4<u32>(arg_3.d.b, u_input.b.x, 1u, 0u))));
    var var_1 = !select(!vec3<bool>(false, 1u == var_0.x, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(true, var_0.x < 0u, false), vec3<bool>(select(true, true, true), true, any(vec2<bool>(true, false)))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(-arg_3.e.x) == _wgslsmith_f_op_f32(round(1000f))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, _wgslsmith_f_op_f32(trunc(arg_2)))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.e.x, arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.e.yy))))));
    var var_4 = arg_3.c;
    return select(vec4<bool>(true, true != all(!vec3<bool>(false, var_1.x, false)), all(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x))), var_1.x), select(vec4<bool>(true, all(select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, false), var_1.x)), var_1.x & !var_1.x, any(vec4<bool>(var_1.x, var_1.x, var_1.x, false))), vec4<bool>(!var_1.x, true, true, !all(vec4<bool>(var_1.x, false, var_1.x, false))), select(vec4<bool>(var_1.x, var_1.x || false, true, var_1.x), !select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, true, false), var_1.x), !(!vec4<bool>(false, var_1.x, true, var_1.x)))), any(select(var_1.yy, vec2<bool>(true, true), any(vec3<bool>(false, var_1.x, var_1.x)) & var_1.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(countOneBits(vec2<u32>(u_input.b.x, 1u)), _wgslsmith_mod_u32(40669u, 84745u)), ~15500u, Struct_2(~(~abs(1u)), ~(~(vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(u_input.c, u_input.c, u_input.c)))), Struct_1(countOneBits(vec2<u32>(_wgslsmith_sub_u32(u_input.a, 16563u), min(u_input.b.x, 1u))), 1u), vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(203f, -1000f) * -185f)));
    let var_1 = var_0.e.x;
    let var_2 = vec4<bool>(false, true, arg_1.x, arg_1.x);
    let var_3 = true;
    var var_4 = vec4<bool>(var_3, true, func_3(Struct_1(~select(vec2<u32>(var_0.b, 59468u), vec2<u32>(var_0.a.a.x, var_0.a.b), true), var_0.c.a)).x, all(func_3(Struct_1(countOneBits(u_input.b.yy), ~19424u))));
    return Struct_1(vec2<u32>((4799u | var_0.d.a.x) << (25972u % 32u), _wgslsmith_div_u32(reverseBits(var_0.b), var_0.b)), _wgslsmith_dot_vec2_u32(reverseBits(countOneBits(vec2<u32>(4294967295u, 29392u))), ~vec2<u32>(120343u << (var_0.a.a.x % 32u), u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), select(vec4<bool>(true, true, true, true), select(func_1(Struct_1(u_input.b.yy, 1u), Struct_4(vec3<i32>(1021i, -2147483647i, u_input.c)), -1000f, Struct_3(Struct_1(vec2<u32>(0u, 4294967295u), 2374u), u_input.b.x, Struct_2(6335u, vec3<i32>(0i, u_input.c, 2122i)), Struct_1(u_input.b.yz, u_input.b.x), vec3<f32>(676f, -206f, -1587f))), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))), ~u_input.b.x, Struct_2(4089u, -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -15072i, -10206i), vec3<i32>(0i, 0i, -1i)) & (vec3<i32>(-1i) * -vec3<i32>(55913i, u_input.c, u_input.c))), func_4(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(236f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(523f)) + _wgslsmith_div_f32(875f, 893f)), 708f, _wgslsmith_f_op_f32(173f + _wgslsmith_div_f32(285f, -235f))), vec4<bool>(u_input.c >= -17406i, true, any(func_1(Struct_1(u_input.b.xz, 4294967295u), Struct_4(vec3<i32>(-1i, u_input.c, 11904i)), 240f, Struct_3(Struct_1(vec2<u32>(1u, u_input.b.x), u_input.a), 7082u, Struct_2(4294967295u, vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), u_input.a), vec3<f32>(669f, -105f, 149f))).zy), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, 1622f, -1242f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-263f, -264f, 149f)))))));
    var var_1 = var_0.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c, -u_input.c, countOneBits(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c, var_0.c.b.x, u_input.c, var_0.c.b.x), vec4<i32>(-2147483647i, var_0.c.b.x, -24042i, u_input.c)), vec4<i32>(-2975i, 15133i, u_input.c, 2147483647i)))), var_2);
}

