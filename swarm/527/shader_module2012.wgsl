struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(876f, -1361f, -315f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<f32> {
    global1 = Struct_1(global1.a);
    let var_0 = Struct_4(arg_2.a.wx);
    global0 = u_input.a;
    global0 = _wgslsmith_sub_i32(~arg_1.a, min(1i, -1i));
    global1 = arg_1.d;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1290f, arg_1.d.a.x, _wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -106f), arg_0.x)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> bool {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_3(u_input.a, Struct_2(vec4<i32>(-11985i, u_input.a, u_input.a, 1i)), Struct_2(vec4<i32>(0i, u_input.a, -6326i, u_input.a)), Struct_1(vec3<f32>(784f, -1074f, global1.a.x))), Struct_2(vec4<i32>(-8663i, 2147483647i, u_input.a, u_input.a)))))));
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, 4170i), -vec2<i32>(u_input.a, 2511i)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(0i, u_input.a)), ~vec2<i32>(-1i, u_input.a))), _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-6467i, 65729i, u_input.a), vec3<i32>(u_input.a, u_input.a, -25469i)), abs(vec3<i32>(19220i, u_input.a, u_input.a))))) | 77264i;
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-4814i, firstTrailingBit(var_0), ~(-1i) ^ var_0), ~abs(vec3<i32>(u_input.a, u_input.a, var_0)), abs(~vec3<i32>(var_0, 72887i, u_input.a) ^ vec3<i32>(15800i, -10540i, u_input.a))), max(firstLeadingBit((vec3<i32>(var_0, u_input.a, 7590i) ^ vec3<i32>(-1i, var_0, u_input.a)) | reverseBits(vec3<i32>(u_input.a, 1i, 0i))), abs(min(vec3<i32>(var_0, 12255i, 2147483647i), vec3<i32>(u_input.a, 11342i, var_0)) & vec3<i32>(2147483647i, u_input.a, u_input.a))));
    let var_1 = Struct_2(-vec4<i32>(firstTrailingBit(i32(-1i) * -2147483647i), min(-15331i, firstTrailingBit(var_0)), -(-69528i | var_0), ~u_input.a));
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1.a))), vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -721f), -832f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(770f)), _wgslsmith_f_op_f32(round(207f)), _wgslsmith_f_op_f32(global1.a.x + global1.a.x)))));
    return false;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = ~vec3<u32>(0u, 1u, 0u);
    var_0 = ~vec3<u32>(18049u, countOneBits(_wgslsmith_mult_u32(4294967295u, 1u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(128498u, 4294967295u, var_0.x, 4294967295u) << (vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(46988u, 9579u, 2580u, var_0.x), vec4<u32>(0u, var_0.x, var_0.x, 0u))));
    var var_1 = -27555i;
    var_0 = ~(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 0u, 4294967295u), ~vec3<u32>(65762u, 81820u, 1u)), reverseBits(~vec3<u32>(4294967295u, 0u, var_0.x))) & _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_0.x, 25901u), reverseBits(vec3<u32>(1u, 71819u, var_0.x))));
    var var_2 = Struct_2(firstLeadingBit(vec4<i32>(-1i >> ((var_0.x << (4294967295u % 32u)) % 32u), firstLeadingBit(_wgslsmith_sub_i32(-1i, -1i)), -2147483647i, 13217i)));
    return Struct_1(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f + _wgslsmith_f_op_f32(global1.a.x * 1000f)))));
}

fn func_1(arg_0: f32) -> i32 {
    global1 = func_4(vec4<bool>(all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), func_2(abs(~vec3<u32>(0u, 4294967295u, 57700u)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), true));
    var var_0 = vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))) & true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_1 = 177f;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a >> (~4294967295u % 32u), u_input.a, 83385i, _wgslsmith_mult_i32(firstLeadingBit(-12518i), u_input.a | u_input.a)) & select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 9870i, u_input.a, 19483i), vec4<i32>(-2147483647i, 2147483647i, 18552i, u_input.a), vec4<i32>(1i, u_input.a, -2147483647i, -25707i)), -vec4<i32>(-11212i, 7177i, 64260i, u_input.a), select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32(-2147483647i, u_input.a)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -35588i), vec2<i32>(u_input.a, 2147483647i)))), 1i, max(~(-2147483647i), u_input.a), -11521i));
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a.x - global1.a.x)) * _wgslsmith_f_op_f32(max(-1412f, -520f)))), _wgslsmith_f_op_f32(select(-776f, 707f, !any(vec3<bool>(true, true, true)) & (select(0u, 0u, true) > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(18400u, 4294967295u))))), arg_0.d.a.x <= arg_0.d.a.x));
    global0 = firstTrailingBit(u_input.a);
    let var_1 = arg_0;
    return Struct_4(arg_0.b.a.zz);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(-arg_0.a.x, u_input.a);
    let var_1 = countOneBits(~vec4<u32>(_wgslsmith_mod_u32(abs(0u), 82508u), ~(~0u), ~1u, 30029u));
    let var_2 = 0i;
    var var_3 = vec4<bool>(true, _wgslsmith_add_i32(_wgslsmith_mod_i32(~(-35132i), var_2 & arg_1.x), arg_0.a.x) == ~(u_input.a ^ -7528i), true, _wgslsmith_f_op_vec3_f32(func_3(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_3(~(-43982i), Struct_2(vec4<i32>(-2147483647i, -1i, 2147483647i, 2147483647i)), Struct_2(vec4<i32>(2147483647i, var_2, u_input.a, arg_0.a.x)), func_4(vec4<bool>(false, true, false, true))), Struct_2(~vec4<i32>(-1i, 1i, -28004i, -1i)))).x >= _wgslsmith_f_op_f32(abs(global1.a.x)));
    global1 = func_4(select(!(!vec4<bool>(var_3.x, var_3.x, true, false)), select(select(!vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(true, var_3.x, var_3.x, true)), vec4<bool>(var_3.x, global1.a.x <= global1.a.x, all(vec3<bool>(var_3.x, var_3.x, false)), true), !select(vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, true))), !vec4<bool>(true, true, !var_3.x, true)));
    return vec4<bool>(false, !(var_3.x & false), all(select(select(select(vec4<bool>(true, false, false, var_3.x), vec4<bool>(var_3.x, false, true, true), vec4<bool>(var_3.x, true, true, var_3.x)), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), !var_3.x), select(select(vec4<bool>(false, true, var_3.x, false), vec4<bool>(var_3.x, var_3.x, true, false), false), select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, var_3.x, true, true), var_3.x), var_3.x), !(1u >= var_1.x))), var_1.x != var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_6(func_5(Struct_3(func_1(global1.a.x), Struct_2(vec4<i32>(u_input.a, -23534i, u_input.a, 0i)), Struct_2(vec4<i32>(2147483647i, u_input.a, -2147483647i, 1i)), Struct_1(global1.a))), ~select(vec2<i32>(u_input.a, 2147483647i), ~vec2<i32>(-1i, 3791i), true));
    var var_1 = _wgslsmith_mult_vec2_u32(abs(abs(select(firstTrailingBit(vec2<u32>(65549u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4292u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 19444u)), true))), ~vec2<u32>(1u, 1u));
    var_0 = !(!select(func_6(func_5(Struct_3(1i, Struct_2(vec4<i32>(u_input.a, -1i, u_input.a, 1i)), Struct_2(vec4<i32>(-36536i, -18591i, u_input.a, u_input.a)), Struct_1(vec3<f32>(global1.a.x, -869f, global1.a.x)))), -vec2<i32>(u_input.a, u_input.a)), vec4<bool>(true, true, false, true), !(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    global1 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec4<u32>(var_1.x, 5693u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), vec2<u32>(4294967295u, var_1.x)), ~1u)), _wgslsmith_add_vec4_u32(~(vec4<u32>(var_1.x, var_1.x, 24972u, 1u) | vec4<u32>(var_1.x, 1u, var_1.x, 25687u)), (vec4<u32>(68904u, 1u, 0u, 50112u) | vec4<u32>(var_1.x, 20600u, var_1.x, 4294967295u)) >> (countOneBits(vec4<u32>(var_1.x, 1u, 45286u, 72964u)) % vec4<u32>(32u))), vec4<bool>(false, func_2(~vec3<u32>(var_1.x, 1u, 4294967295u), select(var_0.xx, var_0.zx, vec2<bool>(true, var_0.x))), var_0.x, var_0.x)), abs(var_1.x), _wgslsmith_f_op_f32(-1383f * global1.a.x));
}

