struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = 11091i;
    let var_1 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1141f + -272f))) * 618f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-919f, arg_0.x))), 494f), ~1i);
    var_0 = countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(var_1.e, var_1.e), vec2<i32>(1i, var_1.e)), vec2<i32>(-3554i, var_1.e)), countOneBits(vec2<i32>(var_1.e, 48111i))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-var_1.e, max(var_1.e, -2147483647i)), firstTrailingBit(_wgslsmith_div_i32(var_1.e, 12187i)))));
    var_0 = 33322i;
    var_0 = -626i;
    return max(var_1.e, -var_1.e);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(65680u, -876f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(997f, -136f, -1052f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1988f, -1021f, -1506f)))), vec3<f32>(-797f, _wgslsmith_f_op_f32(617f - -257f), _wgslsmith_f_op_f32(floor(-1172f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(347f, -1056f) + vec2<f32>(872f, 429f))))), -abs(-36300i));
    let var_1 = Struct_1(var_0.a, _wgslsmith_div_f32(1200f, -619f), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(abs(-1655f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(184f - 460f))) - 1680f)), _wgslsmith_sub_i32(var_0.e, func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1143f, var_0.b))))));
    var var_2 = var_0.a;
    var var_3 = ~(~(vec2<u32>(u_input.b, 1u) | _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(27089u, 24354u)), vec2<u32>(1u, var_0.a))));
    var_0 = Struct_1(~abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(var_1.a, 1u))), var_0.d.x, var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_1.d, vec2<f32>(var_1.c.x, var_1.c.x)), vec2<f32>(-1213f, var_0.d.x), var_1.a <= u_input.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, -285f)))), abs(2147483647i));
    return Struct_1(arg_0, -695f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) - -789f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1277f, -1000f)), _wgslsmith_f_op_f32(-var_0.c.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-198f, -1840f))), _wgslsmith_f_op_f32(-var_1.d.x), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d)), var_1.e);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = func_2(u_input.b);
    let var_1 = func_2(30196u);
    let var_2 = true;
    var var_3 = func_2(45102u);
    var_3 = func_2(5682u);
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false)))));
    var var_1 = 1311f;
    let var_2 = i32(-1i) * -func_3(arg_0.d);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(382f, arg_0.b, 760f, arg_0.b))) + vec4<f32>(-1991f, 750f, 1600f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, -268f, arg_0.b, 1532f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-331f, arg_0.c.x, arg_0.c.x, 282f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, arg_0.d.x, -723f, arg_0.b)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(182f, 1433f, arg_0.b, -841f) + vec4<f32>(1124f, -1000f, -1000f, -219f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 104f, arg_0.d.x, arg_0.c.x)))))));
    var var_4 = vec2<u32>(arg_0.a, u_input.b);
    return func_1(-(~var_2), arg_0, var_0);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    let var_0 = vec4<i32>(~arg_3.x, select(firstLeadingBit(_wgslsmith_sub_i32(5133i, 1i)) & func_2(func_1(arg_0.e, Struct_1(u_input.a, arg_0.d.x, arg_0.c, arg_0.c.xz, arg_0.e), vec4<bool>(false, false, true, true)).a).e, 57365i, true), reverseBits(~abs(_wgslsmith_mod_i32(-1i, arg_3.x))), arg_0.e);
    let var_1 = firstTrailingBit(~_wgslsmith_add_u32(arg_0.a, ~27972u) << (_wgslsmith_mod_u32(~abs(56432u), arg_1.x) % 32u));
    var var_2 = true;
    var_2 = true;
    var_2 = true && !(!(!all(vec4<bool>(false, true, true, true))));
    return 289f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(reverseBits(-22416i), abs(~1i), ~1i);
    var var_1 = select(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(u_input.a, 66760u), vec2<u32>(u_input.a, 4294967295u)) << (~(vec2<u32>(u_input.a, 1u) | vec2<u32>(u_input.b, 12707u)) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(641u, u_input.b)), max(vec2<u32>(60331u, 0u), vec2<u32>(u_input.a, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 29048u), vec2<u32>(u_input.b, 4294967295u))), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.a), ~vec4<u32>(u_input.b, u_input.a, 0u, 21752u)))), vec2<u32>(abs(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(48410u, ~u_input.a, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 24180u), vec3<u32>(u_input.b, 36939u, u_input.a)))), !select(vec2<bool>(true, true), vec2<bool>(true, false), true));
    let var_2 = Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_4(func_1(-30778i, Struct_1(var_1.x, 809f, vec3<f32>(1018f, -131f, -713f), vec2<f32>(-352f, -861f), var_0.x), vec4<bool>(true, true, true, false))), reverseBits(abs(vec3<u32>(var_1.x, 0u, var_1.x))), select(var_1.x >> (0u % 32u), _wgslsmith_sub_u32(u_input.b, u_input.b), true), ~firstLeadingBit(var_0))), func_2(_wgslsmith_mult_u32(u_input.b, func_1(var_0.x, Struct_1(59759u, -858f, vec3<f32>(-275f, -326f, -438f), vec2<f32>(-489f, 179f), 38742i), vec4<bool>(false, true, true, false)).a)).c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(2557f)), -100f, -434f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) + _wgslsmith_f_op_f32(trunc(-106f)))), vec2<f32>(_wgslsmith_f_op_f32(1049f + -950f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), true))), ~reverseBits(func_3(vec2<f32>(-340f, 845f))));
    var var_3 = func_2(1u);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(var_2.c.x + -864f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_2.c.x, 338f)))))), func_2(_wgslsmith_mod_u32(u_input.b, ~12112u)).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)));
    let var_5 = var_2.c;
    var_4 = _wgslsmith_f_op_vec3_f32(-var_5);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, var_5.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(1139f, var_5.x, var_2.b)))));
}

