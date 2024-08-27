struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: u32;

var<private> global2: array<Struct_5, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    let var_0 = Struct_5(1u);
    var var_1 = Struct_1(-u_input.a, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(f32(-1f) * -677f), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(902f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1632f, 574f)) + -880f))), vec4<i32>(u_input.b, _wgslsmith_add_i32(-1i, u_input.b), (u_input.a.x & (u_input.b >> (6683u % 32u))) >> (13928u % 32u), u_input.a.x));
    var var_2 = _wgslsmith_sub_u32(select(4294967295u, ~(~_wgslsmith_sub_u32(1u, arg_0)), false), select(var_0.a, 4294967295u, true) ^ ~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 43211u)) << (_wgslsmith_add_u32(arg_0, arg_0) % 32u)));
    let var_3 = Struct_2(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 33220u), vec2<u32>(arg_0, arg_0)) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(36569u, 42169u), vec2<u32>(4294967295u, 0u)), var_0.a) % vec2<u32>(32u)), ~(~(~(~vec3<u32>(1531u, arg_0, 0u)))), u_input.a.xy, _wgslsmith_f_op_f32(1881f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1050f)))));
    var var_4 = select(_wgslsmith_sub_u32(~arg_0, _wgslsmith_mult_u32(~arg_0, 1803u)), 2609u, !arg_1.x);
    return var_3.d;
}

fn func_2() -> vec3<i32> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(firstTrailingBit(firstLeadingBit(37319u)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(61378u, 33070u), vec2<u32>(468u, 0u)) <= max(7811u, 0u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-223f, -438f) * _wgslsmith_div_f32(-348f, 145f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -608f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(995f - 396f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, -790f, -1431f, 177f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-529f, -422f, 560f, 207f))), vec4<f32>(-431f, 357f, -747f, 1520f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, 384f, -933f, -362f))));
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(1260f * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(ceil(-437f)))) < -1476f, false && (var_1.x < _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(round(var_1.x))))), false);
    var var_3 = Struct_4(u_input.a.yy, Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.www), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, var_1.x))))))), -((vec4<i32>(u_input.b, -60466i, u_input.b, 0i) ^ vec4<i32>(var_0, 34648i, -2147483647i, var_0)) & vec4<i32>(1i, 0i, var_0, 445i))));
    var var_4 = Struct_4(-(vec2<i32>(-1i) * -select(vec2<i32>(var_3.a.x, 20242i), u_input.a.yy, var_2.x)), Struct_1(_wgslsmith_clamp_vec3_i32(var_3.b.c.zyw, -var_3.b.a ^ vec3<i32>(u_input.a.x, 33228i, -8286i), vec3<i32>(firstLeadingBit(-1i), _wgslsmith_dot_vec2_i32(u_input.a.yy, var_3.b.c.zw), -55319i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1032f), vec3<f32>(2523f, -1348f, -1000f)))))), var_3.b.c));
    return vec3<i32>(~(~var_3.a.x), 0i, -18508i);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec2<u32> {
    global0 = array<Struct_1, 32>();
    var var_0 = global0[_wgslsmith_index_u32(~arg_1.b.x, 32u)];
    var var_1 = func_2();
    var var_2 = Struct_3(arg_1, arg_1.b.x, u_input.b);
    var var_3 = 1u | var_2.a.a.x;
    return min(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~(~arg_1.a), ~var_2.a.b.zy ^ select(arg_1.a, vec2<u32>(var_2.b, arg_1.b.x), vec2<bool>(true, true))), max(vec2<u32>(1u, 0u), vec2<u32>(0u, abs(0u)))), _wgslsmith_div_vec2_u32(reverseBits(abs(select(var_2.a.b.yz, arg_1.b.zz, true))), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, arg_1.b.x)) | ~vec2<u32>(arg_1.a.x, var_2.a.b.x), countOneBits(~vec2<u32>(4294967295u, 1u)), vec2<u32>(4294967295u, ~18557u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u ^ countOneBits(_wgslsmith_dot_vec2_u32(max(func_1(-30014i, Struct_2(vec2<u32>(8675u, 0u), vec3<u32>(13976u, 1u, 28393u), vec2<i32>(u_input.a.x, 33516i), -1101f)), vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 1u)));
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(0u >> (1u % 32u)), ~min(0u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(14712u, 77695u, 43650u), 1u), select(~vec2<u32>(8468u, 51887u), ~vec2<u32>(4294967295u, 40742u), true), vec2<u32>(1u, 1u)), ~vec2<u32>(1u, 1u)), ~min(reverseBits(countOneBits(vec3<u32>(4294967295u, 0u, 40040u))), ~vec3<u32>(0u, 6783u, 0u)), ~(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x)), 1908f);
    let var_2 = Struct_5(select(countOneBits(var_1.b.x), 4294967295u << (countOneBits(_wgslsmith_sub_u32(1u, var_1.a.x)) % 32u), !any(vec2<bool>(false, true))));
    let var_3 = _wgslsmith_mult_i32(firstTrailingBit(~select(-u_input.a.x, 20162i, true)), 2147483647i);
    let var_4 = false;
    global1 = _wgslsmith_clamp_u32(var_2.a << (var_1.b.x % 32u), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mult_u32(var_1.b.x, var_2.a)), var_1.b.x >> (64690u % 32u), _wgslsmith_dot_vec2_u32(var_1.b.xz, vec2<u32>(29905u, var_1.a.x) ^ var_1.b.xx)), 0u) ^ firstTrailingBit(~_wgslsmith_mult_u32(~943u, ~var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-348f, _wgslsmith_f_op_f32(-1155f + -1273f))));
}

