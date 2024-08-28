struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(602f + _wgslsmith_div_f32(-206f, -1114f))))) * -305f);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f + 1534f))) - 693f);
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(394f, -1059f))))));
    var var_0 = Struct_2(!select(vec4<bool>(u_input.c == 1i, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, !arg_0, true), select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(true, false, arg_0, true), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, arg_0, false, arg_0)))), arg_2.d.xw, max(arg_2.d.xxy, ~arg_2.a.xwy), true, Struct_1(~arg_2.d, arg_2.a.x, -102f, arg_1.xzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1571f * -1640f)))));
    return -1000f >= _wgslsmith_f_op_f32(-931f + var_0.e.e);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(-1199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_3.x, 1000f)))) + _wgslsmith_f_op_f32(f32(-1f) * -210f)) * _wgslsmith_f_op_f32(-arg_3.x))));
    var_0 = _wgslsmith_div_f32(1102f, 684f);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1047f, 1275f)), _wgslsmith_f_op_f32(abs(-367f)))), _wgslsmith_f_op_f32(132f - _wgslsmith_f_op_f32(f32(-1f) * -627f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -564f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x), arg_3.x))));
    var var_2 = !select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_3(true, vec4<i32>(-2147483647i, u_input.a, arg_1, u_input.c), Struct_3(vec4<u32>(arg_0.x, 60218u, 4294967295u, arg_0.x), arg_2.x, vec4<i32>(arg_1, arg_2.x, u_input.c, 0i), vec4<u32>(arg_0.x, u_input.b.x, u_input.b.x, arg_0.x))), true, any(vec3<bool>(true, true, false))), true), all(vec4<bool>(var_1.x <= var_1.x, func_3(false, vec4<i32>(-27809i, -21707i, 24856i, arg_1), Struct_3(vec4<u32>(u_input.b.x, 77300u, arg_0.x, 4294967295u), -67773i, vec4<i32>(0i, 38859i, -7299i, -24640i), vec4<u32>(arg_0.x, 18200u, arg_0.x, u_input.b.x))), true, true)));
    var var_3 = Struct_4(Struct_3(firstLeadingBit(select(~vec4<u32>(arg_0.x, 16657u, arg_0.x, arg_0.x), vec4<u32>(15733u, 19504u, 4192u, 28129u), select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), 1i, min(firstLeadingBit(~vec4<i32>(arg_1, u_input.c, arg_2.x, arg_2.x)), ~(~vec4<i32>(u_input.a, arg_2.x, 1i, -1i))), vec4<u32>(max(_wgslsmith_clamp_u32(59651u, 0u, u_input.b.x), 11573u), _wgslsmith_sub_u32(~3773u, u_input.b.x), 4294967295u, arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(round(322f)), _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, 450f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(321f)))));
    return -(-var_3.a.b ^ arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 8597u, ~34862u, u_input.b.x), select(vec4<u32>(26428u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 46808u, 4294967295u), u_input.a <= u_input.c))), -1i, vec4<i32>(func_1(~vec2<u32>(1u, u_input.b.x), i32(-1i) * -1i, vec3<i32>(i32(-1i) * -380i, -u_input.c, u_input.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-142f, -1046f)))), 5625i, ~1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c, 0i), vec3<i32>(u_input.a, 0i, -34310i)) << (45756u % 32u), -u_input.c)), (vec4<u32>(countOneBits(u_input.b.x), u_input.b.x, u_input.b.x, ~4294967295u) >> ((~vec4<u32>(9258u, u_input.b.x, u_input.b.x, 1u) | vec4<u32>(24360u, u_input.b.x, 133888u, u_input.b.x)) % vec4<u32>(32u))) ^ countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), ~vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x), select(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 29232u), false))));
    var var_1 = Struct_3(~abs(~var_0.d), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(var_0.c.x, 2147483647i, 0i)), vec3<i32>(var_0.b, var_0.b, -2147483647i) | var_0.c.yxy) & -var_0.c.wwy, var_0.c.zyx ^ var_0.c.yxz), var_0.c >> (vec4<u32>(~u_input.b.x << (var_0.a.x % 32u), var_0.a.x, ~var_0.d.x, ~(0u >> (u_input.b.x % 32u))) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u));
    var var_2 = _wgslsmith_dot_vec3_i32(var_0.c.zxx, -reverseBits(vec3<i32>(-1i, -31934i, var_1.b)) & (vec3<i32>(-1i) * -var_1.c.zxz)) > (16165i ^ ((i32(-1i) * -2147483647i) | min(var_0.c.x, -67399i)));
    var var_3 = vec2<bool>(true, any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(any(vec4<bool>(true, true, false, false)), true))));
    var var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, reverseBits(var_1.b ^ (i32(-1i) * -1i)), abs(7402i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-86943i, _wgslsmith_sub_i32(var_1.c.x, u_input.a), var_1.c.x), _wgslsmith_add_i32(~0i, 5060i >> (u_input.b.x % 32u)), u_input.c), vec3<i32>(u_input.a, -47396i, firstLeadingBit(var_1.b)), var_1.c.zzx));
    let var_5 = Struct_4(Struct_3(~vec4<u32>(u_input.b.x, ~var_0.a.x, ~var_1.d.x, _wgslsmith_dot_vec2_u32(var_0.a.yz, vec2<u32>(4294967295u, 1u))), -var_1.c.x, select(_wgslsmith_mod_vec4_i32(var_1.c, ~var_1.c), -vec4<i32>(u_input.a, -57299i, -8302i, var_1.b), var_3.x), select(~firstTrailingBit(vec4<u32>(var_1.a.x, var_1.a.x, var_1.d.x, 0u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, var_1.a.x, var_0.a.x, u_input.b.x)), var_0.a, vec4<bool>(true, var_3.x, var_3.x, false)), select(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, true, true, false), var_3.x), vec4<bool>(true, var_3.x, true, var_3.x), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-367f, -990f, -416f) - vec3<f32>(-393f, 809f, 547f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, -118f, -147f))))));
    let var_6 = u_input.b;
    let var_7 = Struct_1(var_1.a, (~_wgslsmith_mod_u32(4294967295u, u_input.b.x) | var_6.x) ^ _wgslsmith_div_u32(~(~var_0.d.x), _wgslsmith_sub_u32(min(0u, var_5.a.a.x), 1u)), var_5.b.x, vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.c.xw, var_0.c.xx), 2147483647i & var_0.b, ~(-select(-2147483647i, var_0.c.x, var_3.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_5.b.x - -1017f), _wgslsmith_f_op_f32(f32(-1f) * -1608f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.zx, var_5.a.d);
}

