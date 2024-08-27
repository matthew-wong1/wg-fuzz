struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(-1000f, 394f, -1000f), 0u, -819f, Struct_2(vec2<u32>(1u, 8875u), -327f, vec3<bool>(true, true, true), vec3<i32>(17057i, 2147483647i, 30475i), vec3<bool>(true, true, false)));

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(-5381i), Struct_3(11240i), Struct_3(i32(-2147483648)));

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-1i, 60664i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 0i), vec2<i32>(24934i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(24431i, 2147483647i), vec2<i32>(-236i, -10250i), vec2<i32>(-63983i, 6384i), vec2<i32>(20607i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-22454i, 1i), vec2<i32>(25743i, -21605i), vec2<i32>(2147483647i, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = firstTrailingBit(_wgslsmith_add_u32(u_input.e.x, 35041u));
    global0 = Struct_4(vec3<f32>(-2064f, 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-259f)), global0.c, !arg_1.x))), global0.b & (_wgslsmith_mod_u32(arg_0.x, var_0) << (~37134u % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.b * -436f), global0.a.x), -1569f)), Struct_2(~arg_0, global0.c, global0.d.e, max(vec3<i32>(global0.d.d.x, global0.d.d.x | global0.d.d.x, ~2147483647i), select(global0.d.d, u_input.d.yxw & global0.d.d, all(arg_1))), select(!(!global0.d.e), select(arg_1.wxz, select(arg_1.ywz, global0.d.c, true), global0.d.c), vec3<bool>(false, arg_1.x, all(vec4<bool>(global0.d.e.x, true, global0.d.c.x, global0.d.e.x))))));
    global1 = array<Struct_3, 3>();
    let var_1 = u_input.e.zx;
    var var_2 = global0.d;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1907f, -851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c)) * 1200f)) + _wgslsmith_f_op_f32(923f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f + var_2.b)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(60359u, ~(~u_input.e.x << (4294967295u % 32u)), select(101392u, 4294967295u, global0.d.e.x), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8890u, 16803u, 7033u, global0.b), vec4<u32>(global0.d.a.x, global0.d.a.x, u_input.a.x, global0.b)), ~20191u))), ~vec4<u32>(~_wgslsmith_div_u32(u_input.c.x, 10811u), select(4294967295u, 1u, global0.d.e.x) ^ _wgslsmith_dot_vec3_u32(u_input.b, u_input.c), u_input.c.x, abs(1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(513f)), _wgslsmith_f_op_f32(abs(895f)))) - _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, var_0.x), vec4<bool>(global0.d.c.x, global0.d.e.x, global0.d.c.x, global0.d.c.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a.xy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.a.zz - global0.a.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(235f, -492f) * global0.a.yy), any(vec3<bool>(global0.d.e.x, global0.d.c.x, global0.d.e.x)))), global0.d.c.zz)) + global0.a.zx));
    let var_2 = ~(_wgslsmith_div_i32(5722i, _wgslsmith_dot_vec3_i32(global0.d.d, arg_3.wxz)) | 22037i) << (select(_wgslsmith_clamp_u32(1u, var_0.x, ~(26241u >> (1u % 32u))), u_input.e.x, true) % 32u);
    var var_3 = global1[_wgslsmith_index_u32(5488u, 3u)];
    global2 = array<vec2<i32>, 14>();
    return Struct_2(_wgslsmith_add_vec2_u32(var_0.xw, ~global0.d.a), _wgslsmith_f_op_f32(var_1.x - 449f), global0.d.c, ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.d.x, var_3.a, -53831i), vec3<i32>(-43122i, 33140i, 1i) << (vec3<u32>(98487u, 4294967295u, u_input.b.x) % vec3<u32>(32u))), var_2, arg_1.x << ((u_input.a.x ^ var_0.x) % 32u)), global0.d.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> Struct_5 {
    let var_0 = arg_0.e.x;
    var var_1 = var_0;
    let var_2 = func_2(func_2((vec3<i32>(arg_0.d.x, arg_2.d.x, arg_1.a) & u_input.d.yxx) | ~u_input.d.www, u_input.d.xxx, _wgslsmith_f_op_f32(-global0.d.b), u_input.d).d ^ arg_0.d, vec3<i32>(~(_wgslsmith_mult_i32(-1i, global0.d.d.x) ^ -51071i), countOneBits(u_input.d.x), -firstLeadingBit(_wgslsmith_sub_i32(global0.d.d.x, 4778i))), _wgslsmith_f_op_f32(func_3(arg_2.a, vec4<bool>(!arg_2.e.x, global0.d.c.x, _wgslsmith_f_op_f32(select(-291f, -836f, true)) < 442f, false))), reverseBits(countOneBits(-abs(vec4<i32>(-7304i, u_input.d.x, 9058i, arg_1.a))))).d.x;
    global1 = array<Struct_3, 3>();
    global2 = array<vec2<i32>, 14>();
    return Struct_5(vec2<u32>(~select(~4294967295u, 4294967295u, all(arg_2.c)), 4294967295u));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(528f)), -1968f, _wgslsmith_f_op_f32(min(global0.d.b, global0.c)), _wgslsmith_f_op_f32(-global0.a.x))))), vec3<u32>(17214u, arg_0.a.x, 4294967295u), select(select(!global0.d.e, global0.d.c, global0.d.a.x <= (global0.b | 34533u)), !(!select(global0.d.e, global0.d.e, global0.d.c)), !select(global0.d.c, vec3<bool>(arg_2, false, global0.d.e.x), global0.d.e.x & arg_2)));
    var var_1 = min(firstLeadingBit(~arg_0.a), countOneBits(~vec2<u32>(global0.d.a.x | 1u, ~71530u)));
    let var_2 = _wgslsmith_dot_vec2_u32(~(global0.d.a << (~vec2<u32>(u_input.c.x, global0.d.a.x) % vec2<u32>(32u))), var_0.b.xz);
    var var_3 = 842f;
    let var_4 = -1i;
    return func_4(Struct_2(~(vec2<u32>(102825u, 36903u) ^ vec2<u32>(1u, var_0.b.x)) | vec2<u32>(_wgslsmith_mod_u32(global0.d.a.x, u_input.c.x), ~1819u), 178f, vec3<bool>(true, all(vec2<bool>(false, true)), (global0.d.b >= 401f) && global0.d.c.x), -global0.d.d, var_0.c), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(var_2 & var_0.b.x) | var_1.x, ~_wgslsmith_mult_u32(var_1.x, 4294967295u) | var_1.x), 3u)], global0.d);
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = global0.d;
    global1 = array<Struct_3, 3>();
    var var_1 = ~u_input.d.x;
    let var_2 = func_5(func_4(Struct_2(u_input.e.xy, 163f, vec3<bool>(all(vec4<bool>(true, false, false, true)), arg_0 && global0.d.e.x, arg_0), -vec3<i32>(-32152i, global0.d.d.x, 86279i), select(global0.d.e, vec3<bool>(var_0.e.x, arg_0, global0.d.e.x), true)), global1[_wgslsmith_index_u32(global0.d.a.x & ~(~var_0.a.x), 3u)], func_2(u_input.d.zxx, global0.d.d, var_0.b, ~_wgslsmith_sub_vec4_i32(u_input.d, u_input.d))), global0.d.d.x, !(!((global0.d.c.x & true) && (false || var_0.c.x))));
    global2 = array<vec2<i32>, 14>();
    return global0.d.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(~(~vec4<u32>(0u, global0.d.a.x, 0u, u_input.c.x)), vec4<u32>(~u_input.c.x, u_input.e.x, u_input.b.x >> (30866u % 32u), _wgslsmith_dot_vec2_u32(u_input.e.zx, u_input.b.xy)), select(!vec4<bool>(global0.d.c.x, true, global0.d.e.x, global0.d.c.x), vec4<bool>(true, true, true, true), global0.d.e.x)) >> (vec4<u32>(u_input.a.x, u_input.c.x, 44655u, ~(~global0.b) & 35382u) % vec4<u32>(32u));
    let var_1 = Struct_3(_wgslsmith_mult_i32(-(~1i), u_input.d.x));
    let var_2 = vec3<bool>(func_1(false), true, global0.d.c.x | global0.d.e.x);
    let var_3 = func_2(global0.d.d, vec3<i32>(-29421i, global0.d.d.x, -var_1.a) >> (select(vec3<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(global0.d.a.x, 4294967295u), var_0.x), reverseBits(select(u_input.a, var_0.zxz, var_2)), !vec3<bool>(var_2.x, global0.d.e.x, true)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x * 308f))) - _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, 4294967295u), vec4<bool>(global0.d.c.x, true, global0.d.e.x, var_2.x)))), func_2(vec3<i32>(u_input.d.x, 1i, _wgslsmith_dot_vec2_i32(u_input.d.ww, vec2<i32>(global0.d.d.x, 0i))), u_input.d.wzw, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-382f - 1276f))), abs(u_input.d)).b, global0.d.e.x)), vec4<i32>(reverseBits(min(min(var_1.a, -2147483647i), u_input.d.x)), ~max(_wgslsmith_clamp_i32(global0.d.d.x, u_input.d.x, var_1.a), var_1.a), func_2(vec3<i32>(_wgslsmith_add_i32(-1i, var_1.a), var_1.a, abs(-24453i)), global0.d.d << ((var_0.wxw & u_input.e) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-global0.d.b), vec4<i32>(var_1.a, 0i, 1i, var_1.a) ^ -u_input.d).d.x, var_1.a));
    var var_4 = func_2(vec3<i32>(_wgslsmith_div_i32(~(-var_1.a), -37447i), func_2((global0.d.d << (vec3<u32>(var_3.a.x, 1u, var_3.a.x) % vec3<u32>(32u))) ^ global0.d.d, -vec3<i32>(var_1.a, -42032i, -23493i) << (~vec3<u32>(46105u, var_0.x, 1u) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-133f * 216f), _wgslsmith_f_op_f32(var_3.b + var_3.b)), -firstLeadingBit(vec4<i32>(u_input.d.x, var_1.a, -45215i, u_input.d.x))).d.x, var_1.a), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(firstLeadingBit(var_1.a), var_3.d.x), _wgslsmith_add_i32(~var_1.a, 11842i)), 28064i, _wgslsmith_div_i32(47689i, min(abs(-7392i), global0.d.d.x))), -357f, u_input.d).e.xy;
    var var_5 = !var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_i32(~_wgslsmith_mod_i32(-51318i, 1830i), abs(1i)), reverseBits(_wgslsmith_mult_i32(2147483647i, -28985i ^ u_input.d.x)), !(!any(vec4<bool>(var_3.e.x, true, var_2.x, var_4.x)))), _wgslsmith_dot_vec3_i32(abs(reverseBits(vec3<i32>(var_1.a, var_1.a, var_1.a))), global0.d.d), vec4<u32>(0u, _wgslsmith_div_u32(var_3.a.x, _wgslsmith_clamp_u32(var_3.a.x << (var_3.a.x % 32u), global0.b, 1u)), var_3.a.x, global0.d.a.x));
}

