struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(0i, vec4<f32>(-293f, 557f, 744f, 1552f), 0u), Struct_3(1i, vec4<f32>(2357f, -940f, 617f, -534f), 1u), Struct_3(11917i, vec4<f32>(2201f, 3011f, -815f, -684f), 4294967295u), Struct_3(-2345i, vec4<f32>(1000f, -1581f, 693f, 252f), 0u), Struct_3(11431i, vec4<f32>(1055f, 642f, 1041f, 1560f), 4294967295u), Struct_3(0i, vec4<f32>(-593f, 1000f, -336f, -910f), 0u), Struct_3(-13910i, vec4<f32>(1734f, 2045f, -1669f, 1000f), 13248u), Struct_3(2147483647i, vec4<f32>(-1456f, -1000f, 114f, 1449f), 1u), Struct_3(-919i, vec4<f32>(1000f, 181f, 415f, -1025f), 1u));

var<private> global2: Struct_2 = Struct_2(9181u, vec2<i32>(1i, 1i), -1101f);

var<private> global3: array<i32, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f + global2.c) * -111f) < 1f));
    global3 = array<i32, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, global2.c, -1438f, global2.c)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-664f, global2.c)), global2.c), 371f, global2.c, -1006f), vec4<bool>(true, 4294967295u < _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, global2.a, 26595u), reverseBits(u_input.b)), var_0.a, true)));
    global1 = array<Struct_3, 9>();
    var var_2 = -_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.d.x << (u_input.b.x % 32u), _wgslsmith_div_i32(u_input.d.x, 1i), ~global3[_wgslsmith_index_u32(u_input.b.x, 14u)]), abs(u_input.d), select(!vec3<bool>(false, true, var_0.a), !vec3<bool>(var_0.a, var_0.a, true), var_0.a)), -u_input.d);
    return -103f;
}

fn func_2() -> Struct_3 {
    global3 = array<i32, 14>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - global2.c));
    global3 = array<i32, 14>();
    var var_1 = vec3<bool>(!global0.a, !global0.a, true);
    var var_2 = ~((_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(0u, 14u)] << (1u % 32u), _wgslsmith_clamp_i32(u_input.d.x, -2147483647i, -17023i)) << (max(~global2.a, 21307u) % 32u)) ^ ~global3[_wgslsmith_index_u32(66711u, 14u)]);
    return global1[_wgslsmith_index_u32(1u, 9u)];
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = func_2();
    var var_1 = min((~u_input.b.zz | _wgslsmith_div_vec2_u32(u_input.b.xz, vec2<u32>(38068u, u_input.a))) | _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(1419u, arg_1)), vec2<u32>(global2.a, arg_1)), vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, global2.a, 22209u), vec4<u32>(global2.a, var_0.c, var_0.c, global2.a))), arg_1)) << (abs(u_input.b.yx) % vec2<u32>(32u));
    let var_2 = global1[_wgslsmith_index_u32(1u, 9u)];
    global0 = Struct_1(!global0.a);
    global3 = array<i32, 14>();
    return _wgslsmith_f_op_f32(-789f - global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~34353i, _wgslsmith_f_op_vec4_f32(vec4<f32>(480f, -1000f, _wgslsmith_f_op_f32(1929f * global2.c), _wgslsmith_f_op_f32(-global2.c)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(1i, 35406i, u_input.e.x)), 87297u)), -1068f, 1000f)), max(26151u, u_input.a));
    let var_1 = Struct_4(_wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, 2147483647i, 6656i, var_0.a), vec4<i32>(global2.b.x, 1i, -1i, 0i)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yx), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, global2.a, u_input.a, global2.a), vec4<u32>(0u, 63105u, var_0.c, var_0.c)), abs(var_0.c), 73749u | global2.a) % vec4<u32>(32u)), -(vec4<i32>(global2.b.x, 2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 14u)], global3[_wgslsmith_index_u32(u_input.b.x, 14u)]) | vec4<i32>(global2.b.x, 2147483647i, global2.b.x, -18109i))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(245f - 1000f))), vec2<u32>(4803u, _wgslsmith_dot_vec3_u32(u_input.b, max(~vec3<u32>(25454u, u_input.a, 1u), u_input.b))), ~u_input.b.zx);
    let var_2 = vec4<i32>(select(_wgslsmith_mod_i32(u_input.d.x, global2.b.x), ~firstTrailingBit(1i), all(vec2<bool>(global0.a, global0.a)) != all(select(vec2<bool>(false, false), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, false)))), min(~(~min(0i, var_1.b.a)), reverseBits(-max(1i, var_0.a))), -2147483647i, -31816i);
    global3 = array<i32, 14>();
    var var_3 = Struct_4(var_2, func_2(), var_1.b.b.x, countOneBits(reverseBits(var_1.e)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yy, u_input.b.zx & var_1.d) << (~u_input.b.yz % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~select(u_input.b.yz, var_1.e, vec2<bool>(false, true)), ~_wgslsmith_sub_vec2_u32(u_input.b.xy, var_1.e))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.xz);
}

