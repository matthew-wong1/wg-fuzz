struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: u32;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-1i, 2147483647i), vec2<i32>(12472i, 22658i), vec2<i32>(2556i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, -12615i), vec2<i32>(1i, -68636i), vec2<i32>(0i, 3368i), vec2<i32>(2147483647i, 1i), vec2<i32>(-5310i, 22938i), vec2<i32>(i32(-2147483648), -20456i), vec2<i32>(-4139i, i32(-2147483648)), vec2<i32>(0i, -4471i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    global0 = array<i32, 22>();
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.d, _wgslsmith_sub_vec4_u32(u_input.d << (u_input.d % vec4<u32>(32u)), vec4<u32>(~78613u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.c), vec3<u32>(44392u, 2704u, u_input.a.x)), 17811u | u_input.b, 1u)) | vec4<u32>(countOneBits(~44716u), _wgslsmith_add_u32(~0u, _wgslsmith_mult_u32(4294967295u, u_input.c)), u_input.d.x, ~(~4294967295u))), 12u)];
    let var_0 = Struct_1(~(-firstTrailingBit(vec4<i32>(43036i, 535i, -84685i, global0[_wgslsmith_index_u32(30395u, 22u)])) << (firstLeadingBit(u_input.d) % vec4<u32>(32u))), select(vec4<bool>(true, any(vec4<bool>(true, false, true, false)), false, (-24020i ^ global2.x) <= _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 22u)], 1i)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, false))), !(!all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, 1039f, -906f, 1311f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, 1000f, 446f) + vec4<f32>(375f, -414f, 914f, -1189f))))), true)), ~select(1u, _wgslsmith_mult_u32(min(1u, u_input.b), u_input.b), !any(vec4<bool>(false, false, false, true))));
    global2 = var_0.a.zw;
    global1 = 4294967295u;
    return vec3<i32>(1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(26314u, u_input.a.x)), u_input.a.xz), ~countOneBits(vec2<u32>(u_input.a.x, u_input.c))), 22u)], -7674i);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global2 = -vec2<i32>(~global2.x, 0i);
    global2 = abs(-firstTrailingBit(select(global3[_wgslsmith_index_u32(u_input.a.x >> (u_input.c % 32u), 12u)], global3[_wgslsmith_index_u32(35928u, 12u)], true)));
    global0 = array<i32, 22>();
    var var_0 = _wgslsmith_mult_vec3_i32(func_3(), vec3<i32>(-1i, abs(firstLeadingBit(global0[_wgslsmith_index_u32(3797u, 22u)] >> (u_input.a.x % 32u))), -2147483647i));
    global3 = array<vec2<i32>, 12>();
    return ~(-2147483647i);
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = Struct_1(arg_0.b.a, vec4<bool>(1322f > arg_0.b.c.x, arg_0.c.b.x, false, arg_0.b.b.x & all(!vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x, true))), arg_0.c.c, ~arg_0.b.d);
    var var_1 = var_0.b;
    let var_2 = 1u;
    var var_3 = arg_0;
    let var_4 = u_input.d.zz << (vec2<u32>(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.d, var_2, var_2, 65378u), vec4<u32>(u_input.c, 32972u, var_0.d, arg_0.b.d))), _wgslsmith_div_u32(1u, var_0.d)) % vec2<u32>(32u));
    return arg_0.b.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> vec2<f32> {
    var var_0 = vec4<bool>(false, any(vec3<bool>(arg_2, true, all(!arg_0.b.zyx))), all(arg_0.b), true);
    global1 = _wgslsmith_clamp_u32(arg_3.x, (_wgslsmith_mult_u32(~arg_3.x, ~21486u) | ~arg_3.x) & u_input.c, arg_3.x);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -976f))))));
    let var_2 = 0u;
    let var_3 = vec4<bool>(func_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(exp2(arg_0.c.zw))), Struct_1(abs(arg_0.a), vec4<bool>(arg_0.b.x, arg_2, arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-arg_0.c), var_2), arg_0)), true, arg_2, true);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), arg_0.c.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    var var_0 = Struct_2(~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c & _wgslsmith_div_u32(40859u, 75000u), 22u)], _wgslsmith_dot_vec2_i32(arg_1.a.zz, vec2<i32>(-52764i, arg_1.a.x)) | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, global0[_wgslsmith_index_u32(arg_2, 22u)], global2.x, arg_1.a.x), vec4<i32>(global0[_wgslsmith_index_u32(27519u, 22u)], -62151i, -40148i, -832i))), arg_1, Struct_1(vec4<i32>(func_2(arg_1.c.xz), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, global0[_wgslsmith_index_u32(79860u, 22u)]), countOneBits(vec4<i32>(0i, 1i, global0[_wgslsmith_index_u32(arg_2, 22u)], arg_1.a.x))), ~max(arg_1.a.x, global0[_wgslsmith_index_u32(u_input.c, 22u)]), -30755i), vec4<bool>(arg_1.b.x, true, (arg_1.a.x > -17575i) == func_4(Struct_2(global2.x, arg_1, Struct_1(arg_1.a, vec4<bool>(false, false, arg_1.b.x, true), arg_1.c, 4294967295u))), func_4(Struct_2(global2.x, arg_1, arg_1)) || func_4(Struct_2(1i, Struct_1(vec4<i32>(-60128i, global0[_wgslsmith_index_u32(1260u, 22u)], 2147483647i, 1i), vec4<bool>(true, false, false, arg_1.b.x), vec4<f32>(577f, arg_0.x, -1257f, 116f), 36756u), arg_1))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), _wgslsmith_f_op_f32(round(-2730f)), arg_1.c.x, arg_0.x), select(firstLeadingBit(firstLeadingBit(4294967295u)), _wgslsmith_mod_u32(arg_2, 4260u | arg_2), select(func_4(Struct_2(-1i, arg_1, Struct_1(arg_1.a, arg_1.b, arg_1.c, arg_2))), !arg_1.b.x, !arg_1.b.x))));
    var var_1 = arg_1.c.x;
    var var_2 = Struct_2(_wgslsmith_dot_vec2_i32(countOneBits(arg_1.a.wx & ~global3[_wgslsmith_index_u32(arg_2, 12u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.d, arg_2, 52887u) ^ vec3<u32>(17997u, 47459u, 26272u)), vec3<u32>(49920u, u_input.b, 38067u)), 12u)]), Struct_1(-(~(vec4<i32>(-4694i, global2.x, arg_1.a.x, -1i) & vec4<i32>(0i, 0i, 2147483647i, 45i))), vec4<bool>(arg_1.b.x, all(!var_0.c.b.wxz), var_0.c.b.x, func_4(Struct_2(36911i, var_0.c, Struct_1(vec4<i32>(-1i, arg_1.a.x, 28938i, 2147483647i), vec4<bool>(true, true, var_0.b.b.x, true), vec4<f32>(arg_1.c.x, 1567f, -1611f, arg_1.c.x), 13180u)))), arg_1.c, countOneBits(74023u)), Struct_1(vec4<i32>(-(~2147483647i), -global0[_wgslsmith_index_u32(39486u, 22u)] >> (32590u % 32u), global0[_wgslsmith_index_u32(abs(arg_2) >> (38565u % 32u), 22u)], 0i), var_0.c.b, vec4<f32>(_wgslsmith_f_op_f32(1000f * -1165f), var_0.c.c.x, -1000f, _wgslsmith_f_op_f32(-1335f * _wgslsmith_f_op_f32(f32(-1f) * -495f))), arg_2));
    global1 = 4294967295u;
    global2 = ~vec2<i32>(-2147483647i, ~max(-arg_1.a.x, arg_1.a.x));
    return var_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<i32>(global2.x, -6457i, _wgslsmith_div_i32(13724i, 2147483647i), global2.x), vec4<bool>(true, true, true, true), vec4<f32>(_wgslsmith_f_op_f32(min(1607f, -2294f)), _wgslsmith_div_f32(-465f, 798f), 557f, _wgslsmith_f_op_f32(trunc(1314f))), ~u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), false, u_input.a.yx << (_wgslsmith_add_vec2_u32(~vec2<u32>(8012u, 19470u), ~u_input.a.xz) % vec2<u32>(32u)))), Struct_1(vec4<i32>(2147483647i, ~(global2.x << (4294967295u % 32u)), 0i, _wgslsmith_mult_i32(-1i, 28178i)), vec4<bool>(select(func_4(Struct_2(14128i, Struct_1(vec4<i32>(12194i, -23705i, global2.x, global2.x), vec4<bool>(false, false, true, false), vec4<f32>(-215f, 1964f, -764f, -1311f), 49465u), Struct_1(vec4<i32>(global2.x, global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec4<bool>(false, false, true, true), vec4<f32>(572f, 1629f, -143f, -1000f), u_input.c))), true, false), all(vec4<bool>(false, false, false, false)), false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(141f, 1189f, -2068f, -526f), vec4<f32>(-812f, -423f, 616f, 982f))) * vec4<f32>(-1022f, -662f, -1276f, 652f)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-913f)), -1883f, -427f, 701f)), 0u), 50291u);
    let var_1 = _wgslsmith_f_op_f32(floor(-1739f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3679f, 808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1, var_1), 582f)))));
    let var_3 = var_2;
    var var_4 = Struct_2(-1i, Struct_1(vec4<i32>(-var_0.x >> (u_input.c % 32u), func_5(_wgslsmith_f_op_vec2_f32(exp2(var_2.zw)), Struct_1(vec4<i32>(-11703i, 33737i, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -84849i), vec4<bool>(false, true, false, false), vec4<f32>(-1377f, var_3.x, var_2.x, 956f), u_input.d.x), ~u_input.b).x, ~(-23143i >> (u_input.a.x % 32u)), (i32(-1i) * -2147483647i) & global2.x), vec4<bool>(_wgslsmith_div_u32(0u, u_input.a.x) <= u_input.a.x, !any(vec3<bool>(true, true, false)), !all(vec3<bool>(false, false, true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1474f, var_3.x, var_3.x)), var_3))), 85874u), Struct_1(-_wgslsmith_add_vec4_i32(func_5(vec2<f32>(var_2.x, var_1), Struct_1(vec4<i32>(1i, var_0.x, global2.x, -1i), vec4<bool>(true, false, false, true), var_2, 1u), 1u), vec4<i32>(var_0.x, global2.x, -31582i, 2147483647i) ^ vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], var_0.x, 40156i, 0i)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)))), 0u));
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(968f + var_4.c.c.x), var_4.b.c.x, -1374f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(330f, 615f, -1246f)))))), _wgslsmith_div_vec3_f32(var_4.b.c.zyy, _wgslsmith_f_op_vec3_f32(-var_4.b.c.wxz))));
}

