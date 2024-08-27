struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_1(!(!vec3<bool>(true, any(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, true, true, true)))), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec2<i32>(_wgslsmith_sub_i32(reverseBits(-6042i), arg_1.x), reverseBits(_wgslsmith_add_i32(min(21193i, -1i), countOneBits(u_input.c)))), arg_0.a.xyz << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, arg_0.d, 1u) | vec3<u32>(arg_0.d, u_input.a, 105405u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(26294u, 13897u, 75334u), ~vec3<u32>(4294967295u, 23712u, global0.x), select(vec3<u32>(44386u, 1u, u_input.d), vec3<u32>(u_input.a, global0.x, global0.x), vec3<bool>(false, false, false)))) % vec3<u32>(32u)), true);
    global0 = ~((vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 52617u, u_input.a, arg_0.d), vec4<u32>(arg_0.d, arg_0.d, 1u, 1u)), ~u_input.a) << (vec2<u32>(~u_input.a, global0.x) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, u_input.d), vec3<u32>(37933u, global0.x, global0.x)), global0.x), vec2<u32>(~180u, 41729u)));
    global0 = firstLeadingBit(~vec2<u32>(max(~4294967295u, 4294967295u), min(~global0.x, ~1u)));
    var var_1 = Struct_3(vec4<i32>(-1i, _wgslsmith_sub_i32(select(var_0.c.x, 1i, var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.x, -1i, arg_0.b.x), vec3<i32>(arg_1.x, arg_1.x, u_input.c)))), -reverseBits(u_input.c) | firstLeadingBit(_wgslsmith_add_i32(-33798i, var_0.d.x)), select(u_input.b.x, 1i, true)), vec3<i32>(-1i, -firstLeadingBit(arg_0.b.x), var_0.d.x & ~8467i) | select(max(~arg_0.b, vec3<i32>(u_input.e.x, -21919i, -1i)), -u_input.e | min(arg_1, arg_0.b), all(select(vec3<bool>(var_0.b, var_0.a.x, true), var_0.a, vec3<bool>(false, var_0.e, var_0.a.x)))), -1616f, ~arg_0.d);
    let var_2 = Struct_1(var_0.a, var_0.b, var_1.b.yx, var_1.b, var_0.e);
    return ~vec2<u32>(var_1.d, ~(~68641u) << (u_input.a % 32u));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<u32> {
    global0 = select(~_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(arg_0, global0.x), vec2<u32>(global0.x, arg_1) & vec2<u32>(arg_1, 0u), true), ~vec2<u32>(arg_1, arg_1), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_1), vec2<u32>(4294967295u, u_input.a)))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(func_3(Struct_3(u_input.b, u_input.e, -509f, 90390u), ~u_input.b.wyz, vec3<f32>(-1291f, 1000f, 1000f)), min(vec2<u32>(arg_1, arg_1), ~vec2<u32>(4294967295u, 25343u))), vec2<u32>(~arg_0, arg_1 << (0u % 32u))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a <= u_input.d), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), all(vec3<bool>(true, true, true)))));
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-608f, 788f) * vec2<f32>(-791f, 265f))))))))));
    var var_2 = Struct_3(u_input.b, u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1321f * _wgslsmith_f_op_f32(round(721f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1201f))), 44163u);
    let var_3 = Struct_1(select(vec3<bool>(_wgslsmith_f_op_f32(min(1942f, 572f)) >= _wgslsmith_f_op_f32(var_1.x + -1000f), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), all(vec4<bool>(true, false, true, false)) | true), select(vec3<bool>(all(vec2<bool>(false, true)), 97957u <= arg_0, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), ~var_2.b.x >= ~(-22593i)), true), any(vec2<bool>(true, true)) & true, countOneBits(vec2<i32>(~_wgslsmith_mod_i32(54856i, var_2.b.x), countOneBits(25552i))), vec3<i32>(-(-1i >> (abs(0u) % 32u)), -44952i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, -7866i, u_input.c), 14843i), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yw, u_input.e.xy), max(var_2.b.x, 0i)))), true);
    return _wgslsmith_mod_vec2_u32(max(firstLeadingBit(~vec2<u32>(var_0, arg_0) >> (~vec2<u32>(u_input.d, arg_0) % vec2<u32>(32u))), vec2<u32>(var_0 | ~1u, var_0)), ~min(vec2<u32>(~66903u, global0.x), ~vec2<u32>(65878u, 0u) << (vec2<u32>(38988u, var_0) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    global0 = ~((firstTrailingBit(func_2(arg_0.d, global0.x)) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(36948u, 1u))) & _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(26211u, global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(10250u, global0.x))), ~countOneBits(vec2<u32>(4294967295u, u_input.a))));
    var var_0 = _wgslsmith_mult_u32(max(~1u, 1u) ^ u_input.a, (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d, arg_0.d), vec2<u32>(4294967295u, 0u))) ^ 46086u) >> (17751u % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-996f - 1460f), -1075f) + vec2<f32>(arg_0.c, 198f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) + vec2<f32>(arg_0.c, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-571f, arg_0.c)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)))), false))));
    var var_2 = Struct_4(!vec2<bool>(any(vec3<bool>(false, false, true)) || all(vec3<bool>(true, false, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))), Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), true, u_input.e.yz, vec3<i32>(-3049i, ~2147483647i, ~(-1372i)), true)), Struct_2(Struct_1(vec3<bool>(any(vec2<bool>(false, true)), true, 267f != arg_0.c), true, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.x, 0i) & arg_0.b.xy, arg_0.a.xz), countOneBits(~arg_0.b), any(vec3<bool>(true, true, true)))), Struct_1(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), any(vec3<bool>(true, false, false))), (186f != var_1.x) && true, abs(vec2<i32>(-1i) * -vec2<i32>(arg_0.a.x, u_input.b.x)), select(~u_input.b.xyy, arg_0.b, vec3<bool>(true, true, true)) | u_input.e, ~(-24994i) != abs(~u_input.c)), -2147483647i >= (-63852i >> (~arg_0.d % 32u)));
    var_2 = Struct_4(!select(!var_2.c.a.a.xx, !select(vec2<bool>(var_2.c.a.a.x, true), vec2<bool>(false, var_2.a.x), var_2.d.a.xy), !(var_2.b.a.a.x & var_2.e)), Struct_2(Struct_1(vec3<bool>(false, !var_2.b.a.a.x, any(vec4<bool>(false, var_2.d.a.x, var_2.d.a.x, true))), !var_2.e && all(vec4<bool>(false, false, var_2.c.a.a.x, var_2.a.x)), vec2<i32>(_wgslsmith_sub_i32(arg_0.b.x, -52221i), -u_input.e.x), var_2.d.d, !(var_2.c.a.d.x > arg_0.b.x))), Struct_2(var_2.d), Struct_1(!select(var_2.b.a.a, vec3<bool>(true, true, var_2.d.e), select(var_2.a.x, var_2.b.a.a.x, var_2.a.x)), any(select(select(vec2<bool>(var_2.e, var_2.d.a.x), var_2.b.a.a.zz, false), vec2<bool>(var_2.a.x, true), select(var_2.b.a.a.zz, var_2.d.a.xy, var_2.a.x))), vec2<i32>(_wgslsmith_add_i32(732i, 0i), 44617i) << (vec2<u32>(global0.x, _wgslsmith_mod_u32(55512u, 4294967295u)) % vec2<u32>(32u)), min(-var_2.c.a.d, var_2.c.a.d), !(true && (arg_0.c != var_1.x))), any(!select(var_2.d.a, var_2.c.a.a, vec3<bool>(var_2.b.a.a.x, var_2.a.x, var_2.b.a.b))) & any(select(!var_2.b.a.a.xz, vec2<bool>(var_2.d.a.x, var_2.d.b), select(var_2.c.a.a.yx, vec2<bool>(var_2.a.x, false), vec2<bool>(true, var_2.d.a.x)))));
    return select(select(~(vec2<u32>(13304u, 1u) ^ vec2<u32>(26054u, u_input.a)), vec2<u32>(abs(arg_0.d), 0u), true), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.a, 7662u), vec2<u32>(2158u, arg_0.d), var_2.e), ~vec2<u32>(arg_0.d, 43687u), vec2<u32>(59132u, 7851u)) & ~vec2<u32>(arg_0.d, u_input.a), vec2<bool>(all(select(var_2.c.a.a.yx, vec2<bool>(var_2.d.a.x, true), vec2<bool>(var_2.b.a.a.x, false))), !all(vec4<bool>(false, true, true, var_2.b.a.b)))) << ((~(~(~vec2<u32>(4294967295u, 1u))) | func_3(arg_0, vec3<i32>(abs(u_input.c), -2147483647i | var_2.b.a.c.x, 1i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2252f, 627f, arg_0.c))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, arg_0.c, arg_0.c))), all(vec4<bool>(var_2.c.a.a.x, true, var_2.e, false)))))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(global0.x, ~(38366u | u_input.d)) ^ func_1(Struct_3(u_input.b, u_input.b.yyy, _wgslsmith_f_op_f32(f32(-1f) * -2014f), u_input.d));
    global0 = _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 1u)), ~vec2<u32>(global0.x, 0u)), ~vec2<u32>(u_input.d, 4294967295u)), vec2<u32>((1u ^ ~u_input.a) << (~u_input.a % 32u), _wgslsmith_mult_u32(u_input.d, firstLeadingBit(_wgslsmith_mod_u32(13877u, u_input.d)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(666f, -804f, 246f, -798f) + vec4<f32>(1720f, 656f, 1196f, 1382f)) * vec4<f32>(1043f, -174f, 502f, -461f)) + vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f * 700f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2232f + 365f))), _wgslsmith_f_op_f32(-724f - -116f), _wgslsmith_f_op_f32(f32(-1f) * -1399f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 1u), abs(vec4<u32>(69699u, global0.x, 1u, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(15209u, u_input.d, 8420u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, global0.x, 0u))), vec4<u32>(~0u, global0.x << (15524u % 32u), u_input.d, 1u), false)));
}

