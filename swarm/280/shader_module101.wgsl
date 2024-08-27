struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<u32> {
    return vec4<u32>(1u, 1u, 1u, 1u);
}

fn func_2() -> Struct_3 {
    let var_0 = func_3();
    return Struct_3(!vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, true)), true, false), !select(vec2<bool>(true, u_input.a == u_input.b.x), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), any(vec2<bool>(false, false)) && true), vec4<u32>(1u, 66524u, var_0.x, select(~4294967295u ^ _wgslsmith_div_u32(var_0.x, 1u), var_0.x, true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_i32(reverseBits(select(~abs(u_input.c.xx), u_input.b.wz, u_input.d.x < ~u_input.a)), ~_wgslsmith_mod_vec2_i32(u_input.b.xy, _wgslsmith_div_vec2_i32(vec2<i32>(0i, 2096i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.d.x), vec2<i32>(-10579i, -36273i)))));
    var var_1 = true;
    let var_2 = 80174u;
    var_1 = false;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(round(arg_3.a.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(ceil(func_4(vec3<u32>(abs(23987u), reverseBits(1u), 1u), Struct_3(vec4<bool>(true, true, true, true), vec2<bool>(true, true), ~reverseBits(vec4<u32>(4294967295u, 3558u, 1u, 43750u))), true, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, 1223f, arg_1.x))), vec3<bool>(false, 181f > arg_0.a, true))).a));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(arg_1.xy));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)), -933f) - 107f);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(200f * 2022f)))), _wgslsmith_f_op_vec2_f32(round(arg_1.zz))) + arg_1.yz);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.zx), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.zz)), vec2<f32>(var_2.x, var_1.x)), arg_1.zz), !vec2<bool>(all(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, false, true, false))))));
    return Struct_5(select(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)), true, any(vec2<bool>(true, func_2().b.x))), Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_3.x, -262f), arg_1) * arg_1), vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), -1133f, _wgslsmith_f_op_f32(arg_0.a * arg_1.x)))), vec3<bool>(arg_0.a >= func_4(vec3<u32>(0u, 22210u, 7144u), Struct_3(vec4<bool>(false, false, false, false), vec2<bool>(false, false), vec4<u32>(137921u, 12496u, 44822u, 43615u)), false, Struct_2(vec3<f32>(arg_1.x, arg_0.a, var_2.x), vec3<bool>(true, true, true))).a, true, select(true, true, all(vec2<bool>(true, true))))), Struct_3(vec4<bool>(true, true, true, true), vec2<bool>(false, true), firstTrailingBit(abs(vec4<u32>(1u, 1u, 1u, 1u)))), !vec3<bool>(false, _wgslsmith_f_op_f32(-var_2.x) > _wgslsmith_f_op_f32(max(1419f, var_3.x)), false), vec2<f32>(-1658f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, arg_0.e.x, 343f, arg_0.b.a.x)) + vec4<f32>(-406f, 1985f, -144f, -408f)))));
    let var_1 = func_5(func_4(abs(~(arg_0.c.c.wzx ^ arg_0.c.c.zwx)), func_2(), !arg_0.c.a.x, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1.zwx))), vec3<bool>(arg_0.b.b.x, arg_0.d.x, !arg_0.b.b.x))), vec3<f32>(arg_0.e.x, arg_1.x, var_0.x), u_input.c.x);
    let var_2 = Struct_3(func_5(func_4(var_1.c.c.xzw, func_2(), true && (arg_0.d.x | false), func_5(func_4(arg_0.c.c.xxz, var_1.c, true, Struct_2(vec3<f32>(var_1.e.x, 630f, var_1.e.x), arg_0.d)), _wgslsmith_f_op_vec3_f32(var_0.wxz - vec3<f32>(arg_1.x, arg_0.b.a.x, var_0.x)), u_input.d.x >> (34656u % 32u)).b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zzx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, -1000f, -656f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, var_0.x, 1095f)))), i32(-1i) * -min(u_input.c.x, u_input.b.x)).c.a, select(func_5(func_4(var_1.c.c.yxx, var_1.c, arg_0.c.a.x || arg_0.b.b.x, Struct_2(arg_0.b.a, arg_0.b.b)), vec3<f32>(-1838f, _wgslsmith_f_op_f32(ceil(arg_0.e.x)), _wgslsmith_f_op_f32(select(1000f, arg_0.e.x, arg_0.a))), -22455i).b.b.yy, func_5(Struct_1(_wgslsmith_f_op_f32(var_0.x + var_1.e.x)), vec3<f32>(_wgslsmith_f_op_f32(-1824f + var_1.b.a.x), _wgslsmith_f_op_f32(step(var_1.e.x, var_1.e.x)), _wgslsmith_div_f32(arg_0.e.x, -413f)), -18537i).b.b.yy, select(vec2<bool>(true, var_1.b.a.x == var_0.x), arg_0.c.a.zz, func_2().b)), firstLeadingBit(select(arg_0.c.c, vec4<u32>(63793u ^ var_1.c.c.x, arg_0.c.c.x, ~53672u, var_1.c.c.x), arg_0.c.a)));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(0i), -1i, 1i), ~(-reverseBits(u_input.b.xxw))), ~u_input.b.x);
    let var_4 = Struct_5(all(vec3<bool>(var_1.b.b.x, var_1.d.x, true)), Struct_2(_wgslsmith_f_op_vec3_f32(sign(arg_1.yxy)), arg_0.d), arg_0.c, !var_2.a.zzx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.yy))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(632f - var_4.e.x), -908f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    return ~func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~func_6(vec3<f32>(_wgslsmith_f_op_f32(-369f + -851f), _wgslsmith_f_op_f32(func_1(Struct_5(false, Struct_2(vec3<f32>(477f, 207f, 1042f), vec3<bool>(true, true, true)), Struct_3(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec4<u32>(61895u, 1u, 22961u, 4294967295u)), vec3<bool>(false, true, false), vec2<f32>(1000f, 179f)), vec4<f32>(375f, 706f, 413f, 527f))), _wgslsmith_f_op_f32(f32(-1f) * -455f)), Struct_4(all(vec2<bool>(true, true))), true, vec2<i32>(u_input.c.x, -23550i)), 0u, any(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false))));
    var_0 = _wgslsmith_add_u32(func_2().c.x ^ countOneBits(1u), ~_wgslsmith_mod_u32(max(57971u, 1u), 55288u) >> (select(_wgslsmith_add_u32(~1u, 1u), 17480u, all(vec3<bool>(true, true, true))) % 32u));
    var var_1 = u_input.a;
    var_1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c.x, u_input.b.x), ~vec2<i32>(-31363i, 49092i), func_5(Struct_1(-607f), vec3<f32>(-172f, 427f, -1000f), 0i).d.zz) | ~u_input.c.xx, -select(u_input.c.xx, u_input.c.zy, false)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(~4294967295u, 0u), vec2<u32>(1u, 1u)) % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-966f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1168f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, 99966u, firstLeadingBit(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(197f, var_2, 1159f)), Struct_4(true), any(vec2<bool>(true, false)), u_input.c.zx))), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, var_2, -1144f, -567f))) + vec4<f32>(214f, -651f, 1008f, _wgslsmith_f_op_f32(ceil(-701f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 150f, 2016f, var_2) + vec4<f32>(var_2, var_2, -474f, var_2))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, -702f, var_2) - vec4<f32>(-507f, var_2, var_2, var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, var_2, var_2, var_2)))))), 1f);
}

