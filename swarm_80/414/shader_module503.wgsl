struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<Struct_3, 2>;

var<private> global3: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global4: u32 = 38061u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<i32> {
    global0 = 85240u;
    let var_0 = global1[_wgslsmith_index_u32(~(~countOneBits(u_input.a.x)), 24u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-880f, -638f, -2345f) * vec3<f32>(var_0.e, var_0.e, var_0.e)) - vec3<f32>(_wgslsmith_div_f32(var_0.e, -1248f), _wgslsmith_f_op_f32(step(598f, 869f)), -336f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, 2224f, -676f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_0.e, var_0.e) - vec3<f32>(var_0.e, -427f, -453f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1366f * -284f), _wgslsmith_f_op_f32(ceil(var_0.e)), _wgslsmith_f_op_f32(-var_0.e)) - vec3<f32>(_wgslsmith_f_op_f32(-1094f + -201f), _wgslsmith_f_op_f32(min(var_0.e, var_0.e)), _wgslsmith_f_op_f32(f32(-1f) * -2567f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-200f, _wgslsmith_f_op_f32(step(381f, 124f)), _wgslsmith_f_op_f32(-2074f + 1640f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.e, -262f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-858f, var_0.e, 425f))), vec3<bool>(true, true, true))))))));
    let var_2 = -1i;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a.x << (u_input.a.x % 32u), 8789u, ~0u), countOneBits(u_input.a.x) >> ((var_0.c << (10167u % 32u)) % 32u), ~u_input.a.x), (var_0.c ^ 14157u) ^ select(0u >> (0u % 32u), u_input.a.x, any(vec3<bool>(false, var_0.d, var_0.d)))), 24u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(var_0.a.xz, vec2<u32>(67808u, 54076u), var_0.d), ~var_0.a.yy), ~(var_0.a.yy | var_0.a.yx)), 24u)], (abs(-var_2) << (_wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 1u, var_0.a.x), vec3<u32>(var_0.a.x, 20718u, 71850u))) % 32u)) >> (reverseBits(~42292u) % 32u));
    return countOneBits(firstTrailingBit(var_3.b.b));
}

fn func_2() -> i32 {
    global0 = u_input.a.x;
    global3 = array<vec3<bool>, 2>();
    var var_0 = vec4<i32>(select(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(5181i, 2147483647i), ~262i), 1i, true), 1i, -2147483647i >> (_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(u_input.a.x >> (1u % 32u))) % 32u), 2147483647i);
    var var_1 = Struct_1(u_input.a.zyz, _wgslsmith_sub_vec4_i32(func_3() ^ ((vec4<i32>(var_0.x, var_0.x, var_0.x, -35315i) >> (u_input.a % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, 62201u, 37868u, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(~1i, var_0.x, _wgslsmith_mult_i32(-var_0.x, -1i), 0i)), u_input.a.x, select(all(vec3<bool>(true, false, true)), !(any(vec2<bool>(true, true)) | any(vec4<bool>(false, false, true, false))), true), 1f);
    var_1 = Struct_1(u_input.a.zxy, vec4<i32>(var_0.x, _wgslsmith_clamp_i32(1i, i32(-1i) * -14130i, 0i), ~func_3().x, -countOneBits(1i)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 16603u, var_1.c), u_input.a) % vec4<u32>(32u)), ~countOneBits(1u), all(select(!select(vec4<bool>(var_1.d, false, true, false), vec4<bool>(true, var_1.d, true, var_1.d), var_1.d), select(vec4<bool>(var_1.d, true, var_1.d, true), select(vec4<bool>(var_1.d, var_1.d, false, true), vec4<bool>(var_1.d, var_1.d, true, var_1.d), var_1.d), vec4<bool>(var_1.d, false, true, true)), var_1.d)), -249f);
    return var_0.x >> (4294967295u % 32u);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    let var_0 = Struct_1(abs(~u_input.a.wwx), abs(-vec4<i32>(~arg_3.x, arg_3.x, arg_3.x, arg_3.x)), 0u, false, _wgslsmith_f_op_f32(-1f));
    global0 = u_input.a.x;
    global2 = array<Struct_3, 2>();
    let var_1 = !select(select(vec2<bool>(!arg_1, var_0.d), vec2<bool>(true, true), vec2<bool>(!arg_0.x, var_0.d || var_0.d)), !arg_0.xy, vec2<bool>(true, true));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(func_2(), abs(max(max(-2147483647i, -42590i), arg_3.x | var_0.b.x))), ~func_3().x);
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = func_1(global3[_wgslsmith_index_u32(70740u, 2u)], true, true, min(vec2<i32>(1i, i32(-1i) * -1i), reverseBits(vec2<i32>(1i, -14198i)))) << (_wgslsmith_mult_u32(~1u, countOneBits(u_input.a.x)) % 32u);
    let var_2 = !vec2<bool>(true, all(vec4<bool>(true, true, true, true)));
    var var_3 = (any(select(vec4<bool>(var_2.x, false, false, var_2.x), !vec4<bool>(false, var_2.x, false, var_2.x), 25260i >= var_1)) & (0u < ((u_input.a.x << (0u % 32u)) << (~u_input.a.x % 32u)))) | !var_2.x;
    let var_4 = global2[_wgslsmith_index_u32((_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 11486u), vec2<u32>(u_input.a.x, u_input.a.x) & u_input.a.wz), reverseBits(~u_input.a.yx)) ^ 952u) << (~max(u_input.a.x, ~9823u) % 32u), 2u)];
    var var_5 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, 10969u, abs(u_input.a.x)), 24u)];
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_5.e), _wgslsmith_f_op_f32(trunc(var_5.e))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1448f, 424f)))))));
    var var_7 = Struct_3(var_5.b.zy, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_5.e, var_5.e))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(4294967295u, ~var_5.a.x), ~select(1u, var_5.c, !all(global3[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_f32(-131f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f + var_7.b) - _wgslsmith_f_op_f32(var_6.x + var_7.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(-var_5.e))));
}

