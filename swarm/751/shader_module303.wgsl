struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_3,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<u32, 11>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = -(i32(-1i) * -1i);
    let var_1 = ~(~(~vec4<i32>(u_input.d.x, u_input.d.x, -1i, u_input.d.x))) ^ vec4<i32>(u_input.e.x, (i32(-1i) * -u_input.d.x) << (~(~0u) % 32u), firstLeadingBit(0i), u_input.d.x);
    return Struct_3(vec2<f32>(590f, arg_0.x), global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(countOneBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x & u_input.a, 11u)], 11u)]), 11u)]), 27u)]);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_3 {
    global0 = array<Struct_1, 27>();
    var var_0 = 56978u;
    let var_1 = -1000f;
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -1411f, 139f) - vec4<f32>(-103f, var_1, 1941f, var_1)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b, 1793f, var_1, arg_1.b.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, var_1, 2343f, 1217f)))))));
    global1 = array<u32, 11>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_1) + arg_1.a)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(-arg_1.b.b))) + _wgslsmith_f_op_vec2_f32(abs(var_2.a))), var_2.b);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = 118f;
    global1 = array<u32, 11>();
    let var_1 = Struct_4(select(vec4<bool>(true, firstTrailingBit(2147483647i) >= _wgslsmith_sub_i32(u_input.e.x, -39093i), true, false), !vec4<bool>(arg_1.x != arg_1.x, any(arg_1), false, false), select(vec4<bool>(!arg_1.x, arg_1.x, false, all(vec3<bool>(true, false, true))), select(vec4<bool>(arg_1.x, false, false, false), !vec4<bool>(false, true, arg_1.x, true), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), any(select(arg_1, vec2<bool>(arg_1.x, true), arg_1.x)))), !(!select(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, false), true), !vec4<bool>(false, false, false, arg_1.x), select(false, arg_1.x, false))), func_3(-1i, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -351f, -636f, -1258f) * vec4<f32>(var_0, var_0, var_0, 395f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(171f, var_0, var_0, -1420f) + vec4<f32>(-110f, var_0, 1611f, -903f)))), arg_1, ~(u_input.b | _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(17355u, 58298u, 51435u, 27143u)))), _wgslsmith_sub_vec3_u32(u_input.b.zww, u_input.b.wzz));
    global1 = array<u32, 11>();
    var var_2 = _wgslsmith_f_op_f32(abs(func_3(~0i, Struct_3(var_1.c.a, var_1.c.b), select(vec2<bool>(arg_1.x | arg_1.x, var_1.b.x && true), !select(arg_1, arg_1, var_1.b.zw), vec2<bool>(true, var_1.a.x)), u_input.b).a.x));
    return vec4<bool>(!(_wgslsmith_f_op_f32(exp2(var_0)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-637f)) - 128f)), arg_1.x, true, all(select(select(arg_1, select(vec2<bool>(arg_1.x, var_1.a.x), var_1.a.xw, var_1.b.ww), var_1.b.xy), vec2<bool>(false, true), var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 11>();
    global0 = array<Struct_1, 27>();
    let var_0 = Struct_4(!vec4<bool>(~global1[_wgslsmith_index_u32(13504u, 11u)] != (u_input.c.x | u_input.c.x), true, true, any(vec2<bool>(true, false))), func_1(10823u, vec2<bool>(true, true)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1672f, -254f)))), Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(829f * 517f)), u_input.b.x)), u_input.b.wwy);
    let var_1 = _wgslsmith_div_vec2_i32(-abs(vec2<i32>(-u_input.d.x, -28465i)), _wgslsmith_mult_vec2_i32(min(u_input.d, u_input.e.xx), _wgslsmith_mod_vec2_i32(vec2<i32>(-16677i, -2147483647i), -vec2<i32>(u_input.d.x, 60773i))) << (u_input.b.yy % vec2<u32>(32u)));
    let var_2 = var_0.c.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-473f, _wgslsmith_f_op_f32(873f * 168f), -1199f, _wgslsmith_f_op_f32(1112f + 1201f)), vec4<f32>(_wgslsmith_div_f32(var_0.c.b.b, var_0.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(-var_0.c.b.b), _wgslsmith_f_op_f32(-var_0.c.b.b))))));
    let var_4 = var_3.yy;
    let x = u_input.a;
    s_output = StorageBuffer(min(-_wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(u_input.e.x, 0i)), -_wgslsmith_add_i32(firstTrailingBit(var_1.x), var_1.x)));
}

