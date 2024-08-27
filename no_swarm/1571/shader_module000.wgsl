struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: array<vec4<i32>, 14>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_2((vec4<i32>(18794i, arg_0.c, u_input.a.x, _wgslsmith_mod_i32(arg_0.c, global4.c)) << (~select(vec4<u32>(u_input.c, 0u, u_input.d, 49066u), vec4<u32>(u_input.c, u_input.d, 0u, u_input.d), global4.a) % vec4<u32>(32u))) ^ vec4<i32>(global2.c.c | global2.a.x, 0i, max(50537i, 1i) | (arg_0.c & 969i), min(2147483647i, 1i)), vec2<bool>(arg_0.a == global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1268f, arg_1)) >= _wgslsmith_f_op_f32(min(-899f, _wgslsmith_f_op_f32(floor(-2066f))))), arg_0, _wgslsmith_f_op_vec4_f32(round(global2.d)));
    let var_1 = any(global4.b);
    let var_2 = var_0;
    global4 = var_2.c;
    let var_3 = u_input.c;
    return u_input.c << (~0u % 32u);
}

fn func_3() -> vec4<i32> {
    var var_0 = 45246u > max(_wgslsmith_div_u32(firstTrailingBit(43040u), countOneBits(u_input.c)), countOneBits(1u));
    var var_1 = firstTrailingBit(u_input.b);
    var_1 = ~(~5431u);
    let var_2 = vec4<bool>(global4.a, true, any(select(vec3<bool>(!global2.c.a, global2.b.x, !global2.b.x), vec3<bool>(all(vec3<bool>(global2.b.x, global4.b.x, true)), any(global2.c.b.yzx), true), any(vec3<bool>(false, true, false)))), !(!(_wgslsmith_f_op_f32(-global2.d.x) < 238f)));
    global2 = Struct_2(firstLeadingBit(~vec4<i32>(global4.c, global4.c, _wgslsmith_add_i32(global2.c.c, u_input.a.x), _wgslsmith_dot_vec4_i32(global2.a, vec4<i32>(2147483647i, -17007i, 2147483647i, 0i)))), var_2.yy, global3[_wgslsmith_index_u32(abs(u_input.c), 16u)], global2.d);
    return global1[_wgslsmith_index_u32(u_input.d, 14u)];
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool) -> vec2<bool> {
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, firstLeadingBit(func_2(Struct_1(false, global4.b, -19757i), -255f, arg_0, global2.d)), ~arg_1, ~arg_1), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(4294967295u, 67883u, 0u, arg_1)), vec4<u32>(arg_1, 27562u, arg_1, 73445u)), ~(vec4<u32>(46936u, 0u, 1u, 23073u) ^ vec4<u32>(2253u, 49946u, arg_1, arg_1))));
    global2 = Struct_2(func_3(), vec2<bool>(true, arg_2 & false), global2.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f - -628f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(517f)) - _wgslsmith_div_f32(arg_0, global2.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(-1310f, 601f)), arg_2)), -631f, global2.d.x));
    let var_1 = _wgslsmith_sub_i32(global2.a.x, func_3().x) & -6811i;
    var var_2 = ~_wgslsmith_dot_vec3_i32(select(select(global0[_wgslsmith_index_u32(min(u_input.b, arg_1), 3u)], u_input.a.wxz ^ u_input.a.wwx, false), _wgslsmith_clamp_vec3_i32(vec3<i32>(global4.c, 20523i, 33655i), u_input.a.zwz >> (var_0.zyx % vec3<u32>(32u)), vec3<i32>(u_input.a.x, global2.a.x, -1i)), select(global4.b.xxz, global2.c.b.xyy, false)), global0[_wgslsmith_index_u32(6717u, 3u)]);
    global3 = array<Struct_1, 16>();
    return vec2<bool>(true, u_input.a.x <= _wgslsmith_dot_vec4_i32(vec4<i32>(26143i & global4.c, ~(-8572i), 52311i, 2147483647i), min(reverseBits(vec4<i32>(-43620i, u_input.a.x, u_input.a.x, 0i)), vec4<i32>(-2147483647i, u_input.a.x, 27912i, -2147483647i))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    global4 = arg_2;
    var var_1 = !global2.c.b.x;
    let var_2 = u_input.a.zyy;
    var var_3 = 15937i;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(global2.d.x)), Struct_2(abs(u_input.a), !select(select(vec2<bool>(false, true), global2.b, global4.b.zz), func_1(global2.d.x, 1u, true), !global4.b.x), Struct_1(global2.c.a, select(global4.b, select(vec4<bool>(global4.a, global4.a, false, true), vec4<bool>(global2.c.b.x, global4.b.x, global2.b.x, false), global4.b), any(global4.b.yzz)), global4.c & _wgslsmith_mult_i32(global4.c, global2.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(1164f, global2.d.x), global2.d.x, -155f, _wgslsmith_f_op_f32(-global2.d.x))))), global3[_wgslsmith_index_u32(max(firstTrailingBit(~(u_input.d >> (u_input.c % 32u))), firstLeadingBit(countOneBits(u_input.c))), 16u)]);
    global1 = array<vec4<i32>, 14>();
    var var_1 = vec3<bool>(true, select(all(func_1(557f, 4294967295u, true)), !global4.b.x, true), global2.c.b.x);
    global0 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d.yw + _wgslsmith_div_vec2_f32(global2.d.xy, global2.d.zz))), global2.d.xzx);
}

