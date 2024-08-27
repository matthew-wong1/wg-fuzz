struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(1i, -1i, 2147483647i, 16988i), vec4<i32>(-22972i, 0i, 1i, -1i), vec4<i32>(i32(-2147483648), 9681i, 47375i, 17144i), vec4<i32>(59320i, i32(-2147483648), 53224i, -17104i), vec4<i32>(38367i, 6145i, i32(-2147483648), 11134i), vec4<i32>(-16275i, -1i, -32338i, 39594i), vec4<i32>(6862i, -3415i, 2147483647i, 27033i), vec4<i32>(2147483647i, -14099i, 1i, -1i), vec4<i32>(-43869i, 0i, -30982i, -27210i), vec4<i32>(2147483647i, 5951i, -2562i, 1i), vec4<i32>(17064i, -1i, -2654i, 0i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_4(select(vec3<bool>(all(vec3<bool>(arg_0, true, arg_0)), any(select(vec2<bool>(false, true), vec2<bool>(true, arg_0), arg_0)), (arg_0 | arg_0) | select(arg_0, true, arg_0)), !select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false)), select(vec3<bool>(false, true, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, false)), vec3<bool>(false, false, arg_0)), true));
    var var_1 = Struct_1(-40007i, !(!var_0.a));
    var_1 = Struct_1(u_input.b, var_1.b);
    var var_2 = _wgslsmith_mod_vec2_u32(min(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), u_input.a), _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(arg_1, 0u))), ~vec2<u32>(1u, 44101u) ^ (u_input.a | u_input.a)) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), ~(~(reverseBits(vec2<u32>(u_input.c, 104851u)) ^ u_input.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1121f, -2908f)) - 1f) - _wgslsmith_f_op_f32(abs(-266f))), 927f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1673f - -1076f)), _wgslsmith_f_op_f32(f32(-1f) * -1298f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-521f, -255f) + vec2<f32>(-593f, 1000f))))));
    return vec2<i32>(u_input.b, abs(_wgslsmith_div_i32(0i, countOneBits(-1i))));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = -(~(_wgslsmith_mod_vec2_i32(func_3(false, 24591u), func_3(false, u_input.d)) | (-vec2<i32>(16443i, u_input.b) ^ vec2<i32>(u_input.b, u_input.b))));
    global0 = array<vec4<i32>, 11>();
    var var_1 = Struct_4(arg_0.a);
    var var_2 = var_1.a.x;
    var var_3 = 1i;
    return Struct_1(_wgslsmith_div_i32(~func_3(all(vec2<bool>(arg_0.a.x, false)), ~44859u).x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 0i, -9793i), global0[_wgslsmith_index_u32(1u, 11u)]) | u_input.b), arg_0.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1267f;
    var var_1 = !func_2(Struct_4(vec3<bool>(any(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x)), arg_0.b.x, false))).b;
    var_1 = vec3<bool>((arg_0.a >> (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)) <= arg_0.a, !arg_0.b.x, false);
    var var_2 = abs(vec3<u32>(u_input.c, countOneBits(0u), ~_wgslsmith_div_u32(31846u, u_input.a.x))) << (_wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(3454u, 5361u, u_input.a.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.a.x), vec3<u32>(13164u, u_input.c, 1u)))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_mult_u32((u_input.a.x << (_wgslsmith_clamp_u32(0u, u_input.d, 1u) % 32u)) ^ _wgslsmith_div_u32(1u, abs(47334u)), _wgslsmith_sub_u32(54275u, var_2.x) | _wgslsmith_add_u32(var_2.x, var_2.x)), u_input.a.x);
    return func_2(Struct_4(select(!func_2(Struct_4(vec3<bool>(var_1.x, false, arg_0.b.x))).b, vec3<bool>(false, false, func_2(Struct_4(vec3<bool>(true, arg_0.b.x, arg_0.b.x))).b.x), true)));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)));
    let var_1 = Struct_1(-2147483647i, select(vec3<bool>(!(arg_2.x && false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_3, 0i, u_input.b), vec4<i32>(0i, -2147483647i, 11849i, arg_3)) >= u_input.b, false & (false & arg_0)), select(vec3<bool>(true, arg_2.x == arg_2.x, true), !vec3<bool>(arg_0, arg_2.x, arg_2.x), !select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(true, arg_0, arg_0), arg_0)), select(vec3<bool>(arg_2.x || true, true, any(vec3<bool>(arg_2.x, false, true))), !vec3<bool>(true, arg_0, arg_2.x), vec3<bool>(true, true, true))));
    var var_2 = Struct_2(func_4(func_2(Struct_4(var_1.b))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, u_input.d, 36345u, 0u), vec4<u32>(u_input.c, u_input.d, arg_1.x, u_input.a.x) | vec4<u32>(4246u, 44141u, 4294967295u, arg_1.x), max(vec4<u32>(u_input.d, 10626u, u_input.a.x, u_input.c), vec4<u32>(4294967295u, u_input.d, 1u, 0u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37657u, arg_1.x, 4294967295u, 0u), vec4<u32>(109266u, arg_1.x, 116693u, u_input.c)), 1u >> (u_input.d % 32u), arg_1.x, u_input.a.x)) << (select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, u_input.c, 46017u), vec4<u32>(0u, u_input.d, arg_1.x, u_input.d)), ~select(vec4<u32>(u_input.d, u_input.a.x, 4294967295u, 6058u), vec4<u32>(38670u, u_input.d, 52337u, arg_1.x), vec4<bool>(true, arg_2.x, var_1.b.x, arg_2.x)), !select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, false, false, false), true)) % vec4<u32>(32u)));
    let var_3 = Struct_4(!func_4(Struct_1(-37345i, select(vec3<bool>(var_1.b.x, true, false), var_2.a.b, vec3<bool>(false, var_2.a.b.x, true)))).b);
    var var_4 = Struct_3(var_2.a, Struct_1(_wgslsmith_mult_i32(~(i32(-1i) * -1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(10505i, var_1.a), vec2<i32>(-1i, u_input.b))), !vec3<bool>(any(vec4<bool>(false, true, false, false)), arg_0, !arg_2.x)), var_2.a.b.x, var_2.b.x, func_2(Struct_4(select(var_2.a.b, !vec3<bool>(var_2.a.b.x, true, arg_0), !var_3.a.x))));
    return Struct_3(func_4(var_2.a), var_4.e, any(select(select(var_4.b.b.yz, !vec2<bool>(var_1.b.x, false), func_4(var_2.a).b.x), !vec2<bool>(false, arg_2.x), func_2(Struct_4(vec3<bool>(false, arg_2.x, true))).b.zz)), _wgslsmith_mod_u32(~(~u_input.c), ~_wgslsmith_dot_vec2_u32(u_input.a, var_2.b.yx)) << (_wgslsmith_dot_vec4_u32(var_2.b, select(var_2.b, _wgslsmith_div_vec4_u32(var_2.b, var_2.b), !var_1.b.x)) % 32u), Struct_1(42396i, vec3<bool>(abs(u_input.d) <= 0u, true, false)));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec3<bool>(arg_0.c, func_1(!(43000u < u_input.d), ~u_input.a, !arg_0.a.b.yy, -70945i & u_input.b).a.b.x & false, arg_0.c);
    global0 = array<vec4<i32>, 11>();
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(5291i, -50479i)), arg_0.e.a, 66041i, _wgslsmith_add_i32(~2147483647i, _wgslsmith_add_i32(arg_0.a.a, 1i))), vec4<i32>(-firstLeadingBit(u_input.b), max(-1848i, firstLeadingBit(0i)), ~u_input.b, arg_0.e.a)) | vec4<i32>(select(u_input.b, u_input.b, false), _wgslsmith_add_i32(1i, select(arg_0.a.a, -4330i & arg_0.b.a, all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), 1i, arg_0.b.a | 0i);
    global0 = array<vec4<i32>, 11>();
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(countOneBits(var_1 & (var_1 ^ global0[_wgslsmith_index_u32(0u, 11u)])), vec4<i32>(-var_1.x, countOneBits(~arg_0.a.a), var_1.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(4170i, var_1.x, u_input.b, var_1.x), vec4<i32>(0i, u_input.b, 47956i, u_input.b)))), -2147483647i);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 11>();
    let var_0 = vec4<u32>(u_input.c, abs(_wgslsmith_mod_u32(u_input.a.x, u_input.d)), ~4294967295u ^ _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec2_u32(u_input.a, reverseBits(u_input.a))), 39865u);
    let var_1 = false;
    global0 = array<vec4<i32>, 11>();
    var var_2 = func_5(func_1(all(select(vec4<bool>(true, var_1, false, false), vec4<bool>(var_1, false, true, true), true)), vec2<u32>(firstLeadingBit(u_input.a.x), countOneBits(~u_input.a.x)), !select(!vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), false), u_input.b));
    let var_3 = Struct_4(var_2.a.b);
    var var_4 = false;
    var_2 = Struct_3(Struct_1(~(u_input.b << (17723u % 32u)), !func_1(var_2.e.a != var_2.e.a, u_input.a, var_2.e.b.zy, 1i).b.b), var_2.e, ~var_0.x < ~(~(~4294967295u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_2.d, 58287u)), ~var_0.xx), ~abs(~0u), 0u), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(1i, -1i ^ var_2.b.a, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5223u) | min(vec2<u32>(0u, 0u), var_0.yz), _wgslsmith_add_vec2_u32(u_input.a | vec2<u32>(24809u, 28156u), vec2<u32>(var_2.d, u_input.a.x) >> (vec2<u32>(u_input.a.x, 16227u) % vec2<u32>(32u))))), 11u)], -((~vec2<i32>(var_2.a.a, 0i) | -vec2<i32>(68631i, 5994i)) ^ countOneBits(vec2<i32>(u_input.b, u_input.b))), vec2<i32>(u_input.b, -68125i));
}

