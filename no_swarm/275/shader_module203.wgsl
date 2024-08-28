struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-8666i, 109i), vec2<i32>(0i, 38269i), vec2<i32>(2971i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(-18522i, -17763i), vec2<i32>(7238i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(39028i, -1i), vec2<i32>(23608i, 0i), vec2<i32>(71534i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(23919i, i32(-2147483648)), vec2<i32>(2147483647i, 6210i), vec2<i32>(3780i, 0i), vec2<i32>(-53936i, -1127i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -11485i), vec2<i32>(39124i, -305i), vec2<i32>(1i, 26197i), vec2<i32>(0i, 16210i));

var<private> global2: vec2<i32>;

var<private> global3: i32 = -33818i;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_4(arg_3.a, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.d.x))) + arg_1)));
    var var_1 = ~(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 73744u, 4294967295u), u_input.b.x)) ^ ~min(u_input.b.x, var_0.b.c.d.x);
    global2 = ~_wgslsmith_mod_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(global2.x, -2147483647i)) >> (min(var_0.a.c.a, u_input.b.zz) % vec2<u32>(32u))), vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -139i, arg_0.a, -5656i), vec4<i32>(-25504i, 15375i, 0i, global2.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -32814i, arg_0.a, 2147483647i), vec4<i32>(arg_0.a, arg_0.a, 1i, u_input.c.x)))));
    global0 = array<Struct_1, 27>();
    global3 = 0i;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~abs(u_input.b), vec3<u32>(firstTrailingBit(48153u) | arg_3.a.c.d.x, arg_2.c.d.x, _wgslsmith_dot_vec4_u32(select(arg_2.c.d, vec4<u32>(69403u, arg_0.c.d.x, 0u, arg_2.c.a.x), vec4<bool>(true, arg_2.c.c, arg_3.b.b, true)), ~var_0.b.c.d))), u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    let var_0 = arg_0.d.zyz;
    let var_1 = ~3718u << (_wgslsmith_mult_u32(~(~arg_0.a.x | abs(17424u)), ~arg_0.d.x) % 32u);
    var var_2 = vec2<i32>(1i, min(0i, u_input.c.x));
    let var_3 = ~((~50514u | func_3(Struct_5(-32451i, false, Struct_1(var_0.xz, arg_0.b, arg_0.c, arg_0.d)), _wgslsmith_f_op_f32(trunc(-286f)), Struct_3(vec3<bool>(true, true, false), arg_0.b, global0[_wgslsmith_index_u32(var_1, 27u)], vec2<f32>(187f, -1314f)), Struct_4(Struct_3(vec3<bool>(arg_0.b, true, arg_0.b), false, Struct_1(vec2<u32>(4294967295u, 15965u), true, arg_0.b, arg_0.d), vec2<f32>(313f, -375f)), Struct_3(vec3<bool>(false, arg_0.c, true), arg_0.b, Struct_1(var_0.xx, arg_0.c, arg_0.c, arg_0.d), vec2<f32>(-560f, 146f)), -503f))) ^ ~func_3(Struct_5(-53957i, arg_0.c, Struct_1(arg_0.d.xw, arg_0.b, arg_0.b, arg_0.d)), _wgslsmith_div_f32(1378f, 498f), Struct_3(vec3<bool>(true, false, false), true, Struct_1(vec2<u32>(u_input.b.x, 1u), arg_0.c, true, arg_0.d), vec2<f32>(996f, 1000f)), Struct_4(Struct_3(vec3<bool>(arg_0.b, true, false), true, global0[_wgslsmith_index_u32(var_0.x, 27u)], vec2<f32>(-1542f, -1428f)), Struct_3(vec3<bool>(false, true, arg_0.b), false, Struct_1(vec2<u32>(76287u, 12717u), arg_0.b, true, arg_0.d), vec2<f32>(640f, 1000f)), 1000f)));
    let var_4 = false;
    return select(!vec2<bool>(any(vec3<bool>(true, true, arg_0.c)) & all(vec4<bool>(false, var_4, var_4, true)), !var_4), !vec2<bool>(~15896i == _wgslsmith_clamp_i32(-199i, 1i, 32966i), arg_0.c), !any(select(!vec4<bool>(false, var_4, arg_0.c, arg_0.b), select(vec4<bool>(arg_0.c, var_4, true, var_4), vec4<bool>(arg_0.b, false, true, true), vec4<bool>(arg_0.b, true, arg_0.c, false)), true)));
}

fn func_1(arg_0: i32, arg_1: u32) -> i32 {
    var var_0 = all(select(vec2<bool>(!all(vec4<bool>(false, true, true, true)), false), select(func_2(global4[_wgslsmith_index_u32(~48360u, 24u)], max(0i, 2147483647i)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), false));
    var var_1 = u_input.b.x;
    var_1 = 8716u;
    let var_2 = Struct_1(vec2<u32>(arg_1, 4294967295u), any(vec4<bool>(false, select(true, any(vec2<bool>(true, true)), true), true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)))), !((abs(global2.x) >> (_wgslsmith_sub_u32(arg_1, arg_1) % 32u)) != _wgslsmith_mod_i32(countOneBits(u_input.c.x), -arg_0)), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_mult_u32(arg_1, 76117u)), select(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, arg_1), vec3<u32>(50448u, 49065u, 4294967295u)), true)), ~u_input.b.x, ~_wgslsmith_sub_u32(arg_1, 4294967295u)));
    global2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c.x >> (arg_1 % 32u), 31743i), i32(-1i) * -max(u_input.c.x, 31750i)), _wgslsmith_sub_vec2_i32(min(vec2<i32>(-53512i << (1u % 32u), ~(-67087i)), vec2<i32>(29176i, ~arg_0)), vec2<i32>(2484i, arg_0)));
    return -14109i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 0i, 11882i, 5512i), vec4<i32>(7255i, u_input.c.x, global2.x, u_input.c.x))), select(firstLeadingBit(vec4<i32>(10593i, global2.x, 0i, global2.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, global2.x, 1i, -36278i), vec4<i32>(43908i, u_input.c.x, global2.x, -2147483647i)), vec4<bool>(true, true, true, true)))), -min(min(vec4<i32>(global2.x, u_input.c.x, u_input.c.x, global2.x), vec4<i32>(1i, 0i, global2.x, 1i)) << (vec4<u32>(8791u, u_input.a, u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, func_1(u_input.c.x, u_input.b.x), _wgslsmith_sub_i32(u_input.c.x, 5316i), u_input.c.x)));
    var var_0 = Struct_3(!select(vec3<bool>(true, u_input.b.x >= u_input.b.x, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true), func_3(Struct_5(u_input.c.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(238f, 1939f)), Struct_3(vec3<bool>(true, true, true), true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 27u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, 209f))), Struct_4(Struct_3(vec3<bool>(false, false, false), false, global4[_wgslsmith_index_u32(u_input.a, 24u)], vec2<f32>(-1227f, 1000f)), Struct_3(vec3<bool>(false, true, true), true, Struct_1(u_input.b.xz, true, false, vec4<u32>(u_input.b.x, 3923u, 0u, u_input.b.x)), vec2<f32>(562f, 463f)), -109f)) == max(u_input.a, ~_wgslsmith_mult_u32(u_input.a, u_input.a)), global0[_wgslsmith_index_u32(~u_input.a, 27u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-324f, -590f))));
    var var_1 = !vec4<bool>(!var_0.a.x, 32425u < ~countOneBits(var_0.c.a.x), any(vec4<bool>(false, all(vec4<bool>(var_0.c.c, var_0.b, true, false)), var_0.d.x >= var_0.d.x, any(vec4<bool>(var_0.c.b, true, true, var_0.a.x)))), !(any(vec4<bool>(true, var_0.c.b, false, var_0.b)) && true));
    global2 = vec2<i32>(1i, _wgslsmith_mod_i32(~(~6337i), u_input.c.x));
    global1 = array<vec2<i32>, 21>();
    var_0 = Struct_3(vec3<bool>(true, ~(-global2.x) > -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, global2.x), vec3<i32>(16711i, 34033i, 18048i)), !var_1.x), _wgslsmith_clamp_u32(firstLeadingBit(var_0.c.a.x), ~(~u_input.a), ~1u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, countOneBits(var_0.c.d.x), 0u), select(vec4<u32>(u_input.b.x, 95570u, var_0.c.d.x, var_0.c.d.x), var_0.c.d, false)), global4[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.c.a.x, u_input.a >> (u_input.b.x % 32u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.a.x, 10772u), _wgslsmith_mult_vec2_u32(var_0.c.a, vec2<u32>(12988u, var_0.c.a.x)))), ~firstTrailingBit(var_0.c.a.x) >> (min(var_0.c.d.x, var_0.c.a.x) % 32u)), 24u)], _wgslsmith_f_op_vec2_f32(var_0.d - vec2<f32>(_wgslsmith_f_op_f32(1833f * _wgslsmith_f_op_f32(round(var_0.d.x))), var_0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(90282u, 21u)], ~u_input.c.xy), _wgslsmith_f_op_f32(f32(-1f) * -116f));
}

