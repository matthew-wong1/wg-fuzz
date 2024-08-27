struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 12464u);

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = ~13952u;
    var var_1 = Struct_1(reverseBits(u_input.c.x), arg_0);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1399f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(select(arg_0, arg_0, true)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), arg_0)))));
    global0 = vec2<u32>(1u, ~(~max(146u, 1u)));
    return all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_add_i32(-_wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x), -(-1i << (1u % 32u)), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(arg_0.b.a, 2147483647i, -2147483647i) >> (vec3<u32>(1u, 1u, global0.x) % vec3<u32>(32u)))), max(i32(-1i) * -1i, arg_0.b.a));
    let var_1 = _wgslsmith_dot_vec2_u32((select(abs(vec2<u32>(92081u, global0.x)), ~vec2<u32>(65326u, 0u), false) ^ vec2<u32>(_wgslsmith_add_u32(0u, global0.x), 10681u)) | vec2<u32>(31838u, select(~global0.x, global0.x, false && arg_0.a)), _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 9975u) ^ vec2<u32>(global0.x, global0.x)), max(~vec2<u32>(global0.x, 46838u), abs(vec2<u32>(4294967295u, 0u))) & ~firstLeadingBit(vec2<u32>(global0.x, 1u))));
    let var_2 = global0.x;
    var var_3 = _wgslsmith_mod_vec2_i32(min(~(~select(u_input.c.zz, u_input.a, true)), (-arg_1.yx & vec2<i32>(2147483647i, -2147483647i)) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, 62494u), vec2<u32>(4294967295u, var_1)) % vec2<u32>(32u))), max(u_input.b, min(~_wgslsmith_mod_vec2_i32(vec2<i32>(-36948i, 1i), arg_1.zz), -vec2<i32>(12390i, -1i))));
    let var_4 = select(!(!(!select(vec4<bool>(true, false, false, arg_2.a), vec4<bool>(arg_0.a, true, true, arg_0.a), arg_2.a))), select(vec4<bool>(any(!vec4<bool>(arg_0.a, true, false, false)), arg_0.a, true, !all(vec4<bool>(true, true, arg_0.a, true))), select(vec4<bool>(arg_2.a, !arg_0.a, any(vec2<bool>(arg_2.a, true)), any(vec2<bool>(true, arg_0.a))), select(select(vec4<bool>(arg_0.a, true, arg_0.a, false), vec4<bool>(arg_0.a, arg_2.a, arg_0.a, false), vec4<bool>(arg_0.a, false, arg_0.a, false)), select(vec4<bool>(arg_2.a, true, false, arg_2.a), vec4<bool>(arg_2.a, true, arg_2.a, arg_2.a), vec4<bool>(arg_0.a, arg_0.a, true, false)), !vec4<bool>(arg_0.a, arg_0.a, arg_2.a, true)), !(!vec4<bool>(false, true, arg_2.a, arg_0.a))), !vec4<bool>(true, arg_2.a, func_3(arg_0.b.b), !arg_2.a)), any(select(vec2<bool>(select(arg_0.a, true, true), arg_0.a), vec2<bool>(var_1 != 1u, any(vec2<bool>(false, true))), true)));
    return 1i & _wgslsmith_dot_vec4_i32(select(arg_1, arg_1, -663f <= _wgslsmith_f_op_f32(min(arg_2.b.b, 382f))), vec4<i32>(-1i) * -min(vec4<i32>(64249i, 63382i, var_3.x, -3704i), vec4<i32>(arg_0.b.a, 12518i, 2147483647i, 44112i)));
}

fn func_2() -> i32 {
    return _wgslsmith_mod_i32(func_4(Struct_2(func_3(_wgslsmith_f_op_f32(-329f + -777f)), Struct_1(select(u_input.c.x, u_input.a.x, true), -1615f)), -(~vec4<i32>(0i, 1i, 0i, 29078i)), Struct_2(!any(vec3<bool>(false, true, false)), Struct_1(i32(-1i) * -22487i, _wgslsmith_div_f32(1535f, -1352f)))), min(-firstLeadingBit(-2147483647i) << (_wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~global0.x) % 32u), ~(-func_4(Struct_2(false, Struct_1(u_input.a.x, -2635f)), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 6132i), Struct_2(true, Struct_1(-1i, -578f))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_2 {
    global2 = _wgslsmith_mult_i32(func_2(), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.x, 29961i, 9890i | u_input.a.x), u_input.a.x)) | ~(-44227i);
    var var_0 = Struct_1(select(12040i, arg_1.x, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(abs(arg_0.x)));
    var var_1 = Struct_2(select(all(vec2<bool>(true, true)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(true, false, true) && false), Struct_1(-2147483647i, 339f));
    var var_2 = Struct_2(true, Struct_1(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -112f)));
    var_2 = Struct_2(true, var_2.b);
    return Struct_2(all(!(!vec3<bool>(var_2.a, true, var_2.a))), Struct_1(var_2.b.a | (i32(-1i) * -u_input.b.x), -490f));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<f32>(arg_0.x, -517f);
    let var_1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(-19749i & _wgslsmith_mod_i32(arg_3.b.a, 6697i), -1i), func_2()), _wgslsmith_f_op_f32(sign(-385f)));
    global2 = (30547i & u_input.a.x) ^ firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, min(var_1.a & 6940i, _wgslsmith_mod_i32(10624i, -1i))));
    var var_2 = arg_3.b;
    global1 = 0u;
    return _wgslsmith_mod_i32(u_input.c.x, (u_input.c.x << (arg_2.x % 32u)) ^ _wgslsmith_mult_i32(func_1(vec3<f32>(var_1.b, arg_3.b.b, var_1.b), vec4<i32>(u_input.c.x, 29360i, -1i, var_2.a)).b.a, _wgslsmith_clamp_i32(u_input.b.x, arg_3.b.a, -11835i))) | var_1.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = -604f;
    let var_1 = -vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(0i, -arg_1.a)), select(~u_input.c.x, arg_1.a, func_3(var_0)) | 0i, _wgslsmith_mult_i32(-countOneBits(arg_1.a), func_4(func_1(vec3<f32>(1792f, arg_1.b, 236f), vec4<i32>(-6418i, -53106i, u_input.c.x, arg_0.a)), select(vec4<i32>(-24271i, -41287i, u_input.b.x, arg_1.a), vec4<i32>(-18333i, arg_1.a, arg_0.a, arg_1.a), true), func_1(vec3<f32>(arg_1.b, 384f, arg_1.b), vec4<i32>(u_input.a.x, -33280i, 10691i, -1i)))), _wgslsmith_mod_i32(~arg_0.a, select(arg_0.a, u_input.a.x, true)) & func_4(func_1(vec3<f32>(arg_1.b, var_0, arg_0.b), vec4<i32>(u_input.b.x, -10141i, 2147483647i, -7541i)), vec4<i32>(-1i, u_input.b.x, -2147483647i, 87375i), func_1(vec3<f32>(-728f, 1130f, arg_1.b), vec4<i32>(-1i, arg_0.a, 0i, -2147483647i))));
    let var_2 = arg_1;
    var var_3 = vec2<bool>(all(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, func_3(var_2.b)))), true);
    var var_4 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.b, 1711f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -1314f) - _wgslsmith_f_op_f32(exp2(var_2.b))), -1825f)), select(var_1, var_1 | (vec4<i32>(-1i) * -vec4<i32>(var_2.a, u_input.c.x, var_1.x, var_1.x)), var_3.x));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (-362f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(758f - -1311f), 1240f, true)))) == (((u_input.a.x ^ 0i) == -_wgslsmith_add_i32(21314i, -1i)) && all(vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.b, func_6(Struct_1(~min(u_input.c.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1833f * 685f) - _wgslsmith_f_op_f32(f32(-1f) * -1272f))), Struct_1(func_5(vec2<f32>(1000f, 940f), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 29752u, 1u), vec4<u32>(0u, global0.x, global0.x, global0.x)), vec4<u32>(global0.x, global0.x, global0.x, 26853u), func_1(vec3<f32>(1384f, 859f, -1000f), vec4<i32>(48355i, u_input.c.x, u_input.c.x, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(762f, 1703f))))), _wgslsmith_mod_vec2_i32(vec2<i32>(38124i >> (1u % 32u), u_input.a.x), select(-u_input.c.xx, _wgslsmith_clamp_vec2_i32(vec2<i32>(17033i, 2147483647i), -u_input.c.xz, ~vec2<i32>(u_input.c.x, u_input.c.x)), true)));
    let var_2 = abs(~(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, global0.x, 21209u)), ~vec3<u32>(global0.x, global0.x, global0.x)) << (abs(vec3<u32>(global0.x, global0.x, global0.x) << (vec3<u32>(global0.x, 10378u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 25611u, var_2.x)), _wgslsmith_div_vec3_u32(vec3<u32>(19557u, 0u, global0.x), var_2)) << (var_2 % vec3<u32>(32u))), vec4<u32>(~(global0.x << (global0.x % 32u)) & (~var_2.x << (_wgslsmith_mod_u32(var_2.x, var_2.x) % 32u)), var_2.x, firstLeadingBit(25830u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2.x, 19889u, global0.x, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(75009u, var_2.x, global0.x, 4294967295u), vec4<u32>(var_2.x, 28176u, var_2.x, var_2.x)), any(vec4<bool>(true, false, false, var_0))), ~firstLeadingBit(vec4<u32>(70167u, var_2.x, 4294967295u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(423f, 171f))))));
}

