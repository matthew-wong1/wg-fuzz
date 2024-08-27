struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(816f, 1794f, 675f, 868f);

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 17>;

var<private> global3: u32;

var<private> global4: f32 = 1455f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec2<bool>(false, false);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1146f, global0.x, global0.x, -1466f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -781f, global0.x, global0.x), vec4<f32>(-1592f, 558f, 468f, -1250f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -660f))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global0.x + -123f), _wgslsmith_div_f32(263f, global0.x), _wgslsmith_f_op_f32(sign(1449f)), _wgslsmith_f_op_f32(f32(-1f) * -632f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x), global0.x, _wgslsmith_f_op_f32(global0.x * -491f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(339f + global0.x), 1f, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, 485f, _wgslsmith_f_op_f32(135f * global0.x))), select(!(!vec4<bool>(var_0.x, var_0.x, false, true)), !vec4<bool>(var_0.x, false, false, true), vec4<bool>(true, false, var_0.x || var_0.x, var_0.x)))));
    let var_2 = !select(select(vec3<bool>(u_input.b.x >= -1i, true, false & var_0.x), select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), var_0.x), vec3<bool>(false, false, false)), !var_0.x), select(vec3<bool>(all(var_0), !var_0.x, false), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, false, true), var_0.x), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, false, var_0.x), vec3<bool>(false, true, false)), select(true, var_0.x, var_0.x))), !select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true)), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), false), !vec3<bool>(var_0.x, false, false)));
    let var_3 = Struct_1(!select(!(!vec4<bool>(var_0.x, true, var_0.x, false)), select(!vec4<bool>(var_2.x, true, true, var_2.x), !vec4<bool>(var_2.x, false, true, var_0.x), !vec4<bool>(var_0.x, true, var_2.x, var_0.x)), any(vec2<bool>(var_0.x, var_0.x)) || false));
    let var_4 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.b, u_input.b), reverseBits(~min(u_input.b, vec4<i32>(-1i, u_input.a.x, 7002i, u_input.a.x)))), vec4<i32>(~(~(-61547i)) >> (min(u_input.e.x, 8050u) % 32u), -16032i, 22892i, max(_wgslsmith_sub_i32(0i, -1i), u_input.a.x) | (u_input.b.x & _wgslsmith_add_i32(u_input.b.x, -1i))));
    return abs(min(firstLeadingBit(firstTrailingBit(vec4<u32>(1u, u_input.c.x, 1u, u_input.d))), vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, u_input.e.x) << (vec4<u32>(29089u, u_input.c.x, u_input.e.x, 42044u) % vec4<u32>(32u)))) ^ (vec4<u32>(_wgslsmith_sub_u32(~4294967295u, ~u_input.e.x), min(~0u, u_input.c.x), u_input.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.d), u_input.c.zy), 0u)) | vec4<u32>(u_input.c.x, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.d), u_input.d ^ u_input.d, _wgslsmith_clamp_u32(u_input.d, 6144u, 29958u)), _wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 36602u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = Struct_1(select(!arg_0.a, arg_0.a, arg_2));
    var var_1 = -1219f;
    let var_2 = _wgslsmith_f_op_f32(155f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_div_f32(1220f, global0.x), !arg_1.a.x))))));
    let var_3 = Struct_1(arg_1.a);
    var var_4 = vec4<u32>(u_input.d, 15874u, ~u_input.e.x, u_input.d) >> ((select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, 1u, 1u, 1u), vec4<u32>(u_input.d, u_input.d, 29495u, u_input.d), vec4<bool>(false, var_0.a.x, var_3.a.x, var_3.a.x)), vec4<u32>(u_input.e.x, u_input.d, 0u, 13911u)), vec4<u32>(~0u, _wgslsmith_mod_u32(u_input.e.x, u_input.e.x), _wgslsmith_mult_u32(u_input.c.x, 33187u), ~u_input.d), arg_1.a) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, u_input.d, 78080u), vec4<u32>(u_input.e.x, 4294967295u, 0u, u_input.c.x)), vec4<u32>(u_input.c.x, 5613u, u_input.e.x, u_input.c.x) | vec4<u32>(32994u, 0u, 0u, 1u)), ~func_3()) % vec4<u32>(32u))) % vec4<u32>(32u));
    return abs(4294967295u);
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    global3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, min(func_2(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, false, false)), true), 26280u), u_input.c.x, 1u), ~(~reverseBits(vec4<u32>(27639u, 7398u, u_input.c.x, u_input.e.x))));
    global3 = firstLeadingBit(_wgslsmith_div_u32(abs(58016u | u_input.e.x), 0u) | u_input.c.x);
    global2 = array<vec2<i32>, 17>();
    var var_0 = vec2<i32>(u_input.b.x, select(firstTrailingBit(arg_0.x), 76049i, true));
    var var_1 = global0.zwx;
    return firstLeadingBit(_wgslsmith_div_vec4_u32((vec4<u32>(4294967295u, u_input.d, u_input.d, 9692u) & vec4<u32>(u_input.e.x, 4271u, u_input.c.x, u_input.e.x)) | firstTrailingBit(vec4<u32>(18120u, 0u, u_input.d, 46901u)), (vec4<u32>(u_input.c.x, 1u, u_input.d, 4294967295u) << (vec4<u32>(10377u, u_input.d, 11494u, 29441u) % vec4<u32>(32u))) & ~vec4<u32>(u_input.c.x, 47388u, 78907u, u_input.d))) >> (_wgslsmith_sub_vec4_u32(select(reverseBits(select(vec4<u32>(14192u, u_input.c.x, 31839u, 0u), vec4<u32>(u_input.c.x, u_input.d, u_input.e.x, u_input.e.x), true)), max(vec4<u32>(u_input.c.x, u_input.e.x, u_input.d, u_input.c.x), vec4<u32>(u_input.d, u_input.d, u_input.e.x, 0u)) >> ((vec4<u32>(u_input.d, u_input.c.x, 39075u, u_input.d) << (vec4<u32>(u_input.e.x, u_input.c.x, 34654u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), true), abs(~vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.c.x)) | min(~vec4<u32>(4568u, 4294967295u, 16291u, u_input.d), ~vec4<u32>(69909u, 66891u, u_input.c.x, 13105u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 0u;
    global3 = u_input.e.x;
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-903f, global0.x, global0.x, 748f)))))))));
    var var_0 = func_1(u_input.a.zz);
    global3 = 22505u;
    global2 = array<vec2<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(187f, _wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(u_input.b, u_input.b), u_input.b) ^ -vec4<i32>(u_input.a.x, u_input.a.x, 56319i, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(705f, -1785f, true))), -759f), vec3<u32>(var_0.x, _wgslsmith_dot_vec2_u32(u_input.e.xz, abs(u_input.c.xz)), max(func_3().x, min(u_input.e.x, u_input.e.x))));
}

