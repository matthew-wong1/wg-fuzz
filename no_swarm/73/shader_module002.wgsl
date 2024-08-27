struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(31176u), Struct_1(0u), Struct_1(35194u), Struct_1(61863u), Struct_1(0u), Struct_1(52219u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(32825u), Struct_1(4294967295u), Struct_1(55087u), Struct_1(29557u), Struct_1(0u), Struct_1(0u), Struct_1(87925u), Struct_1(0u), Struct_1(48558u), Struct_1(12538u), Struct_1(4294967295u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(43128u), Struct_1(68309u), Struct_1(0u), Struct_1(4294967295u), Struct_1(20487u), Struct_1(73128u), Struct_1(0u), Struct_1(4294967295u), Struct_1(40534u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = false;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-719f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1150f * 521f) - _wgslsmith_f_op_f32(-188f * -759f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f))))));
    global0 = array<Struct_1, 32>();
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2910f) + _wgslsmith_f_op_f32(trunc(-815f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(516f - -788f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - -980f))), 1f))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 131u)), 8661u, ~u_input.a.x, ~u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, 4294967295u, 37432u) & vec4<u32>(77710u, 8906u, 0u, u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x) | vec4<u32>(1u, u_input.c, 4011u, u_input.a.x))), 32u)], Struct_1(reverseBits(~_wgslsmith_div_u32(u_input.c, u_input.c))), global0[_wgslsmith_index_u32(40590u | u_input.a.x, 32u)]);
    let var_3 = ~_wgslsmith_div_vec3_u32(~(select(vec3<u32>(6361u, u_input.a.x, 21390u), u_input.a, vec3<bool>(var_0, var_0, true)) | ~vec3<u32>(7497u, 1u, 31184u)), ~(vec3<u32>(u_input.c, 73006u, u_input.c) | countOneBits(vec3<u32>(1u, u_input.c, 1u))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1083f);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> bool {
    global0 = array<Struct_1, 32>();
    var var_0 = 4294967295u | _wgslsmith_add_u32(abs(min(46304u, arg_1.c.a)), _wgslsmith_mod_u32(arg_1.e.a, u_input.a.x));
    let var_1 = arg_1;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2177f)), -2164f)))), arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) - _wgslsmith_f_op_f32(var_1.b.x * -832f)), var_1.a.x))), 905f);
    global0 = array<Struct_1, 32>();
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_1.x), arg_1.zz, arg_0.x)) - _wgslsmith_f_op_vec2_f32(arg_1.ww - arg_1.zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yw * vec2<f32>(arg_1.x, 152f)) + _wgslsmith_f_op_vec2_f32(max(arg_1.ww, vec2<f32>(arg_1.x, -770f)))))), _wgslsmith_f_op_vec3_f32(abs(arg_1.zzw)), Struct_1(~0u), Struct_1(_wgslsmith_add_u32(53508u, 30664u)), Struct_1(~(~u_input.a.x) >> (~u_input.c % 32u)));
    let var_1 = _wgslsmith_f_op_f32(abs(var_0.a.x));
    var var_2 = ~u_input.a;
    var_2 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(~(var_2.x & u_input.c), 59448u ^ var_0.c.a, ~(4294967295u >> (1u % 32u))), u_input.a, vec3<u32>(firstLeadingBit(firstTrailingBit(0u)), 4294967295u, ~(~1864u))));
    var_2 = min(~vec3<u32>(u_input.a.x, 28355u, 354u), (u_input.a | u_input.a) ^ ~(~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(7116u, 58476u, var_2.x))));
    return Struct_1(var_0.d.a);
}

fn func_1() -> Struct_1 {
    var var_0 = 24872u;
    let var_1 = -vec2<i32>(~u_input.d, i32(-1i) * -2147483647i);
    return func_4(select(vec3<bool>(true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false)), true), vec3<bool>(true, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1747f), Struct_2(vec2<f32>(1000f, 1373f), vec3<f32>(-1868f, 904f, 1828f), Struct_1(u_input.a.x), Struct_1(4294967295u), global0[_wgslsmith_index_u32(1u, 32u)]), var_1.x), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1022f, -515f, _wgslsmith_f_op_f32(-860f - _wgslsmith_f_op_f32(sign(995f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    let var_0 = ~abs(_wgslsmith_mod_i32(u_input.e << (1u % 32u), min(u_input.b, -1i))) | -31893i;
    global0 = array<Struct_1, 32>();
    var var_1 = var_0 << (4294967295u % 32u);
    let var_2 = global0[_wgslsmith_index_u32(u_input.c, 32u)];
    var_1 = ~((i32(-1i) * -_wgslsmith_mod_i32(u_input.d, -40251i)) ^ ~52441i);
    var var_3 = Struct_2(vec2<f32>(-197f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(f32(-1f) * -1929f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f)))), vec3<f32>(725f, _wgslsmith_f_op_f32(trunc(-515f)), _wgslsmith_f_op_f32(-2102f + 937f)), global0[_wgslsmith_index_u32(4294967295u, 32u)], func_1(), Struct_1(~(func_4(vec3<bool>(false, false, false), vec4<f32>(622f, 671f, 881f, -149f)).a & ~76540u)));
    let var_4 = ~_wgslsmith_mod_u32(0u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), -min(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0, u_input.e, -1i, u_input.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(-31004i, -32141i, -1i, 34940i), vec4<i32>(893i, var_0, -14198i, 2147483647i), vec4<i32>(0i, -1i, 0i, var_0))), vec4<i32>(u_input.d, -u_input.d, var_0, -46795i)), 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x - var_3.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1189f)), var_3.a.x));
}

