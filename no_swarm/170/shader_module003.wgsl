struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: i32 = -20175i;

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> f32 {
    global1 = array<vec3<u32>, 25>();
    let var_0 = true;
    global3 = array<Struct_1, 12>();
    global0 = 7142i;
    var var_1 = 20510u;
    return 1638f;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -484f), -157f), -270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(624f, 1657f)) + -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-927f, -1049f)))) * _wgslsmith_f_op_f32(sign(-555f))), _wgslsmith_div_f32(504f, 1f), -2106f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 4216f));
    let var_2 = !arg_2.x;
    var var_3 = arg_0.x;
    global2 = -(u_input.b | firstLeadingBit(reverseBits(u_input.c)));
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(round(-1197f))), -652f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-503f, var_1.x) + _wgslsmith_f_op_f32(floor(var_1.x)))))));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global3 = array<Struct_1, 12>();
    global3 = array<Struct_1, 12>();
    global0 = abs(select(-u_input.b, ~_wgslsmith_div_i32(~(-2147483647i), -2147483647i), arg_0 | (1i > _wgslsmith_mod_i32(u_input.c, 7364i))));
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(540f - 995f) * -310f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2657f)), -244f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-403f)), 651f), _wgslsmith_f_op_f32(func_2(true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.d.xx, Struct_3(vec2<i32>(-2147483647i, u_input.b)), !vec3<bool>(arg_0, arg_0, false), Struct_1(vec3<u32>(1u, 8894u, u_input.a.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(649f, 135f, 833f, -293f), vec4<f32>(2279f, -749f, -448f, 1504f), true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1336f), _wgslsmith_f_op_f32(f32(-1f) * -138f), -1088f, _wgslsmith_f_op_f32(f32(-1f) * -1125f))))));
    var var_1 = vec3<u32>(u_input.a.x, abs(0u), 0u);
    return vec4<bool>(var_0.x >= _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), u_input.d.x != ~(~var_1.x), select(arg_0, !arg_0, true), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(countOneBits(firstTrailingBit(vec3<u32>(u_input.d.x, 59494u, u_input.d.x))), u_input.a));
    var var_1 = ((-1i << (((1u | var_0.a.x) & ~0u) % 32u)) & ~((344i << (u_input.a.x % 32u)) >> ((u_input.a.x >> (1u % 32u)) % 32u))) & u_input.c;
    global1 = array<vec3<u32>, 25>();
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, var_0.a.x, 39536u), u_input.a), vec3<u32>(u_input.a.x, var_2.a.x, firstLeadingBit(0u >> (0u % 32u)))));
    global1 = array<vec3<u32>, 25>();
    let var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(222f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)))))));
    let var_5 = any(vec2<bool>(true, (true | all(vec3<bool>(false, true, false))) & true));
    let var_6 = (u_input.b <= -279i) || (var_5 || func_4(!func_1(var_5), Struct_2(1u, var_2), var_5));
    let x = u_input.a;
    s_output = StorageBuffer(-564f, 7118i, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(~10687u, u_input.a.x | var_2.a.x), Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(18117i, u_input.b), vec2<i32>(u_input.b, u_input.c))), vec3<bool>(true, false & var_6, false), Struct_1(~var_3.a))).x), var_3.a.x, vec3<i32>(_wgslsmith_mult_i32(u_input.c, u_input.b), u_input.c, -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, u_input.b)), firstLeadingBit(vec2<i32>(37503i, 39803i)))));
}

