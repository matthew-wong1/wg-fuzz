struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_1(-346f, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~13718u, 1u, select(2781u, 0u, false))) >> (0u % 32u), ~_wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.a, u_input.a, arg_1.x)), max(vec3<i32>(-20623i, u_input.a, arg_1.x) >> (vec3<u32>(1u, 58165u, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-98744i, arg_1.x, u_input.a), vec3<i32>(-6377i, -1i, -49964i)))));
    global0 = arg_0;
    var var_1 = reverseBits(select(select(vec4<i32>(var_0.c.x, arg_1.x, -var_0.c.x, u_input.a), vec4<i32>(1i, _wgslsmith_add_i32(var_0.c.x, 0i), _wgslsmith_div_i32(-1i, u_input.a), u_input.a), select(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), vec4<bool>(false, true, false, false), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(true, arg_0, arg_0, arg_0), false))), ~firstTrailingBit(~vec4<i32>(2147483647i, 15944i, u_input.a, 1i)), !vec4<bool>(true, !arg_0, arg_0, true && arg_0)));
    global0 = any(select(vec4<bool>(!(false || arg_0), true, true, select(true, false, arg_0)), vec4<bool>(any(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, true, true), arg_0)), arg_0, all(vec2<bool>(true, true)), arg_0 && !arg_0), !vec4<bool>(true, var_0.a > var_0.a, arg_0, !arg_0)));
    let var_2 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(var_0.b, 1648u)))) ^ (53470u << (var_0.b % 32u));
    return var_0.a;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(889f * _wgslsmith_f_op_f32(func_3(!arg_2.x || !arg_2.x, _wgslsmith_div_vec2_i32(vec2<i32>(89780i, -1i), vec2<i32>(u_input.a, 19068i)) | ~vec2<i32>(u_input.a, u_input.a)))));
    global0 = !(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(34328i, u_input.a)) | ~(-46374i), ~(~(-37917i)), u_input.a | -2147483647i) < firstTrailingBit(-1i));
    var var_1 = false;
    let var_2 = !vec2<bool>(!(!arg_0 | true), any(select(select(arg_2, arg_2, true), arg_2, arg_0)));
    var_1 = _wgslsmith_f_op_f32(-368f - arg_1) <= _wgslsmith_f_op_f32(round(arg_1));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-var_0)))), 4294967295u, ~vec3<i32>(u_input.a, -9384i << (1u % 32u), firstLeadingBit(u_input.a ^ u_input.a)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    return func_2(false, _wgslsmith_f_op_f32(arg_1.x + 1184f), vec4<bool>(!(!(arg_1.x < 1328f)), false, true, true), vec3<f32>(_wgslsmith_f_op_f32(ceil(-102f)), arg_1.x, _wgslsmith_f_op_f32(sign(1487f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec4<f32> {
    global0 = true;
    let var_0 = _wgslsmith_add_u32(1u, 1u);
    var var_1 = arg_1.xz;
    var_1 = ~min(countOneBits(~firstTrailingBit(vec2<u32>(var_1.x, arg_1.x))), min(~(~arg_1.yy), vec2<u32>(var_0, 17908u) | abs(arg_1.yy)));
    global0 = all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1998f, arg_0.a, arg_0.a), vec4<f32>(334f, -503f, arg_0.a, 441f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2052f, 1574f, 1170f, arg_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1351f, arg_0.a, -789f, -1182f), vec4<f32>(866f, -1758f, arg_0.a, arg_0.a)) + vec4<f32>(-371f, arg_2.x, arg_2.x, -354f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, 1180f))), _wgslsmith_f_op_f32(func_3(any(vec2<bool>(true, true)), vec2<i32>(49145i, 0i))))), arg_2, vec3<i32>(func_2(!(arg_3.x < arg_3.x), -1000f, select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 799f, arg_0.x)) + vec3<f32>(293f, arg_1.x, 1701f))).c.x, 751i, ~(u_input.a ^ arg_3.x) | _wgslsmith_div_i32(abs(-1i), arg_3.x)));
    var var_1 = any(!(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_0.yzw, vec3<f32>(arg_1.x, 558f, arg_1.x)))))));
    var var_3 = _wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(var_0.c.x, 2147483647i), -arg_3), vec2<i32>(u_input.a, 0i) & _wgslsmith_mult_vec2_i32(vec2<i32>(-15362i, -2147483647i), vec2<i32>(46834i, arg_3.x))), var_0.c.xx);
    var_1 = true;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(64182u, func_5(_wgslsmith_f_op_vec4_f32(func_4(func_1(u_input.a, vec3<f32>(249f, -2035f, 1000f)), countOneBits(vec3<u32>(40678u, 21131u, 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1721f, 884f, -308f) * vec3<f32>(405f, -517f, -260f)))), vec4<f32>(func_2(false, -371f, vec4<bool>(false, true, false, false), vec3<f32>(-129f, 416f, 465f)).a, _wgslsmith_div_f32(221f, 458f), 432f, _wgslsmith_f_op_f32(609f * 1224f)), ~abs(1u), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-25068i, 0i), vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true)))) ^ ~2825u, (u_input.a << (func_2(false, 1f, vec4<bool>(false, false, true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, -151f, -776f))).b % 32u)) < u_input.a);
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(128f, 2196f))), _wgslsmith_f_op_f32(935f - -294f), _wgslsmith_f_op_f32(func_3(true, select(abs(vec2<i32>(-14228i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2759i), vec2<i32>(u_input.a, -1i)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))))));
    global0 = all(vec4<bool>(any(vec3<bool>(false, false, false)) & true, true, !(_wgslsmith_add_u32(7750u, 27597u) <= (var_0 | var_0)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))) | !all(vec3<bool>(true, false, true))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(var_1.a.x, 1u, vec3<i32>(u_input.a, 37973i, 47062i)), vec3<u32>(53967u, var_0, 0u), var_1.a)).zzz, vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))))));
    var var_2 = Struct_1(-1000f, min(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(var_0, var_0, 1u), ~vec3<u32>(var_0, 1u, var_0), true), ~(~vec3<u32>(1u, 65085u, 0u))), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0, 57142u, 0u), var_0)), ~vec3<i32>(-(~u_input.a), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, 0i), -2147483647i), ~u_input.a));
    var var_3 = _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(sign(var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(23911i, u_input.a, u_input.a, u_input.a), vec4<i32>(1283i, 14156i, -1i, u_input.a)), u_input.a), var_2.c.zx, !any(vec4<bool>(true, true, true, true))), var_1.a.yz, 0u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(530f, 1689f)))), -780f, -203f, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(max(1544f, -1029f)))))));
}

