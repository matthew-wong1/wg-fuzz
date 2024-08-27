struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 525f)), vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(floor(1410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1051f, 1220f)))), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))))));
    global0 = 1u;
    var var_1 = vec4<u32>(~1u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a), vec4<u32>(92973u, u_input.c, 28264u, 0u)), u_input.c), u_input.b.x, u_input.a) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, u_input.b.x, ~u_input.d, _wgslsmith_mult_u32(4294967295u, u_input.c)), ~vec4<u32>(69773u, 4294967295u, u_input.d, 4294967295u)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 15820u, u_input.a, 61696u), vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x)), ~vec4<u32>(u_input.d, 88647u, u_input.d, u_input.a), vec4<u32>(4294967295u, u_input.d, 55410u, 20770u)), abs(vec4<u32>(4294967295u, 47672u, u_input.b.x, 0u)) >> (~vec4<u32>(1u, u_input.a, 25414u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = false;
    let var_3 = vec2<i32>(-30196i, 2147483647i) | vec2<i32>(select(1i, -3143i, true), ~_wgslsmith_sub_i32(1i, select(-38040i, 2147483647i, false)));
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(min(vec3<u32>(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(0u, 4294967295u)), func_3(), ~1u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 4294967295u), max(u_input.b.x, 1u)), _wgslsmith_div_u32(reverseBits(1u), 66790u), u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1007f - 874f) - -184f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f))))), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(905f, -207f)) * _wgslsmith_f_op_f32(f32(-1f) * -434f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(642f)))))))));
    var var_1 = Struct_1(max(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(15648u, 52901u, 1u), firstLeadingBit(vec3<u32>(4294967295u, 101308u, 25330u)))), max(~abs(var_0.a), (var_0.a & vec3<u32>(4294967295u, 0u, 4294967295u)) & vec3<u32>(var_0.a.x, 6804u, 105278u))), var_0.d, select(var_0.c, var_0.c, var_0.c.x), _wgslsmith_div_f32(1279f, var_0.d));
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(firstLeadingBit(var_1.a) ^ var_0.a, var_2.a), var_2.b, vec3<bool>(var_2.c.x, var_0.c.x, true), var_0.d);
    var var_4 = vec2<bool>(!(!var_1.c.x), any(vec4<bool>(any(select(vec2<bool>(false, var_2.c.x), vec2<bool>(true, var_0.c.x), var_2.c.x)), var_3.c.x, true, var_0.c.x)));
    return var_3.a.x;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24815u), vec2<u32>(arg_2, u_input.b.x) & vec2<u32>(0u, u_input.d)) | ~(67228u << (arg_2 % 32u)), func_2()), _wgslsmith_f_op_f32(-arg_0), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(select(true, true, false), true, true), !(arg_0 < arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0))));
    global0 = 3436u;
    let var_1 = !(-107f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(530f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(trunc(arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f))))));
    let var_3 = all(select(var_0.c, vec3<bool>(false, true, !(!var_0.c.x)), var_0.c.x));
    return Struct_1(~abs(select(_wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(4294967295u, 4294967295u, arg_2)), var_0.a, !var_0.c)), var_2, !(!select(var_0.c, var_0.c, select(vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(true, false, true), vec3<bool>(var_1, false, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-354f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(abs(593f)), vec3<i32>(~(i32(-1i) * -42630i), 1i, ~(max(-1i, 4266i) | _wgslsmith_clamp_i32(40690i, -1i, 2147483647i))), ~u_input.b.x);
    global0 = var_0.a.x;
    var_0 = Struct_1(vec3<u32>(10496u ^ ~(~u_input.d), countOneBits(min(_wgslsmith_div_u32(0u, 1u), _wgslsmith_div_u32(u_input.d, 0u))), abs(u_input.b.x)), _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(round(var_0.b)))), vec3<bool>(all(vec4<bool>(all(var_0.c.yy), var_0.a.x == var_0.a.x, !var_0.c.x, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-27098i, 3615i, 11636i, 0i), vec4<i32>(-14209i, -13961i, 0i, 0i)) > 0i, any(!(!vec3<bool>(var_0.c.x, var_0.c.x, true)))), 1000f);
    let var_1 = 1222f;
    var_0 = Struct_1(_wgslsmith_mod_vec3_u32(var_0.a, select(vec3<u32>(var_0.a.x, ~4294967295u, ~u_input.d), var_0.a, select(vec3<bool>(var_0.c.x, true, true), select(vec3<bool>(true, true, true), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), true), var_0.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1)))), !select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x && var_0.c.x), var_0.c, all(select(vec4<bool>(var_0.c.x, var_0.c.x, false, false), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), false))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~(var_0.a & var_0.a)), _wgslsmith_f_op_f32(exp2(var_1)), 1i, abs(~max(4950u, var_0.a.x) & abs(var_0.a.x >> (0u % 32u))), ~vec4<u32>(~min(12838u, 0u), 31541u, 22441u ^ u_input.d, func_1(_wgslsmith_f_op_f32(-var_0.b), vec3<i32>(-29812i, -55752i, -1i), 84903u).a.x));
}

