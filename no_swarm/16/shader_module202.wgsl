struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1457f)), -382f, arg_1.x | arg_1.x));
    global0 = array<u32, 22>();
    let var_1 = select(!vec3<bool>(true, false, true | arg_1.x), vec3<bool>(select(arg_1.x, true, any(!arg_1)), arg_1.x, all(select(!arg_1, !vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(true, true, true, true)))), false);
    var var_2 = var_1.x;
    var var_3 = reverseBits(u_input.a);
    return vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))) < -1217f, any(vec4<bool>(true, false, var_1.x, _wgslsmith_f_op_f32(select(var_0, var_0, arg_2.x)) > var_0)));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> i32 {
    global0 = array<u32, 22>();
    let var_0 = !(!select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), !func_3(arg_0.b, vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), 0u), true));
    let var_1 = Struct_1(vec3<bool>(false, false, true), vec3<i32>(-(max(arg_1, arg_0.b) << (u_input.b % 32u)), 1i, u_input.a), var_0.x);
    let var_2 = -arg_1 << (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(64396u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 2990u, arg_0.a.x, 0u) ^ vec4<u32>(u_input.b, 1u, 0u, 1u), vec4<u32>(18275u, global0[_wgslsmith_index_u32(20120u, 22u)], u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6403u, 22u)], 22u)], 22u)]))), 22u)] % 32u);
    global0 = array<u32, 22>();
    return _wgslsmith_dot_vec3_i32(var_1.b, select(_wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, 0i, 2147483647i), var_1.b), vec3<i32>(min(arg_0.b, -4782i), ~(-17209i), ~(-56583i)), !vec3<bool>(var_0.x, var_1.a.x, false))) >> (17275u % 32u);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: f32) -> vec4<bool> {
    var var_0 = all(vec4<bool>(true, false, !all(vec2<bool>(true, false)), true));
    let var_1 = Struct_1(vec3<bool>(false, false, false), abs(~vec3<i32>(i32(-1i) * -1i, func_2(Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42911u, 22u)], 22u)], 22u)], u_input.b), 11717i), u_input.a), arg_0.b & arg_0.b)), all(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(false, true))), vec2<bool>(true, true))));
    let var_2 = Struct_4(arg_2.wyx, u_input.a, ~(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(-16090i, 70577i, var_1.b.x, arg_0.b), vec4<i32>(38141i, -2147483647i, u_input.a, u_input.a)))), ~(~var_1.b.x));
    global0 = array<u32, 22>();
    var var_3 = Struct_3(arg_0.a, _wgslsmith_dot_vec3_i32((_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_2.b, arg_0.b), var_1.b) ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -1i, arg_0.b), var_1.b)) >> (~(~vec3<u32>(61204u, 25540u, arg_0.a.x)) % vec3<u32>(32u)), select(max(reverseBits(var_1.b), abs(vec3<i32>(var_1.b.x, -17858i, var_1.b.x))), select(var_1.b, ~var_1.b, !vec3<bool>(var_1.a.x, var_1.c, var_1.a.x)), var_1.a)));
    return vec4<bool>(var_1.a.x, !(!var_1.c), all(vec3<bool>(var_1.a.x, !(u_input.a == 1i), (1u == global0[_wgslsmith_index_u32(82788u, 22u)]) || !var_1.c)), var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = true;
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_1 = 1u;
    global0 = array<u32, 22>();
    return Struct_1(select(select(func_1(arg_2, -809f, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(251f, 153f, -1138f, 1885f), vec4<f32>(126f, 935f, 138f, 1112f))), -1091f).ywz, arg_0.a, abs(u_input.a) <= ~arg_2.b), !vec3<bool>(true, arg_0.a.x, false), arg_1.wwx), arg_0.b, all(vec2<bool>(any(vec4<bool>(true, arg_1.x, arg_1.x, false)), true)));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_4 {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = ~vec2<i32>(u_input.a, 1i);
    return Struct_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(554f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f - 1000f)), -148f))), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(-var_2.x, reverseBits(47910i)), min(var_0.b.x, arg_0.b.x)), u_input.a << (0u % 32u), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, 2147483647i), vec3<i32>(u_input.a, 36102i, 70291i)), all(vec4<bool>(true, true, true, true))), !select(func_1(Struct_3(vec2<u32>(0u, u_input.b), u_input.a), 1892f, vec4<f32>(110f, -567f, -1127f, 364f), -224f), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)), Struct_3(~select(vec2<u32>(global0[_wgslsmith_index_u32(43800u, 22u)], 14520u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 22u)], u_input.b), vec2<bool>(true, true)), u_input.a), min(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(56466u, 22u)] ^ global0[_wgslsmith_index_u32(0u, 22u)], 6879u), abs(countOneBits(global0[_wgslsmith_index_u32(u_input.b, 22u)])))), countOneBits(u_input.a));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(var_0.c, ~_wgslsmith_sub_i32(-1i, ~17839i)), ~var_0.c, var_0.d);
    let var_2 = ~(u_input.b >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 22u)], 4938u), vec2<u32>(u_input.b, 4294967295u)) >> ((vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 22u)], u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), max(~vec2<u32>(1u, u_input.b), vec2<u32>(36609u, u_input.b) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24466u, 22u)], 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]))) % 32u));
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, 1i, ~var_1.x << (~u_input.b % 32u), firstLeadingBit(var_1.x ^ u_input.a)) ^ -reverseBits(~vec4<i32>(var_1.x, var_0.d, var_1.x, 64386i)), ~vec4<i32>(var_1.x, var_1.x, var_0.c, i32(-1i) * -2147483647i), ~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_2, 22u)], var_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - func_5(Struct_1(vec3<bool>(false, false, false), vec3<i32>(1i, 1i, var_0.b), true), ~0i).a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1914f, -1326f, var_0.a.x)))) - vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -329f))), var_0.a.x)));
}

