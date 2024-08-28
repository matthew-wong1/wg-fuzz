struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: array<i32, 8>;

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(358f, 1343f, 1148f), vec3<f32>(-233f, -1562f, 929f), vec3<f32>(-489f, -787f, 156f), vec3<f32>(-293f, 135f, 217f), vec3<f32>(-1718f, 988f, 738f), vec3<f32>(437f, 1391f, 967f), vec3<f32>(-1291f, 764f, -169f), vec3<f32>(-428f, -129f, -1401f));

var<private> global3: array<u32, 16> = array<u32, 16>(579u, 0u, 16650u, 0u, 1u, 18997u, 81876u, 44359u, 18525u, 80518u, 0u, 23812u, 23142u, 19537u, 27126u, 21286u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = !select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), select(vec3<bool>(true, all(vec2<bool>(false, false)), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false))));
    global2 = array<vec3<f32>, 8>();
    let var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(~1u, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 16u)])), u_input.a.x, u_input.b.x)), ~vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 0u) & ~global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 4294967295u, ~14458u | _wgslsmith_dot_vec4_u32(vec4<u32>(40013u, 1u, global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16736u, 16u)], 16u)], 4294967295u, 5820u, u_input.b.x)), _wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 0u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], 16u)], global3[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.a.x)))));
    var var_2 = Struct_1(_wgslsmith_mod_i32(-(~global1[_wgslsmith_index_u32(37172u, 8u)]), u_input.e << (1u % 32u)), vec2<i32>(1i, reverseBits(_wgslsmith_mod_i32(-12613i, 1i))), _wgslsmith_div_u32(u_input.b.x, 4294967295u), vec2<bool>((true & var_0.x) && true, all(vec4<bool>(var_0.x, false, false, var_0.x))));
    let var_3 = var_2.b;
    return ~var_1;
}

fn func_2(arg_0: vec4<bool>) -> vec4<i32> {
    global1 = array<i32, 8>();
    var var_0 = Struct_1(_wgslsmith_div_i32(~global1[_wgslsmith_index_u32(func_3(), 8u)], 1i), _wgslsmith_clamp_vec2_i32(u_input.d.yz, _wgslsmith_add_vec2_i32((u_input.d.yw & u_input.c) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, u_input.d.x), vec2<i32>(1i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41082u, 16u)], 8u)])), vec2<i32>(u_input.c.x, abs(-74430i))), _wgslsmith_add_vec2_i32(select(u_input.c | vec2<i32>(-1i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 8u)]), min(vec2<i32>(u_input.d.x, u_input.e), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 8u)])), vec2<bool>(false, true)), u_input.d.wx)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(reverseBits(4294967295u), 16u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 16u)]), 16u)]), u_input.a.x), 16u)], vec2<bool>(true, !(arg_0.x || !arg_0.x)));
    var var_1 = Struct_1(firstTrailingBit(var_0.b.x) & -u_input.e, ~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.b, u_input.d.wy), u_input.d.yz | vec2<i32>(9628i, u_input.d.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<i32>(global1[_wgslsmith_index_u32(79508u, 8u)], -68294i))), 0u, var_0.d);
    let var_2 = abs(vec2<i32>(global1[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(u_input.e, var_0.b.x, 2147483647i, 1i), -vec4<i32>(0i, var_0.b.x, 1i, 2147483647i)), -u_input.d)));
    var_0 = Struct_1(var_0.a, ~vec2<i32>(9942i, ~max(4595i, 50277i)), global3[_wgslsmith_index_u32(select(~(~0u), 0u, var_0.d.x), 16u)], select(arg_0.ww, vec2<bool>(any(!arg_0.xxy), !all(arg_0.wxz)), var_1.d.x));
    return u_input.d;
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = u_input.b.zy;
    let var_1 = ~var_0;
    var var_2 = _wgslsmith_mult_vec4_i32(func_2(vec4<bool>(true, true, !all(vec2<bool>(true, true)), select(true, true, true))), vec4<i32>(2147483647i, 183i, -u_input.d.x, -(~u_input.d.x | (u_input.c.x | global1[_wgslsmith_index_u32(u_input.b.x, 8u)]))));
    global2 = array<vec3<f32>, 8>();
    let var_3 = Struct_1(u_input.d.x, vec2<i32>(-_wgslsmith_add_i32(1i, u_input.c.x), _wgslsmith_sub_i32(firstLeadingBit(~21080i), reverseBits(arg_0.x << (var_1.x % 32u)))), var_1.x, select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), false), vec2<bool>(true, false), (-var_2.x >> (abs(var_0.x) % 32u)) >= var_2.x));
    return var_3.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = max(abs(select(4294967295u, func_3(), true)), 1u);
    var var_2 = u_input.a;
    let var_3 = -1i;
    var var_4 = Struct_1(min(min(-25536i, ~u_input.c.x & u_input.e), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a, 12012i, arg_1.x), u_input.d.zyx, arg_1.xwx), countOneBits(arg_1.zww)))), _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -38980i, _wgslsmith_dot_vec2_i32(arg_1.yy, firstTrailingBit(var_0.b))), arg_1.xy << (reverseBits(u_input.b.yy) % vec2<u32>(32u))), ~func_3(), vec2<bool>(true, true));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(2147483647i, vec2<i32>(i32(-1i) * -65818i, global1[_wgslsmith_index_u32(~(~u_input.a.x), 8u)]), select(4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, 90416u, u_input.a.x), ~4294967295u), select(true, false, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), !func_1(u_input.c), true)), vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(0u, 8u)], 2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(select(1u, global3[_wgslsmith_index_u32(4294967295u, 16u)], true)), _wgslsmith_mod_u32(u_input.b.x, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], 16u)])), 8u)]));
    let var_1 = !(!vec3<bool>(false, any(select(var_0.d, vec2<bool>(true, true), var_0.d.x)), !(var_0.c != 41241u)));
    var var_2 = var_1;
    global2 = array<vec3<f32>, 8>();
    var var_3 = vec2<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.c, 16u)] ^ ~global3[_wgslsmith_index_u32(~1u, 16u)], 8u)], -9173i);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.e, var_0.b.x) | firstLeadingBit(2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(min(0u, 4718u), 29u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f - 783f)) * _wgslsmith_f_op_f32(max(197f, _wgslsmith_f_op_f32(f32(-1f) * -140f)))))), firstTrailingBit(1u), u_input.d.wzy);
}

