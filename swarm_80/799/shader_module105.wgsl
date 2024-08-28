struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: vec2<i32> = vec2<i32>(-27860i, 1i);

var<private> global2: array<vec4<bool>, 24>;

var<private> global3: bool;

var<private> global4: array<i32, 13> = array<i32, 13>(-33135i, -70514i, -39127i, i32(-2147483648), 75731i, 1i, 24345i, 18763i, -1i, i32(-2147483648), -57166i, -20879i, -1i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> vec3<f32> {
    global3 = !arg_1.a.a.b.a.x;
    global4 = array<i32, 13>();
    global2 = array<vec4<bool>, 24>();
    var var_0 = vec2<u32>(1u, reverseBits(min(~_wgslsmith_clamp_u32(arg_0.b.x, arg_0.a.b, 32932u), arg_1.b.x)));
    var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.b.zx & vec2<u32>(0u, var_0.x), min(arg_1.b.ww, arg_0.b.ww), arg_1.b.zw) & ~countOneBits(arg_0.b.wz), firstTrailingBit(vec2<u32>(~var_0.x, ~arg_0.b.x))), ~arg_0.b.xz, ~vec2<u32>(max(_wgslsmith_clamp_u32(4294967295u, 0u, arg_0.a.b), arg_1.b.x), ~7003u));
    return vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.a.d.x * arg_0.a.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.c.d.x, arg_0.a.a.d.x), _wgslsmith_f_op_f32(max(-262f, arg_1.c.d.x)), true))))), _wgslsmith_f_op_f32(-arg_0.c.d.x));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = !vec4<bool>(false, arg_0.c.c.a.x, !arg_0.c.b.a.x, !(!(u_input.c < global4[_wgslsmith_index_u32(arg_1, 13u)])));
    let var_1 = arg_0.a;
    let var_2 = vec2<bool>(var_0.x, true);
    global1 = abs(_wgslsmith_mult_vec2_i32(reverseBits(-u_input.b.xy), ~min(vec2<i32>(global4[_wgslsmith_index_u32(var_1.b, 13u)], 0i), u_input.b.yy))) << (~vec2<u32>(reverseBits(arg_0.b.x), 35991u) % vec2<u32>(32u));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a.d.x, 755f, var_2.x)), 1105f, _wgslsmith_f_op_f32(-955f + arg_0.c.d.x))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_0.a.a.d.zww))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(var_1.a, arg_0.b.x), arg_0.b, Struct_2(arg_0.a.a.a, var_1.a.a, Struct_1(vec3<bool>(var_2.x, var_0.x, var_0.x)), arg_0.a.a.d)), arg_0, var_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.d.wxz) * vec3<f32>(-1000f, -1585f, 556f))), arg_0.c.d.wyz));
    return arg_0.a.a.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global3 = arg_2.b.a.x;
    var var_0 = 43387u;
    global4 = array<i32, 13>();
    var var_1 = Struct_4(Struct_3(arg_2, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), arg_2);
    let var_2 = max(813u, ~firstLeadingBit(var_1.a.b));
    return false;
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = ~(~(vec3<i32>(arg_1 >> (19998u % 32u), ~global4[_wgslsmith_index_u32(113686u, 13u)], ~u_input.b.x) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.xyz, vec3<i32>(-2147483647i, global1.x, -38062i)), -u_input.b.wzy)));
    var var_1 = Struct_2(Struct_1(!(!(!vec3<bool>(true, true, arg_0)))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(18536u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4916u), vec2<u32>(0u, 4294967295u))), 4u)], min(0u, 53974u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1096f, 1000f) * vec2<f32>(1000f, -734f)) - _wgslsmith_div_vec2_f32(vec2<f32>(936f, -177f), vec2<f32>(-346f, 929f)))))), Struct_1(select(!vec3<bool>(false, arg_0, true), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, true, arg_0)), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1313f, 521f, -1215f, -1486f)))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), -1829f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-208f, -277f))), 2159f)));
    var var_2 = vec3<i32>(global1.x, -93626i, var_0.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, -565f, 1856f) + var_1.d.wwx) * vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x))))), var_1.d.xzz, !var_1.b.a));
    var_2 = max(_wgslsmith_mult_vec3_i32(~(vec3<i32>(-1i, var_2.x, var_2.x) | abs(var_0)), u_input.b.yzz), var_0);
    return Struct_2(func_2(global0[_wgslsmith_index_u32(34161u, 4u)], 57247u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.xz) - _wgslsmith_div_vec2_f32(var_3.xy, var_1.d.wx))), func_2(Struct_4(Struct_3(Struct_2(var_1.a, var_1.b, Struct_1(var_1.c.a), var_1.d), _wgslsmith_div_u32(37017u, 30750u)), vec4<u32>(1u, 1u, 1u, 1u), Struct_2(func_2(global0[_wgslsmith_index_u32(4294967295u, 4u)], 0u, var_3.yy), var_1.a, func_2(global0[_wgslsmith_index_u32(9267u, 4u)], 4343u, var_1.d.wz), _wgslsmith_f_op_vec4_f32(-var_1.d))), ~(~_wgslsmith_div_u32(21959u, 4294967295u)), _wgslsmith_f_op_vec2_f32(var_1.d.wy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(23164u, 4u)], var_1.b.a.x)).xx))), Struct_1(var_1.b.a), var_1.d);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    global4 = array<i32, 13>();
    let var_0 = func_5(!(arg_2 | func_4(u_input.b.wxw, arg_0.a, arg_0)), -2147483647i);
    return func_5(arg_0.d.x < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(var_0, arg_3.x), vec4<u32>(43053u, 25496u, 579u, arg_3.x), Struct_2(Struct_1(var_0.b.a), arg_0.c, Struct_1(vec3<bool>(arg_2, arg_2, arg_0.b.a.x)), vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, -283f))), global0[_wgslsmith_index_u32(45253u, 4u)], arg_2)).x)), -(u_input.b.x & global1.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_2 {
    return func_6(func_5(select(false, u_input.b.x != -2147483647i, func_4(arg_1, func_2(Struct_4(Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), vec4<f32>(811f, -1309f, -588f, -1676f)), 4294967295u), vec4<u32>(0u, 0u, 1u, 4294967295u), Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), vec4<f32>(420f, 717f, -762f, 1210f))), 4294967295u, vec2<f32>(2025f, 705f)), Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), vec4<f32>(835f, 854f, 243f, -408f)))), ~(i32(-1i) * -16789i)), reverseBits(-15133i), true, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(57392u, 23517u), 63266u >> (0u % 32u)), min(_wgslsmith_mod_vec2_u32(vec2<u32>(23998u, 4294967295u), vec2<u32>(47291u, 1u)), select(vec2<u32>(5770u, 1u), vec2<u32>(1u, 15617u), false))), ~(~abs(vec2<u32>(4294967295u, 4250u))), ~vec2<u32>(~4294967295u, 4294967295u)));
}

fn func_7(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    global2 = array<vec4<bool>, 24>();
    var var_0 = _wgslsmith_sub_u32(min(1u, _wgslsmith_add_u32(~(~0u), 1u)), reverseBits(~0u) & select(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(2397u, 1u, 1u, 39569u)), vec4<u32>(4294967295u, 53972u, 0u, 1u)), _wgslsmith_mod_u32(4294967295u, 4294967295u), (global4[_wgslsmith_index_u32(20715u, 13u)] & arg_1) != -32872i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_6(arg_2, -59896i, any(!vec3<bool>(true, arg_0.x, true)), ~vec2<u32>(1u, 4294967295u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))).d.x, -610f, arg_2.d.x));
    var_0 = 0u;
    global0 = array<Struct_4, 4>();
    return vec2<u32>(1u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(4294967295u, ~24947u);
    global1 = -(vec2<i32>(~select(1i, u_input.b.x, true), _wgslsmith_mod_i32(reverseBits(u_input.b.x), ~u_input.d)) >> (func_7(vec2<bool>(true, all(vec2<bool>(false, true))), -_wgslsmith_dot_vec2_i32(vec2<i32>(33640i, u_input.c), vec2<i32>(-1i, -2147483647i)), func_1(u_input.b, _wgslsmith_div_vec3_i32(u_input.b.wzz, vec3<i32>(global4[_wgslsmith_index_u32(43843u, 13u)], 20271i, global4[_wgslsmith_index_u32(19752u, 13u)])))) % vec2<u32>(32u)));
    var var_1 = vec3<bool>(all(vec3<bool>(false, false, func_2(Struct_4(Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)), vec4<f32>(708f, 763f, 152f, 1050f)), var_0), vec4<u32>(1u, var_0, 62089u, 1u), Struct_2(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), vec4<f32>(1000f, 615f, 791f, 362f))), var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1104f, -752f))).a.x)), (reverseBits(var_0) << (var_0 % 32u)) >= 0u, !(true || any(vec4<bool>(true, true, false, true))));
    global1 = reverseBits(u_input.b.yw);
    let var_2 = select(vec4<bool>(var_1.x, false, !var_1.x, 14783u > _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, var_0), firstTrailingBit(vec2<u32>(1u, var_0)))), select(global2[_wgslsmith_index_u32(17268u, 24u)], global2[_wgslsmith_index_u32(var_0, 24u)], !(func_6(Struct_2(Struct_1(vec3<bool>(var_1.x, var_1.x, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x)), vec4<f32>(545f, 887f, -145f, 544f)), -15226i, var_1.x, vec2<u32>(55289u, 4294967295u)).d.x > _wgslsmith_f_op_f32(-575f - -749f))), vec4<bool>(false, true, all(var_1.yx), true));
    global1 = vec2<i32>(~(-52986i), firstTrailingBit(abs(global4[_wgslsmith_index_u32(min(12022u, var_0), 13u)]))) ^ vec2<i32>(abs(min(-13720i, 1i)), -1i);
    global1 = vec2<i32>(18630i, global4[_wgslsmith_index_u32(4294967295u, 13u)] << (~(~(~var_0)) % 32u));
    let var_3 = ~vec3<i32>(max(-1i, -global4[_wgslsmith_index_u32(var_0, 13u)] & u_input.b.x), _wgslsmith_div_i32(global4[_wgslsmith_index_u32(1u, 13u)], -439i), _wgslsmith_mod_i32(-global4[_wgslsmith_index_u32(var_0, 13u)], global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(~67168u & var_0, var_0, false)), -u_input.b, 4294967295u, func_1(vec4<i32>(~_wgslsmith_add_i32(global4[_wgslsmith_index_u32(var_0, 13u)], global4[_wgslsmith_index_u32(var_0, 13u)]), firstTrailingBit(global1.x << (0u % 32u)), global1.x, -16415i), (~vec3<i32>(2147483647i, u_input.a, 2147483647i) ^ firstLeadingBit(vec3<i32>(var_3.x, u_input.d, 32369i))) ^ _wgslsmith_mult_vec3_i32(-vec3<i32>(-11618i, -806i, global1.x), vec3<i32>(2147483647i, var_3.x, u_input.a))).d.xw);
}

