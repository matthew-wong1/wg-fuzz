struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(319f, 606f, -1000f), true, vec4<bool>(true, false, false, false), 42087u, vec2<i32>(-1i, -1i));

var<private> global1: array<i32, 20> = array<i32, 20>(-1i, -44886i, i32(-2147483648), 1i, 1i, i32(-2147483648), 0i, -62518i, 7130i, 22502i, -15254i, -1i, 20825i, 1i, -1i, i32(-2147483648), 18665i, 22519i, i32(-2147483648), -12308i);

var<private> global2: vec4<i32>;

var<private> global3: Struct_4 = Struct_4(i32(-2147483648), Struct_2(vec3<f32>(-2347f, 1000f, 349f), true, vec4<bool>(true, true, false, true), 17488u, vec2<i32>(-1i, 41354i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = global3.b;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2375f * 460f))))));
    global3 = arg_0;
    let var_2 = ~_wgslsmith_dot_vec2_i32(arg_0.b.e, _wgslsmith_div_vec2_i32(abs(global2.yx), vec2<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), -9362i)));
    var var_3 = select(_wgslsmith_sub_vec2_i32(select(max(var_0.e, arg_0.b.e), countOneBits(u_input.b.zz), !var_0.c.x) | _wgslsmith_div_vec2_i32(abs(global2.yy), _wgslsmith_sub_vec2_i32(u_input.b.yx, global2.zx)), -_wgslsmith_add_vec2_i32(vec2<i32>(23666i, global1[_wgslsmith_index_u32(3360u, 20u)]) ^ vec2<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<i32>(-1i, -2147483647i))), -vec2<i32>(max(-5907i, 7005i) & ~global1[_wgslsmith_index_u32(var_0.d, 20u)], abs(-2147483647i)), var_0.e.x == _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28492i, global1[_wgslsmith_index_u32(global0.d, 20u)]), vec2<i32>(-1i, u_input.a)), var_2));
    return _wgslsmith_f_op_f32(global0.a.x + -830f);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    let var_0 = -1238f;
    var var_1 = ~_wgslsmith_div_vec4_u32(abs(max(_wgslsmith_div_vec4_u32(vec4<u32>(global0.d, 29231u, 68985u, 0u), vec4<u32>(4294967295u, 0u, u_input.c.x, global3.b.d)), vec4<u32>(global3.b.d, u_input.c.x, 4741u, 23108u))), max(~(~vec4<u32>(52264u, global3.b.d, 4294967295u, 0u)), vec4<u32>(min(0u, global0.d), ~311u, ~34958u, countOneBits(u_input.c.x))));
    var var_2 = Struct_3(vec4<u32>(1u, 27651u, 1u, global0.d), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(2147483647i, global3.b), Struct_1(-701f), global0.d)), -1183f, _wgslsmith_f_op_f32(f32(-1f) * -361f)), 15922u != _wgslsmith_clamp_u32(global0.d, global0.d, _wgslsmith_mult_u32(global3.b.d, u_input.c.x)), vec4<bool>(true, (false && global0.c.x) && true, all(arg_0.xyz), global3.b.c.x), 4294967295u, global3.b.e | ~_wgslsmith_mod_vec2_i32(vec2<i32>(global0.e.x, global3.a), global3.b.e)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~firstTrailingBit(-2147483647i), -1i), firstLeadingBit(global0.e.x)), vec4<u32>(_wgslsmith_mod_u32(28922u, 1u), select(0u, min(u_input.c.x, u_input.c.x), true), ~(26047u | ~u_input.c.x), _wgslsmith_mult_u32(4294967295u, select(98323u & u_input.c.x, _wgslsmith_div_u32(60201u, 4294967295u), any(global3.b.c.yzx)))), -1953f);
    var_1 = ~var_2.d;
    global3 = Struct_4(var_2.b.e.x, Struct_2(vec3<f32>(-125f, global0.a.x, 119f), false, select(global3.b.c, select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(false, var_2.b.b, true, global3.b.b), !arg_0.x), select(vec4<bool>(false, global0.b, var_2.b.c.x, var_2.b.b), arg_0, vec4<bool>(false, true, false, false))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(countOneBits(var_2.a), vec4<u32>(u_input.c.x, 1u, global3.b.d, global3.b.d)), global3.b.d, _wgslsmith_clamp_u32(4294967295u, ~60629u, min(var_1.x, var_2.b.d))), max(abs(var_2.b.e), ~firstTrailingBit(vec2<i32>(2147483647i, -2147483647i)))));
    return 8191u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.a.x * 269f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global3.b.a.x)), -1907f)), 1463f);
    var var_1 = Struct_4(~(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global3.a, u_input.a, u_input.b.x)), ~global2.wwz) | _wgslsmith_div_i32(10587i ^ global0.e.x, global1[_wgslsmith_index_u32(arg_0.x, 20u)] >> (global3.b.d % 32u))), global3.b);
    let var_2 = false;
    let var_3 = reverseBits(i32(-1i) * -global0.e.x);
    global2 = ~vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.xy, -vec2<i32>(u_input.b.x, var_3)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-11746i, 2395i)), min(var_1.b.e, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global2.x), vec2<i32>(2147483647i, 1545i)))), max(_wgslsmith_div_i32(_wgslsmith_mod_i32(global2.x, global0.e.x), 2117i), abs(var_1.b.e.x)), countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(7300i, 13206i), ~global2.x)));
    return _wgslsmith_f_op_f32(ceil(-245f));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec3<u32>(u_input.c.x, 4294967295u, _wgslsmith_mult_u32(global0.d, _wgslsmith_clamp_u32(u_input.c.x, 54123u, func_2(arg_1.c, vec3<f32>(1000f, arg_1.a.x, 1938f))))), global3.b.d, _wgslsmith_div_u32(arg_1.d, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, global0.d, 0u), reverseBits(vec4<u32>(arg_1.d, 0u, u_input.c.x, 4294967295u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global3.b.d, global0.d, global3.b.d, 15180u), vec4<u32>(0u, global3.b.d, arg_1.d, u_input.c.x), vec4<u32>(0u, 85852u, arg_1.d, 0u))))));
    let var_1 = u_input.a;
    global1 = array<i32, 20>();
    let var_2 = global0.c.xx;
    global2 = max(vec4<i32>(2147483647i, 2147483647i, global1[_wgslsmith_index_u32(~(~1u), 20u)] << (0u % 32u), -40516i), ~vec4<i32>(arg_0, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_1, global2.x), -arg_1.e.x), arg_0, ~(-global0.e.x)));
    return vec2<i32>(reverseBits(abs(global3.b.e.x)), _wgslsmith_mult_i32(-6985i, 30412i));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(global3.b.a.x - 1470f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.e)), _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1495f)))), global3.b.c.x, global0.c, ~select(_wgslsmith_mod_u32(60958u, 3444u), 1u, !(global0.b || arg_0.b.b)), ~(-vec2<i32>(-u_input.a, ~u_input.b.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_u32(arg_0.d.xzy, vec3<u32>(u_input.c.x, 4294967295u, 1u)), reverseBits(global3.b.d), 13562u)), arg_0.e))));
    let var_2 = vec3<u32>(var_0.d, _wgslsmith_dot_vec2_u32(~(~(~u_input.c.xz)), ~min(~u_input.c.yz, vec2<u32>(4294967295u, 36077u) & vec2<u32>(0u, global3.b.d))), 1u);
    var var_3 = abs(max(1u, 1u));
    return Struct_4(global2.x, Struct_2(global0.a, global0.b, !(!(!vec4<bool>(global3.b.c.x, arg_0.b.b, true, true))), max(29259u, 82211u), global2.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 25485u), u_input.c.yy, u_input.c.yy), ~u_input.c.xx) ^ ~countOneBits(vec2<u32>(1u, 4294967295u))), vec2<u32>(global0.d, u_input.c.x | global3.b.d));
    global3 = func_5(Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.b.d, 0u, 55794u, u_input.c.x) ^ vec4<u32>(global0.d, var_0.x, 10498u, u_input.c.x), select(vec4<u32>(global0.d, global0.d, 1u, 52772u), vec4<u32>(4294967295u, global0.d, var_0.x, var_0.x), true)) ^ (~vec4<u32>(var_0.x, u_input.c.x, 36612u, global3.b.d) >> (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, global0.d) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(global3.b.a * vec3<f32>(global3.b.a.x, 578f, global3.b.a.x)), true, select(vec4<bool>(false, global3.b.c.x, false, true), select(vec4<bool>(true, global0.b, true, false), vec4<bool>(global3.b.b, true, global3.b.c.x, global0.b), global3.b.b), true), abs(global3.b.d), max(firstLeadingBit(vec2<i32>(2147483647i, 26327i)), func_1(u_input.b.x, global3.b, false))), global0.e.x, vec4<u32>(abs(~var_0.x), global0.d, ~var_0.x, 0u), _wgslsmith_f_op_f32(-1094f - _wgslsmith_f_op_f32(f32(-1f) * -702f))), -select(func_1(619i, Struct_2(vec3<f32>(global3.b.a.x, 1396f, global0.a.x), false, global0.c, 0u, global0.e), !global0.b).x, -14949i, false));
    let var_1 = Struct_1(global3.b.a.x);
    var var_2 = abs(46789i);
    var var_3 = func_5(Struct_3(vec4<u32>(min(~36960u, 27409u), u_input.c.x, _wgslsmith_mult_u32(13128u, global0.d), func_5(Struct_3(vec4<u32>(var_0.x, u_input.c.x, u_input.c.x, var_0.x), Struct_2(global0.a, true, global3.b.c, 8464u, vec2<i32>(u_input.b.x, 0i)), global3.a, vec4<u32>(global0.d, 50985u, 55384u, 0u), var_1.a), global0.e.x).b.d), Struct_2(global0.a, select(global2.x, global0.e.x, global0.b) <= global3.b.e.x, !func_5(Struct_3(vec4<u32>(53302u, global0.d, u_input.c.x, 3414u), Struct_2(global3.b.a, global3.b.c.x, global3.b.c, 58070u, global2.yy), 21045i, vec4<u32>(global0.d, 66542u, global0.d, global0.d), global0.a.x), -4681i).b.c, _wgslsmith_sub_u32(54082u, 1u) | var_0.x, u_input.b.xz), -63248i, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(2843u, 92139u, 28626u, 4294967295u) >> (vec4<u32>(global0.d, 74895u, global3.b.d, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.x, 1u, 20445u), vec4<u32>(u_input.c.x, 10813u, 44380u, u_input.c.x)))), func_5(Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(global0.d, 1u, 4294967295u, var_0.x), vec4<u32>(u_input.c.x, 48024u, u_input.c.x, var_0.x)), func_5(Struct_3(vec4<u32>(6976u, u_input.c.x, global3.b.d, 65714u), Struct_2(vec3<f32>(global0.a.x, global0.a.x, -1000f), global0.b, vec4<bool>(global3.b.c.x, false, false, true), global0.d, u_input.b.xx), -1i, vec4<u32>(48747u, var_0.x, 46940u, global0.d), global3.b.a.x), -8002i).b, 1i | global0.e.x, ~vec4<u32>(var_0.x, 10935u, 0u, 1u), _wgslsmith_f_op_f32(-155f - var_1.a)), -(global1[_wgslsmith_index_u32(global0.d, 20u)] >> (2054u % 32u))).b.a.x), u_input.b.x).b.a.x;
    let var_4 = vec4<i32>(-global3.b.e.x, global3.b.e.x, 0i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_clamp_i32(-27151i, ~_wgslsmith_dot_vec3_i32(global2.yxy, vec3<i32>(global3.b.e.x, 2147483647i, u_input.a)), 4625i), u_input.b.x, global2.x, vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.x, var_1.a, true)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-765f + var_1.a))), -193f)));
}

