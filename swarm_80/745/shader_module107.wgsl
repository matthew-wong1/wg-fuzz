struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(1038f, min(global0.c.c, global0.b), Struct_1(arg_1.a, -605f, arg_1.c));
    let var_1 = vec3<i32>(-1i) * -firstTrailingBit(min(vec3<i32>(global0.b.x, 0i, u_input.a.x), arg_1.c.wyz) >> (_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 0u, 29919u), arg_2.zwx) % vec3<u32>(32u)));
    var var_2 = u_input.a.x;
    var_2 = global0.c.c.x;
    return arg_1;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = select(1u, 4294967295u, select(((32680i << (arg_0.x % 32u)) & _wgslsmith_clamp_i32(2147483647i, u_input.b, 1i)) < _wgslsmith_dot_vec3_i32(global0.b.yyw, vec3<i32>(1i, 35763i, arg_2.c.x)), arg_2.a, !global0.c.a));
    return arg_1.x;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = select(arg_0, 1u, _wgslsmith_div_f32(global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))) == _wgslsmith_f_op_f32(-global0.c.b));
    global0 = Struct_2(global0.a, global0.b, func_2(vec4<f32>(465f, 381f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, -1429f, true)) + -1358f)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c.b, 1311f, global0.a, 1077f)))), global0.c, max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, var_0, arg_1.x), vec4<u32>(arg_1.x, 13342u, arg_1.x, 1u)), vec4<u32>(arg_0, 26178u, var_0, 4294967295u))), vec4<u32>(19336u, 0u, 60032u, 51639u)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-global0.a), ~vec4<i32>(1i, -(~global0.b.x), u_input.a.x, _wgslsmith_sub_i32(select(global0.c.c.x, -1i, global0.c.a), _wgslsmith_dot_vec3_i32(vec3<i32>(35760i, -61762i, u_input.b), global0.b.xzz))), func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))), global0.c.b), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -401f, global0.c.b, -172f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, -390f, global0.c.b, global0.a))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, global0.c.b, global0.a, 221f)), global0.c, ~vec4<u32>(arg_0, 58774u, 21484u, arg_0)), vec4<u32>(63800u, arg_0, 1u, arg_1.x) >> (max(vec4<u32>(arg_0, 1u, 43014u, arg_1.x), vec4<u32>(arg_1.x, var_0, var_0, 76934u)) % vec4<u32>(32u))), ~countOneBits(vec4<u32>(4294967295u, arg_0, arg_0, var_0)) & _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 4294967295u, 52778u), abs(vec4<u32>(323u, 30303u, 4294967295u, arg_1.x)))));
    let var_1 = global0.c;
    let var_2 = _wgslsmith_add_vec2_i32(~u_input.a | func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(935f, global0.a, var_1.b, var_1.b))), global0.c, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 37927u, arg_1.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 24013u, 62998u, 1u), vec4<u32>(arg_0, 1u, arg_0, var_0)))).c.yw, -vec2<i32>(var_1.c.x, 1402i));
    return Struct_1(select(any(select(!vec2<bool>(global0.c.a, global0.c.a), vec2<bool>(true, var_1.a), true)), global0.c.a, var_1.a), -615f, ~global0.b);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = select(!global0.c.a, arg_0.a, arg_0.a);
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.b * global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.b), _wgslsmith_f_op_f32(f32(-1f) * -894f))))))), global0.c.c, global0.c);
}

fn func_1() -> bool {
    var var_0 = func_5(func_4(1u, vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 33349u, 0u), vec4<u32>(29846u, 4294967295u, 33814u, 4294967295u)), func_3(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), func_2(vec4<f32>(global0.a, -141f, 1000f, 1241f), global0.c, vec4<u32>(64506u, 0u, 22231u, 1u))))));
    var_0 = func_5(global0.c);
    var_0 = func_5(func_4(0u, vec2<u32>(_wgslsmith_sub_u32(~1407u, 44920u >> (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(17570u, 0u, 103130u), vec3<u32>(44465u, 0u, 4294967295u)) & ~89180u)));
    var var_1 = ~(~(((vec4<i32>(0i, u_input.b, -53673i, u_input.b) >> (vec4<u32>(1u, 45177u, 54992u, 1u) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(17540u, 1u, 4294967295u, 0u), vec4<u32>(51671u, 155u, 4294967295u, 20295u)) % vec4<u32>(32u))) >> (~(~vec4<u32>(1u, 3911u, 56579u, 0u)) % vec4<u32>(32u))));
    global0 = Struct_2(-865f, _wgslsmith_div_vec4_i32(var_0.c.c, global0.b), global0.c);
    return false;
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = global0.c;
    let var_1 = vec3<bool>(true, !func_5(global0.c).c.a, !arg_1.x);
    var var_2 = arg_3;
    var var_3 = global0.c;
    var_3 = Struct_1(all(!arg_1), arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(min(-27359i, u_input.b), var_0.c.x, _wgslsmith_clamp_i32(-1i, -u_input.b, 7373i | var_3.c.x), ~(-2147483647i)), var_0.c & (var_0.c >> (max(vec4<u32>(4294967295u, 8664u, 38718u, 0u), vec4<u32>(14329u, 40551u, 21750u, 74334u)) % vec4<u32>(32u)))));
    return func_5(Struct_1(((var_1.x & arg_1.x) && true) && arg_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b)), 1861f), global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global0.c.b, vec4<bool>(func_1(), _wgslsmith_f_op_f32(-global0.a) < global0.a, !func_5(func_4(10317u, vec2<u32>(34239u, 1u))).c.a, true), !(!(global0.c.a & true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.c.b))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-514f, 687f), vec2<f32>(-676f, -323f))))));
    let var_1 = vec2<i32>(global0.c.c.x, _wgslsmith_div_i32(-(~u_input.a.x), 57384i));
    let var_2 = !vec2<bool>(!var_0.c.a, var_0.c.a);
    var var_3 = !vec3<bool>(global0.c.a, false, (~var_0.b.x | abs(u_input.a.x)) <= -9714i);
    var var_4 = Struct_1(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(1666f, global0.a), _wgslsmith_div_f32(var_0.a, global0.a)), -1272f)) + 478f), _wgslsmith_div_vec4_i32(var_0.c.c, _wgslsmith_add_vec4_i32(~var_0.b, firstLeadingBit(func_2(vec4<f32>(160f, -485f, -3087f, 107f), var_0.c, vec4<u32>(37543u, 7119u, 1u, 50511u)).c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(var_4.c.x, -27728i >> (1u % 32u)), countOneBits(var_0.b.x) ^ var_4.c.x, 41559i), global0.b.yx, 11434u, global0.c.c.wxx);
}

