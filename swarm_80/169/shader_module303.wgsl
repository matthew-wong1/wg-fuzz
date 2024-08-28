struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(-1576f));
    let var_1 = Struct_3(Struct_1(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -11018i), abs(vec2<i32>(-8938i, arg_0))))), var_0, vec2<bool>(var_0 > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), !(!select(true, false, true))), 646f, Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(arg_0), 39i), countOneBits(vec2<i32>(-1336i, arg_0) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))))));
    var var_2 = Struct_3(Struct_1(vec2<i32>(-1i) * -vec2<i32>(var_1.e.a.x, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-var_1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f - var_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(494f - var_0), 2079f)))), select(select(!var_1.c, vec2<bool>(var_1.c.x, var_1.c.x), !select(var_1.c, var_1.c, var_1.c)), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -270f) <= _wgslsmith_f_op_f32(ceil(var_0)), false), vec2<bool>(all(vec2<bool>(false, var_1.c.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f)), var_1.e);
    var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(868f + _wgslsmith_f_op_f32(select(381f, 298f, false))), var_2.d)) - vec2<f32>(1373f, var_0));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(~(-1i), ~u_input.b >> (1u % 32u)), ~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-20777i, 2147483647i), vec2<i32>(0i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(82428i));
    let var_2 = Struct_3(Struct_1(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, u_input.b, -37179i), vec4<i32>(2147483647i, 1i, var_0.a.x, var_0.a.x)), -17768i)), var_1.x, select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), !select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), all(vec3<bool>(false, false, true)) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, 605f)) + -1273f)))), var_0);
    let var_3 = firstTrailingBit(min(min(~(-vec4<i32>(-1i, var_2.a.a.x, -1i, 1i)), vec4<i32>(1i | u_input.b, firstTrailingBit(var_0.a.x), -1i, -13459i)), _wgslsmith_div_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(21525i, 28946i, u_input.b, 28511i))), -(~vec4<i32>(var_0.a.x, -2147483647i, 1i, u_input.b)))));
    var var_4 = u_input.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f - -502f)) * var_1.x);
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f - _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(select(-134f, _wgslsmith_f_op_f32(f32(-1f) * -1245f), true)))));
    let var_1 = var_0;
    return Struct_5(all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))), Struct_3(Struct_1(vec2<i32>(29720i, select(u_input.b, 0i, false))), _wgslsmith_f_op_f32(floor(1108f)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), true || all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec2_f32(func_3(u_input.b)).x, Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 0i)), ~vec2<i32>(1i, 2147483647i)))), var_1, Struct_4(_wgslsmith_mult_u32(~u_input.c, min(19946u, u_input.c))), true);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>) -> f32 {
    var var_0 = firstTrailingBit(abs(-774i));
    var_0 = ~19498i;
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-6496i, select(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.b.a.a.x, -2147483647i, arg_0.b.e.a.x), arg_1), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, arg_0.b.e.a.x, 2147483647i, -24958i), -vec4<i32>(-1i, u_input.b, 0i, arg_1.x)), all(select(vec4<bool>(arg_0.b.c.x, arg_0.a, false, false), vec4<bool>(arg_0.a, arg_0.e, arg_0.e, false), arg_0.e)))), max(min(vec2<i32>(_wgslsmith_mod_i32(arg_0.b.e.a.x, 2147483647i), arg_0.b.a.a.x), select(vec2<i32>(-67062i, 2147483647i), ~arg_0.b.e.a, all(vec4<bool>(arg_0.a, true, arg_0.b.c.x, arg_0.b.c.x)))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.b.a.a, firstLeadingBit(arg_0.b.a.a)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_1.x), vec2<i32>(u_input.b, -19217i))))));
    let var_2 = arg_0.b.a.a >> (vec2<u32>(~_wgslsmith_add_u32(max(0u, u_input.a.x), ~1u), ~_wgslsmith_sub_u32(~0u, u_input.a.x)) % vec2<u32>(32u));
    let var_3 = arg_0.d;
    return _wgslsmith_f_op_f32(771f + -809f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_sub_vec3_i32(vec3<i32>(31385i, u_input.b, u_input.b), vec3<i32>(u_input.b, -26028i, u_input.b))))), _wgslsmith_f_op_f32(-514f + _wgslsmith_f_op_f32(abs(545f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1331f) - var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -240f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-1756f, -1760f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1000f))))))));
    var var_1 = abs(abs(_wgslsmith_div_i32(_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), -9401i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, -29188i), vec4<i32>(u_input.b, u_input.b, -96043i, u_input.b))), _wgslsmith_clamp_i32(-u_input.b, 0i, abs(u_input.b)))));
    let var_2 = _wgslsmith_f_op_f32(var_0.x - 976f);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2)));
    var var_4 = Struct_3(func_1().b.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-230f, 1000f, false)))))), func_1().b.c, _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + var_0.x)))), Struct_1(-vec2<i32>(u_input.b, u_input.b)));
    var var_5 = Struct_2(func_1().b.e, Struct_1(countOneBits(reverseBits(~var_4.e.a))));
    let var_6 = -7841i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(u_input.b, _wgslsmith_add_i32(func_1().b.e.a.x, var_4.a.a.x)));
}

