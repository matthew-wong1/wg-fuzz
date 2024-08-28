struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global1: array<vec2<bool>, 3>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = abs(_wgslsmith_mult_i32(u_input.b.x, reverseBits(~u_input.a.x) << (((u_input.c.x | u_input.c.x) >> (u_input.c.x % 32u)) % 32u)));
    global1 = array<vec2<bool>, 3>();
    var var_1 = vec4<bool>(false, true | arg_0.a.x, all(vec2<bool>(global0.a.x, all(vec4<bool>(global0.a.x, false, true, arg_0.a.x)))), all(vec4<bool>(false, true, !arg_0.a.x, true)));
    global0 = arg_0;
    global1 = array<vec2<bool>, 3>();
    return var_1.wyz;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = u_input.b.x;
    global1 = array<vec2<bool>, 3>();
    global0 = Struct_1(arg_0.zz);
    let var_1 = Struct_1(vec2<bool>(!(firstLeadingBit(u_input.c.x) >= 52623u), (5427u >= ~u_input.c.x) || all(select(arg_1, arg_1, arg_1))));
    var var_2 = Struct_1(!arg_1.zw);
    return vec4<u32>(34848u, _wgslsmith_mult_u32(32614u << (~_wgslsmith_add_u32(4294967295u, u_input.c.x) % 32u), 1u), ~(~(~(u_input.c.x >> (0u % 32u)))), select(u_input.c.x, 60730u, true));
}

fn func_2() -> u32 {
    global1 = array<vec2<bool>, 3>();
    let var_0 = _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 4294967295u, 0u, 1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u ^ u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 1u), _wgslsmith_div_u32(66720u, u_input.c.x), 32842u & u_input.c.x), func_4(!func_3(Struct_1(vec2<bool>(false, true))), select(select(vec4<bool>(false, true, global0.a.x, true), vec4<bool>(true, true, global0.a.x, true), vec4<bool>(false, false, global0.a.x, false)), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), !vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), all(func_3(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 3u)])).yx), !global0.a)));
    global0 = Struct_1(vec2<bool>(any(vec3<bool>(any(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), u_input.b.x != 1i, all(vec3<bool>(global0.a.x, global0.a.x, false)))), !all(vec4<bool>(true, true, true, true))));
    global0 = Struct_1(!select(vec2<bool>(true, all(vec3<bool>(global0.a.x, global0.a.x, false))), vec2<bool>(!global0.a.x, select(true, global0.a.x, global0.a.x)), global0.a.x));
    global1 = array<vec2<bool>, 3>();
    return 0u;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = arg_1;
    let var_0 = Struct_1(func_3(arg_1).yy);
    var var_1 = arg_1;
    var_1 = var_0;
    global1 = array<vec2<bool>, 3>();
    return arg_1;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = Struct_1(var_0.a);
    var var_1 = 0i;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-190f, -1081f)))), all(global0.a) || all(vec3<bool>(true, global0.a.x, arg_0.a.x)))), _wgslsmith_f_op_f32(-1f))), 828f);
    let var_3 = func_5(firstLeadingBit(vec4<u32>(9151u, u_input.c.x, 22477u, ~0u)), Struct_1(!func_5(_wgslsmith_mult_vec4_u32(vec4<u32>(102736u, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 3024u)), arg_0, -u_input.b.x).a), -2147483647i);
    return var_3;
}

fn func_1() -> f32 {
    global1 = array<vec2<bool>, 3>();
    global1 = array<vec2<bool>, 3>();
    var var_0 = global0.a.x;
    let var_1 = func_6(func_5(vec4<u32>(max(79659u, ~u_input.c.x), func_2(), ~5096u & u_input.c.x, u_input.c.x), Struct_1(select(!global1[_wgslsmith_index_u32(76036u, 3u)], global0.a, false)), reverseBits(u_input.b.x)));
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.a.wz, ~(-firstLeadingBit(u_input.b))) << (~u_input.c.yx % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1220f, -2590f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -404f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, -130f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-444f, -426f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, 678f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(213f, 1357f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, -377f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-346f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    global1 = array<vec2<bool>, 3>();
    var var_1 = -2147483647i;
    let var_2 = max(~(~u_input.a.zyx), select(select(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.a.wxx), vec3<i32>(abs(u_input.b.x), abs(11301i), select(u_input.a.x, u_input.a.x, true)), all(!global1[_wgslsmith_index_u32(u_input.c.x, 3u)])), abs(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), global0.a.x));
    var var_3 = func_5(_wgslsmith_mod_vec4_u32(max(reverseBits(~vec4<u32>(u_input.c.x, 27768u, u_input.c.x, u_input.c.x)), min(~vec4<u32>(0u, u_input.c.x, 93430u, u_input.c.x), abs(vec4<u32>(u_input.c.x, 0u, 1u, u_input.c.x)))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x) << (u_input.c.zy % vec2<u32>(32u)), ~u_input.c.xz), u_input.c.x, countOneBits(~4294967295u), (u_input.c.x ^ u_input.c.x) | (5233u & u_input.c.x))), Struct_1(vec2<bool>(!global0.a.x, true)), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -6075i >> (1u % 32u))));
    global0 = func_5(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u)) & firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(38674u, 54860u, u_input.c.x, 0u), vec4<u32>(91133u, u_input.c.x, u_input.c.x, 5865u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x), vec4<u32>(1u, 52412u, u_input.c.x, u_input.c.x)))), func_6(Struct_1(!vec2<bool>(true, global0.a.x))), 0i);
    let var_4 = Struct_1(vec2<bool>(true, all(!vec3<bool>(global0.a.x, global0.a.x, var_3.a.x)) && !global0.a.x));
    let var_5 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x ^ u_input.b.x, _wgslsmith_clamp_i32(~21658i, select(1140i, 58501i, var_3.a.x), 38173i), -35262i), _wgslsmith_sub_vec3_i32(-(~u_input.a.yxz), _wgslsmith_clamp_vec3_i32(u_input.a.wwx >> (u_input.c % vec3<u32>(32u)), vec3<i32>(0i, -1i, 2147483647i), u_input.a.yww))), u_input.a.wzz, ~var_2);
    let x = u_input.a;
    s_output = StorageBuffer(907f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - var_0.x)))))), ~u_input.c, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -913f, 179f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -348f, -359f))))), _wgslsmith_dot_vec3_i32(max(var_2 << (u_input.c % vec3<u32>(32u)), var_2), var_2));
}

