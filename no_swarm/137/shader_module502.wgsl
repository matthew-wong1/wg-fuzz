struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: f32 = 933f;

var<private> global3: array<vec3<bool>, 10>;

var<private> global4: Struct_2 = Struct_2(vec2<i32>(1i, 0i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = Struct_3(false, global1.b, global1.c);
    var var_1 = arg_0;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2936f + 166f) + 105f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1398f)))));
    let var_2 = !(-_wgslsmith_dot_vec2_i32(~u_input.b.zy, _wgslsmith_sub_vec2_i32(u_input.b.yy, vec2<i32>(-1i, -1i))) >= 1i);
    let var_3 = max(vec4<u32>(5910u << (_wgslsmith_clamp_u32(4294967295u, 1u, 0u) % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(15728u, arg_0, 27796u), true), vec3<u32>(arg_0, arg_1.x, arg_0)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 23139u, 1u), vec3<u32>(34902u, arg_0, arg_1.x)), 4294967295u), max(~0u, arg_0)), vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, arg_1.x, 1u)), vec3<u32>(4143u, arg_0, 0u)), arg_1.x, arg_1.x, 4294967295u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, 0u), ~0u), arg_0, reverseBits(~4294967295u)), vec4<u32>(arg_0, 0u, 1u, ~arg_1.x));
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f - 300f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f - -1079f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.a)))), -1216f);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global0 = global1.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(5973u, vec2<u32>(91969u, 4294967295u))), vec2<f32>(1937f, -383f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1850f, -208f)))))));
    let var_1 = Struct_3(!(!select(global1.a, true, global1.c.x >= -1i)), ~vec4<i32>(-2147483647i, 917i & arg_0.x, firstLeadingBit(global4.a.x) | u_input.b.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, -2147483647i, -1i), u_input.b))), ~(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1188i), arg_0.yw)));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1000f, 382f, var_0.x))))), vec4<f32>(572f, var_0.x, _wgslsmith_div_f32(-297f, _wgslsmith_f_op_f32(863f - var_0.x)), var_0.x)));
    var var_3 = global1.b.x;
    return Struct_2(global4.a);
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = func_2(global1.b);
    global0 = true;
    global0 = !(!(all(!vec4<bool>(true, global1.a, false, arg_0.x)) & arg_0.x));
    var var_1 = any(arg_0.yx);
    let var_2 = _wgslsmith_f_op_f32(282f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-527f, 756f), _wgslsmith_f_op_f32(f32(-1f) * -753f))) + _wgslsmith_f_op_f32(-496f - -158f))));
    return ~(~(~64348u)) & _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(18304u, 43055u), vec2<u32>(59922u, 0u), vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(50790u, 0u), !vec2<bool>(arg_0.x, global1.a)), ~countOneBits(vec2<u32>(1u, 41943u))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(42225u, 4294967295u, 9861u), vec3<u32>(arg_0, arg_0, 50509u)), arg_0, ~6785u, select(arg_0, arg_0, global1.a)), vec4<u32>(~arg_0, arg_0, 4294967295u, 4294967295u)), 47714u, arg_0, ~15602u);
    global1 = Struct_3(func_2(-(vec4<i32>(global1.b.x, global4.a.x, global4.a.x, -2147483647i) | global1.b)).a.x >= -2147483647i, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(18098i, global1.c.x, u_input.a, 19976i)), select(-vec4<i32>(-48614i, global1.c.x, -1i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-30741i, global4.a.x, 27577i, global1.c.x), global1.b), global1.a && false)), global1.b), vec2<i32>(-1i) * -u_input.b.xx);
    var var_1 = Struct_1(arg_1);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + 511f) - _wgslsmith_f_op_f32(f32(-1f) * -253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) * -121f) * _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_div_f32(var_1.a.x, arg_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(806f, arg_1.x) + var_1.a.x), _wgslsmith_f_op_f32(select(919f, _wgslsmith_f_op_f32(-666f + 687f), all(vec2<bool>(global1.a, global1.a)))), false)), -107f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, global1.b ^ max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, global1.b.x, u_input.a), select(global1.b, global1.b, vec4<bool>(global1.a, global1.a, global1.a, false))), vec4<i32>(u_input.b.x, ~u_input.a, -28410i, -u_input.b.x)), countOneBits(~vec2<i32>(-2147483647i, u_input.a)));
    let var_0 = func_4(func_1(!select(vec3<bool>(global1.a, false, false), global3[_wgslsmith_index_u32(~3405u, 10u)], true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 1085f, 973f, -1088f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1935f, 1900f, -299f, -283f)))))))));
    global2 = 768f;
    let var_1 = global4.a.x;
    var var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(reverseBits(77813u), _wgslsmith_clamp_u32(4294967295u, 31725u, 1u), ~33434u) >> (vec3<u32>(~_wgslsmith_mult_u32(0u, 50440u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 28108u, 4294967295u), ~vec3<u32>(0u, 31826u, 12870u)), select(func_1(global3[_wgslsmith_index_u32(96502u, 10u)]), 0u, any(vec4<bool>(true, false, true, true)))) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 0u, 0u), firstLeadingBit(vec3<u32>(25707u, 85083u, 33293u))), vec3<u32>(~100891u, 96430u, select(50108u, 54492u, global1.a)), select(select(vec3<bool>(false, global1.a, global1.a), vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, true, false)), vec3<bool>(global1.a, false, false), vec3<bool>(true, true, global1.a))) & abs(countOneBits(~vec3<u32>(63225u, 8703u, 50721u))));
    global4 = Struct_2(abs(-(-vec2<i32>(-13749i, global4.a.x) >> (~vec2<u32>(15083u, var_2.x) % vec2<u32>(32u)))));
    var var_3 = var_2.x;
    var var_4 = Struct_3(true, global1.b, global1.b.zz << (var_2.yy % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(~global1.b, vec4<i32>(2147483647i, 0i, 46359i, u_input.a)) & abs(var_4.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(firstTrailingBit(7193u), reverseBits(vec2<u32>(var_2.x, var_2.x)))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 495f) - _wgslsmith_f_op_f32(-150f * 2221f)))), 1897u);
}

