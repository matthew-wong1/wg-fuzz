struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(109f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-932f, arg_2)) * _wgslsmith_f_op_f32(f32(-1f) * -948f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0, ~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-41628i, 32445i, 20951i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(33278i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 43058i, -1i, -8681i), vec4<i32>(2147483647i, 2147483647i, -2147483647i, -33782i)), 1i)));
    let var_1 = var_0;
    var var_2 = var_0.c.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(max(-1051f, _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(trunc(arg_0)))))), arg_0));
    var_2 = _wgslsmith_div_i32(var_1.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x << (1u % 32u), _wgslsmith_sub_i32(-52701i, 12277i)), select(var_1.c.yy, var_0.c.xy, vec2<bool>(true, true))) & var_1.c.x);
    return var_0.c.x & ~var_0.c.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) - arg_1.a.x))), ~vec3<i32>(func_3(_wgslsmith_f_op_f32(arg_1.b * -576f), arg_0, _wgslsmith_div_f32(-321f, arg_1.b)), abs(-arg_1.c.x), -countOneBits(2147483647i)));
    let var_1 = vec3<u32>(abs(u_input.a.x), ~(_wgslsmith_mod_u32(~u_input.b, u_input.b) << (~(4294967295u & u_input.a.x) % 32u)), ~firstTrailingBit(~u_input.b));
    var var_2 = arg_1.a.x;
    let var_3 = 1904f;
    var var_4 = var_1.xx;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(round(var_0.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, 830f, var_0.b)), var_0.a, false & arg_0)))), arg_1.b, var_0.c ^ vec3<i32>(_wgslsmith_clamp_i32(~(-8433i), -1i, var_0.c.x), 1i, ~1i));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(4294967295u, (u_input.a.x << (select(u_input.a.x | 1u, arg_0, true) % 32u)) | _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(arg_0, arg_1)) << (u_input.a.yy % vec2<u32>(32u)), u_input.a.zx), _wgslsmith_add_u32(arg_0, min(arg_1, arg_0)));
    let var_1 = _wgslsmith_add_u32(min(1u, _wgslsmith_div_u32(abs(arg_0), 59389u)), 4294967295u);
    let var_2 = ~reverseBits(countOneBits(arg_3.yz) | select(_wgslsmith_div_vec2_i32(arg_2.c.zz, arg_2.c.xy), ~vec2<i32>(-52246i, 2147483647i), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    var var_3 = arg_3.xz;
    var var_4 = u_input.b;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = any(select(!(!(!vec3<bool>(true, arg_1, false))), !select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, arg_1)), all(!select(vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), true))));
    var_0 = any(!(!select(select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true)), !vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1))));
    return arg_2;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(312f, -698f), vec2<f32>(901f, -937f), select(vec2<bool>(true, true), vec2<bool>(false, true), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1584f, 709f) - vec2<f32>(663f, 139f))))), vec2<f32>(-257f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f - 1196f))))), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-510f, 950f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), -165f)), _wgslsmith_f_op_f32(sign(918f)), select(~_wgslsmith_div_vec3_i32(~vec3<i32>(1i, -1i, -1i), min(vec3<i32>(-29780i, 42820i, 29383i), vec3<i32>(-44648i, 2147483647i, -1i))), vec3<i32>(~(-1i) << (_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(43365u, 18048u)) % 32u), ~2147483647i, 7507i), true));
    var_1 = func_5(func_4(_wgslsmith_add_u32(~(~u_input.a.x), ~87793u), 24016u, func_2(!(-887f < var_1.b), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_1.a.x, var_1.a.x), var_1.a)), -2340f, select(vec3<i32>(var_1.c.x, var_1.c.x, 21058i), vec3<i32>(-11324i, -2147483647i, -1i), vec3<bool>(true, false, true)))), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_1.c.x, -1i, var_1.c.x), abs(var_1.c)), select(_wgslsmith_mult_vec3_i32(var_1.c, var_1.c), var_1.c, false), var_1.c)), true, func_2(all(vec2<bool>(true, true)), func_2(~u_input.b == (u_input.b >> (u_input.a.x % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), var_0.x, var_1.c ^ var_1.c))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a.x), ~u_input.b, 0u), ~u_input.a.xxw >> (~u_input.a.wxw % vec3<u32>(32u))), abs(_wgslsmith_clamp_u32(40178u, u_input.b, 101061u)) >> (((u_input.a.x ^ 1u) | _wgslsmith_add_u32(78188u, u_input.b)) % 32u)));
    let var_2 = -func_3(-1403f, true & all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-func_4(_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.wz), 68778u, Struct_1(var_1.a, -1297f, vec3<i32>(-2147483647i, var_1.c.x, -1i)), countOneBits(var_1.c)).b));
    let var_3 = false;
    return !vec2<bool>(false, any(select(vec3<bool>(false, true, var_3), select(vec3<bool>(var_3, false, true), vec3<bool>(true, false, var_3), true), select(vec3<bool>(var_3, true, var_3), vec3<bool>(var_3, true, var_3), vec3<bool>(var_3, var_3, var_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_1());
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(countOneBits(_wgslsmith_mod_i32(-2147483647i, 30149i))), _wgslsmith_add_i32(2147483647i, func_5(func_4(u_input.a.x, 47439u, Struct_1(vec3<f32>(1234f, 372f, 1672f), -525f, vec3<i32>(1i, -2113i, 1i)), vec3<i32>(-24915i, -11475i, 2147483647i)), var_0, Struct_1(vec3<f32>(-196f, 531f, 1000f), -299f, vec3<i32>(-1i, 17997i, 26094i)), 0u >> (u_input.b % 32u)).c.x), func_4(u_input.a.x, u_input.b, func_4(u_input.b << (u_input.b % 32u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), func_4(0u, u_input.b, Struct_1(vec3<f32>(1000f, -1142f, 119f), -1038f, vec3<i32>(2147483647i, -1i, 0i)), vec3<i32>(0i, -26697i, -40519i)), ~vec3<i32>(-1i, 0i, 72331i)), vec3<i32>(-13407i, -1i, abs(20321i))).c.x), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(84i, -29316i, 22011i)), vec3<i32>(-1i) * -vec3<i32>(43213i, -1366i, -67159i))));
    var var_2 = abs(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 27697i, var_1.x, var_1.x) << (u_input.a % vec4<u32>(32u)), ~vec4<i32>(var_1.x, -74170i, var_1.x, -7492i)), -2147483647i, firstLeadingBit(max(_wgslsmith_sub_i32(-4321i, 30065i), var_1.x | 0i))));
    var var_3 = select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, !(u_input.b != u_input.b)), all(!(!vec3<bool>(var_0, true, var_0)))), !vec3<bool>(any(!vec2<bool>(var_0, var_0)), any(vec3<bool>(true, var_0, var_0)) | true, true), !select(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false), var_0), !(!vec3<bool>(false, var_0, false)), !vec3<bool>(var_0, var_0, true)));
    var var_4 = func_5(func_2(var_0, Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-421f, -938f, -1269f))), _wgslsmith_f_op_f32(abs(719f)), max(var_1, _wgslsmith_add_vec3_i32(var_1, var_1)))), false, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(171f, -1000f, 246f) + vec3<f32>(836f, -567f, 234f)) - vec3<f32>(-590f, -234f, 1434f))), -633f, abs(abs(var_1))), u_input.a.x);
    let var_5 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_4.b, 875f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_4.a)))), _wgslsmith_f_op_vec3_f32(-var_4.a)), 1676f, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

