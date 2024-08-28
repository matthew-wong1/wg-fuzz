struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(vec3<bool>(true, true, true), Struct_1(!vec4<bool>(u_input.a.x <= 1753i, select(false, true, true), false, true)), Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_sub_u32(u_input.d, ~(~u_input.d)), Struct_1(vec4<bool>(true, !any(vec4<bool>(false, true, true, false)), (21108u ^ u_input.d) > ~u_input.d, !all(vec2<bool>(true, false)))));
    let var_1 = var_0.a.xx;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.c.a.x)), -189f, -1000f, var_0.c.a.x) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(var_0.c.a))))))));
    return -786f;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-754f, _wgslsmith_f_op_f32(trunc(988f)), -812f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-452f, -492f, false))))))), vec4<f32>(_wgslsmith_f_op_f32(min(600f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1922f) * _wgslsmith_f_op_f32(f32(-1f) * -354f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-937f)) + _wgslsmith_f_op_f32(820f * 350f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-484f * _wgslsmith_f_op_f32(178f + -399f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1721f + 1191f) - _wgslsmith_f_op_f32(abs(746f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f + _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    var var_1 = Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false)), true || (_wgslsmith_f_op_f32(sign(var_0.x)) > 128f)));
    var var_2 = var_0.x;
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1530f * _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(918f * -1131f), var_0.x, true)), var_0.x, 244f));
    let var_4 = ~1i;
    return all(!select(vec3<bool>(false, arg_0.x < 0u, select(var_1.a.x, false, false)), var_1.a.wzw, !all(vec2<bool>(var_1.a.x, var_1.a.x))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_4(arg_1.wyw, Struct_1(arg_1), Struct_3(vec4<f32>(-1173f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2085f) + _wgslsmith_f_op_f32(f32(-1f) * -414f)), _wgslsmith_f_op_f32(-1002f - 1500f))), ~_wgslsmith_mod_u32(select(_wgslsmith_div_u32(u_input.c, 4294967295u), u_input.d, any(arg_1)), ~0u), Struct_1(!(!vec4<bool>(false, true, true, arg_0))));
    let var_1 = u_input.c;
    var var_2 = !((var_0.d & ~u_input.c) < 0u) | arg_0;
    var_2 = (arg_0 | true) || true;
    let var_3 = ~abs(countOneBits(abs(vec4<u32>(42784u, var_1, u_input.c, 4830u)) >> (vec4<u32>(21225u, 7868u, var_1, 80373u) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)));
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), -383f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, -2045f, _wgslsmith_f_op_f32(-arg_0))))));
    var var_1 = abs(vec2<u32>(9164u, 0u));
    let var_2 = vec3<i32>(-select(u_input.a.x, ~max(u_input.a.x, u_input.a.x), any(vec3<bool>(false, true, true)) == any(vec2<bool>(true, true))), -2147483647i, -2147483647i);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a));
    var var_4 = Struct_4(vec3<bool>(!(u_input.c < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 8659u, 0u), vec4<u32>(u_input.d, arg_1, 82157u, 0u))), (_wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(-var_3.a.x)) | any(vec2<bool>(true, true)), true), Struct_1(!vec4<bool>(true, true, false, all(vec2<bool>(false, false)))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.a, var_3.a) * _wgslsmith_f_op_vec4_f32(ceil(var_0.a))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1593f, -946f, -448f, 1424f))))), _wgslsmith_add_u32(0u ^ ((69857u | var_1.x) & 4294967295u), 1u), Struct_1(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), 770f < _wgslsmith_f_op_f32(round(1099f)))));
    return Struct_2(var_4.b, var_4.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: Struct_4) -> bool {
    let var_0 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1322f - _wgslsmith_f_op_f32(func_4(func_2(vec2<u32>(0u, 1u)), arg_3.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-934f, -421f, 567f) * vec3<f32>(arg_3.c.a.x, arg_3.c.a.x, arg_3.c.a.x))))))), u_input.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.c.a.xyw) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c.a.x, 823f, arg_3.c.a.x) * vec3<f32>(arg_3.c.a.x, 194f, 960f)))))));
    let var_2 = _wgslsmith_div_i32(countOneBits(u_input.b.x), _wgslsmith_dot_vec4_i32(~(-u_input.a), u_input.a));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.c.a.x - -281f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1059f, -1840f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false, !arg_0.a.a, arg_3.c.a.wxz)))));
    var_1 = arg_3.c.a.xzx;
    return 238f < var_1.x;
}

fn func_6(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(!(u_input.b.x >= -1i), func_5(-357f, 49461u << (u_input.d % 32u)).a.a.x, arg_0, any(select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, false))))), max(36129i, u_input.a.x >> (0u % 32u)) <= u_input.b.x);
    var var_1 = firstLeadingBit(~max(_wgslsmith_sub_i32(u_input.b.x, abs(1i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(7042i, -2147483647i, u_input.a.x, -2147483647i), u_input.a))));
    var_0 = func_5(1952f, ~abs(_wgslsmith_mult_u32(abs(u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, u_input.d), vec3<u32>(u_input.d, 67190u, u_input.c)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(472f, -1000f, -662f)) + vec3<f32>(-1000f, 348f, -614f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(1873f, _wgslsmith_f_op_f32(floor(-1203f))), _wgslsmith_f_op_f32(-725f + _wgslsmith_div_f32(-622f, -1974f)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))));
    return Struct_1(var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = func_6(any(!vec4<bool>(true, func_1(Struct_2(Struct_1(vec4<bool>(true, false, true, true)), true), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), false), 4294967295u, Struct_4(vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, false, false, true)), Struct_3(vec4<f32>(697f, -347f, -310f, -400f)), u_input.d, Struct_1(vec4<bool>(false, true, false, false)))), true, true)));
    var var_2 = true;
    var var_3 = -u_input.b.x;
    var_3 = -2147483647i;
    let var_4 = abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(min(35415u, var_0), u_input.c, firstTrailingBit(1u)), reverseBits(~vec3<u32>(51457u, 4294967295u, var_0)), ~(~(~vec3<u32>(30573u, u_input.c, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(10956u & u_input.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-769f)) * _wgslsmith_f_op_f32(select(388f, -1849f, false))), 1561f, _wgslsmith_f_op_f32(sign(-709f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_2(var_1, var_1.a.x), Struct_2(var_1, var_1.a.x), 4294967295u, Struct_4(vec3<bool>(true, true, false), var_1, Struct_3(vec4<f32>(-546f, 1000f, 633f, 460f)), 1u, var_1)), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(845f, -1301f, 472f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(-486f, -1129f, 1468f, -904f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(839f, 727f, -1082f, 910f), vec4<f32>(-1293f, -438f, 667f, -1568f))))), select(false, !var_1.a.x & all(vec3<bool>(true, var_1.a.x, false)), true))));
}

