struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(110f, -602f), vec2<f32>(1280f, -984f), vec2<f32>(-1214f, 124f), vec2<f32>(1034f, 898f), vec2<f32>(861f, -809f), vec2<f32>(-1085f, -640f), vec2<f32>(-1296f, -193f), vec2<f32>(128f, -115f), vec2<f32>(1000f, 1000f));

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    global1 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_add_vec4_u32(select(max(~vec4<u32>(44003u, u_input.c.x, 1u, 31618u), ~select(u_input.c, u_input.c, vec4<bool>(arg_1.x, false, false, true))), abs(select(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x)), u_input.c, vec4<bool>(false, arg_1.x, false, arg_1.x))), arg_0.a), u_input.c);
    global0 = array<vec2<f32>, 9>();
    var_0 = ~max(_wgslsmith_sub_vec4_u32(max(u_input.c, u_input.c), vec4<u32>(countOneBits(var_0.x), u_input.c.x ^ 2462u, ~u_input.c.x, select(var_0.x, u_input.a.x, false))), vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(0u, 29291u), 59137u, 4294967295u) >> ((select(u_input.c, u_input.c, arg_1.x) | reverseBits(vec4<u32>(u_input.c.x, var_0.x, var_0.x, var_0.x))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(abs(-179f));
    return 0i;
}

fn func_2(arg_0: bool) -> vec4<i32> {
    let var_0 = u_input.a.x;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0, 0u), 14u)];
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    global1 = array<Struct_1, 14>();
    return -vec4<i32>(_wgslsmith_mod_i32(func_3(global1[_wgslsmith_index_u32(10113u, 14u)], var_1.a.zwx), _wgslsmith_div_i32(52632i, -2147483647i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, u_input.b), u_input.b), -(0i >> (var_0 % 32u)), u_input.b) & -_wgslsmith_add_vec4_i32(max(firstTrailingBit(vec4<i32>(1i, 1i, u_input.b, u_input.b)), min(vec4<i32>(u_input.b, 21556i, u_input.b, u_input.b), vec4<i32>(-1i, -50347i, u_input.b, u_input.b))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-38837i, u_input.b, 17660i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global0 = array<vec2<f32>, 9>();
    let var_0 = _wgslsmith_sub_vec4_i32(func_2(arg_1.c), ~(~vec4<i32>(2147483647i, u_input.b, u_input.b, -2147483647i) << (u_input.c % vec4<u32>(32u))));
    let var_1 = Struct_1(vec4<bool>(true, true, !arg_1.d & (_wgslsmith_f_op_f32(exp2(arg_0.x)) < _wgslsmith_f_op_f32(trunc(arg_0.x))), arg_1.a.x), vec2<bool>(true | any(!arg_1.a), arg_1.d), arg_1.a.x, u_input.a.x > u_input.a.x);
    var var_2 = -1198f;
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(f32(-1f) * -711f));
    var var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, ~u_input.a.x), u_input.c.yw | ~(u_input.c.zx >> (select(u_input.a.zy, vec2<u32>(42928u, u_input.c.x), true) % vec2<u32>(32u))));
    var var_2 = vec4<u32>(64068u, firstLeadingBit(_wgslsmith_sub_u32(abs(0u), 0u)), 17477u, _wgslsmith_mult_u32(u_input.c.x, 61501u));
    let var_3 = vec3<f32>(896f, _wgslsmith_f_op_f32(729f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-356f, -846f)), _wgslsmith_div_f32(515f, -1000f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, 804f, -720f, 183f)), global1[_wgslsmith_index_u32(1u & u_input.a.x, 14u)])))), 1639f);
    var var_4 = select(vec2<bool>(true, true), !(!vec2<bool>(all(vec4<bool>(true, false, true, true)), true)), !select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    global0 = array<vec2<f32>, 9>();
    var var_5 = select(vec3<bool>(var_4.x, var_4.x, var_4.x), !select(vec3<bool>(!var_4.x, all(vec3<bool>(true, false, false)), var_4.x), select(select(vec3<bool>(var_4.x, var_4.x, false), vec3<bool>(var_4.x, true, var_4.x), false), select(vec3<bool>(var_4.x, true, var_4.x), vec3<bool>(var_4.x, var_4.x, false), vec3<bool>(false, false, true)), vec3<bool>(true, var_4.x, var_4.x)), true), !(var_4.x | var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(select(var_2.x, ~9598u, false), 4294967295u), firstLeadingBit(vec2<u32>(u_input.c.x, u_input.a.x))), vec3<u32>(~(1u & countOneBits(u_input.a.x)), ~(~60971u >> (select(var_2.x, var_2.x, var_5.x) % 32u)), ~(~select(u_input.c.x, 79238u, true))), u_input.c.yx, ~1i);
}

