struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = arg_0;
    global0 = 14495i;
    let var_1 = vec3<i32>(~(~u_input.a), _wgslsmith_add_i32(u_input.a, u_input.a), firstTrailingBit(_wgslsmith_mult_i32(firstLeadingBit(4270i), i32(-1i) * -23426i)));
    var var_2 = Struct_2(select(select(!(!vec2<bool>(true, var_0.a.x)), !(!vec2<bool>(var_0.a.x, false)), !var_0.a.x), vec2<bool>(false, all(vec2<bool>(false, arg_0.a.x))), any(select(select(arg_0.a, var_0.a, var_0.a), vec2<bool>(true, arg_0.a.x), select(vec2<bool>(var_0.a.x, false), var_0.a, arg_0.a)))));
    var var_3 = vec3<u32>(~min(_wgslsmith_add_u32(55554u, 51547u), ~4294967295u), 1u, 23056u) | vec3<u32>(~_wgslsmith_clamp_u32(1u, 0u, 1u), firstTrailingBit(0u), max(22078u, 1u));
    return vec2<f32>(1344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f * 1318f)))) - 2488f));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, u_input.a) & firstTrailingBit(vec2<i32>(-1i, u_input.a)), -vec2<i32>(-2147483647i, u_input.a) | max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), firstLeadingBit(max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-24141i, u_input.a)), vec2<i32>(1i, u_input.a)))), firstTrailingBit(-abs(countOneBits(vec2<i32>(-36052i, -14734i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<bool>(true, arg_3.c.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, arg_3.b.x)) + _wgslsmith_f_op_f32(sign(508f))))));
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~arg_2.x) << (arg_2.wz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(arg_0.yz, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.xy, vec2<u32>(arg_0.x, arg_0.x)), ~vec2<u32>(40109u, arg_2.x)), arg_2.wz));
    global0 = 2147483647i;
    let var_3 = Struct_2(select(vec2<bool>(any(vec3<bool>(true, arg_3.c.x, arg_3.c.x)), all(select(vec4<bool>(true, arg_3.c.x, false, arg_3.c.x), vec4<bool>(arg_3.c.x, arg_3.c.x, true, arg_3.c.x), arg_3.c.x))), arg_3.c, !all(vec3<bool>(true, arg_3.c.x, arg_3.c.x))));
    return true;
}

fn func_1() -> vec4<u32> {
    var var_0 = !vec4<bool>(!all(vec3<bool>(true, true, false)) && select(u_input.a >= u_input.a, true, u_input.a != u_input.a), all(vec4<bool>(func_2(vec3<u32>(0u, 0u, 36069u), 238f, vec4<u32>(26306u, 64753u, 0u, 4294967295u), Struct_1(vec3<f32>(219f, -1209f, -454f), vec2<f32>(157f, 409f), vec2<bool>(false, true))), any(vec3<bool>(true, true, false)), true, true)), true, true);
    var_0 = vec4<bool>(false, select(var_0.x, var_0.x, any(select(var_0.zx, !var_0.yx, vec2<bool>(var_0.x, var_0.x)))), var_0.x, var_0.x | any(var_0.zyx));
    var var_1 = Struct_2(vec2<bool>(var_0.x, var_0.x));
    var var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 85939u), vec3<u32>(11666u, 1u, 42596u)), 1u), ~10801u, reverseBits(_wgslsmith_div_u32(1u, 62459u))), _wgslsmith_mult_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(~vec3<u32>(0u, 71037u, 12482u))), ~(~vec3<u32>(73u, 74282u, 58944u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_3 = Struct_2(select(vec2<bool>(true, true), !(!vec2<bool>(var_0.x, false)), true));
    return ~(~(~(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) ^ vec4<u32>(var_2.x, var_2.x, 4262u, var_2.x)))) >> (vec4<u32>(var_2.x, ~var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~582u, ~1u, 0u), vec3<u32>(var_2.x, countOneBits(var_2.x), countOneBits(59590u))), _wgslsmith_clamp_u32(var_2.x, 1u ^ countOneBits(var_2.x), var_2.x & 0u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(min(1u, select(28170u, 1u, false)), 1u, 9207u, 1u), func_1());
    var var_1 = select(vec4<bool>((-u_input.a < reverseBits(u_input.a)) | true, all(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true)), true, false), !select(vec4<bool>(any(vec2<bool>(true, false)), select(true, false, false), true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, any(vec3<bool>(false, false, true)), true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true))), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), true), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))));
    var_1 = vec4<bool>(var_1.x, false, false, all(vec4<bool>(var_1.x && func_2(var_0.xyy, 366f, vec4<u32>(var_0.x, var_0.x, var_0.x, 8630u), Struct_1(vec3<f32>(-156f, -2765f, 720f), vec2<f32>(776f, -434f), var_1.wz)), true, var_1.x, any(var_1.yzx))));
    let var_2 = select(var_1.xy, !vec2<bool>(all(!var_1.zxz), var_1.x), select(select(var_1.yz, select(vec2<bool>(true, var_1.x), select(var_1.yz, vec2<bool>(false, false), var_1.wy), !vec2<bool>(var_1.x, var_1.x)), true), !var_1.zx, !select(!var_1.yx, var_1.zx, select(var_1.xw, vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)))));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1670f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1758f)))));
    var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(firstLeadingBit(var_0.x), ~var_0.x, 1u, ~4294967295u), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2833f - _wgslsmith_f_op_f32(f32(-1f) * -1533f))), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, u_input.a)), firstTrailingBit(~u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(31853i, -2147483647i, 13928i)) ^ 54521i, 5988i), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.x, var_0.x, 1u)), var_0.xxy), firstLeadingBit(_wgslsmith_sub_vec2_i32(max(countOneBits(vec2<i32>(u_input.a, -16528i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1440i, 48989i), vec2<i32>(u_input.a, -20480i))), select(vec2<i32>(1i, 1i), vec2<i32>(1i, u_input.a), var_1.zy))), firstTrailingBit(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec3<i32>(~u_input.a, u_input.a, 62016i >> (var_0.x % 32u)))));
}

