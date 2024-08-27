struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_4, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    global2 = array<Struct_4, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1075f, 1421f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(871f, -207f))))))))));
    var var_1 = global1.x;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-197f, var_0.x), -1000f)) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-625f, -390f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-907f, -825f) * vec2<f32>(var_0.x, var_0.x)), select(vec2<bool>(false, false), vec2<bool>(true, true), false))))), vec2<f32>(_wgslsmith_f_op_f32(-999f - _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), -554f)))), true | (577f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), -368f)))));
    return vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(-13266i, 13992i, 9296i, -41903i)), vec4<i32>(countOneBits(-2055i), 61954i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(35102i, -2147483647i, -1i), vec3<i32>(38233i, 0i, -2147483647i)))), -28585i, min(abs(-13847i), -38232i)) | ~(~vec4<i32>(_wgslsmith_div_i32(1i, -1i), 5512i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2583i, 94173i, 2147483647i), vec3<i32>(1i, -9615i, -1i)), 1i));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.a.x;
    let var_1 = reverseBits(~(~(~vec4<i32>(arg_0.d.x, arg_0.b, arg_0.d.x, arg_0.b)))) | (abs(~func_3()) | _wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, -2147483647i, -1i, 1i), vec4<i32>(arg_0.d.x, -2147483647i, arg_0.b, arg_0.b)), ~(vec4<i32>(arg_0.d.x, arg_0.b, 1i, -46024i) >> (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(~arg_0.b, -22520i, abs(1i), _wgslsmith_sub_i32(arg_0.b, 2147483647i))));
    var var_2 = ~vec3<i32>(arg_0.b, abs(-16016i), -61778i);
    var var_3 = 1248f;
    return Struct_2(-594f, 36193u, Struct_1(27764i, 0i, _wgslsmith_f_op_f32(-1f), ~(var_2.zx ^ vec2<i32>(1i, arg_0.b)) << ((u_input.a.zz >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_1(~(-41013i | _wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(1995i, arg_0.d.x))), -27603i, _wgslsmith_f_op_f32(sign(611f)), var_1.yw), firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.x, 19877u, 14139u), vec4<u32>(30986u, u_input.a.x, u_input.a.x, u_input.a.x)) ^ (vec4<u32>(4369u, 4294967295u, u_input.a.x, global1.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(31956u, global1.x, global1.x, global1.x), vec4<u32>(global1.x, global1.x, u_input.a.x, 303u), vec4<u32>(89994u, global1.x, 1u, 4294967295u)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = func_2(Struct_3(vec2<bool>(false, false), reverseBits(-(~arg_1.x)), !(!(!vec4<bool>(false, true, false, arg_0))), _wgslsmith_mod_vec3_i32(reverseBits(~vec3<i32>(arg_1.x, arg_1.x, arg_1.x)), ~(vec3<i32>(-2147483647i, arg_1.x, 1i) << (vec3<u32>(1u, arg_2, u_input.a.x) % vec3<u32>(32u))))));
    var var_2 = global2[_wgslsmith_index_u32(var_1.e.x, 20u)];
    var var_3 = arg_1.x;
    let var_4 = !(!vec2<bool>(false, any(vec2<bool>(arg_0, true))));
    return var_2.b.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<u32> {
    global2 = array<Struct_4, 20>();
    var var_0 = func_2(Struct_3(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), ~(-2147483647i), vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)), !(u_input.a.x >= arg_2.x), false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), vec3<i32>(i32(-1i) * -2147483647i, arg_1.c.d.x, -2147483647i << (arg_1.b % 32u)))).d;
    global0 = array<Struct_4, 11>();
    return func_2(Struct_3(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), var_0.b, !select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), true), vec3<i32>(-max(arg_1.d.b, arg_1.d.d.x), ~30498i, arg_1.c.d.x))).e;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 20>();
    global2 = array<Struct_4, 20>();
    global0 = array<Struct_4, 11>();
    global1 = vec4<u32>(global1.x, _wgslsmith_mult_u32(min(u_input.a.x, ~(~1u)), global1.x), reverseBits(~reverseBits(~0u)), ~(~global1.x) | ~_wgslsmith_mod_u32(1u, 4294967295u | u_input.a.x));
    global1 = ~abs(countOneBits(abs(~vec4<u32>(23263u, u_input.a.x, 1u, global1.x))));
    var var_0 = countOneBits(~vec3<u32>(_wgslsmith_mod_u32(global1.x, u_input.a.x), u_input.a.x, ~119244u) & vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~global1.wwz, ~u_input.a), 1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-984f, 176f) - _wgslsmith_f_op_f32(184f * -1245f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f - 1258f) - _wgslsmith_f_op_f32(max(-784f, 150f))), -1000f) * vec3<f32>(_wgslsmith_f_op_f32(1226f - _wgslsmith_f_op_f32(step(524f, 359f))), 1f, _wgslsmith_f_op_f32(-351f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = global1.yyz;
    global1 = func_4(Struct_2(-406f, abs(max(global1.x, u_input.a.x)), func_1(select(false, true, true), -vec2<i32>(1i, 17997i), _wgslsmith_dot_vec4_u32(vec4<u32>(54066u, var_0.x, 1u, 19267u), vec4<u32>(var_0.x, var_0.x, var_0.x, 111388u)) << (0u % 32u)), func_2(Struct_3(select(vec2<bool>(false, true), vec2<bool>(true, true), false), _wgslsmith_mod_i32(-52108i, -17221i), vec4<bool>(false, false, false, false), func_3().yyw)).d, min(~min(vec4<u32>(u_input.a.x, 4294967295u, global1.x, 0u), vec4<u32>(10487u, 76438u, 0u, global1.x)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(2282u, global1.x, var_0.x, global1.x), vec4<u32>(17315u, u_input.a.x, var_0.x, var_0.x)), firstLeadingBit(vec4<u32>(1u, var_0.x, u_input.a.x, var_0.x)), vec4<bool>(true, false, true, false)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(723f, var_1.x, false)) + _wgslsmith_f_op_f32(sign(1008f)))), u_input.a.x, func_2(Struct_3(vec2<bool>(true, true), ~19509i, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), -vec3<i32>(-2147483647i, 0i, -31911i))).d, func_1((var_1.x < -217f) && true, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), func_1(true, vec2<i32>(22937i, -1i), 4294967295u).d), 0u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), global1.ww) << (27952u % 32u), firstLeadingBit(4294967295u), min(9567u, 45382u) | u_input.a.x, global1.x)), firstLeadingBit(((vec3<u32>(u_input.a.x, 1u, var_0.x) >> (vec3<u32>(13817u, 10603u, u_input.a.x) % vec3<u32>(32u))) >> (global1.yyy % vec3<u32>(32u))) ^ ~(~vec3<u32>(var_0.x, var_0.x, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -551f, var_1.x, -1064f))) + vec4<f32>(-379f, 2201f, 685f, 1050f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1362f)), func_2(Struct_3(vec2<bool>(true, false), 0i, vec4<bool>(true, false, true, true), vec3<i32>(36417i, -2147483647i, -2147483647i))).d.c, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -315f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(365f, var_1.x, var_1.x, 543f) * vec4<f32>(var_1.x, var_1.x, var_1.x, 454f)))), vec4<bool>((2147483647i << (var_0.x % 32u)) > -7005i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-4333i, 22406i, 2147483647i)) == _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -14741i), vec3<i32>(13141i, 2147483647i, -1i)), false, select(false, any(vec4<bool>(true, true, true, true)), true)))), vec3<u32>(_wgslsmith_dot_vec4_u32(min(func_2(Struct_3(vec2<bool>(false, false), 4293i, vec4<bool>(false, false, true, false), vec3<i32>(0i, 2147483647i, -2147483647i))).e, ~vec4<u32>(0u, 7197u, 1u, global1.x)), ~max(vec4<u32>(global1.x, 11340u, 1u, u_input.a.x), vec4<u32>(39805u, 83657u, global1.x, 1u))), select(23367u, global1.x, true), _wgslsmith_mult_u32(15350u, u_input.a.x)));
}

