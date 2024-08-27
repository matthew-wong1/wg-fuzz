struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a - arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-383f - -912f), _wgslsmith_f_op_f32(trunc(-486f)), !arg_2.b)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), 608f)), _wgslsmith_f_op_f32(arg_1.a + -421f))))));
    var var_1 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(20748i, 2147483647i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(3347i | u_input.c, u_input.c, _wgslsmith_add_i32(16457i, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(-27764i, u_input.c, u_input.c), vec3<i32>(-9600i, u_input.c, u_input.c))), -reverseBits(vec3<i32>(u_input.c, u_input.c, u_input.c) ^ vec3<i32>(50108i, 4432i, u_input.c)));
    var var_2 = abs(~countOneBits(countOneBits(vec3<i32>(-1i, -1i, var_1.x))));
    var_1 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_2.x, -28421i, var_2.x)) ^ reverseBits(vec3<i32>(var_1.x, 1i, 1i)), ~(~vec3<i32>(u_input.c, 1i, 0i))), select(-vec3<i32>(_wgslsmith_clamp_i32(0i, u_input.c, 3004i), 47872i << (arg_2.a.x % 32u), 1i), _wgslsmith_div_vec3_i32(abs(vec3<i32>(2147483647i, u_input.c, 14774i) | vec3<i32>(u_input.c, var_2.x, -4369i)), select(vec3<i32>(-2147483647i, -6811i, -5631i) | vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(var_2.x, u_input.c, 2147483647i), arg_1.b.b)), select(true, select(arg_1.b.b, !arg_1.b.b, arg_0.x), !arg_2.b && any(arg_0))), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.x, 2147483647i, u_input.c), abs(vec3<i32>(1i, 13456i, 1648i)) >> ((vec3<u32>(11465u, 55402u, arg_1.b.a.x) | u_input.b) % vec3<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~7966i, -var_1.x, u_input.c), ~(-47323i)), -2147483647i));
    var_2 = -select(select(~vec3<i32>(2147483647i, -1i, var_2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2954i, 0i, var_1.x), vec3<i32>(-1i, var_1.x, u_input.c)), all(arg_0.wyx)), ~firstLeadingBit(-vec3<i32>(-22191i, 1i, 0i)), select(_wgslsmith_f_op_f32(round(-2020f)) >= _wgslsmith_div_f32(1051f, 682f), all(arg_0), all(arg_0.zy)));
    return _wgslsmith_f_op_f32(max(-1159f, arg_1.a));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1161f, 340f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(602f, -330f) - vec2<f32>(-108f, -844f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-442f, 828f))), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_2(1017f, Struct_1(vec3<u32>(1u, 0u, arg_0), false)), Struct_1(u_input.b, true))), _wgslsmith_f_op_f32(-544f * -1028f)))));
    let var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -583f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 2768f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, var_0.x)), true)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 1962f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, 447f)), true))), vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, 1000f)), var_0.x))));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -438f), Struct_1(max(select(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(61370u, 29090u, 0u)), u_input.b, vec3<bool>(var_1, false, true)), u_input.b), false || (289f <= _wgslsmith_f_op_f32(-var_0.x))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), Struct_1(u_input.b, var_2.b.b));
    return !select(!vec4<bool>(var_1, any(vec3<bool>(var_2.b.b, true, true)), any(vec3<bool>(false, var_2.b.b, false)), var_1), vec4<bool>(!var_1, any(!vec3<bool>(true, true, var_1)), var_2.b.b, any(select(vec3<bool>(var_2.b.b, false, true), vec3<bool>(true, var_2.b.b, var_2.b.b), vec3<bool>(var_2.b.b, false, var_1)))), !vec4<bool>(var_1, var_2.a > 128f, all(vec4<bool>(var_1, var_1, var_2.b.b, var_2.b.b)), false));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-563f))), Struct_1(select(u_input.b, vec3<u32>(u_input.b.x, 14076u, ~57802u), func_2(~u_input.a).wzy), !arg_0.x || func_2(u_input.b.x).x));
    var var_1 = true;
    return var_0.b;
}

fn func_5(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_i32(2147483647i, arg_0.c.x) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.c.x, u_input.c), vec3<i32>(arg_0.c.x, arg_0.c.x, 12664i)), select(vec3<i32>(arg_0.c.x, -4953i, 0i), vec3<i32>(-2582i, -75286i, 50433i), true)), vec3<i32>(u_input.c, u_input.c, 1i) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c.x, -1505i, 1i), vec3<i32>(1i, u_input.c, -1i))), vec3<i32>(-2147483647i & -arg_0.c.x, select(abs(1i), -2147483647i, arg_0.b.b), select(-54038i, u_input.c, arg_0.d.b) >> ((arg_0.d.a.x >> (23658u % 32u)) % 32u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1392f) * 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(371f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(645f - 1000f)))))));
    var var_2 = vec4<i32>(54946i, u_input.c, -22637i, _wgslsmith_clamp_i32(select(~u_input.c, -49780i ^ arg_0.c.x, false), var_0, -countOneBits(u_input.c)) | firstLeadingBit(u_input.c));
    var var_3 = arg_0.b.b;
    let var_4 = func_4(select(!(!(!vec4<bool>(arg_0.b.b, false, false, arg_0.b.b))), vec4<bool>(arg_0.d.b, (true & arg_0.a.b) == arg_0.a.b, arg_0.b.b == false, (var_1.x == var_1.x) && true), true));
    return vec3<f32>(-183f, 396f, var_1.x);
}

fn func_1() -> vec3<f32> {
    let var_0 = !select(vec4<bool>(false, true, !any(vec4<bool>(false, true, true, false)), true), vec4<bool>(true, true, true, !(39416u <= u_input.b.x)), select(vec4<bool>(true, true, select(false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, all(vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(290f))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(Struct_3(Struct_1(~u_input.b, true), Struct_1(firstTrailingBit(u_input.b), var_0.x), vec2<i32>(_wgslsmith_mult_i32(u_input.c, -2147483647i), ~8546i), func_4(func_2(u_input.d))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1617f), 696f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -548f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1286f, 918f, -395f)))))), var_0.yyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_1 = -985f;
    let var_2 = Struct_3(Struct_1(vec3<u32>(func_4(vec4<bool>(true, true, true, true)).a.x << (1u % 32u), ~(~31644u), u_input.a), any(vec2<bool>(false, false)) == (~(-1i) == u_input.c)), Struct_1(u_input.b, _wgslsmith_add_u32(4956u, max(u_input.b.x, 0u)) > (4294967295u << (0u % 32u))), firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c, u_input.c), select(vec2<i32>(u_input.c, -41350i), vec2<i32>(29100i, u_input.c), vec2<bool>(false, true))), vec2<i32>(29528i, _wgslsmith_add_i32(u_input.c, -2147483647i)))), func_4(vec4<bool>(any(vec3<bool>(true, true, true)), true, !(var_1 < -1000f), false)));
    let var_3 = var_2.d;
    var var_4 = var_2;
    let var_5 = var_2;
    var var_6 = ~abs((~vec3<u32>(22352u, 1u, 56597u) & (vec3<u32>(0u, var_5.a.a.x, 1u) ^ vec3<u32>(32683u, var_2.b.a.x, var_2.b.a.x))) & vec3<u32>(_wgslsmith_add_u32(53971u, var_2.d.a.x), ~var_3.a.x, 15953u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(296f)) - _wgslsmith_f_op_f32(-var_1)))), -992f, var_1, _wgslsmith_f_op_f32(sign(var_1))));
}

