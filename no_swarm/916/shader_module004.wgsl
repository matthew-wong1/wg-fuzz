struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = -3106f;
    let var_1 = 46273i;
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(_wgslsmith_div_u32(4294967295u, 42799u)), 141215u, select(~1u, arg_1, arg_2.a), _wgslsmith_dot_vec2_u32(arg_2.b.yz | arg_2.b.yy, arg_2.b.yz >> (vec2<u32>(43091u, 42549u) % vec2<u32>(32u)))), ~abs(firstTrailingBit(vec4<u32>(arg_1, arg_1, 0u, 63914u))), vec4<u32>(~(~1u), _wgslsmith_mult_u32(~1u, arg_1), firstLeadingBit(~77879u), 0u)) << (vec4<u32>(firstLeadingBit(~_wgslsmith_add_u32(1u, u_input.a)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1, u_input.a, u_input.a), vec4<u32>(89925u, arg_1, 24743u, arg_1))), _wgslsmith_div_u32(firstTrailingBit(arg_1), ~_wgslsmith_mult_u32(arg_1, arg_2.b.x)), arg_2.b.x) % vec4<u32>(32u));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(~arg_1, _wgslsmith_sub_u32(firstLeadingBit(~var_2.x), _wgslsmith_add_u32(_wgslsmith_add_u32(27695u, 11142u), firstLeadingBit(4294967295u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_2.b.x, arg_2.b.x), arg_1, ~_wgslsmith_dot_vec3_u32(arg_2.b, vec3<u32>(1u, arg_2.b.x, 46805u))), ~arg_2.b), 1u, arg_1);
    var var_4 = !(!(!select(select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, arg_2.a)), vec2<bool>(true, arg_2.a), vec2<bool>(false, false))));
    return _wgslsmith_add_i32(-min(_wgslsmith_add_i32(101i, abs(arg_0.x)), firstTrailingBit(-1i) << (1u % 32u)), _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-7879i, arg_0.x), vec2<i32>(var_1, -12078i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1, -2147483647i), arg_0.yy, arg_0.zw)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -25724i, firstLeadingBit(28586i), ~0i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, _wgslsmith_add_i32(-2147483647i, 1i) >> (u_input.a % 32u), firstTrailingBit(0i) >> (4294967295u % 32u), -2147483647i), true), _wgslsmith_div_u32(72745u, u_input.a), Struct_1(!(reverseBits(u_input.a) == 0u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)), abs(vec3<u32>(u_input.a, 4294967295u, 23487u))), ~vec3<u32>(u_input.a, 4294967295u, 0u) | vec3<u32>(4294967295u, u_input.a, 0u))));
    var var_1 = select(!select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec4<bool>(false, true, false, true))), vec2<bool>(true, true), !all(vec2<bool>(true, false))), select(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(true, true), u_input.a <= _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a)), vec2<bool>(all(vec2<bool>(true, true)), true));
    var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), -vec3<i32>(-27850i, -2147483647i, 37863i) >> ((vec3<u32>(40721u, u_input.a, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -58417i, -20657i), _wgslsmith_mod_vec3_i32(vec3<i32>(22002i, 0i, -14080i), vec3<i32>(-24658i, -19960i, 27213i)))), vec3<i32>(max(firstTrailingBit(-12618i) >> (~1u % 32u), _wgslsmith_sub_i32(abs(16744i), abs(1i))), max(1i, -(~15682i)), _wgslsmith_sub_i32(~(-14034i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 12413i, 46999i, 82125i), -vec4<i32>(-1i, 2147483647i, -1i, -72648i)))));
    var_0 = _wgslsmith_mult_i32(-13375i, abs(max(select(firstTrailingBit(23084i), min(0i, -15914i), true), ~38030i)));
    let var_2 = Struct_1(true, _wgslsmith_mod_vec3_u32(vec3<u32>(~(~u_input.a), 11045u, u_input.a), ~max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(u_input.a, u_input.a, u_input.a))));
    return Struct_1(false, _wgslsmith_add_vec3_u32(~vec3<u32>(31928u, ~4294967295u, var_2.b.x & var_2.b.x), select(vec3<u32>(10161u, 33917u, u_input.a), _wgslsmith_mod_vec3_u32(~var_2.b, var_2.b & var_2.b), var_1.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = -select(-vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mod_i32(-1i, -1i), 1i), vec2<bool>(any(!vec4<bool>(true, arg_0, arg_1.a, false)), true & func_2().a));
    let var_1 = !vec2<bool>(!arg_0, !arg_0);
    let var_2 = arg_1;
    let var_3 = var_2.b;
    var var_4 = vec3<i32>(1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<i32>(1i, ~(-17500i), var_0.x)) | 0i, func_3(~(vec4<i32>(var_0.x, -45448i, var_0.x, -7565i) << (vec4<u32>(1u, 17685u, var_3.x, arg_1.b.x) % vec4<u32>(32u))), ~arg_1.b.x, func_2()));
    return reverseBits(-vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_4.x, -24935i), firstLeadingBit(var_0.x)), 1i, var_0.x & (-29367i & var_0.x), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, var_4.x, var_0.x), vec3<i32>(var_4.x, -23649i, -2147483647i), vec3<bool>(false, arg_0, false)), vec3<i32>(var_4.x, var_4.x, var_0.x))));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(4395f - 611f)))), -448f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1347f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1378f))))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)))) + vec4<f32>(-319f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 210f) - var_0.x), -129f)));
    let var_3 = func_4(!any(arg_0.wz), func_2());
    let var_4 = var_2.zx;
    return _wgslsmith_sub_i32(var_3.x, firstTrailingBit(var_3.x));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2));
    let var_1 = min(abs((arg_0.b.x & arg_3.b.x) & 101385u) & arg_3.b.x, _wgslsmith_add_u32(~select(~0u, arg_1, arg_3.a || arg_3.a), _wgslsmith_clamp_u32(~74616u, ~1u, 0u)));
    var var_2 = func_2();
    var var_3 = arg_3;
    var var_4 = 1i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(func_1(vec4<bool>(true, true, true, true)) >= 24034i, abs(firstLeadingBit(~vec3<u32>(43716u, u_input.a, 81977u)))), u_input.a, -512f, func_2());
    let var_1 = !var_0.a;
    let var_2 = Struct_1(any(select(vec3<bool>(true, any(vec2<bool>(var_0.a, var_0.a)), select(var_1, var_1, var_1)), select(select(vec3<bool>(var_0.a, false, false), vec3<bool>(var_1, var_1, false), vec3<bool>(false, true, false)), !vec3<bool>(var_1, var_0.a, false), vec3<bool>(var_0.a, var_1, true)), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_1, var_1), !vec3<bool>(false, false, var_0.a)))), firstLeadingBit(var_0.b));
    var_0 = func_5(var_2, var_2.b.x, -1675f, func_5(Struct_1(true, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 1u), vec2<u32>(u_input.a, var_0.b.x)), ~var_0.b.x, ~54427u)), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(9133u, var_2.b.x, 37514u, var_2.b.x)), vec4<u32>(4294967295u, var_0.b.x, var_2.b.x, u_input.a)), 1137f, func_5(func_5(Struct_1(var_1, var_2.b), ~6811u, _wgslsmith_div_f32(-538f, 636f), Struct_1(var_1, vec3<u32>(4294967295u, var_2.b.x, var_2.b.x))), ~u_input.a, 1f, Struct_1(false, var_2.b))));
    let var_3 = firstTrailingBit(var_0.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 1u, u_input.a, var_0.b.x), vec4<u32>(4294967295u, 65891u, var_2.b.x, 18885u)) >> (vec4<u32>(1u, 0u, var_0.b.x, 0u) % vec4<u32>(32u))), firstTrailingBit(~vec4<u32>(var_0.b.x, 42902u, 1u, var_0.b.x)) << (vec4<u32>(~var_2.b.x, 1u, var_2.b.x, reverseBits(var_2.b.x)) % vec4<u32>(32u))), ~select(vec2<u32>(43169u ^ var_2.b.x, ~var_0.b.x), vec2<u32>(4294967295u, 0u), true));
}

