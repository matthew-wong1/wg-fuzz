struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<bool>, 20>;

var<private> global3: Struct_3 = Struct_3(vec4<i32>(-30466i, 2147483647i, i32(-2147483648), i32(-2147483648)), Struct_2(vec2<f32>(-1000f, -548f), Struct_1(-214f)));

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = 17591i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.b.b.a - 1098f))), 1200f, _wgslsmith_f_op_f32(f32(-1f) * -170f));
    let var_2 = Struct_3(-global3.a, Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.zy), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(1394f, -1493f), _wgslsmith_f_op_f32(-global3.b.a.x)))));
    var var_3 = firstLeadingBit(u_input.d);
    var_3 = -u_input.d;
    return global3.b.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    let var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(-arg_2.b.a.x) > _wgslsmith_f_op_f32(round(global3.b.b.a)), true, any(select(!vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, false, global1.x), false))), vec3<bool>(select(false, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), global1.x), global1.x, global1.x), false);
    global4 = array<Struct_1, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.a.x), _wgslsmith_f_op_f32(arg_2.b.b.a * -484f), _wgslsmith_f_op_f32(floor(arg_0.a))))))), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(700f)))), 1f)));
    var var_2 = vec4<u32>(22999u, abs(~reverseBits(43036u)), abs(~reverseBits(u_input.a.x)), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a.x >> (68763u % 32u), countOneBits(18325u)), u_input.a.x, ~13867u));
    global0 = vec4<i32>(arg_2.a.x, ~_wgslsmith_clamp_i32(-1i, arg_2.a.x & 1i, _wgslsmith_add_i32(22352i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, 5358i), vec3<i32>(0i, u_input.c, u_input.d.x)), -2147483647i, 0i, _wgslsmith_div_i32(8057i, -1i)), firstTrailingBit(countOneBits(u_input.d))), -8456i) & vec4<i32>(~(~global3.a.x) << (var_2.x % 32u), u_input.d.x, -6346i, global3.a.x);
    return arg_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_3 {
    var var_0 = 25191u;
    let var_1 = u_input.a.x;
    global4 = array<Struct_1, 21>();
    global4 = array<Struct_1, 21>();
    var var_2 = vec4<u32>(87930u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a.x, ~arg_1.b.x, ~arg_1.d), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 51357u, var_1, u_input.a.x), ~u_input.a), abs(~u_input.a.x)), _wgslsmith_dot_vec3_u32(abs(u_input.a.wzx) >> (~u_input.a.yxy % vec3<u32>(32u)), u_input.a.xyz)), 103305u, 14123u);
    return Struct_3(select(max(max(vec4<i32>(1406i, 31924i, 1i, -2147483647i), countOneBits(vec4<i32>(1i, global3.a.x, 1i, u_input.e))), global3.a), vec4<i32>(min(global3.a.x, i32(-1i) * -1i), -2147483647i, _wgslsmith_mod_i32(1i ^ u_input.d.x, global0.x), i32(-1i) * -6408i), !any(vec4<bool>(global1.x, true, global1.x, global1.x))), global3.b);
}

fn func_1() -> vec3<bool> {
    global3 = func_4(Struct_3(-_wgslsmith_add_vec4_i32(u_input.d | vec4<i32>(global0.x, 1i, global3.a.x, u_input.d.x), u_input.d), func_3(global3.b.b, func_2(u_input.b), Struct_3(-u_input.d, global3.b))), Struct_4(global3.b, u_input.a.zyw, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(92354u, 1u), vec2<u32>(5595u, u_input.a.x)) ^ u_input.a.xw, u_input.a.yx, ~(u_input.a.yz ^ u_input.a.wz)), _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zw)));
    global2 = array<vec4<bool>, 20>();
    let var_0 = (global3.b.b.a >= -595f) == (-6817i >= u_input.d.x);
    var var_1 = 441f;
    global0 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(u_input.d), vec4<i32>(u_input.b, 54569i, -25095i, u_input.c) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), -global3.a ^ vec4<i32>(-49267i, -7137i, global0.x, -29554i)), vec4<i32>(global3.a.x, abs(~u_input.e), i32(-1i) * -4641i, ~u_input.e & 2147483647i));
    return select(vec3<bool>(true, var_0, ~4294967295u < ~(~u_input.a.x)), vec3<bool>(global1.x, !var_0, all(vec2<bool>(true, !var_0))), !select(select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, true), vec3<bool>(var_0, global1.x, true)), vec3<bool>(global1.x, global1.x, false), !vec3<bool>(var_0, true, var_0)), !vec3<bool>(var_0, global1.x, var_0), ~0u > ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(true, !all(vec2<bool>(global1.x, global1.x)), !global1.x & (global0.x >= 2147483647i)), func_1(), false);
    let var_1 = !var_0.yx;
    global2 = array<vec4<bool>, 20>();
    global3 = func_4(Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.e ^ 20457i, min(u_input.b, global0.x), u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(28598i, 0i, global0.x, global3.a.x), global3.a), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(global3.a, global3.a), u_input.d)), func_3(global4[_wgslsmith_index_u32(33704u, 21u)], global3.b.b, Struct_3(global3.a, Struct_2(vec2<f32>(758f, -851f), global3.b.b)))), Struct_4(Struct_2(func_3(Struct_1(-641f), global4[_wgslsmith_index_u32(abs(4294967295u), 21u)], Struct_3(u_input.d, global3.b)).a, func_3(func_4(Struct_3(vec4<i32>(u_input.d.x, 14677i, -68858i, global3.a.x), Struct_2(global3.b.a, global3.b.b)), Struct_4(Struct_2(vec2<f32>(389f, -229f), global4[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<u32>(u_input.a.x, u_input.a.x, 1732u), u_input.a.yy, 287u)).b.b, global3.b.b, Struct_3(vec4<i32>(-1i, global3.a.x, 0i, -1i), global3.b)).b), max(~reverseBits(u_input.a.yzy), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), u_input.a.zxw)), _wgslsmith_clamp_vec2_u32(select(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x), var_0.yx), ~vec2<u32>(4888u, 67950u), vec2<u32>(35070u, u_input.a.x) << (u_input.a.zx % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(12903u, 91520u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zx), ~u_input.a.ww) % vec2<u32>(32u)), _wgslsmith_clamp_u32(12038u, 4294967295u, 1u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-395f * _wgslsmith_f_op_f32(select(251f, 648f, var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -421f))))), global3.b.b.a, global3.b.b.a < _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(global3.b.a.x, 1360f)))));
    global2 = array<vec4<bool>, 20>();
    let var_3 = ~4294967295u <= u_input.a.x;
    var var_4 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, min(0i, ~_wgslsmith_mod_i32(u_input.e >> (1u % 32u), abs(u_input.b))), ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-226f, -1183f))))));
}

