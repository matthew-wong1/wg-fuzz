struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-595f, 419f, -1000f, -717f);

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f - arg_1.c.x))), -649f, 248f, 341f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1132f, -679f, arg_1.c.x, 875f)), vec4<f32>(380f, -905f, 1000f, arg_1.c.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 295f, arg_1.c.x, global0.x), vec4<f32>(-310f, -492f, global0.x, -1526f))) * vec4<f32>(-1447f, global0.x, arg_1.c.x, -1102f))))));
    let var_0 = -920f;
    let var_1 = arg_1.a.x;
    let var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(sign(-2401f)) <= -365f, true, _wgslsmith_add_i32(-_wgslsmith_mod_i32(46673i, u_input.b.x), _wgslsmith_add_i32(-2147483647i, 1876i)) <= u_input.d);
    let var_3 = arg_0;
    return ~vec4<u32>(0u, max(arg_0, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 6426u), arg_1.a.zx)), 1u, 37021u >> (_wgslsmith_div_u32(arg_1.a.x, 2043u) % 32u));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(0u, 0u, 23051u, 18767u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1546u, u_input.a.x, 6395u, u_input.e), vec4<u32>(u_input.c, u_input.a.x, 4294967295u, u_input.c))), ~_wgslsmith_div_u32(~30094u, abs(1u)), u_input.c | u_input.e), _wgslsmith_sub_vec2_i32(vec2<i32>(27176i, -abs(-1i)), _wgslsmith_sub_vec2_i32(countOneBits(u_input.b.zx), u_input.b.yz) & vec2<i32>(u_input.b.x << (4294967295u % 32u), countOneBits(u_input.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1410f, _wgslsmith_f_op_f32(-global0.x))), 173f)), u_input.b.x);
    let var_1 = (true && (true && select(-1000f < var_0.c.x, false, true))) || (-abs(-1i) == (i32(-1i) * -_wgslsmith_mult_i32(u_input.b.x, 1i)));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.a.x), 13u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.ywy))) + _wgslsmith_div_vec3_f32(global0.wxw, vec3<f32>(-101f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-996f)), _wgslsmith_f_op_f32(sign(var_0.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))))));
    let var_3 = !(!vec4<bool>(var_1, (false || var_1) || (45989u > var_0.a.x), select(var_1, var_1, !var_1), select(true, var_1, var_1) && var_1));
    return abs(~0u);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(50528u, 13u)];
    var var_1 = global1[_wgslsmith_index_u32(~(~4294967295u), 13u)];
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1696f), select(arg_0, arg_0, true)))), -925f, 1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)))), vec4<f32>(global0.x, 1030f, var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(633f, var_0.c.x, arg_1.x == arg_1.x)))));
    var_1 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(58020u, 37107u) & ~var_1.a.x, _wgslsmith_mult_u32(u_input.a.x & var_1.a.x, min(3029u, var_0.a.x))), ~_wgslsmith_add_u32(~var_0.a.x, var_1.a.x), 4294967295u), var_1.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-418f * _wgslsmith_div_f32(var_1.c.x, 997f)), global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, var_0.c.x), var_1.c)) * vec2<f32>(404f, _wgslsmith_f_op_f32(min(var_1.c.x, -1000f))))), var_0.d);
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, firstTrailingBit((23599u & var_0.a.x) ^ ~var_1.a.x), _wgslsmith_mult_u32(~var_1.a.x, 28277u), ~65864u & ~(~var_1.a.x)), func_2(7291u, Struct_1(u_input.a, u_input.b.zx, var_1.c, -59161i)));
    return Struct_1(min(~var_1.a & abs(var_2.xww & vec3<u32>(69144u, 11267u, 66498u)), ~(var_0.a & u_input.a)), vec2<i32>(1i << (func_3() % 32u), var_0.b.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yw)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(132f, var_1.c.x)))))), 2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    var var_0 = !select(arg_3, !(!arg_3), true);
    var var_1 = arg_0;
    var var_2 = vec4<bool>(all(arg_3), var_0.x, arg_2, true);
    var_0 = vec2<bool>(all(var_2.yz), !select(any(var_2.xx), arg_2, (false && var_0.x) & !arg_2));
    var_0 = !var_2.yz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(true, select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), ~countOneBits(u_input.c), !all(vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), -1501f));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~select(countOneBits(vec2<u32>(u_input.e, u_input.a.x)), abs(u_input.a.yz), vec2<bool>(true, true))), u_input.a.yy), 13u)];
    var var_2 = !select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), !(u_input.b.x < var_1.b.x)), !vec4<bool>(true, any(vec2<bool>(true, false)), true, select(true, true, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false))));
    var var_3 = _wgslsmith_add_vec3_u32(var_1.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, var_1.a.x, 1836u), ~abs(vec3<u32>(19470u, u_input.e, var_1.a.x)))) | vec3<u32>(48096u | _wgslsmith_add_u32(u_input.c, ~1u), func_3(), _wgslsmith_mult_u32(1u, ~_wgslsmith_mod_u32(1u, u_input.c)));
    let var_4 = vec2<i32>(_wgslsmith_mod_i32(-10759i, min(abs(u_input.b.x), var_1.d)), 2147483647i);
    var var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.xyy - vec3<f32>(688f, var_1.c.x, 1400f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(360f, 1793f, 402f) + vec3<f32>(2458f, -674f, 255f))))), vec3<f32>(func_1(false, select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, true, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false), true), vec4<bool>(var_2.x, true, var_2.x, true))).c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1036f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1424f)) * -731f)), -567f)));
    var_3 = vec3<u32>(u_input.c, 1u, firstLeadingBit((var_1.a.x & 1u) & _wgslsmith_mod_u32(0u, ~var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.zw);
}

