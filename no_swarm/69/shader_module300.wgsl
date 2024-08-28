struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = -1321f;

var<private> global2: array<i32, 9> = array<i32, 9>(i32(-2147483648), -21042i, 2147483647i, 24004i, -4724i, 0i, -29498i, -29303i, -34545i);

var<private> global3: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    global3 = -50715i;
    var var_0 = countOneBits(max(1i, ~_wgslsmith_div_i32(-46642i, 54301i)));
    let var_1 = arg_1;
    var var_2 = var_1;
    let var_3 = arg_1.b;
    return arg_1;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec3<i32> {
    global0 = false;
    global1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -753f));
    let var_0 = all(!select(vec3<bool>(false, arg_2, true), vec3<bool>(true, false, true), !all(vec3<bool>(arg_2, true, arg_2))));
    let var_1 = func_2(all(!vec4<bool>(select(var_0, false, var_0), arg_0.b.a.x <= -1504f, arg_2, var_0)), arg_0);
    let var_2 = ~max(_wgslsmith_dot_vec4_u32(~(vec4<u32>(23057u, 1u, arg_0.c, 15114u) | vec4<u32>(arg_1, arg_1, arg_1, u_input.a)), select(vec4<u32>(u_input.a, 4294967295u, 102258u, 4294967295u), vec4<u32>(1u, 100349u, 15298u, var_1.c), select(vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, arg_2, arg_2, false)))), 46589u);
    return vec3<i32>(0i, -69597i, select(global2[_wgslsmith_index_u32(var_1.c, 9u)], (global2[_wgslsmith_index_u32(~14959u, 9u)] | var_1.b.b) << (_wgslsmith_mod_u32(arg_1, _wgslsmith_sub_u32(4294967295u, var_2)) % 32u), true & arg_2));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = -(i32(-1i) * -(max(global2[_wgslsmith_index_u32(784u, 9u)], global2[_wgslsmith_index_u32(arg_3.x, 9u)]) << (1u % 32u)));
    let var_2 = ~reverseBits(reverseBits(vec4<i32>(max(global2[_wgslsmith_index_u32(33863u, 9u)], arg_2.x), arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, -17654i), vec3<i32>(arg_2.x, 88332i, global2[_wgslsmith_index_u32(u_input.a, 9u)])), select(global2[_wgslsmith_index_u32(arg_3.x, 9u)], arg_2.x, arg_1))));
    global0 = true;
    let var_3 = 1997f;
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f + 1173f) - func_2(true, Struct_3(arg_2, Struct_1(vec4<f32>(arg_0, var_3, -2519f, -1001f), 1i), u_input.a)).b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_3))), global2[_wgslsmith_index_u32(u_input.a ^ arg_3.x, 9u)]), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1328f + _wgslsmith_f_op_f32(-arg_0)), arg_0)))), arg_1 | (_wgslsmith_dot_vec2_u32(arg_3.xz, vec2<u32>(u_input.a, 43807u)) < ~_wgslsmith_mod_u32(arg_3.x, arg_3.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(602f, var_3, arg_0, -394f), vec4<f32>(624f, var_3, var_3, 1359f), vec4<bool>(true, false, arg_1, arg_1))))), _wgslsmith_mult_i32(-(~1i), ~(-14084i))));
}

fn func_1() -> Struct_2 {
    var var_0 = !all(vec2<bool>(true, true));
    return func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1012f))), true, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], -1i << (1u % 32u), _wgslsmith_add_i32(2147483647i, global2[_wgslsmith_index_u32(u_input.a, 9u)])), func_3(func_2(true, Struct_3(vec2<i32>(52664i, 0i), Struct_1(vec4<f32>(-1375f, -1000f, 699f, 645f), global2[_wgslsmith_index_u32(65484u, 9u)]), u_input.a)), reverseBits(40315u), true)), -select(-global2[_wgslsmith_index_u32(u_input.a, 9u)], -2147483647i, global2[_wgslsmith_index_u32(42374u, 9u)] <= global2[_wgslsmith_index_u32(4551u, 9u)])), select(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, 6126u), min(3683u, u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 14795u, 0u)), ~vec3<u32>(14491u, u_input.a, u_input.a))), ~vec3<u32>(u_input.a, min(u_input.a, 4294967295u), u_input.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~(~(vec3<u32>(~35108u, ~0u, _wgslsmith_add_u32(0u, 0u)) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 14759u)), 18982u, u_input.a | u_input.a)));
    var var_2 = Struct_2(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2431f) * -848f)))), true, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d.a.x)) - -228f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + _wgslsmith_f_op_f32(-var_0.d.a.x)), -1269f, var_0.d.a.x), select(func_2(true, Struct_3(vec2<i32>(global2[_wgslsmith_index_u32(var_1.x, 9u)], global2[_wgslsmith_index_u32(var_1.x, 9u)]), var_0.d, 4294967295u)).a.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(68988u, 1u), u_input.a), 9u)], all(vec2<bool>(false, false)))));
    let var_3 = Struct_3(-abs(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(54752i, 0i, global2[_wgslsmith_index_u32(var_1.x, 9u)]), vec3<i32>(global2[_wgslsmith_index_u32(1u, 9u)], -2147483647i, var_0.a.b)))), Struct_1(var_0.d.a, var_2.a.b), _wgslsmith_dot_vec2_u32(~var_1.yy, _wgslsmith_div_vec2_u32(~min(vec2<u32>(var_1.x, u_input.a), var_1.zz), _wgslsmith_div_vec2_u32(var_1.yy, var_1.zz))));
    let var_4 = 1u;
    var var_5 = var_2.d.a.x;
    var var_6 = !(!vec2<bool>(false, (var_3.b.a.x >= -1851f) | true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.d.a.xxx)) - var_0.d.a.zzy), ~vec4<i32>(var_3.a.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.d.b, -13185i, -1i, 2147483647i), vec4<i32>(49061i, var_2.a.b, var_0.a.b, global2[_wgslsmith_index_u32(0u, 9u)]), true), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.b, var_0.d.b, var_2.d.b, var_0.d.b), vec4<i32>(var_0.d.b, 2147483647i, 5911i, global2[_wgslsmith_index_u32(var_3.c, 9u)]))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(var_2.c, var_3).c, 1735u), 9u)], 2147483647i), var_0.d.a.x, firstTrailingBit(u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b.a) + _wgslsmith_f_op_vec4_f32(var_3.b.a - vec4<f32>(var_3.b.a.x, var_3.b.a.x, 1304f, -103f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1604f, 2125f, var_0.b, 887f) + vec4<f32>(413f, var_2.a.a.x, var_3.b.a.x, -903f)), var_2.a.a))));
}

