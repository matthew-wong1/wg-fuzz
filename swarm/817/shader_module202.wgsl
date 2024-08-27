struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<f32>(438f, -173f, -584f, -1003f), vec3<bool>(true, true, true), vec3<f32>(459f, -491f, 277f));

var<private> global1: vec3<u32>;

var<private> global2: Struct_3 = Struct_3(1000f, Struct_1(vec4<u32>(1u, 0u, 31095u, 1u), -1i, vec2<u32>(131165u, 0u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(round(global0.a)), global0.b, global0.c);
    global1 = vec3<u32>(~global1.x, ~global1.x, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global2.b.a.x, u_input.b)), ~global1.xz), global1.x));
    global1 = firstTrailingBit(vec3<u32>(u_input.b, max((1u & u_input.b) | global2.b.c.x, global2.b.a.x), select(global2.b.c.x, 41771u, true) | ~_wgslsmith_clamp_u32(0u, 28172u, 34184u)));
    return global2.b.a.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_3 {
    global2 = Struct_3(_wgslsmith_f_op_f32(-global0.c.x), global2.b);
    var var_0 = arg_0;
    var var_1 = max(~(~firstLeadingBit(global2.b.a)), ~vec4<u32>(1u, func_3(), 50148u | _wgslsmith_div_u32(global2.b.a.x, 44396u), _wgslsmith_sub_u32(0u, u_input.b) ^ countOneBits(u_input.b)));
    let var_2 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~28527u, max(var_1.x, 0u)) << (firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 13457u), vec2<u32>(20026u, 0u))) % vec2<u32>(32u)), firstTrailingBit(global1.zz));
    global2 = Struct_3(global2.a, Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.a.x, 109465u, var_2.x), global2.b.a.yxy), ~_wgslsmith_clamp_u32(95120u, 19432u, var_1.x), _wgslsmith_sub_u32(var_2.x >> (var_2.x % 32u), ~global2.b.c.x), 34116u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0, -51543i, 0i), u_input.a), vec3<i32>(-global2.b.b, select(arg_0, 2147483647i, global0.b.x), firstLeadingBit(arg_0))), countOneBits(~(~var_2))));
    return Struct_3(_wgslsmith_f_op_f32(max(-335f, -1000f)), global2.b);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = Struct_4(global0.a, vec3<bool>(false, global0.b.x, !(arg_1 && false) & true), vec3<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(arg_0.a * global2.a)));
    var var_1 = !(!(2106f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))));
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(arg_0.a - arg_0.a))))), func_2(-(~(~global2.b.b)), all(select(vec4<bool>(false, true, global0.b.x, true), !vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), all(global0.b.zz))), true).b);
    let var_2 = !select(!vec4<bool>(!global0.b.x, arg_1, true & arg_1, all(vec2<bool>(true, true))), select(select(vec4<bool>(var_0.b.x, false, true, arg_1), !vec4<bool>(global0.b.x, true, global0.b.x, false), vec4<bool>(global0.b.x, true, var_0.b.x, arg_1)), !select(vec4<bool>(arg_1, arg_1, true, global0.b.x), vec4<bool>(global0.b.x, false, var_0.b.x, global0.b.x), vec4<bool>(global0.b.x, false, var_0.b.x, var_0.b.x)), true), select(!vec4<bool>(var_0.b.x, false, false, var_0.b.x), !(!vec4<bool>(var_0.b.x, false, false, var_0.b.x)), vec4<bool>(arg_0.b.b > arg_0.b.b, global2.b.a.x <= 0u, false, arg_1 | var_0.b.x)));
    var_1 = global0.b.x;
    return ~max(~u_input.b, ~u_input.b << (abs(global2.b.c.x) % 32u)) << (global2.b.a.x % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_sub_u32(func_4(func_2(1i, false, true), !all(global0.b), 7362i) | (~firstTrailingBit(1u) ^ 0u), global2.b.a.x);
    let var_1 = abs(abs(global2.b.a));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a * global2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a, global0.c.x, true)) - _wgslsmith_f_op_f32(step(1969f, global0.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))))), !select(arg_0.wwx, global0.b, !select(arg_0.xwz, global0.b, arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.c))));
    return _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec3_i32(u_input.a, -u_input.a)), _wgslsmith_mod_i32(27700i, -select(-1i, -68194i, arg_1.x))) & -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_3.x), u_input.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec2<bool>(!(!global0.b.x), 676f < _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-917f, _wgslsmith_f_op_f32(-197f - global2.a)))));
    global1 = global2.b.a.zww;
    let var_1 = _wgslsmith_f_op_f32(step(-251f, -1116f));
    let var_2 = vec2<bool>(false && all(!(!vec3<bool>(var_0.x, false, false))), false);
    var var_3 = arg_0.a.x;
    return func_2(-32610i, all(!(!global0.b)), !(((-1i << (arg_2.a.x % 32u)) >> (0u % 32u)) == (u_input.a.x >> (_wgslsmith_dot_vec3_u32(global2.b.a.yww, vec3<u32>(14231u, u_input.b, global1.x)) % 32u))));
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_4 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1746f, arg_1, arg_1) * vec3<f32>(-876f, -361f, 503f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.x, global2.a, arg_0.a))))) * vec3<f32>(818f, global0.a.x, _wgslsmith_f_op_f32(global0.c.x + global2.a))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, arg_1, -1012f))), !global0.b.x)) - _wgslsmith_f_op_vec3_f32(global0.a.ywy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-514f, -1274f, arg_0.a)))));
    let var_2 = func_5(Struct_2(vec3<i32>(arg_0.b.b >> (global2.b.c.x % 32u), u_input.a.x, 32827i), vec2<u32>(~arg_0.b.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(8717u, global2.b.c.x, global1.x), vec3<u32>(global2.b.a.x, global1.x, 0u)), arg_0.b.a.yzw))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-594f - -599f)))), _wgslsmith_f_op_vec2_f32(floor(var_1.xx))), Struct_1(~((global2.b.a ^ vec4<u32>(1u, 59544u, arg_0.b.c.x, 4294967295u)) | max(arg_0.b.a, arg_0.b.a)), _wgslsmith_clamp_i32(select(-global2.b.b, -arg_0.b.b, all(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x))), countOneBits(~global2.b.b), u_input.a.x), _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_0.b.c.x, arg_0.b.c.x)), ~arg_0.b.c))).b;
    let var_3 = 71743u;
    var var_4 = arg_0;
    return Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(func_2(var_4.b.b, true, global0.b.x).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1373f)), _wgslsmith_f_op_f32(-1155f - _wgslsmith_div_f32(var_1.x, global2.a)), arg_0.a))), !(!(!global0.b)), _wgslsmith_div_vec3_f32(global0.c, vec3<f32>(-362f, 1f, global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_2(u_input.a, global2.b.c), global0.c.zy, Struct_1(abs(~vec4<u32>(8582u, 21068u, global2.b.c.x, global2.b.c.x)), func_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec2<i32>(u_input.a.x, global2.b.b) ^ vec2<i32>(-6579i, -13340i), u_input.a.zy), ~(global2.b.c | vec2<u32>(global2.b.a.x, global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * global0.c.x))) * 1657f));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, func_2(u_input.a.x, var_0.b.x, global0.b.x).b.a.x, !global0.b.x && (global0.b.x == (true | var_0.b.x))));
}

