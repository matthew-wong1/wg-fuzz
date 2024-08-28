struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> bool {
    var var_0 = vec2<bool>(any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), true), vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, true), all(vec4<bool>(true, false, false, true)), u_input.a < 1u, false))), any(vec3<bool>(abs(u_input.d) < 15290u, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-144f - _wgslsmith_f_op_f32(min(arg_1.x, -114f)))) >= 1163f, select(vec2<u32>(_wgslsmith_mult_u32(22898u, ~arg_0), arg_0), reverseBits(_wgslsmith_add_vec2_u32(u_input.c.zz, u_input.c.zz) | vec2<u32>(20941u, u_input.b.x)), !(!vec2<bool>(false, var_0.x))), ~(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d, u_input.c.x), arg_0) | arg_0), Struct_2(Struct_1(reverseBits(vec3<i32>(u_input.e, 27406i, 2147483647i) >> (u_input.c % vec3<u32>(32u))), vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(floor(arg_1.x))), all(!vec4<bool>(false, var_0.x, true, false)), ~vec4<i32>(-18239i, -33384i, -2147483647i, 14650i), arg_0), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.x)))))));
    var var_2 = -u_input.e;
    let var_3 = var_1.d.a;
    let var_4 = Struct_2(Struct_1(vec3<i32>(var_1.d.a.a.x, 1i, select(-2147483647i, u_input.e, var_3.c)) << (~u_input.c % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b * vec3<f32>(-1000f, var_1.d.a.b.x, arg_1.x)) + vec3<f32>(var_3.b.x, var_3.b.x, 482f)) + var_1.d.a.b), var_1.a, reverseBits(countOneBits(vec4<i32>(var_3.d.x, var_1.d.a.a.x, 59688i, 2147483647i))), 31873u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d.a.b.xx * arg_1)), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.x, var_3.b.x)), _wgslsmith_f_op_f32(-var_1.d.b.x)), select(!vec2<bool>(var_3.c, false), vec2<bool>(var_3.c, var_3.c), true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(var_1.d.a.b.x + var_4.a.b.x)))) <= -1027f;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_2(Struct_1(vec3<i32>(1i, ~u_input.e ^ u_input.e, -abs(-1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 403f, arg_0.x))), true, vec4<i32>(_wgslsmith_clamp_i32(u_input.e, 0i, 21105i) | u_input.e, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, u_input.e, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.e), vec3<i32>(-23141i, -26575i, u_input.e))), ~(-35310i), 3368i), _wgslsmith_mod_u32(0u, u_input.d)), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x)));
    let var_1 = var_0.a;
    var var_2 = Struct_4(var_0.a.d.xz, select(vec2<bool>(select(var_1.c || var_1.c, true, true), !(var_1.c || var_0.a.c)), select(vec2<bool>(var_0.a.c, !var_0.a.c), !select(vec2<bool>(var_0.a.c, var_0.a.c), vec2<bool>(var_0.a.c, var_1.c), var_1.c), true || all(vec3<bool>(true, false, var_1.c))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(true, var_0.a.c), var_1.c), !select(vec2<bool>(true, var_0.a.c), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(var_0.a.c, true), vec2<bool>(var_0.a.c, false)))), abs(vec3<u32>(var_1.e, var_1.e, 1u & (78871u & var_1.e))), vec2<bool>(select(1i, _wgslsmith_sub_i32(var_1.d.x, var_0.a.d.x), 2147483647i < var_0.a.a.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(5093i, -2147483647i), vec2<i32>(var_0.a.d.x, var_1.d.x)), -476f > _wgslsmith_f_op_f32(arg_0.x - var_0.a.b.x)));
    let var_3 = !select(!var_2.b, var_2.d, vec2<bool>(_wgslsmith_f_op_f32(var_0.b.x + var_1.b.x) >= _wgslsmith_f_op_f32(arg_0.x + arg_0.x), true));
    var_2 = Struct_4(vec2<i32>(-1i) * -vec2<i32>(firstTrailingBit(var_0.a.d.x), -64442i), var_2.d, ~var_2.c, select(vec2<bool>(var_3.x, var_1.c), !vec2<bool>(var_1.c, true), func_3(~u_input.c.x, _wgslsmith_f_op_vec2_f32(round(var_0.a.b.zz))) || any(!vec3<bool>(false, var_2.b.x, var_1.c))));
    return -48164i;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = min(vec3<i32>(_wgslsmith_add_i32(func_2(vec2<f32>(-1574f, 560f)), u_input.e), -1i, arg_0.x) | _wgslsmith_div_vec3_i32(abs(vec3<i32>(17007i, arg_0.x, u_input.e)), vec3<i32>(-u_input.e, -arg_0.x, i32(-1i) * -7730i)), firstTrailingBit(~(~vec3<i32>(2147483647i, u_input.e, u_input.e))));
    let var_1 = Struct_2(Struct_1(vec3<i32>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 901f))), _wgslsmith_div_i32(16102i, 1i), -31540i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1520f, 1227f, -1000f) * vec3<f32>(-1180f, 687f, -628f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-528f, 1787f, -323f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, -718f, 234f)))), ((arg_0.x ^ u_input.e) >> (max(u_input.d, u_input.d) % 32u)) == ~(2147483647i ^ arg_0.x), vec4<i32>(firstLeadingBit(var_0.x), -var_0.x, -20000i, func_2(vec2<f32>(1403f, -614f))) & countOneBits(select(vec4<i32>(u_input.e, var_0.x, var_0.x, u_input.e), vec4<i32>(11922i, u_input.e, 1i, u_input.e), false)), ~u_input.a ^ reverseBits(max(47992u, 4294967295u))), vec2<f32>(2740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1169f)))))));
    var_0 = _wgslsmith_clamp_vec3_i32(var_1.a.d.zxy, _wgslsmith_clamp_vec3_i32(var_1.a.a, var_1.a.d.wyw, vec3<i32>(~var_1.a.d.x ^ 0i, select(u_input.e, u_input.e & var_1.a.d.x, var_1.a.c), countOneBits(-26812i))), var_1.a.a & _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.e, var_1.a.d.x) ^ max(var_1.a.d.wyz, var_1.a.a), var_1.a.a, _wgslsmith_add_vec3_i32(var_1.a.a, max(var_1.a.d.xxx, var_1.a.a))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), var_1.b.x, var_1.a.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f + 245f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(sign(1000f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.x + var_1.a.b.x))) + var_1.a.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.b.x)))), var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1574f)));
    var_2 = vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_div_f32(var_1.b.x, var_1.b.x));
    return -665f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.e), vec2<i32>(u_input.e, 7719i)), vec2<i32>(u_input.e, u_input.e) | vec2<i32>(u_input.e, -2695i)) & _wgslsmith_sub_vec2_i32(vec2<i32>(23201i, u_input.e) & vec2<i32>(2147483647i, -106i), firstLeadingBit(vec2<i32>(-42306i, 2147483647i))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-408f, 1409f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(139f + 928f)))))), _wgslsmith_f_op_f32(-534f - -2009f), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xww, reverseBits(~_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.e, u_input.e), ~vec2<i32>(u_input.e, -47248i))));
}

