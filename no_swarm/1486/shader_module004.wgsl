struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 27>;

var<private> global2: array<vec3<bool>, 4>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_u32(0u, reverseBits(0u));
    var var_1 = vec4<bool>(true, any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false))), true && any(global2[_wgslsmith_index_u32(var_0, 4u)]), 0i < (1i >> (min(countOneBits(arg_0.d), ~4900u) % 32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-415f, _wgslsmith_f_op_f32(select(-1303f, 228f, var_1.x))))))));
    global1 = array<u32, 27>();
    let var_2 = 786f;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(519f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) + -679f)), var_2), -1910f);
}

fn func_2() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(u_input.d), 27u)] << ((global1[_wgslsmith_index_u32(~(~(0u & u_input.b.x)), 27u)] ^ global1[_wgslsmith_index_u32(0u, 27u)]) % 32u);
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(u_input.e.yz, (u_input.b | u_input.e.wz) | vec2<u32>(21989u, ~global1[_wgslsmith_index_u32(4294967295u, 27u)])), u_input.e.zzx, global1[_wgslsmith_index_u32(~u_input.a, 27u)], ~65901u);
    var var_2 = i32(-1i) * -1i;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_1.a, ~vec3<u32>(50579u, var_0, 58934u), var_1.b.x, ~var_1.b.x)))), vec4<f32>(1f, 1f, 1f, 1f));
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global2 = array<vec3<bool>, 4>();
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = u_input.d;
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(~42696u, 1u), u_input.b, vec2<u32>(~4294967295u, u_input.d)) & ~(_wgslsmith_div_vec2_u32(u_input.e.wx, u_input.b) ^ ~u_input.e.zx), vec3<u32>(firstLeadingBit(firstTrailingBit(u_input.d)), ~u_input.a, ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(global1[_wgslsmith_index_u32(u_input.e.x, 27u)]), max(abs(u_input.b.x), 4294967295u)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(54479u, global1[_wgslsmith_index_u32(u_input.a, 27u)])) << ((u_input.b | vec2<u32>(19656u, 1u)) % vec2<u32>(32u)), ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 27u)], u_input.d), u_input.e.xx)), ~(~(~52395u)));
    return Struct_1(var_3.a, _wgslsmith_mod_vec3_u32(firstLeadingBit(~var_3.b), u_input.e.zxw), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(85768u, var_3.d << (u_input.e.x % 32u), ~4294967295u) | global1[_wgslsmith_index_u32(~4294967295u, 27u)], ~(_wgslsmith_mod_u32(26213u, var_3.d) & 1u)), var_3.b.x);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(~arg_2.a << (u_input.e.xz % vec2<u32>(32u)), arg_2.b, arg_2.a.x, ~_wgslsmith_div_u32(~firstTrailingBit(arg_2.a.x), arg_2.c));
    var var_1 = vec3<bool>(!all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, false)) & false);
    let var_2 = 0u;
    var var_3 = u_input.c;
    global1 = array<u32, 27>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_sub_vec2_u32(var_0.b.zy, arg_2.a), ~u_input.e.yyw, 4294967295u, 1u))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(852f, arg_1), vec2<f32>(arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(192f, 628f, -1112f, arg_1) + vec4<f32>(arg_1, arg_1, 110f, 657f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-318f, arg_1, arg_1, arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~countOneBits(63155i), -1073f, func_1());
    let var_1 = 0i;
    var var_2 = func_4(_wgslsmith_mod_i32(-20354i, var_1), var_0.b.x, Struct_1(func_1().b.xy, vec3<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19970u, 27u)], 27u)], 27u)]), ~select(167900u, 29834u, true), countOneBits(117829u)), 4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(15216u, 27615u), _wgslsmith_mod_u32(35514u, global1[_wgslsmith_index_u32(u_input.e.x, 27u)])), global1[_wgslsmith_index_u32(74152u & _wgslsmith_mod_u32(23066u, u_input.d), 27u)])));
    var var_3 = var_0;
    var var_4 = false;
    var_2 = var_0;
    global0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(func_4(~reverseBits(u_input.c.x), 960f, Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 113458u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2629u, 27u)], 27u)], 20717u, 17269u), vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4891u, 27u)], 27u)])), 42928u, 0u)).a.x)));
    var var_5 = var_0;
    let var_6 = func_4(~_wgslsmith_dot_vec3_i32(u_input.c, ~(~vec3<i32>(var_1, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(sign(461f))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(-1i) * -u_input.c.yy), _wgslsmith_f_op_f32(-1008f + _wgslsmith_f_op_f32(-304f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_6.a.x, var_0.a.x) + -1156f))), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32((firstTrailingBit(u_input.a) | u_input.d) ^ u_input.d, 27u)], _wgslsmith_mod_u32(u_input.d, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29223u, 27u)], 27u)], 27u)], ~u_input.d, _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60023u, 27u)], 27u)])))), _wgslsmith_mod_vec2_i32(u_input.c.zy, select(reverseBits(u_input.c.xz), vec2<i32>(81413i, 9522i), select(vec2<bool>(false, false), vec2<bool>(true, false), false)) << (min(vec2<u32>(1u, 42115u), select(vec2<u32>(u_input.d, 37663u), u_input.b, vec2<bool>(false, true))) % vec2<u32>(32u))));
}

