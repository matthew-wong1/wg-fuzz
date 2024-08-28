struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(2942i, -14754i, -1i, 34616i), vec4<i32>(-1i, 35845i, 46841i, 1i), vec4<i32>(0i, 3828i, 3407i, -1i), vec4<i32>(31789i, -37005i, i32(-2147483648), -12260i), vec4<i32>(-36386i, -20065i, 0i, 94029i), vec4<i32>(-74693i, -69555i, 0i, -6098i), vec4<i32>(1i, 6385i, 28415i, 34002i), vec4<i32>(11226i, 20532i, 0i, 48977i), vec4<i32>(32408i, i32(-2147483648), -36143i, -45432i), vec4<i32>(i32(-2147483648), -17886i, 19066i, 0i), vec4<i32>(0i, 1i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), 15540i, 41086i, 38035i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -8002i), vec4<i32>(1i, -24893i, 0i, -1i), vec4<i32>(-14202i, 51086i, -25104i, 0i), vec4<i32>(1i, 1i, 12870i, -79556i), vec4<i32>(1i, 0i, i32(-2147483648), 19529i), vec4<i32>(1i, 11890i, -80434i, -18518i), vec4<i32>(-13377i, 9503i, 50942i, -1i), vec4<i32>(0i, 1i, i32(-2147483648), 99765i), vec4<i32>(2959i, 1527i, -46442i, -43282i), vec4<i32>(12933i, 42339i, 0i, -1i), vec4<i32>(29437i, -4363i, 30762i, 1i), vec4<i32>(328i, -17028i, -1i, 7285i), vec4<i32>(-1i, 1i, -1i, 1i), vec4<i32>(106318i, 0i, 1i, -9266i), vec4<i32>(6021i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(10897i, 18634i, 1i, -32094i), vec4<i32>(i32(-2147483648), 37319i, 1i, -21707i));

var<private> global1: i32 = 63245i;

var<private> global2: array<f32, 16> = array<f32, 16>(1000f, -1682f, -525f, 246f, -1497f, -2248f, 450f, -1273f, 100f, -389f, -139f, -1405f, -1000f, -767f, -1000f, -405f);

var<private> global3: Struct_4 = Struct_4(Struct_3(vec3<u32>(30231u, 1u, 32153u)), vec2<i32>(32523i, i32(-2147483648)), 31822i, 8793i);

var<private> global4: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> f32 {
    global2 = array<f32, 16>();
    var var_0 = Struct_4(Struct_3(max(select(~arg_1.a.a, _wgslsmith_sub_vec3_u32(global3.a.a, arg_0), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), vec3<u32>(1u, arg_3, u_input.c.x))), u_input.b.xx, -(select(_wgslsmith_mult_i32(arg_1.d, -1i), 1i, 4294967295u > arg_1.a.a.x) | u_input.b.x), -8650i);
    let var_1 = Struct_2(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~28884u, var_0.a.a.x), ~(~arg_0.xz)), 29u)], any(vec3<bool>(any(vec3<bool>(true, false, false)), ~0u >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.x, var_0.a.a.x, u_input.c.x), arg_0), all(vec4<bool>(true, true, false, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(81143u, 16u)])), -102f) + _wgslsmith_f_op_f32(trunc(-514f))), vec3<u32>(arg_1.a.a.x | arg_1.a.a.x, ~(var_0.a.a.x | arg_1.a.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a.a.x, arg_0.x, arg_2), vec4<u32>(1u, arg_1.a.a.x, arg_0.x, arg_1.a.a.x))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(12814u, reverseBits(global3.a.a.x)), 16u)]), select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] >= -812f, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(0u ^ arg_1.a.a.x, 16u)]))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~arg_1.d, select(-36219i | global3.b.x, ~arg_1.b.x, select(true, true, true))), _wgslsmith_sub_i32(-1i, global3.c)));
    global2 = array<f32, 16>();
    global4 = all(!vec4<bool>(var_1.b, !any(vec3<bool>(var_1.b, var_1.c.d.x, true)), var_1.b, !var_1.b));
    return global2[_wgslsmith_index_u32(~1u, 16u)];
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    global1 = global3.b.x;
    var var_0 = Struct_2(_wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(~global0[_wgslsmith_index_u32(u_input.d.x, 29u)], -vec4<i32>(arg_0, global3.c, -26644i, -2147483647i)), vec4<i32>(global3.c, firstTrailingBit(global3.d), 1i, 37526i)), arg_1, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(u_input.c.x, 1u, 542u)), Struct_4(global3.a, u_input.b.xy, arg_0, 1328i), _wgslsmith_mult_u32(101718u, u_input.a), global3.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-713f))))), ~vec3<u32>(17398u, 40322u, 37413u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.a.a.x, 16u)] - -976f)))), vec2<bool>(false, true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(41829u >> (u_input.a % 32u), countOneBits(global3.a.a.x), ~6582u), _wgslsmith_div_u32(4294967295u | global3.a.a.x, 1u)), 16u)]), -abs(37984i));
    var var_1 = var_0.c;
    global3 = Struct_4(global3.a, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -38722i), abs(vec2<i32>(-1i) * -var_0.a.zy)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_0 | -42652i, -1i ^ var_0.d, max(-20957i, u_input.b.x)), vec4<i32>(min(91283i, 4090i), -2147483647i, 45144i, firstLeadingBit(1i)))), global3.d);
    global0 = array<vec4<i32>, 29>();
    return Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(~max(var_0.c.b.x, 0u)), u_input.a), 16u)], u_input.d, _wgslsmith_f_op_f32(-var_0.c.a), vec2<bool>(select(any(!vec3<bool>(false, false, arg_1)), arg_1, all(select(vec3<bool>(false, false, var_0.b), vec3<bool>(true, true, var_0.b), var_1.d.x))), true), -667f);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(vec4<i32>(~_wgslsmith_mult_i32(4625i, u_input.b.x), ~(-28760i), 6433i, u_input.b.x), true, arg_3, ~(-(_wgslsmith_mod_i32(u_input.b.x, 2147483647i) ^ (global3.d << (1u % 32u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1562f, global2[_wgslsmith_index_u32(global3.a.a.x, 16u)], global2[_wgslsmith_index_u32(8859u, 16u)]))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a, -2042f, -560f), vec3<f32>(global2[_wgslsmith_index_u32(var_0.c.b.x, 16u)], var_0.c.e, 329f)))) + vec3<f32>(108f, _wgslsmith_f_op_f32(floor(896f)), -729f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)), _wgslsmith_f_op_f32(exp2(var_0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1024f, -953f, var_0.c.e)))))))));
    let var_2 = Struct_2(vec4<i32>(-48897i, -36982i, 2147483647i, var_0.d), var_0.c.d.x, func_2(~(select(-2147483647i, -2147483647i, true) >> (arg_2.a.x % 32u)), false), u_input.b.x);
    global3 = Struct_4(arg_2, _wgslsmith_mod_vec2_i32(u_input.b.zx, -_wgslsmith_mod_vec2_i32(vec2<i32>(-50218i, -2147483647i), vec2<i32>(-8550i, 32742i)) | (vec2<i32>(var_2.d, global3.c) | reverseBits(var_2.a.wx))), abs(_wgslsmith_dot_vec3_i32(~(-var_2.a.wyw), ~var_0.a.yxw ^ abs(var_2.a.zyw))), _wgslsmith_add_i32(~((var_0.d ^ 8299i) << (55157u % 32u)), -2147483647i));
    var var_3 = arg_2;
    return select(_wgslsmith_add_vec3_u32(max(~vec3<u32>(87819u, global3.a.a.x, 6795u), _wgslsmith_sub_vec3_u32(var_0.c.b, arg_3.b)), var_2.c.b) ^ u_input.c.wwz, _wgslsmith_add_vec3_u32(~abs(~vec3<u32>(var_0.c.b.x, 75634u, var_0.c.b.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(7600u, 33455u, 82461u) << (vec3<u32>(global3.a.a.x, var_0.c.b.x, arg_3.b.x) % vec3<u32>(32u)), min(arg_3.b, vec3<u32>(var_0.c.b.x, global3.a.a.x, u_input.d.x)))), !(!var_0.b));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = arg_0.x;
    let var_1 = 151f;
    let var_2 = vec3<bool>(true, true, true);
    global0 = array<vec4<i32>, 29>();
    var var_3 = func_4(12098u, 0i, global3.a, func_2(global3.b.x, false));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = _wgslsmith_sub_i32(u_input.b.x >> (func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(871f, global2[_wgslsmith_index_u32(u_input.d.x, 16u)], global2[_wgslsmith_index_u32(u_input.d.x, 16u)], -2577f), vec4<f32>(-1823f, -1879f, global2[_wgslsmith_index_u32(37387u, 16u)], 432f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1269f, -560f, -657f, global2[_wgslsmith_index_u32(80251u, 16u)]))))) % 32u), u_input.b.x);
    var_0 = !(max(17930i, global3.c) >= (~global3.c << (0u % 32u)));
    let var_1 = Struct_3(~firstTrailingBit(vec3<u32>(u_input.c.x, 11916u, abs(global3.a.a.x))));
    var var_2 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] - -171f);
    let var_3 = true;
    global0 = array<vec4<i32>, 29>();
    global4 = !(!var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(reverseBits(40504u), var_1.a.x), 16u)], global2[_wgslsmith_index_u32(func_1(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], -712f, _wgslsmith_f_op_f32(select(-900f, global2[_wgslsmith_index_u32(44333u, 16u)], var_3)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.a.x, 16u)]))), 16u)]), u_input.c.xxy & vec3<u32>(~min(3850u, global3.a.a.x), 1u, 0u), global3.b.x);
}

