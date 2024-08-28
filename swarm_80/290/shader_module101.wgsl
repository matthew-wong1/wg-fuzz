struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1450f, -823f) * vec2<f32>(609f, 1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1536f, 552f)), vec2<f32>(-493f, -665f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(888f, 890f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1640f, -395f))))));
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(~max(16781u, 4294967295u), 1u), 21726u);
    global1 = !select(!vec4<bool>(true, !arg_0.x, true, global1.x), !select(select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(arg_0.x, global1.x, false, arg_0.x), arg_0.x), vec4<bool>(false, arg_0.x, true, global1.x), any(vec4<bool>(false, true, global1.x, true))), arg_0.x && (false && (false & arg_0.x)));
    let var_2 = Struct_3(vec4<bool>(true, (_wgslsmith_f_op_f32(-var_0.a.x) <= _wgslsmith_f_op_f32(f32(-1f) * -688f)) && !arg_0.x, true, all(select(!vec4<bool>(true, global1.x, arg_0.x, false), select(vec4<bool>(false, global1.x, arg_0.x, true), vec4<bool>(true, arg_0.x, false, global1.x), global1.x), true))), 1u, !((_wgslsmith_f_op_f32(select(-897f, 667f, false)) == 1f) && all(!arg_0.xx)), u_input.a.xy, 1381f);
    var var_3 = abs(-1i);
    return ~vec4<u32>(42117u, countOneBits(~1u), 14222u, reverseBits(var_2.b));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(func_3(vec3<bool>(!global1.x, true, select(global1.x, !global1.x, global1.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_0, arg_0, 32741u, 9573u), vec4<u32>(39958u, 4294967295u, arg_0, arg_0), true) & vec4<u32>(arg_0, arg_0, 48394u, arg_0), abs(select(vec4<u32>(0u, 1u, arg_0, 0u), vec4<u32>(0u, arg_0, arg_0, 0u), global1.x))), ~vec4<u32>(4294967295u, arg_0, _wgslsmith_add_u32(71522u, arg_0), ~34406u)));
    let var_1 = Struct_3(select(select(vec4<bool>(all(vec2<bool>(global1.x, global1.x)), true, all(vec3<bool>(false, false, global1.x)), true), select(!vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(true, global1.x, false, global1.x)), global1.x), vec4<bool>(u_input.a.x < ~u_input.a.x, !all(vec3<bool>(true, true, global1.x)), true, select(true, false, global1.x) || any(global1.ywx)), !select(select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), false), !vec4<bool>(global1.x, false, global1.x, true), !vec4<bool>(false, global1.x, global1.x, global1.x))), 0u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-257f)) + _wgslsmith_f_op_f32(f32(-1f) * -1561f)))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-512f, 2765f, global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1159f))))), -countOneBits(select(vec2<i32>(-11522i, u_input.a.x), _wgslsmith_mod_vec2_i32(u_input.a.zy, u_input.a.xx), true)), 699f);
    global0 = ~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(var_0), ~var_1.b), _wgslsmith_mod_u32(abs(1u), ~var_1.b)));
    let var_2 = u_input.a;
    let var_3 = Struct_1(~_wgslsmith_div_vec2_i32(u_input.a.xx >> (~vec2<u32>(arg_0, var_1.b) % vec2<u32>(32u)), -vec2<i32>(6506i, 0i)), var_1.a.wwx, ~(-max(vec3<i32>(var_1.d.x, -8709i, var_1.d.x), max(var_2, u_input.a))), -(vec3<i32>(~(-1i), var_2.x, u_input.a.x) >> (~(~vec3<u32>(2990u, 42843u, var_1.b)) % vec3<u32>(32u))));
    return var_1.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    let var_0 = Struct_3(!vec4<bool>(global1.x, any(vec3<bool>(global1.x, true, false)), true, false), ~abs(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(0u, 0u))), any(select(func_2(22564u), vec4<bool>(true, global1.x, false, false), any(global1.wzy))) || true, u_input.a.xy, 947f);
    global0 = var_0.b;
    let var_1 = var_0.a.xzy;
    var var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(56088u, var_0.b, 48814u), vec3<u32>(65988u, var_0.b, 33924u), vec3<u32>(4294967295u, 0u, var_0.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, 32964u, var_0.b), vec3<u32>(var_0.b, 35136u, var_0.b)), countOneBits(vec3<u32>(0u, 1u, var_0.b))), _wgslsmith_div_vec3_u32(~(vec3<u32>(var_0.b, var_0.b, 45964u) << (vec3<u32>(var_0.b, 22115u, 4294967295u) % vec3<u32>(32u))), ~(~vec3<u32>(var_0.b, 8586u, 0u))), ~(max(vec3<u32>(var_0.b, var_0.b, var_0.b), vec3<u32>(0u, 1u, var_0.b)) << (~vec3<u32>(1u, var_0.b, var_0.b) % vec3<u32>(32u)))), firstTrailingBit(~(~(~vec3<u32>(var_0.b, 0u, 102526u)))));
    var_2 = _wgslsmith_add_vec3_u32((firstTrailingBit(vec3<u32>(0u, 27041u, var_2.x) ^ vec3<u32>(var_2.x, var_2.x, var_0.b)) ^ ((vec3<u32>(var_0.b, var_0.b, var_0.b) & vec3<u32>(var_2.x, 0u, 29645u)) >> (firstLeadingBit(vec3<u32>(var_0.b, var_2.x, var_0.b)) % vec3<u32>(32u)))) >> (vec3<u32>(var_2.x, ~(37433u << (1u % 32u)), firstLeadingBit(~var_2.x)) % vec3<u32>(32u)), func_3(!vec3<bool>(false, true, !global1.x)).yyx);
    return 16196i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(~(-u_input.a.zz) & u_input.a.xx, u_input.a.xz), !vec3<bool>(-u_input.a.x >= 1i, global1.x, !all(vec2<bool>(true, global1.x))), min(~(u_input.a << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 16356u), vec3<u32>(4294967295u, 36813u, 54328u)) % vec3<u32>(32u))), -select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), ~u_input.a, vec3<bool>(true, true, true))), firstLeadingBit(vec3<i32>(u_input.a.x, func_1(u_input.a.xy, -875f), -u_input.a.x)));
    let var_1 = Struct_2(Struct_1(min(vec2<i32>(~u_input.a.x, var_0.c.x), abs(-vec2<i32>(-2147483647i, var_0.a.x))), !select(!global1.www, !global1.xwy, vec3<bool>(true, global1.x, true)), u_input.a, ~vec3<i32>(~var_0.c.x, min(var_0.a.x, var_0.a.x), -var_0.a.x)), select(vec2<bool>(any(var_0.b.yy), true), !vec2<bool>(select(true, global1.x, true), var_0.c.x <= -1i), all(vec3<bool>(true, !global1.x, true))), Struct_1(firstLeadingBit(~vec2<i32>(var_0.c.x, u_input.a.x)), global1.wzy, firstLeadingBit(-vec3<i32>(var_0.d.x, u_input.a.x, 18706i)), ~max(vec3<i32>(-1i, -24782i, -1439i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 4724i, 42049i), vec3<i32>(-1i, -1i, var_0.c.x)))), firstTrailingBit(vec4<u32>(1u, 1u, select(firstTrailingBit(3225u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 13694u), false), firstLeadingBit(1u))));
    global0 = func_3(select(global1.zxz, var_1.a.b, select(!(!var_1.c.b.x), global1.x, !(!var_0.b.x)))).x;
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 7474u, 19011u, var_1.d.x) >> (vec4<u32>(var_1.d.x, 1236u, 28036u, var_1.d.x) % vec4<u32>(32u))), vec4<u32>(~abs(27908u), ~1u, 51994u, countOneBits(~var_1.d.x))), ~var_1.d.x);
    let var_4 = var_2;
    let var_5 = ~_wgslsmith_mod_vec3_u32(~(~reverseBits(var_1.d.wzy)), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(15564u, 108736u, var_1.d.x)), firstTrailingBit(var_1.d.xyx)));
    var var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(233f, 1000f))), -203f)), _wgslsmith_f_op_f32(2906f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1774f, 773f) + _wgslsmith_f_op_f32(abs(-1233f)))))), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(select(-var_1.a.d, var_1.a.c, any(var_2.b.zy)), abs(var_3));
}

