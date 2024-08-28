struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 129983u);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_5, 6>;

var<private> global3: array<vec3<f32>, 15>;

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> vec4<bool> {
    let var_0 = ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zx & vec2<u32>(arg_2, 4294967295u), arg_1.yy));
    var var_1 = abs(arg_0 ^ arg_0);
    let var_2 = Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) - global1.x), -_wgslsmith_add_i32(firstTrailingBit(1i), arg_0));
    var var_3 = Struct_4(_wgslsmith_mult_vec4_u32(~vec4<u32>(~var_0, _wgslsmith_div_u32(0u, var_0), ~4294967295u, arg_2), u_input.a << (vec4<u32>(~arg_1.x, 2616u, arg_2 >> (u_input.a.x % 32u), ~arg_2) % vec4<u32>(32u))));
    let var_4 = Struct_4(_wgslsmith_clamp_vec4_u32(~u_input.a, vec4<u32>((u_input.a.x | global0.x) ^ _wgslsmith_mod_u32(79409u, var_3.a.x), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 47617u), firstLeadingBit(vec2<u32>(u_input.a.x, global0.x))), ~global0.x | 27953u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1.x, ~1u, 93906u), ~abs(vec4<u32>(1u, var_0, 4294967295u, 31508u)))));
    return select(select(vec4<bool>(70541i > ~var_2.c, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), false, true), vec4<bool>(~u_input.a.x >= 1u, true, all(vec4<bool>(false, false, true, false)), true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), true), vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, true, true))))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)) != any(vec4<bool>(true, true, true, false))), vec4<bool>(true, !all(vec2<bool>(true, true)), false, false));
}

fn func_2() -> vec2<bool> {
    var var_0 = global1.x;
    var var_1 = func_3(u_input.b.x ^ -(~(u_input.b.x >> (4294967295u % 32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zzz, u_input.a.yxz), ~vec3<u32>(64860u, global0.x, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), u_input.a.x);
    let var_2 = u_input.b.x;
    global0 = u_input.a.zx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)));
    return func_3(1i, ~(~(~vec3<u32>(global0.x, 1u, 54922u))), u_input.a.x).wy;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    global3 = array<vec3<f32>, 15>();
    let var_0 = select(select(!select(vec2<bool>(true, true), func_2(), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(select(true, arg_0.c <= 50731i, true), false), all(vec3<bool>(true, true, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), func_3(arg_0.c, u_input.a.yxy, global0.x).yx), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(all(vec3<bool>(false, true, false)), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_3(~2147483647i, vec3<u32>(0u, _wgslsmith_div_u32(42870u, ~global0.x), 52424u), global0.x).zx);
    var var_1 = 0u;
    global3 = array<vec3<f32>, 15>();
    global0 = max(select(~vec2<u32>(global0.x, ~u_input.a.x), u_input.a.xy, select(var_0, vec2<bool>(true, var_0.x), var_0)), reverseBits(vec2<u32>(countOneBits(~1u), max(0u, global0.x) << (u_input.a.x % 32u))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_i32(u_input.b.x | abs(0i), _wgslsmith_mult_i32(-2147483647i, u_input.b.x)) & u_input.b.x, _wgslsmith_div_f32(global1.x, global1.x), u_input.b.x);
    var var_1 = u_input.b.xx;
    var var_2 = all(vec4<bool>(true, true, select(~4294967295u < (69051u & global0.x), all(vec2<bool>(true, false)), true & any(vec2<bool>(false, false))), global0.x < 0u));
    let var_3 = any(select(vec2<bool>(true, true), func_1(var_0, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1244f, global1.x, 847f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, var_0.b, global1.x, -1234f))), select(true, false, false))), var_0), func_3(~_wgslsmith_sub_i32(u_input.b.x, -12578i), _wgslsmith_sub_vec3_u32(min(vec3<u32>(global0.x, global0.x, global0.x), u_input.a.zww), _wgslsmith_clamp_vec3_u32(u_input.a.wyw, u_input.a.yyw, u_input.a.zzy)), ~abs(1u)).zx));
    global3 = array<vec3<f32>, 15>();
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 143f) - vec2<f32>(global1.x, global1.x)) * vec2<f32>(609f, -1000f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(2108f, global1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -625f) * vec2<f32>(-1724f, global1.x))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(971f + global1.x), _wgslsmith_f_op_f32(-global1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1320f, 1409f)))), vec2<f32>(-1032f, 1313f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1571f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, var_0.b))))), u_input.b.wz);
}

