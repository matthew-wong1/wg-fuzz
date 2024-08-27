struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: array<vec4<f32>, 5>;

var<private> global2: array<f32, 10>;

var<private> global3: vec2<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = Struct_4(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, global3.x, arg_0.d, 1202f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2936f, 1908f, -777f, global3.x)) - _wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(0u, 5u)])))) * global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), global0[_wgslsmith_index_u32(arg_1, 6u)], ~max(reverseBits(arg_1), _wgslsmith_mod_u32(arg_1, select(0u, u_input.a.x, true))));
    global0 = array<Struct_3, 6>();
    var var_1 = arg_0.b.b;
    var var_2 = countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, min(max(u_input.d, -33426i), u_input.b.x), u_input.b.x), vec3<i32>(0i, -u_input.d, -2147483647i), countOneBits(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-875i, -1i, u_input.b.x), vec3<i32>(-50871i, 14311i, u_input.b.x), vec3<bool>(false, var_0.c.d, var_0.c.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, -2147483647i), vec3<i32>(1i, u_input.d, u_input.b.x))))));
    global1 = array<vec4<f32>, 5>();
    return 750f;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-565f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.x))));
    var var_1 = ~(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d, u_input.b.x, 1i), vec4<i32>(14267i, 1290i, u_input.b.x, -63804i)), -u_input.d, _wgslsmith_div_i32(-27121i, reverseBits(2147483647i)), _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -1i))) << (u_input.a % vec4<u32>(32u)));
    var var_2 = -9903i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0.c.a.a, vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_0.c, ~u_input.a.x)), -522f, arg_0.a.b.a.x))));
    var var_4 = var_1.ww;
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2308f + _wgslsmith_f_op_f32(abs(463f))), -1215f, arg_0.c.d) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(404f - 1082f)), _wgslsmith_div_f32(global3.x, arg_0.c.b.a.x))), arg_1 >> (u_input.a.x % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(vec3<f32>(1000f, 875f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(45036u, 10u)])))), _wgslsmith_add_u32(~arg_1.c.x, arg_0.c.x)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~arg_0.a.b), 1u), 6u)], arg_1.a.b, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.c.x, 10u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d))))), ~vec2<u32>(arg_1.c.x >> (4294967295u % 32u), reverseBits(arg_0.c.x)) & arg_0.c, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 10u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_0, 1u)))))));
    global0 = array<Struct_3, 6>();
    var var_2 = Struct_4(((false & (arg_3.x && false)) && true) && true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1426f)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(arg_1.a.a.x, 353f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1[_wgslsmith_index_u32(u_input.c, 5u)])) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-257f, arg_0.a.a.x, arg_1.b.a.x, -159f), vec4<f32>(arg_0.b.a.x, 390f, 2594f, -713f)))))), Struct_3(var_1, max(1u, ~45156u), Struct_2(func_2(Struct_3(Struct_2(arg_1.b, Struct_1(vec3<f32>(-1616f, -1010f, -688f), var_1.b.b), arg_0.c, 671f), 113u, Struct_2(Struct_1(arg_1.a.a, 4294967295u), Struct_1(arg_1.b.a, arg_0.c.x), var_1.c, 274f), true), abs(10913u), 1f), Struct_1(vec3<f32>(global3.x, 434f, var_1.d), countOneBits(arg_1.b.b)), select(~vec2<u32>(62142u, 4294967295u), vec2<u32>(4294967295u, 94692u), true), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(func_3(Struct_2(var_1.a, Struct_1(arg_0.a.a, 1u), u_input.a.zy, arg_1.b.a.x), 4294967295u)))), !arg_3.x), ~_wgslsmith_mod_u32(max(12394u, ~1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), arg_1.c), min(33831u, arg_0.a.b))));
    return var_1.c.x;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = u_input.c;
    var_0 = 1u ^ ~func_4(Struct_2(Struct_1(vec3<f32>(796f, 689f, global3.x), u_input.a.x), Struct_1(vec3<f32>(-994f, 869f, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), 61162u), u_input.a.xw << (vec2<u32>(u_input.a.x, 14175u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(445f))), Struct_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], -1499f, -1897f), u_input.c), func_2(Struct_3(Struct_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global3.x, global3.x), u_input.c), Struct_1(vec3<f32>(-1610f, global2[_wgslsmith_index_u32(45227u, 10u)], global2[_wgslsmith_index_u32(87344u, 10u)]), u_input.a.x), vec2<u32>(u_input.a.x, 21983u), global2[_wgslsmith_index_u32(22588u, 10u)]), u_input.a.x, Struct_2(Struct_1(vec3<f32>(321f, -990f, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), 1u), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 10u)], global3.x, global2[_wgslsmith_index_u32(10186u, 10u)]), 22556u), u_input.a.xy, -2684f), true), u_input.c, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<u32>(16565u, 4507u), global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_0, 1i, 32326i)), vec3<i32>(arg_0, 48989i, u_input.d)), vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, true, true, true))));
    global2 = array<f32, 10>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 10u)], -2355f, global3.x), vec3<f32>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], global3.x), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, global3.x, 128f))))))), u_input.a.x);
    let var_2 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(select(true, true, true), true, true), all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(31281u, 10u)], global3.x) * vec2<f32>(global3.x, global3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 137f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(13344u, 10u)] + 165f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-488f, global3.x) + vec2<f32>(105f, -467f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(474f, 759f) + vec2<f32>(116f, 1331f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global3.x), vec2<f32>(825f, 978f), true))))), vec2<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(func_1(-25837i))), -1000f)));
    var var_0 = Struct_4(select(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), true)), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)))), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), 492f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(u_input.d)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.x, 1682f)))) - _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 5u)])), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 10u)], -2047f, global3.x) + vec3<f32>(global2[_wgslsmith_index_u32(30037u, 10u)], global3.x, -759f)), ~u_input.a.x), func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 4294967295u), 6u)], u_input.a.x & u_input.c, _wgslsmith_f_op_f32(-893f + 726f)), vec2<u32>(u_input.c, u_input.a.x), 1805f), u_input.a.x, Struct_2(func_2(global0[_wgslsmith_index_u32(u_input.c, 6u)], ~u_input.a.x, _wgslsmith_f_op_f32(func_1(-6323i))), func_2(global0[_wgslsmith_index_u32(0u, 6u)], u_input.c, _wgslsmith_f_op_f32(global3.x * -442f)), u_input.a.zw, _wgslsmith_f_op_f32(ceil(func_2(global0[_wgslsmith_index_u32(4294967295u, 6u)], 0u, global3.x).a.x))), select(false, !select(true, false, true), true)), _wgslsmith_add_u32(~u_input.c, 1u));
    global0 = array<Struct_3, 6>();
    let var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 10u)] * global2[_wgslsmith_index_u32(14930u, 10u)])))));
}

