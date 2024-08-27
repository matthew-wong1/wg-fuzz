struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> vec4<f32> {
    let var_0 = false;
    let var_1 = Struct_1(vec4<bool>(select(all(vec2<bool>(false, var_0)), true, var_0 & var_0), true, var_0, !all(vec2<bool>(false, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -851f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-894f, -499f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, 849f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, 626f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-527f, -662f) + vec2<f32>(306f, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2615f))) + 1f));
    var var_2 = ~(~78626u);
    var var_3 = _wgslsmith_mod_u32(arg_2, firstLeadingBit(94719u));
    let var_4 = select(!select(vec3<bool>(!var_1.a.x, !var_1.a.x, any(vec3<bool>(var_0, var_1.a.x, var_1.a.x))), !var_1.a.yzw, all(!var_1.a.wyy)), !var_1.a.yyy, true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-424f + 1012f))), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)), _wgslsmith_f_op_f32(step(var_1.c.x, 452f))), vec4<f32>(var_1.c.x, -249f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d - 1000f), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * _wgslsmith_f_op_f32(-475f - var_1.b)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1708f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-836f, var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * 1301f) + var_1.d), 255f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(~vec3<u32>(~47431u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(44600u, 1u)), ~vec2<u32>(arg_0.x, arg_0.x)), ~(~arg_1)), arg_0.x);
    let var_1 = firstLeadingBit(0u);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, 676f, -1000f, 1280f) * vec4<f32>(-269f, 856f, -619f, 214f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<u32>(arg_0.x, var_1, arg_1), 0u), u_input.c, arg_0.x)))));
    var_0 = Struct_2(select(arg_0.zzx, _wgslsmith_mult_vec3_u32(var_0.a, var_0.a), vec3<bool>((-14407i >> (arg_1 % 32u)) <= _wgslsmith_mod_i32(-37976i, 15005i), false, arg_2.x)), firstLeadingBit(4294967295u));
    var var_3 = Struct_1(vec4<bool>(true, arg_2.x, all(!arg_2.yx), true), -779f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(var_2.x - var_2.x))))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-372f, -1000f, arg_2.x))))));
    return Struct_1(select(var_3.a, select(var_3.a, vec4<bool>(true, var_3.a.x, any(var_3.a), arg_2.x | false), var_3.a.x), all(select(!vec2<bool>(var_3.a.x, var_3.a.x), vec2<bool>(var_3.a.x, true), !var_3.a.x))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2212f, _wgslsmith_f_op_f32(-var_3.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-122f, var_3.b)), var_3.a.x)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0.wzz, arg_0.x), i32(-1i) * -8888i, 0u)).x);
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<i32>(-u_input.c, u_input.c >> (~u_input.b % 32u));
    var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.c, ~(-11034i)), i32(-1i) * -2147483647i) ^ vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(abs(var_0.x), ~(-2147483647i)), -u_input.c), -13734i);
    var_0 = ~(-(reverseBits(~vec2<i32>(2147483647i, -18970i)) >> (u_input.a % vec2<u32>(32u))));
    let var_1 = func_2(firstLeadingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(_wgslsmith_div_u32(4294967295u, 8564u), ~u_input.a.x, u_input.a.x, u_input.b))), firstLeadingBit(~(u_input.b << (~u_input.a.x % 32u))), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), true & all(vec3<bool>(false, true, false))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)));
    var var_2 = u_input.a.x;
    return Struct_2(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.b), 18952u, ~67012u)), 342u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !vec4<bool>(true, func_2(reverseBits(~vec4<u32>(var_0.b, var_0.a.x, 2169u, var_0.a.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 1u, u_input.b), vec3<u32>(u_input.a.x, 42184u, 4888u)), vec3<bool>(true, true, true)).a.x, all(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true)))), any(vec4<bool>(true, true, true, true)));
    let var_2 = countOneBits(-2147483647i);
    var var_3 = abs(select(vec3<i32>(~(u_input.c | -26291i), ~(u_input.c ^ -1i), 2147483647i), vec3<i32>(0i, select(u_input.c | 12713i, abs(u_input.c), u_input.b >= u_input.a.x), var_2), false));
    let var_4 = _wgslsmith_f_op_f32(ceil(1000f));
    var_0 = Struct_2(~_wgslsmith_div_vec3_u32(firstTrailingBit(~var_0.a), var_0.a), 51449u);
    var var_5 = 764f;
    var var_6 = firstLeadingBit(vec4<i32>(u_input.c, u_input.c, _wgslsmith_mod_i32(u_input.c, ~countOneBits(-33030i)), var_2 & 0i));
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a, var_0.a.zx, func_2(vec4<u32>(u_input.b, var_0.b, var_0.a.x, 1u) << (vec4<u32>(var_0.b, u_input.a.x, u_input.b, var_0.b) % vec4<u32>(32u)), u_input.b, var_1.zyx).a.x));
}

