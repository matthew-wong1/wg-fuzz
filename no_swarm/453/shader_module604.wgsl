struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    global0 = array<Struct_1, 32>();
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(!all(vec2<bool>(true, true)), (1u >> (u_input.b % 32u)) <= global1.x));
    let var_1 = ~(~select(u_input.b, ~27747u, false));
    var var_2 = 1516f;
    var var_3 = _wgslsmith_clamp_i32(select(u_input.c.x, u_input.d.x, true), u_input.a.x ^ u_input.d.x, i32(-1i) * -2147483647i);
    return ~select(-vec3<i32>(u_input.a.x, -34412i, u_input.a.x), u_input.c, vec3<bool>(true, var_0.x, all(vec3<bool>(var_0.x, var_0.x, false)))) & firstTrailingBit(u_input.d.wxz ^ ~reverseBits(vec3<i32>(u_input.d.x, u_input.a.x, 0i)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 32u)];
    var var_1 = arg_0.x;
    global1 = ~firstTrailingBit(vec2<u32>(0u, global1.x));
    var var_2 = vec4<u32>(min(var_0.d, var_0.d), 17082u, _wgslsmith_mult_u32(global1.x, u_input.b << (_wgslsmith_mult_u32(global1.x, var_0.b.x << (4294967295u % 32u)) % 32u)), _wgslsmith_clamp_u32(u_input.b, ~abs(u_input.b >> (1u % 32u)), u_input.b));
    var var_3 = func_3();
    return ~1u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<i32> {
    global0 = array<Struct_1, 32>();
    var var_0 = u_input.d.yz;
    global0 = array<Struct_1, 32>();
    return -(~(-vec3<i32>(arg_2.e.x, arg_0.e.x, arg_0.e.x)) << (arg_0.b.wzy % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(arg_0.a, vec4<u32>((arg_0.b.x << (84368u % 32u)) << (~13895u % 32u), ~max(57641u, 1u), 1u, arg_0.b.x) | reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, arg_0.b.x, global1.x), arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(523f + -741f), _wgslsmith_div_f32(410f, arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)))), abs(_wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x)), -u_input.d);
    var var_1 = firstLeadingBit(vec3<i32>(-1i, 1i, countOneBits(_wgslsmith_dot_vec2_i32(u_input.a, arg_0.e.ww) & 0i)));
    let var_2 = ~_wgslsmith_div_i32(2147483647i, var_1.x);
    var_1 = _wgslsmith_clamp_vec3_i32(-(reverseBits(~vec3<i32>(51001i, 0i, -1i)) | abs(vec3<i32>(1i, u_input.c.x, 0i))), firstTrailingBit(arg_0.e.wzy), select(func_4(Struct_1(vec2<bool>(var_0.a.x, false), vec4<u32>(53152u, 0u, 4527u, u_input.b) | var_0.b, vec3<f32>(509f, var_0.c.x, arg_0.c.x), func_2(vec4<f32>(var_0.c.x, -941f, arg_0.c.x, arg_0.c.x)), var_0.e), !(!vec4<bool>(true, false, false, var_0.a.x)), Struct_1(!arg_0.a, vec4<u32>(4294967295u, u_input.b, 28278u, arg_0.d) >> (arg_0.b % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-arg_0.c), global1.x, arg_0.e)), select(countOneBits(var_0.e.wwz), var_0.e.wzy, false) | vec3<i32>(-2147483647i, _wgslsmith_mod_i32(12182i, 2147483647i), _wgslsmith_sub_i32(var_2, var_1.x)), vec3<bool>(!select(var_0.a.x, false, arg_0.a.x), false, !var_0.a.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, -237f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c)) * vec3<f32>(var_0.c.x, var_0.c.x, arg_0.c.x)))));
    return vec2<bool>(!(var_3.x <= 204f) | true, arg_0.d > 56810u);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = u_input.a.x;
    var var_1 = vec3<f32>(-290f, _wgslsmith_f_op_f32(-530f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x - arg_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -490f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c.x)))));
    var var_2 = -1158f;
    let var_3 = Struct_1(!(!func_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.d, arg_2.d), 32u)])), _wgslsmith_mult_vec4_u32(arg_2.b, abs(max(arg_2.b, arg_2.b) | ~arg_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -415f, _wgslsmith_f_op_f32(var_1.x + 454f)))), _wgslsmith_div_u32(_wgslsmith_add_u32(~max(arg_2.b.x, arg_2.b.x), _wgslsmith_div_u32(0u ^ arg_2.b.x, ~u_input.b)), 91043u), _wgslsmith_clamp_vec4_i32(vec4<i32>(max(-53454i, abs(-1i)), 2147483647i, -(1i >> (u_input.b % 32u)), u_input.a.x), ~arg_2.e, ~(~arg_2.e)));
    global1 = ~max(select(arg_2.b.wy, arg_2.b.wz, select(arg_0, !vec2<bool>(true, arg_0.x), arg_0.x || true)), vec2<u32>(_wgslsmith_mult_u32(arg_2.d, 1u), ~firstLeadingBit(var_3.b.x)));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~var_3.b, ~(vec4<u32>(0u, global1.x, u_input.b, 4294967295u) >> (vec4<u32>(0u, u_input.b, arg_2.d, 4294967295u) % vec4<u32>(32u)))), arg_2.b), var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(countOneBits(global1.x), ~1u)) >> (_wgslsmith_sub_vec2_u32(~abs(vec2<u32>(global1.x, 31199u)), func_5(func_1(global0[_wgslsmith_index_u32(u_input.b, 32u)]), select(false, true, true), global0[_wgslsmith_index_u32(1u, 32u)], vec3<f32>(-1289f, 121f, 1190f))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(35681u, global1.x)), ~vec2<u32>(u_input.b, 0u), ~(vec2<u32>(global1.x, 29596u) & vec2<u32>(1u, 53404u))) << ((_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 30953u), vec2<u32>(20268u, 40382u))) ^ ~select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(38686u, global1.x), true)) % vec2<u32>(32u))), 32u)];
    let var_1 = !any(!vec4<bool>(true, select(false, true, var_0.a.x), !var_0.a.x, u_input.d.x == -8409i));
    global1 = var_0.b.xz;
    let var_2 = Struct_1(var_0.a, abs(var_0.b), var_0.c, abs(u_input.b), vec4<i32>(58039i, _wgslsmith_sub_i32(max(11314i, u_input.d.x), -4827i), var_0.e.x, 0i) >> (~var_0.b % vec4<u32>(32u)));
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, global1.x, select(vec4<i32>(_wgslsmith_dot_vec3_i32(-var_2.e.wxy, max(vec3<i32>(-37311i, 37630i, 2147483647i), var_0.e.wyy)), 33845i, var_0.e.x, abs(-3287i)), reverseBits((var_2.e | vec4<i32>(-1i, var_0.e.x, -4609i, 38840i)) | vec4<i32>(22299i, var_2.e.x, -7242i, u_input.c.x)), all(select(!var_0.a, vec2<bool>(var_0.a.x, var_1), !vec2<bool>(var_1, var_2.a.x)))), vec3<u32>(_wgslsmith_dot_vec3_u32(~var_0.b.wxz, vec3<u32>(var_2.b.x, u_input.b, 1u) ^ var_2.b.xwy), abs(global1.x), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(258f, var_2.c.x, var_0.c.x, var_0.c.x))))) & var_0.b.zxy, _wgslsmith_dot_vec2_i32(vec2<i32>(min(var_0.e.x, max(22288i, 0i)), abs(~u_input.a.x)), ~select(~vec2<i32>(-2147483647i, var_2.e.x), var_0.e.wz << (var_0.b.xw % vec2<u32>(32u)), false)));
}

