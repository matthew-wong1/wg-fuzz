struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<f32, 8>;

var<private> global2: array<Struct_3, 12>;

var<private> global3: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = ~(abs(vec2<u32>(u_input.d, 9515u & u_input.d)) | arg_0.b);
    global3 = array<vec2<bool>, 9>();
    var var_1 = Struct_4(Struct_2(Struct_1(true)));
    var var_2 = countOneBits(vec4<i32>(~arg_0.a, u_input.b, arg_0.c.x, _wgslsmith_div_i32(arg_0.a << (58953u % 32u), -27508i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(min(arg_0.d.x, u_input.d), countOneBits(u_input.d), ~4294967295u, arg_0.b.x), ~(~vec4<u32>(1u, 429u, var_0.x, 41942u))) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_add_vec3_i32(select(vec3<i32>(arg_0.a, ~(-2147483647i), var_2.x), min(_wgslsmith_mod_vec3_i32(var_2.wyz, vec3<i32>(-9967i, 13622i, -45412i)), var_2.zzw) & var_2.xwz, !vec3<bool>(any(vec2<bool>(false, false)), var_1.a.a.a, var_1.a.a.a)), vec3<i32>(-abs(_wgslsmith_clamp_i32(var_2.x, var_2.x, u_input.c)), arg_0.c.x, countOneBits(_wgslsmith_mult_i32(17089i, arg_0.c.x) & ~var_2.x)));
    return var_2.x;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> vec4<i32> {
    return vec4<i32>(func_3(Struct_5(u_input.a, vec2<u32>(0u, 0u) >> (arg_1.zy % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, -2147483647i), arg_1.yyw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, 1013f, arg_0, arg_0)))), _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, ~u_input.a), -func_3(Struct_5(u_input.c, arg_1.zy, vec2<i32>(u_input.e, -2147483647i), vec3<u32>(u_input.d, 16735u, u_input.d), vec4<f32>(arg_0, arg_0, 1070f, arg_0)))), -1i, -u_input.a) | vec4<i32>(u_input.a, u_input.c, func_3(Struct_5(~u_input.b, vec2<u32>(arg_1.x, arg_1.x), -vec2<i32>(25671i, 2147483647i), countOneBits(vec3<u32>(126119u, 4294967295u, 39425u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], arg_0, -1000f)))), _wgslsmith_add_i32(0i, u_input.e));
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    return u_input.e | abs(_wgslsmith_dot_vec4_i32(func_2(global1[_wgslsmith_index_u32(~u_input.d, 8u)], _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, 80001u), vec4<u32>(0u, u_input.d, u_input.d, u_input.d))), select(vec4<i32>(-2147483647i, -1i, u_input.a, u_input.e), vec4<i32>(u_input.a, 0i, u_input.c, 2147483647i), vec4<bool>(true, true, arg_1, arg_0)) >> (abs(vec4<u32>(u_input.d, u_input.d, 1u, 11881u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_4(arg_2.c);
    global3 = array<vec2<bool>, 9>();
    let var_1 = select(select(select(select(select(vec4<bool>(true, var_0.a.a.a, var_0.a.a.a, true), vec4<bool>(var_0.a.a.a, var_0.a.a.a, false, arg_2.b.a.a), false), select(vec4<bool>(arg_2.b.a.a, false, arg_2.c.a.a, arg_2.b.a.a), vec4<bool>(true, var_0.a.a.a, var_0.a.a.a, var_0.a.a.a), arg_2.b.a.a), vec4<bool>(arg_2.b.a.a, var_0.a.a.a, true, false)), !vec4<bool>(arg_2.b.a.a, arg_2.c.a.a, var_0.a.a.a, false), all(!vec3<bool>(arg_2.b.a.a, true, false))), select(select(vec4<bool>(arg_2.b.a.a, arg_2.c.a.a, true, true), select(vec4<bool>(var_0.a.a.a, true, arg_2.b.a.a, true), vec4<bool>(true, false, var_0.a.a.a, false), vec4<bool>(true, true, var_0.a.a.a, arg_2.b.a.a)), select(vec4<bool>(true, var_0.a.a.a, arg_2.b.a.a, false), vec4<bool>(arg_2.b.a.a, true, false, arg_2.c.a.a), vec4<bool>(arg_2.b.a.a, true, false, false))), vec4<bool>(all(vec2<bool>(true, var_0.a.a.a)), any(vec2<bool>(var_0.a.a.a, true)), !arg_2.c.a.a, var_0.a.a.a == true), !arg_2.b.a.a), select(!(!vec4<bool>(false, arg_2.b.a.a, arg_2.c.a.a, false)), !(!vec4<bool>(var_0.a.a.a, var_0.a.a.a, false, false)), false)), !vec4<bool>(arg_2.c.a.a, all(vec3<bool>(var_0.a.a.a, true, true)), !var_0.a.a.a, !var_0.a.a.a), arg_2.b.a.a);
    global2 = array<Struct_3, 12>();
    let var_2 = select(vec2<i32>(7092i >> (arg_2.e % 32u), select(36040i, ~(~1i), arg_2.b.a.a)), -(vec2<i32>(arg_2.a, u_input.c) & min(~vec2<i32>(-1i, 1i), -vec2<i32>(-2147483647i, u_input.a))), !(!vec2<bool>(!var_0.a.a.a, true)));
    return Struct_4(Struct_2(arg_2.c.a));
}

fn func_5(arg_0: Struct_4) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1141f - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d) & vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d), ~vec4<u32>(u_input.d, 16842u, u_input.d, u_input.d)) | _wgslsmith_sub_u32(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(23947u, 1u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u))), 8u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.d), u_input.d), 8u)] - 725f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1098f * 569f), 1127f));
    global0 = abs(u_input.e);
    let var_1 = ~vec3<u32>(u_input.d, ~34549u, u_input.d);
    global4 = _wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(~var_1.zz, reverseBits(var_1.xx))) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(23250u, abs(19416u), u_input.d), abs(abs(var_1))), _wgslsmith_mod_u32(var_1.x, ~(select(4294967295u, u_input.d, false) | _wgslsmith_mod_u32(var_1.x, var_1.x))));
    var var_2 = Struct_2(func_4(-857f, ~firstLeadingBit(select(vec3<u32>(1u, 22362u, var_1.x), vec3<u32>(u_input.d, 4294967295u, 4427u), vec3<bool>(arg_0.a.a.a, arg_0.a.a.a, true))), Struct_3(u_input.e, Struct_2(Struct_1(arg_0.a.a.a)), arg_0.a, 18803u, ~(~0u))).a.a);
    return firstTrailingBit(2147483647i);
}

fn func_6(arg_0: i32, arg_1: f32) -> Struct_2 {
    global2 = array<Struct_3, 12>();
    global2 = array<Struct_3, 12>();
    global4 = _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(firstLeadingBit(~0u), firstTrailingBit(u_input.d)), _wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(u_input.d), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(u_input.d, 1u), u_input.d)), 53362u), u_input.d);
    var var_0 = ((i32(-1i) * -2147483647i) | abs(~arg_0)) & -26483i;
    let var_1 = func_4(-902f, vec3<u32>(u_input.d, min(40140u, u_input.d), firstLeadingBit(u_input.d)), global2[_wgslsmith_index_u32(abs(1u), 12u)]).a.a;
    return Struct_2(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 9>();
    global1 = array<f32, 8>();
    var var_0 = func_6(func_5(func_4(-677f, ~vec3<u32>(4418u, 41317u, u_input.d), Struct_3(func_1(false, true), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), ~1u, 4294967295u))), -956f);
    let var_1 = Struct_3(_wgslsmith_add_i32(u_input.b, 0i), Struct_2(Struct_1(1i <= abs(u_input.c))), func_6(~_wgslsmith_sub_i32(abs(-22799i), -1i), -699f), _wgslsmith_add_u32(max(1u, u_input.d) ^ u_input.d, _wgslsmith_mult_u32(max(firstLeadingBit(u_input.d), _wgslsmith_sub_u32(4294967295u, 4294967295u)), firstTrailingBit(u_input.d))), firstLeadingBit((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, 72157u), vec4<u32>(2603u, u_input.d, 71781u, 4480u)) | 1u) ^ select(4294967295u, _wgslsmith_sub_u32(u_input.d, 23622u), true)));
    var_0 = var_1.c;
    global0 = _wgslsmith_sub_i32(i32(-1i) * -2103i, u_input.b);
    var var_2 = reverseBits(~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, var_1.d)) | vec2<u32>(0u, 31736u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(601f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.e, var_2.x), 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 8u)] - global1[_wgslsmith_index_u32(u_input.d, 8u)]) - global1[_wgslsmith_index_u32(var_2.x, 8u)]) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(7663u, 32761u), 8u)] + global1[_wgslsmith_index_u32(~u_input.d, 8u)])), global1[_wgslsmith_index_u32(u_input.d, 8u)]), reverseBits(vec2<u32>(4294967295u, ~1u)), vec2<i32>(_wgslsmith_dot_vec2_i32(func_2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.x, 8u)] * global1[_wgslsmith_index_u32(u_input.d, 8u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(13921u, var_1.e, 0u, var_1.e), vec4<u32>(var_1.e, u_input.d, var_2.x, 11323u))).xy, ~select(vec2<i32>(-20785i, 69347i), vec2<i32>(var_1.a, 0i), global3[_wgslsmith_index_u32(800u, 9u)])), 4685i));
}

