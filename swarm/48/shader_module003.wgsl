struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<f32, 3>;

var<private> global2: f32 = 1050f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> u32 {
    var var_0 = Struct_2(~(-abs(vec4<i32>(56352i, u_input.c, 2147483647i, u_input.a))), Struct_1(select(vec3<bool>(any(vec2<bool>(true, false)), false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), 406f, _wgslsmith_mod_vec2_i32(u_input.d.xz, _wgslsmith_div_vec2_i32(u_input.d.zx | u_input.d.zz, ~vec2<i32>(u_input.c, u_input.b.x))), ~select(vec4<u32>(1u, 4294967295u, 0u, 1u), select(vec4<u32>(1470u, 49708u, 1u, 4294967295u), vec4<u32>(0u, 1793u, 4294967295u, 111276u), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, false))), all(vec4<bool>(true, true, true, true)), vec2<bool>(true, true));
    let var_1 = ~(~var_0.b.d.x >> (_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.b.d.x, var_0.b.d.x, var_0.b.d.x)), min(var_0.b.d.wyy, var_0.b.d.zxz)) % 32u));
    let var_2 = !(!(!(!var_0.c)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.b.d.x, 2u)], var_0.b.b, 1459f, arg_1))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(0u, 3u)], 929f, -364f, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, arg_0.x, 837f, 213f))))), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), countOneBits(vec2<u32>(4039u, var_0.b.d.x))), 2u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(479f + global1[_wgslsmith_index_u32(1u, 3u)]))), 1092f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(var_0.b.d.x, var_0.b.d.x, var_0.b.d.x)), 2u)]))), vec4<bool>(var_2, !(1i != u_input.a), true, false))));
    let var_4 = _wgslsmith_f_op_f32(-1f);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    global2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_3.a.b.d.wxw, arg_3.a.b.d.wxz), _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_3.a.b.d.wwx, vec3<u32>(35479u, 1u, 4294967295u)), arg_2.b.d.zxw & abs(arg_2.b.d.ywy))), 2u)] - -547f);
    global2 = _wgslsmith_div_f32(145f, -1090f);
    let var_0 = _wgslsmith_mod_i32(arg_3.a.a.x, max(_wgslsmith_dot_vec4_i32(arg_2.a, vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, reverseBits(2147483647i))), -(~firstTrailingBit(u_input.d.x))));
    var var_1 = -_wgslsmith_dot_vec2_i32(u_input.d.zx & select(firstLeadingBit(arg_3.a.a.yx), -vec2<i32>(-11574i, -35716i), select(vec2<bool>(arg_3.a.b.a.x, arg_3.a.d.x), arg_2.b.a.xy, arg_3.a.d.x)), u_input.d.yx);
    let var_2 = arg_3;
    return ~(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), firstTrailingBit(vec2<u32>(1u, var_2.c)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    global0 = array<f32, 2>();
    var var_0 = Struct_3(arg_1, vec2<u32>(~arg_1.b.d.x, arg_1.b.d.x), 11091u, arg_1.b.d, ~47962u);
    let var_1 = ~40640u;
    let var_2 = vec4<u32>(~(4294967295u & select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, var_1, var_0.b.x, 11431u), vec4<u32>(19828u, 30182u, var_1, 1u)), 0u, any(vec2<bool>(false, arg_1.d.x)))), max(var_0.c, func_4(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], -165f), arg_0), arg_0.x), countOneBits(abs(-18249i)), var_0.a, Struct_3(Struct_2(vec4<i32>(var_0.a.a.x, u_input.c, 0i, u_input.c), Struct_1(vec3<bool>(false, false, var_0.a.d.x), global0[_wgslsmith_index_u32(15609u, 2u)], u_input.b, vec4<u32>(3431u, 1u, 4294967295u, arg_1.b.d.x)), false, arg_3), ~var_0.a.b.d.yy, _wgslsmith_div_u32(arg_2, var_1), abs(vec4<u32>(27173u, arg_1.b.d.x, arg_1.b.d.x, 84070u)), arg_2 & arg_1.b.d.x))), ~(~countOneBits(16528u)), func_4(4294967295u, i32(-1i) * -arg_1.b.c.x, Struct_2(arg_1.a, Struct_1(!var_0.a.b.a, _wgslsmith_f_op_f32(ceil(var_0.a.b.b)), select(vec2<i32>(arg_1.a.x, arg_1.b.c.x), vec2<i32>(arg_1.a.x, 29989i), true), vec4<u32>(4294967295u, 0u, arg_1.b.d.x, arg_1.b.d.x)), var_0.a.b.a.x, select(vec2<bool>(true, true), vec2<bool>(arg_1.d.x, true), !arg_3)), Struct_3(var_0.a, select(vec2<u32>(arg_1.b.d.x, 28157u) << (vec2<u32>(4294967295u, arg_1.b.d.x) % vec2<u32>(32u)), select(vec2<u32>(1u, var_0.a.b.d.x), arg_1.b.d.xx, vec2<bool>(arg_1.c, true)), select(vec2<bool>(true, true), vec2<bool>(var_0.a.b.a.x, arg_1.c), vec2<bool>(arg_3.x, arg_3.x))), arg_1.b.d.x, ~(~var_0.a.b.d), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 11376u), _wgslsmith_mult_u32(var_0.a.b.d.x, arg_2), 0u))));
    let var_3 = ~var_0.b.x;
    return arg_1;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.b)));
    var var_0 = arg_2;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, var_0.x, arg_1.b.b, arg_0.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(arg_0, arg_2)), arg_0, true))), !(!select(false, false, true)))));
    let var_1 = _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_add_u32(~arg_1.b.d.x, arg_1.b.d.x));
    global0 = array<f32, 2>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1636f + 1427f)), -2107f)) + _wgslsmith_f_op_f32(arg_1.b.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1765f - -753f)))));
}

fn func_1() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_mult_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(57181u, 0u, 1u, 34841u), vec4<u32>(45871u, 35952u, 1u, 0u))))), 3u)];
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~0u), 3u)] - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 3u)], -1400f) - _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(6020u, 2u)])))) + 1134f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(0u, 3u)], 1249f, -480f, -615f), vec4<f32>(-1479f, global1[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(72192u, 2u)], 775f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(61367u, 2u)], -1011f, -176f, 717f))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(35360u, 2u)], global1[_wgslsmith_index_u32(61089u, 3u)]) + vec3<f32>(global0[_wgslsmith_index_u32(73686u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), Struct_2(vec4<i32>(66324i, u_input.c, 52006i, 2147483647i), Struct_1(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(4090u, 2u)], vec2<i32>(54500i, -23414i), vec4<u32>(39963u, 112368u, 70879u, 23611u)), false, vec2<bool>(true, true)), 4294967295u, select(vec2<bool>(false, true), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 2u)], 759f, global1[_wgslsmith_index_u32(6412u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]))))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 2u)])), true))));
    var_1 = 41626i;
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(959f)), -430f))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 1u), 3u)])), 662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1608f - -186f) - 1188f))));
    return global0[_wgslsmith_index_u32(firstTrailingBit(0u), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-abs(u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 14584i) & u_input.d, vec3<i32>(-2147483647i, u_input.c, u_input.d.x) << (vec3<u32>(31715u, 11126u, 71879u) % vec3<u32>(32u))), -_wgslsmith_clamp_i32(0i, 19671i, 1i)), vec3<i32>(0i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d.x), vec2<i32>(2147483647i, u_input.c)), 22954i & u_input.d.x), -1i)) << (vec3<u32>(4294967295u >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(16290u, 52331u), vec2<u32>(1u, 1u), vec2<bool>(false, true)), vec2<u32>(49827u, 43712u)) % 32u), 4294967295u, _wgslsmith_add_u32(1u, firstTrailingBit(abs(1u)))) % vec3<u32>(32u));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(76420u, 2u)] + global1[_wgslsmith_index_u32(1u, 3u)])) * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~1u, 3u)], _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(func_1()), any(vec2<bool>(false, select(false, true, false))))), 1249f));
    var var_1 = Struct_3(Struct_2(~select(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, 16086i), vec4<i32>(u_input.c, var_0.x, u_input.a, 2147483647i), false) & select(firstTrailingBit(vec4<i32>(var_0.x, u_input.d.x, 2677i, var_0.x)), ~vec4<i32>(u_input.b.x, var_0.x, u_input.d.x, 9475i), all(vec3<bool>(true, false, true))), Struct_1(vec3<bool>(true, all(vec3<bool>(true, true, false)), all(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(4294967295u, 2u)], vec2<i32>(_wgslsmith_mod_i32(46128i, -37079i), u_input.a), ~vec4<u32>(1u, 1u, 1u, 1u)), true, vec2<bool>(!any(vec2<bool>(true, false)), false)), reverseBits(max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), 48282u, vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(0u, 27360u, 6311u, 38090u)) ^ reverseBits(1u)), _wgslsmith_mod_u32(~(~1u), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(18644u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], -232f) - vec3<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(25302u, 3u)], global0[_wgslsmith_index_u32(0u, 2u)])), func_2(vec3<f32>(global0[_wgslsmith_index_u32(1u, 2u)], 1797f, -864f), Struct_2(vec4<i32>(u_input.d.x, var_0.x, 44167i, u_input.b.x), Struct_1(vec3<bool>(true, false, true), -1023f, vec2<i32>(var_0.x, var_0.x), vec4<u32>(41720u, 4294967295u, 4294967295u, 50233u)), true, vec2<bool>(false, true)), 4294967295u, vec2<bool>(true, true)), select(4294967295u, 103141u, true), vec2<bool>(true, true)).b.d.x), ~4294967295u, 1u), 11497u);
    var_1 = Struct_3(Struct_2(vec4<i32>(2147483647i, -2147483647i, u_input.c, -u_input.a << ((var_1.d.x | var_1.c) % 32u)), var_1.a.b, false, !(!select(var_1.a.d, var_1.a.d, var_1.a.b.a.x))), vec2<u32>(var_1.d.x, ~var_1.c), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_clamp_u32(3237u, 0u, var_1.e), var_1.e)), var_1.d.yy), ~var_1.a.b.d, ~var_1.b.x);
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(81257u, 3u)], var_1.a.b.b, global1[_wgslsmith_index_u32(var_1.c, 3u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.b.b, global1[_wgslsmith_index_u32(var_1.d.x, 3u)], var_1.a.b.b), vec3<f32>(1012f, global0[_wgslsmith_index_u32(1u, 2u)], 1000f))), select(var_1.a.b.a, var_1.a.b.a, var_1.a.c))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1905f, global0[_wgslsmith_index_u32(var_1.c, 2u)], var_1.a.b.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, var_1.a.b.b, 821f)))))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-551f, -248f, global1[_wgslsmith_index_u32(0u, 3u)]) + vec3<f32>(1000f, var_1.a.b.b, -1730f)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-866f, global1[_wgslsmith_index_u32(8271u, 3u)], global0[_wgslsmith_index_u32(var_1.c, 2u)]), vec3<f32>(-212f, -404f, 1339f)))), Struct_2(vec4<i32>(59350i, u_input.d.x, 0i, var_0.x) >> (var_1.d % vec4<u32>(32u)), var_1.a.b, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.c, 2u)]) > -2112f, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(8939u, 2u)], global0[_wgslsmith_index_u32(var_1.a.b.d.x, 2u)], 1000f) + vec3<f32>(var_1.a.b.b, 252f, 641f)), func_2(vec3<f32>(563f, 1739f, var_1.a.b.b), Struct_2(vec4<i32>(-1i, -2147483647i, var_0.x, -2147483647i), var_1.a.b, var_1.a.d.x, var_1.a.d), var_1.d.x, var_1.a.b.a.xz), var_1.d.x, select(var_1.a.b.a.yz, var_1.a.b.a.zy, true)).b.a.yx), var_1.b.x, !func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1341f, var_1.a.b.b, 528f), vec3<f32>(909f, var_1.a.b.b, -271f)), Struct_2(vec4<i32>(var_1.a.b.c.x, -1i, 7732i, -1i), var_1.a.b, var_1.a.d.x, var_1.a.d), var_1.e, var_1.a.b.a.zy).b.a.xx), func_2(vec3<f32>(_wgslsmith_f_op_f32(func_1()), -217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1853f, global0[_wgslsmith_index_u32(0u, 2u)], false)))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2038f, 1481f, var_1.a.b.b)))), Struct_2(vec4<i32>(-38324i, -9989i, var_0.x, 0i) << (var_1.a.b.d % vec4<u32>(32u)), var_1.a.b, var_1.a.d.x, var_1.a.d), _wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(var_1.b.x, 0u, 4294967295u, var_1.c)), vec2<bool>(!var_1.a.c, !var_1.a.c)), 20712u, !func_2(vec3<f32>(var_1.a.b.b, var_1.a.b.b, -1798f), Struct_2(var_1.a.a, var_1.a.b, false, vec2<bool>(true, true)), _wgslsmith_sub_u32(1u, var_1.d.x), vec2<bool>(true, true)).d).b.d.x, !(!var_1.a.d)).b.d.yzz;
    let var_3 = var_1.c;
    let var_4 = vec3<u32>(var_1.a.b.d.x, reverseBits(~_wgslsmith_dot_vec3_u32(var_1.d.zwz, var_1.a.b.d.zxy)), abs(~_wgslsmith_mult_u32(0u, 4687u))) >> (vec3<u32>(abs(_wgslsmith_clamp_u32(var_1.b.x, reverseBits(var_2.x), ~4294967295u)), 1u, ~reverseBits(var_1.d.x)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~max(firstLeadingBit(~var_2.zz), var_4.zy), _wgslsmith_dot_vec2_u32(~var_4.yz, var_2.xz));
}

