struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, i32(-2147483648), vec3<i32>(0i, -3041i, i32(-2147483648)), 1224f, vec2<u32>(79957u, 4294967295u));

var<private> global1: array<Struct_4, 17>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    let var_0 = select(vec4<bool>(false, any(select(select(vec4<bool>(true, false, true, global0.a), vec4<bool>(true, global0.a, global0.a, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(global0.a, true, true, false), global0.a), any(vec2<bool>(true, false)))), !(firstTrailingBit(u_input.c.x) >= u_input.a), any(vec4<bool>(false, global0.a, false, any(vec4<bool>(false, global0.a, global0.a, global0.a))))), !(!(!(!vec4<bool>(global0.a, true, global0.a, global0.a)))), true & any(!vec2<bool>(true, global0.a)));
    global1 = array<Struct_4, 17>();
    global1 = array<Struct_4, 17>();
    return vec3<i32>(_wgslsmith_dot_vec2_i32(~(-(~u_input.b.xz)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(23197i, -1i), u_input.d), u_input.e.yy)), ~global0.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(15997i, 2147483647i, global0.c.x), vec3<i32>(-1i, u_input.b.x, global0.c.x)) & _wgslsmith_clamp_i32(1i, -2147483647i, 38978i), ~abs(global0.b), -10757i), -u_input.d));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = arg_1;
    global1 = array<Struct_4, 17>();
    global0 = Struct_3(any(!vec2<bool>(true, !arg_0)), 25193i, select(vec3<i32>(-(~0i), global0.b, _wgslsmith_div_i32(global0.b >> (4294967295u % 32u), global0.c.x)), func_3(), global0.a), global0.d, _wgslsmith_div_vec2_u32(u_input.c, u_input.c));
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_2 = ~(~(~(~vec3<u32>(1u, 4294967295u, 1u))));
    return firstLeadingBit(~max(~_wgslsmith_sub_vec4_u32(vec4<u32>(63382u, 23242u, u_input.a, global0.e.x), vec4<u32>(78658u, var_2.x, 4294967295u, 1u)), vec4<u32>(abs(global0.e.x), ~36046u, 1u >> (0u % 32u), 5383u << (u_input.a % 32u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(573f + arg_2) - _wgslsmith_f_op_f32(floor(1f))) > _wgslsmith_f_op_f32(224f * _wgslsmith_f_op_f32(round(475f))), arg_0.x, vec3<i32>(select(_wgslsmith_mult_i32(u_input.e.x, ~(-5835i)), ~_wgslsmith_add_i32(u_input.e.x, u_input.d), global0.a), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.e.x), arg_0, arg_0)), arg_0), 38175i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)), _wgslsmith_div_vec2_u32(arg_3.yy, vec2<u32>(firstLeadingBit(arg_3.x), ~10236u)) << (vec2<u32>(arg_1, _wgslsmith_dot_vec2_u32(abs(global0.e), _wgslsmith_mod_vec2_u32(global0.e, arg_3.zz))) % vec2<u32>(32u)));
    global1 = array<Struct_4, 17>();
    var var_0 = (select(~vec4<i32>(15776i, arg_0.x, -61276i, global0.b), vec4<i32>(-arg_0.x, u_input.e.x, _wgslsmith_mod_i32(-1i, -19194i), i32(-1i) * -40739i), vec4<bool>(global0.a, !global0.a, true, global0.a)) | firstTrailingBit(~(vec4<i32>(0i, arg_0.x, 39654i, 1i) | vec4<i32>(57067i, 0i, -10509i, arg_0.x)))) & vec4<i32>(31253i, _wgslsmith_mod_i32(max(global0.c.x, abs(arg_0.x)), _wgslsmith_sub_i32(countOneBits(arg_0.x), 1i)), arg_0.x, -25722i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, global0.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1416f, global0.d))), arg_2), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), -1519f), arg_2), u_input.e.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1293f);
    return Struct_3(any(!vec2<bool>(false, global0.a)) || any(!(!vec4<bool>(true, true, global0.a, global0.a))), arg_0.x, vec3<i32>(-1i, 0i, var_0.x), var_1.b.b, ~_wgslsmith_mod_vec2_u32(global0.e, _wgslsmith_clamp_vec2_u32(arg_3.xy | global0.e, u_input.c << (u_input.c % vec2<u32>(32u)), select(u_input.c, vec2<u32>(0u, 0u), false))));
}

fn func_1() -> Struct_4 {
    global0 = Struct_3(global0.a, global0.c.x, u_input.b, _wgslsmith_div_f32(195f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), -113f)))), _wgslsmith_div_vec2_u32(vec2<u32>(select(~0u, 11918u, any(vec3<bool>(global0.a, true, global0.a))), u_input.a), vec2<u32>(_wgslsmith_div_u32(u_input.a, 81120u), 4294967295u) ^ reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(27766u, 40052u)))));
    global1 = array<Struct_4, 17>();
    global0 = func_4(vec2<i32>(global0.b, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, 0i, global0.b)), global0.c) | 685i), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, u_input.c.x, ~(global0.e.x << (u_input.a % 32u)), global0.e.x), vec4<u32>(global0.e.x, ~global0.e.x, u_input.a & 6396u, ~u_input.a)), -957f, func_2(!global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(461f, global0.d) + vec2<f32>(global0.d, global0.d)), global0.d), true | !global0.a, global1[_wgslsmith_index_u32(abs(u_input.c.x), 17u)]));
    let var_0 = _wgslsmith_div_u32(abs(22377u), _wgslsmith_add_u32(~u_input.a, firstTrailingBit(~global0.e.x)));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1278f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, 1828f) * vec2<f32>(global0.d, -1562f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, 920f)))))), -1260f);
    return Struct_4(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global0.a)), var_1.a, !select(!select(vec2<bool>(global0.a, false), vec2<bool>(true, false), vec2<bool>(false, false)), !select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, global0.a), vec2<bool>(true, global0.a)), select(!vec2<bool>(true, global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, false), global0.a), any(vec3<bool>(true, false, true)))));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4) -> f32 {
    global1 = array<Struct_4, 17>();
    global0 = func_4(vec2<i32>(select(-global0.c.x, global0.c.x, any(vec3<bool>(global0.a, global0.a, global0.a))), ~_wgslsmith_clamp_i32(29424i, global0.c.x, -1i)) | (vec2<i32>(_wgslsmith_mod_i32(global0.b, -31253i), ~0i) & global0.c.zx), abs(4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1015f))), (_wgslsmith_mod_vec4_u32(~vec4<u32>(30118u, 0u, u_input.c.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 4294967295u, 1u, arg_0), vec4<u32>(0u, 6277u, arg_0, arg_0))) & reverseBits(abs(vec4<u32>(global0.e.x, 4294967295u, 31482u, 2766u)))) & (reverseBits(vec4<u32>(arg_0, 0u, 4294967295u, 21961u) >> (vec4<u32>(2966u, arg_0, 89147u, 61320u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(min(vec4<u32>(global0.e.x, u_input.c.x, arg_0, arg_0), vec4<u32>(23358u, u_input.a, arg_0, arg_0)), ~vec4<u32>(14900u, 52339u, global0.e.x, global0.e.x))));
    let var_0 = Struct_3(false, firstLeadingBit(min(449i, _wgslsmith_sub_i32(u_input.e.x ^ 574i, ~968i))), global0.c, -569f, _wgslsmith_sub_vec2_u32(~(~(global0.e & global0.e)), ~global0.e));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.b.x)) + -1172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))), func_1().b.x);
    var var_2 = var_0;
    return arg_2.b.x;
}

fn func_6(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = global0.a;
    var var_1 = vec3<bool>(17250i >= (_wgslsmith_clamp_i32(~2147483647i, arg_0, -1i) << (3472u % 32u)), true, all(!func_1().a));
    let var_2 = ~(-12370i);
    global1 = array<Struct_4, 17>();
    var_0 = var_1.x;
    return Struct_3(all(select(select(vec4<bool>(var_1.x, false, false, true), !vec4<bool>(true, true, global0.a, false), true), !select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, true, global0.a, var_1.x), true), select(!vec4<bool>(var_1.x, false, global0.a, false), vec4<bool>(global0.a, global0.a, var_1.x, true), var_1.x | global0.a))), -(i32(-1i) * -global0.c.x), global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))), vec2<u32>(1u, ~firstLeadingBit(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(2470i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * -1000f)), _wgslsmith_f_op_f32(func_5(~global0.e.x, vec3<bool>(false, false, false), func_1()))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, global0.d)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-724f, 1478f))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, global0.a), vec2<bool>(global0.a, global0.a), false)))), !(!(!vec2<bool>(global0.a, global0.a))))), vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(func_5(global0.e.x, vec3<bool>(true, !global0.a, global0.a), Struct_4(select(vec3<bool>(true, global0.a, false), vec3<bool>(global0.a, false, global0.a), global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.d) + vec2<f32>(-147f, global0.d)), vec2<bool>(false, global0.a)))), _wgslsmith_f_op_f32(706f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) + _wgslsmith_f_op_f32(731f + global0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-2813f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1016f, 809f), _wgslsmith_div_f32(405f, var_0.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(floor(global0.d)))), -351f), ~(1u ^ global0.e.x) | _wgslsmith_sub_u32(u_input.a & ~global0.e.x, firstTrailingBit(~5239u)), global0.e.x, vec2<u32>(1u, var_0.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 1420f, var_0.d)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, var_0.d, var_0.d) - vec3<f32>(var_0.d, -1288f, -803f))))));
}

