struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> vec3<i32> {
    let var_0 = vec3<bool>(true, !(true && all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), true);
    let var_1 = vec3<u32>(u_input.a, 1u << (u_input.a % 32u), 80647u);
    var var_2 = var_0.zx;
    let var_3 = Struct_4(Struct_2(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-209f, -227f, -1730f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, 2264f, -1234f)) + vec3<f32>(1116f, -2183f, 436f))), firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, -2147483647i))), true | var_2.x);
    let var_4 = any(!select(var_0, !vec3<bool>(true, var_3.b, var_2.x), select(!var_0, select(vec3<bool>(true, true, var_2.x), var_0, true), vec3<bool>(true, true, var_3.b))));
    return u_input.b.xyz;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    let var_0 = ~(~(countOneBits(10031u) | u_input.a));
    let var_1 = ~(~8528u);
    let var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(~u_input.b.x, 2147483647i), arg_1.c);
    var var_3 = Struct_4(Struct_2(all(vec2<bool>(true, arg_1.c == var_2)), vec3<f32>(_wgslsmith_f_op_f32(-1199f - _wgslsmith_f_op_f32(f32(-1f) * -900f)), -511f, 1430f), u_input.b.x), select(false, any(!vec3<bool>(false, arg_1.d.x, true)), arg_1.d.x));
    var var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, max(var_1, 25468u), _wgslsmith_add_u32(15078u, 12290u), u_input.a), select(max(vec4<u32>(4294967295u, 1u, var_1, u_input.a), vec4<u32>(0u, var_1, var_0, var_1)), ~vec4<u32>(var_0, 22009u, var_0, 1u), select(vec4<bool>(var_3.b, arg_1.d.x, true, var_3.a.a), vec4<bool>(arg_1.d.x, var_3.a.a, true, false), vec4<bool>(true, false, var_3.a.a, false)))), vec4<u32>(var_1, 31750u, ~(~33876u), 4180u)), var_0 >> (65415u % 32u), ~(~var_0));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(31387i | func_2().x, reverseBits(func_2().x), -var_2 ^ ((i32(-1i) * -2803i) >> (u_input.a % 32u))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(27182i, 929i, arg_2.x), select(-23879i, 64890i, false), -17760i), (vec3<i32>(2147483647i, arg_1.c, arg_2.x) >> (firstLeadingBit(vec3<u32>(var_4.x, 40247u, 4294967295u)) % vec3<u32>(32u))) & countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2340i, var_2, -1i), vec3<i32>(arg_1.c, var_3.a.c, -1i))), u_input.b.wzx));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(func_2() << (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 0u)), vec3<u32>(1u, u_input.a, 22022u >> (u_input.a % 32u))) % vec3<u32>(32u)), u_input.b.x, ~vec2<u32>(u_input.a, 14300u), vec3<i32>(u_input.b.x, _wgslsmith_div_i32(1i, 36735i), -func_3(_wgslsmith_div_f32(-426f, 249f), Struct_1(vec4<f32>(-367f, 824f, -1364f, -232f), 1323f, 0i, vec3<bool>(false, false, false), true), u_input.b & vec4<i32>(u_input.b.x, 22105i, -1i, u_input.b.x))));
    var var_1 = select(vec3<bool>(!(true && all(vec2<bool>(true, true))), !all(vec3<bool>(true, false, false)), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec4<bool>(true, true, false, false)))), !(!any(vec4<bool>(true, true, false, true))), any(vec2<bool>(true, true))), (var_0.b == var_0.a.x) | (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-434f, -1204f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1661f)))));
    var_1 = !(!(!select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true))));
    var_1 = select(select(select(vec3<bool>(true, 19438u > var_0.c.x, var_1.x), vec3<bool>(u_input.b.x < 8983i, true, all(vec4<bool>(true, false, true, var_1.x))), (var_0.b > -57454i) && false), vec3<bool>(var_0.d.x == 0i, true, (-2815i != var_0.d.x) | !var_1.x), select(select(vec3<bool>(false, var_1.x, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), any(vec4<bool>(false, true, var_1.x, true))), select(!vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, var_1.x, true), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, true, var_1.x))), var_1.x)), !select(vec3<bool>(!var_1.x, u_input.b.x > -1i, !var_1.x), vec3<bool>(!var_1.x, !var_1.x, false), vec3<bool>(any(vec3<bool>(var_1.x, true, true)), true, false)), vec3<bool>(true, all(vec4<bool>(any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), true && var_1.x, var_1.x, true)), !var_1.x));
    var_1 = select(!vec3<bool>(true, true, var_1.x), select(!(!(!vec3<bool>(true, true, var_1.x))), select(select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, false, false), vec3<bool>(false, false, var_1.x)), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, false, false), vec3<bool>(true, false, var_1.x))), !vec3<bool>(true, var_1.x, false), any(select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x)))), vec3<bool>(_wgslsmith_f_op_f32(round(820f)) < -555f, true, true)), select(vec3<bool>(!var_1.x, any(vec2<bool>(true, true)), (u_input.a >= 10193u) | true), vec3<bool>(true, var_1.x, false), all(vec4<bool>(var_1.x, true, !var_1.x, u_input.b.x < var_0.d.x))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(930f, 2035f, -140f, 1267f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)), ~(abs(-2147483647i) & var_0.b), vec3<bool>(!(!any(var_1.zy)), select(!(!var_1.x), true, true), var_1.x), any(var_1.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~(_wgslsmith_mod_i32(func_3(-556f, Struct_1(var_0.a, var_0.a.x, u_input.b.x, vec3<bool>(var_0.e, var_0.d.x, var_0.d.x), var_0.d.x), vec4<i32>(u_input.b.x, 35545i, u_input.b.x, var_0.c) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), 30955i) << (reverseBits(u_input.a) % 32u));
    let var_2 = ~abs(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(13127u, u_input.a, 0u)), vec3<u32>(countOneBits(4294967295u), 71761u | u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), vec4<u32>(0u, 15537u, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(f32(-1f) * -441f)), -1465f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.xz - var_0.a.xx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1405f)))))), -410f);
}

