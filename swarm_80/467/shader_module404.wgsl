struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false));

var<private> global2: bool = false;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(max(_wgslsmith_sub_vec4_i32(-vec4<i32>(56725i, -2147483647i, global3.c, -1i), -u_input.a), global3.a), -_wgslsmith_dot_vec2_i32(max(vec2<i32>(global3.b, u_input.a.x), firstLeadingBit(u_input.a.xw)), u_input.a.wy), 1i);
    global3 = Struct_1(vec4<i32>(abs(global3.b), u_input.a.x, max(_wgslsmith_mult_i32(var_0.a.x, _wgslsmith_mod_i32(u_input.a.x, 2147483647i)), ~(~13267i)), _wgslsmith_mult_i32(countOneBits(u_input.a.x), u_input.a.x)), var_0.c, u_input.a.x);
    let var_1 = (~vec2<i32>(0i, _wgslsmith_div_i32(global3.c, -21040i)) ^ vec2<i32>(global3.b, global3.c)) >> (vec2<u32>(countOneBits(abs(u_input.c)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(5749u, u_input.b)), vec2<u32>(u_input.c, _wgslsmith_mod_u32(2288u, 775u)))) % vec2<u32>(32u));
    global2 = true;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1150f + 1063f), _wgslsmith_f_op_f32(248f + -271f), _wgslsmith_f_op_f32(f32(-1f) * -865f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -270f)), -804f, -831f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1068f, 198f, 1273f), vec3<f32>(953f, -262f, -1293f))))))));
    return _wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x - var_2.x)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1068f - -997f) + _wgslsmith_f_op_f32(-126f - 505f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(243f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, 1000f, -661f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, -685f, 275f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 703f, 1449f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1097f, 202f, 528f)))))));
    var var_1 = false;
    var var_2 = true;
    var var_3 = arg_2.xx >> (arg_0 % vec2<u32>(32u));
    var var_4 = _wgslsmith_sub_vec2_i32(~arg_1.a.xw, vec2<i32>(u_input.a.x, 0i >> (~_wgslsmith_clamp_u32(u_input.c, var_3.x, 4294967295u) % 32u)));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = ~arg_1.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1266f, 2357f)), -718f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(0u, u_input.c), arg_1, vec3<u32>(u_input.b, u_input.c, 1383u), Struct_1(vec4<i32>(19597i, -15719i, -31419i, var_0), -1i, 1i)))), -1672f))));
    var var_2 = 1490f;
    var var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(~4294967295u), u_input.c, ~6452u), ~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.c, 0u), vec3<u32>(4294967295u, u_input.c, 63865u)))), firstLeadingBit(max(u_input.c, firstLeadingBit(~0u))), 116169u, 33538u);
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 809f, var_1.x, -1526f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 864f) + vec4<f32>(2124f, -1027f, var_1.x, -1432f)), vec4<f32>(var_1.x, var_1.x, -1000f, -256f))))))));
    return StorageBuffer(select(firstTrailingBit(abs(var_3.wz)), var_3.zx, !(0i < -arg_1.a.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1641f, 823f, 850f, 790f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1i;
    global2 = !(true | (!(u_input.b != u_input.c) && true));
    let var_1 = Struct_1(~vec4<i32>(49591i, -(~9712i), -18370i, 1044i), global3.c, -2147483647i);
    let x = u_input.a;
    s_output = func_1(var_1, Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-2147483647i), _wgslsmith_mod_i32(-29798i, 20511i), min(1i, -10203i), _wgslsmith_mult_i32(-1i, global3.c)), select(u_input.a | vec4<i32>(-57124i, var_1.b, -13655i, var_0), ~vec4<i32>(-1i, -2147483647i, 1i, -1i), true)), _wgslsmith_add_i32(abs(reverseBits(-13300i)), u_input.a.x), -12895i));
}

