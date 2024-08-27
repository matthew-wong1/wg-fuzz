struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_3;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = 37830u;
    var var_1 = -min(vec2<i32>(u_input.a, -2147483647i), select(select(vec2<i32>(u_input.a, arg_1), vec2<i32>(arg_1, 0i), global0.b.xy), ~vec2<i32>(40606i, arg_1), vec2<bool>(true, global0.b.x)) << (vec2<u32>(countOneBits(39444u), ~arg_0.a) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-194f, -770f) - vec2<f32>(450f, 638f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2031f, 951f) * vec2<f32>(1002f, -1000f)))))));
    let var_3 = _wgslsmith_sub_vec4_u32(~min(~vec4<u32>(1u, global0.a.a, global0.c.x, 0u) | _wgslsmith_mult_vec4_u32(vec4<u32>(52660u, 29723u, arg_0.a, arg_0.a), global0.c), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.c.x, 1u, 1u) ^ global0.c, vec4<u32>(global0.c.x, global0.c.x, global0.c.x, arg_0.a))), global0.c);
    let var_4 = _wgslsmith_mult_i32(arg_1, 2147483647i);
    return ~(-1i);
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = (u_input.a & _wgslsmith_div_i32(max(1i, -u_input.a), func_3(Struct_2(61541u, false), arg_0.x | 2147483647i))) | u_input.a;
    global0 = Struct_3(Struct_2(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.a.a ^ 148272u, _wgslsmith_add_u32(global0.c.x, 4294967295u)), 0u), true), global0.b, global0.c);
    global0 = Struct_3(global0.a, select(vec3<bool>(true, global0.a.b, global0.a.b), !global0.b, vec3<bool>(true, true, all(select(global0.b, global0.b, global0.a.b)))), (global0.c | select(~vec4<u32>(global0.c.x, global0.c.x, 0u, global0.c.x), ~global0.c, true)) ^ _wgslsmith_add_vec4_u32(global0.c, vec4<u32>(~115780u, 29739u, countOneBits(1u), _wgslsmith_mod_u32(global0.c.x, 4294967295u))));
    global0 = Struct_3(Struct_2(_wgslsmith_div_u32(global0.c.x, ~23717u) ^ 0u, true), vec3<bool>(all(!(!vec3<bool>(global0.a.b, global0.b.x, false))), true, global0.a.b), ~(~vec4<u32>(global0.a.a << (global0.c.x % 32u), select(11714u, global0.a.a, global0.b.x), global0.c.x, 13081u)));
    global0 = Struct_3(global0.a, global0.b, vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a.a, global0.a.a, 12652u), global0.c), ~4294967295u), 4294967295u, global0.a.a, ~global0.a.a));
    return Struct_3(global0.a, !select(select(!global0.b, !global0.b, vec3<bool>(global0.a.b, false, global0.a.b)), global0.b, global0.b), ~max(vec4<u32>(67487u, 1u, 28273u >> (global0.c.x % 32u), _wgslsmith_div_u32(global0.a.a, global0.c.x)), ~(~vec4<u32>(global0.a.a, 25951u, global0.a.a, 0u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<u32> {
    global0 = func_2(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -45611i), vec3<i32>(u_input.a, u_input.a, u_input.a) >> (arg_0.c.xxz % vec3<u32>(32u))), min(1i, select(u_input.a, u_input.a, true)), u_input.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(arg_0.c.x), countOneBits(arg_0.c.x), global0.c.x), _wgslsmith_mult_vec3_u32(global0.c.zxz, global0.c.xyy)) % vec3<u32>(32u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x + -1079f)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0))));
    var var_2 = -(~(u_input.a >> (~arg_1.a % 32u)));
    let var_3 = 0u;
    return ~vec4<u32>(0u, ~64957u, _wgslsmith_dot_vec2_u32(arg_0.c.ww, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(19569u, global0.a.a), global0.c.yy), ~vec2<u32>(arg_1.a, var_3), global0.c.xy)), _wgslsmith_dot_vec2_u32(~global0.c.xw, vec2<u32>(~var_3, func_2(vec3<i32>(u_input.a, u_input.a, 1i)).c.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = func_2(firstTrailingBit(_wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(2147483647i, 0i, 1i)), vec3<i32>(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 30387i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i)), u_input.a))));
    let var_1 = 481f;
    var var_2 = arg_0.x;
    let var_3 = Struct_3(func_2(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-68749i, u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(20145i, 13782i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~(vec3<i32>(2147483647i, -2147483647i, u_input.a) << (vec3<u32>(global0.a.a, 1u, 0u) % vec3<u32>(32u))))).a, select(select(select(select(var_0.b, arg_1, arg_1.x), select(global0.b, arg_1, global0.b), var_0.b.x), var_0.b, func_2(vec3<i32>(u_input.a, u_input.a, u_input.a)).b), vec3<bool>(var_0.b.x, false, var_0.a.b), !var_0.b.x), arg_0);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1051f, var_1)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 987f, 925f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(969f, var_1, 217f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1131f), _wgslsmith_f_op_f32(-var_1), 930f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 848f, var_1), vec3<f32>(var_1, 680f, var_1), arg_1)))))), select(global0.b, select(vec3<bool>(all(vec4<bool>(var_0.a.b, global0.a.b, true, var_0.b.x)), false, false), vec3<bool>(all(var_0.b), any(vec4<bool>(true, var_0.a.b, true, arg_1.x)), var_1 <= 175f), true), any(!vec2<bool>(global0.b.x, arg_1.x)))));
    return func_2(-firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) << (arg_0.wzy % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, u_input.a))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(arg_1, -581f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 745f)), _wgslsmith_f_op_f32(trunc(-650f)))));
    var var_1 = var_0.b;
    var_0 = arg_0;
    global0 = Struct_3(arg_0, global0.b, global0.c);
    let var_2 = func_5(func_4(func_2(vec3<i32>(2147483647i, 46985i, -2147483647i) | vec3<i32>(24130i, u_input.a, u_input.a)), arg_0, vec2<f32>(_wgslsmith_f_op_f32(abs(157f)), _wgslsmith_f_op_f32(round(675f)))) << (vec4<u32>(arg_0.a, 1u, 4294967295u, 1u) % vec4<u32>(32u)), global0.b);
    return Struct_1(vec4<i32>(-u_input.a, 121981i, 10212i, 35251i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.a, ~(~global0.a.a) >> (42813u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(837f + -352f) - _wgslsmith_f_op_f32(max(-160f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, -962f) + vec2<f32>(1293f, 435f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(326f, 1445f) + vec2<f32>(-1329f, 559f))))), !vec2<bool>(false || global0.b.x, !global0.a.b))));
}

