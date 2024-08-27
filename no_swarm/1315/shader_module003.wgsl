struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(9393i, -1i, 2147483647i, 2402i, 32167i, 1i, 31531i, 18389i, -13191i, -25267i, -10705i, 0i, 0i, -11676i, 36883i, -10904i, 0i, -56708i, 2147483647i, 37692i, -52507i, 19820i, -6461i, 40650i);

var<private> global1: array<u32, 25>;

var<private> global2: array<vec2<bool>, 1>;

var<private> global3: Struct_5 = Struct_5(vec3<bool>(true, false, false), vec2<i32>(-9633i, 2147483647i), 902f, vec3<bool>(true, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_5(select(vec3<bool>(true, !global3.d.x & false, false), global3.d, select(!(!global3.a), select(!global3.a, select(global3.d, global3.d, global3.a), all(global3.d.yz)), global3.d)), max(vec2<i32>(~41306i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(50406u, 24u)])) ^ _wgslsmith_div_vec2_i32(global3.b, u_input.b.yz), vec2<i32>((-2147483647i << (u_input.d.x % 32u)) << (~1u % 32u), global3.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(815f, 791f)))))), !(!global3.d));
    var var_1 = var_0.d.x;
    return Struct_3(_wgslsmith_clamp_vec3_i32(~(u_input.b.yzy | max(u_input.b.zyy, u_input.b.wwz)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(37468u, 24u)], var_0.b.x, u_input.a) & u_input.b.xzx, vec3<i32>(global0[_wgslsmith_index_u32(14705u, 24u)], -1i, -1i))), ~vec3<i32>(~7825i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(74553u, 19770u), 24u)], 14670i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_clamp_i32(i32(-1i) * -(~(global3.b.x >> (u_input.d.x % 32u))), 745i, -(~global0[_wgslsmith_index_u32(firstLeadingBit(6736u), 24u)]) | -65110i);
    let var_1 = vec3<bool>(all(global3.a.yz), select(true, false, all(vec4<bool>(arg_2, true, false, true)) || any(select(vec2<bool>(false, arg_2), global3.d.xx, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(732f, global3.c)) * _wgslsmith_f_op_f32(abs(-275f)))) > _wgslsmith_f_op_f32(-global3.c));
    global2 = array<vec2<bool>, 1>();
    global2 = array<vec2<bool>, 1>();
    let var_2 = Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1884f))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(756f, 2380f, global3.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-552f, global3.c, global3.c) - vec3<f32>(global3.c, 484f, global3.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, global3.c, global3.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-294f, global3.c, global3.c), vec3<f32>(-257f, 154f, -819f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c, global3.c, 1654f), vec3<f32>(global3.c, 774f, global3.c), true))))));
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = -3886f;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.c)))))));
    var_0 = _wgslsmith_f_op_f32(-944f + 690f);
    global0 = array<i32, 24>();
    var var_2 = Struct_1(~(~u_input.b << (u_input.d % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1066f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1137f, 1543f, global3.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1215f, var_1)))))));
    return StorageBuffer(-456f, u_input.d, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.a, vec4<i32>(0i, 7847i, -39243i, -9451i) << (u_input.c % vec4<u32>(32u))) & var_2.a, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.x, global0[_wgslsmith_index_u32(29447u, 24u)], var_2.a.x, -2147483647i), vec4<i32>(arg_1.a.x, var_2.a.x, u_input.b.x, global3.b.x)) >> (func_3(vec4<i32>(1i, u_input.b.x, global3.b.x, 1i), vec2<u32>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(29262u, 25u)]), global3.a.x) % 32u), 3410i >> (~4294967295u % 32u), -1669i, 2147483647i), min(vec4<i32>(30679i, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], var_2.a.x, arg_1.a.x), u_input.b) >> (_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(1u, 25u)], 54883u, 1u, u_input.e)), vec4<u32>(4294967295u, 12455u, global1[_wgslsmith_index_u32(15400u, 25u)], u_input.c.x) & u_input.d) % vec4<u32>(32u))), abs(abs(54673i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~vec4<u32>(38091u, ~max(global1[_wgslsmith_index_u32(118353u, 25u)], 9114u), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(31433u, u_input.e, 1u, 1u), u_input.c)), 25u)], 15222u));
    global2 = array<vec2<bool>, 1>();
    var var_1 = global3.a.x;
    var_1 = true;
    let var_2 = ~u_input.c;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.c)), _wgslsmith_f_op_f32(max(1000f, global3.c)))), _wgslsmith_f_op_f32(round(global3.c))), func_1());
}

