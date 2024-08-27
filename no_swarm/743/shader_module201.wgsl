struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: vec3<bool>,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_1;

var<private> global3: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    return select(vec2<bool>(true, true), !global3.a.a.d.a, vec2<bool>(global3.a.b, !any(select(vec3<bool>(global1.x, false, true), vec3<bool>(false, true, global1.x), vec3<bool>(global3.a.a.d.a.x, true, global3.e.c.d.a.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(~(countOneBits(vec2<i32>(-16457i, global2.a.x)) & global3.a.a.a), -464i, arg_1.c, Struct_2(arg_1.d.a, _wgslsmith_f_op_vec2_f32(global3.e.a.d.b + arg_1.d.b))), global1.x || global1.x, Struct_3(abs(countOneBits(vec2<i32>(2147483647i, 0i) << (global2.b % vec2<u32>(32u)))), -17117i >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(28605u, arg_1.c.x), 1u << (u_input.a % 32u)) % 32u), arg_1.c, Struct_2(func_3(), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.d.b.x, 169f)), 550f))), vec3<u32>(_wgslsmith_clamp_u32(1u, global2.b.x, ~4146u), ~max(1119u, _wgslsmith_mod_u32(arg_1.c.x, 5436u)), 4294967295u));
    global2 = Struct_1(_wgslsmith_div_vec3_i32(~abs(_wgslsmith_sub_vec3_i32(global3.b.wyz, global3.b.yxz)), vec3<i32>(21090i, ~1i, -reverseBits(arg_0.a.x))), arg_0.b);
    let var_1 = vec3<f32>(-745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-144f - -398f) * _wgslsmith_f_op_f32(var_0.a.d.b.x + 1054f)))), arg_1.d.b.x);
    let var_2 = Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.b, max(-1i, arg_1.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(5708i, 30122i, 0i), arg_0.a), -3264i)) ^ ~global3.e.c.a, ~_wgslsmith_mod_i32(var_0.a.a.x, _wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.d, vec3<u32>(1u, var_0.d.x, 4294967295u)), abs(~vec3<u32>(global2.b.x, 0u, global3.a.c.c.x))), Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(762f, arg_1.d.b.x))))))));
    let var_3 = abs(reverseBits(global3.a.d.zy));
    return arg_1.d;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_i32(2147483647i, arg_1.c.b);
    var var_1 = global3.e.a.a.x;
    var var_2 = Struct_3(vec2<i32>(-global2.a.x, _wgslsmith_clamp_i32(i32(-1i) * -28881i, 2147483647i, 2147483647i)), -83485i, vec3<u32>(global3.d, u_input.a, arg_2.b.x), func_2(Struct_1(vec3<i32>(select(arg_1.c.b, arg_1.c.a.x, global3.e.a.d.a.x), 40718i, _wgslsmith_dot_vec2_i32(global2.a.xy, vec2<i32>(var_0, 40131i))), abs(reverseBits(vec2<u32>(arg_1.d.x, global3.e.a.c.x)))), Struct_3(_wgslsmith_div_vec2_i32(arg_2.a.yz, global3.b.xy), ~(28614i >> (arg_2.b.x % 32u)), reverseBits(select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(4294967295u, 7832u, u_input.a), global3.e.c.d.a.x)), arg_1.a.d), false && all(!arg_1.c.d.a)));
    global1 = vec2<bool>(_wgslsmith_sub_u32(~4294967295u, ~(86092u ^ global2.b.x)) <= arg_2.b.x, false);
    let var_3 = vec4<f32>(var_2.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -303f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global3.e.c.d.b.x, -1414f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.d.b.x)), _wgslsmith_f_op_f32(-global3.e.a.d.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c.d.b.x, var_2.d.b.x, global3.e.a.d.a.x)) + _wgslsmith_f_op_f32(-203f + global3.e.a.d.b.x)))));
    return func_3().x;
}

fn func_4(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = false;
    var var_1 = vec4<u32>(firstTrailingBit(~4294967295u) >> (firstTrailingBit(global2.b.x) % 32u), 4294967295u ^ u_input.b, _wgslsmith_dot_vec3_u32(~(vec3<u32>(global2.b.x, global2.b.x, 38412u) | select(vec3<u32>(global3.d, u_input.b, global3.a.c.c.x), vec3<u32>(global3.a.a.c.x, 4843u, global3.a.a.c.x), true)), countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, global2.b.x, global2.b.x), vec3<u32>(global2.b.x, global3.e.c.c.x, 23350u)))), _wgslsmith_mult_u32(reverseBits(abs(global2.b.x)) << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(26697u, global3.e.a.c.x)), 14106u & global2.b.x) % 32u), 4294967295u));
    var_1 = ~_wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(var_1.x, global3.e.c.c.x, u_input.b, var_1.x))), ~vec4<u32>(global2.b.x | u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.b, 1u), var_1.zxx), 1u, 0u), vec4<u32>(var_1.x, 49760u, 1u, global3.d));
    global3 = Struct_5(global3.e, global3.b, !(!(!global3.c)), 22830u, Struct_4(global3.e.c, global3.e.a.d.a.x, global3.a.a, vec3<u32>(min(global2.b.x, 4294967295u) | (4294967295u >> (global2.b.x % 32u)), firstTrailingBit(global2.b.x), abs(~1u))));
    let var_2 = firstTrailingBit(-reverseBits(min(vec2<i32>(global2.a.x, -1i) ^ vec2<i32>(global2.a.x, global2.a.x), ~vec2<i32>(-22697i, global3.e.a.b))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(310f, _wgslsmith_f_op_f32(-195f + global3.a.a.d.b.x), _wgslsmith_f_op_f32(-global3.a.c.d.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global3.e.a.d.b.x, -1000f), vec3<f32>(global3.e.a.d.b.x, global3.a.a.d.b.x, global3.e.a.d.b.x))))), !(!var_0))), abs(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<bool>(!(!global3.e.c.d.a.x & true), true, true, (func_1(-1000f, global3.a, Struct_1(global3.b.wzy, global3.a.a.c.zy)) | true) & select(global3.c.x, all(global3.c), true)));
}

