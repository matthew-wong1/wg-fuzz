struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7610i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    var var_0 = !(!vec4<bool>(1u < ~u_input.a, true, select(true, true, true), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    return 321f;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(0i, i32(-1i) * -2147483647i) & _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mult_i32(-41216i, -1i)), 1i), _wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(abs(26558i), _wgslsmith_mult_i32(-1i, 2147483647i))), -16417i));
    let var_1 = var_0.x;
    var var_2 = var_1;
    let var_3 = ~u_input.a;
    var var_4 = ~vec4<u32>(~_wgslsmith_mult_u32(u_input.a, 27410u), ~32798u >> (firstLeadingBit(var_3 | 1u) % 32u), 1u, 80897u);
    return u_input.a | ~(_wgslsmith_dot_vec2_u32(var_4.wx, countOneBits(vec2<u32>(31313u, arg_3))) & reverseBits(101918u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1257f, 800f, 2154f, 810f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(853f, -653f, 1648f, 797f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -340f))), -1749f, _wgslsmith_f_op_f32(-207f - _wgslsmith_div_f32(700f, 1801f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_div_f32(807f, 582f)))));
    let var_1 = u_input.a;
    var var_2 = Struct_3(vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, u_input.a, func_3(vec4<f32>(202f, -296f, 224f, var_0.x), u_input.a, var_0.zy, 39647u), 0u), abs(vec4<u32>(var_1, 1u, 0u, u_input.a) >> (vec4<u32>(var_1, 37090u, 10990u, 4294967295u) % vec4<u32>(32u)))), u_input.a), vec2<f32>(var_0.x, 1004f));
    var var_3 = vec3<u32>(reverseBits(~(~(~30874u))), _wgslsmith_sub_u32(~(~u_input.a), max(func_3(vec4<f32>(-855f, -187f, 695f, var_2.b.x), var_1, var_2.b, u_input.a), ~u_input.a)) | ~(~_wgslsmith_add_u32(var_1, 49997u)), 0u ^ max(var_1, max(4294967295u, ~73592u)));
    let var_4 = reverseBits(~(vec3<i32>(-1i) * -abs(vec3<i32>(-5347i, 1i, 54006i))));
    return Struct_1(abs(select(max(min(vec4<u32>(49896u, 4294967295u, u_input.a, var_2.a.x), vec4<u32>(71029u, 0u, var_3.x, 1u)), vec4<u32>(22272u, 48540u, 13767u, 0u) | vec4<u32>(0u, var_2.a.x, 40422u, 10634u)), ~(vec4<u32>(6771u, 13918u, u_input.a, u_input.a) ^ vec4<u32>(37607u, u_input.a, 7510u, var_1)), select(false, false, false) && true)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, var_4.x), -var_4.xy), 34384i) & min(-2147483647i, var_4.x));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = -2085f;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    var var_2 = Struct_4(vec3<i32>(firstTrailingBit(arg_0.b) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 46061i, 32022i), select(vec3<i32>(2706i, 0i, 2147483647i), vec3<i32>(arg_0.b, arg_0.b, 2147483647i), true)), arg_0.b, max(33141i, -1i)), countOneBits(arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 647f) - _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(102f, 2037f)) * -1000f))), arg_0.a.x, Struct_2(((arg_0.a.x ^ 4294967295u) >= arg_0.a.x) | (~u_input.a >= func_1().a.x), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(arg_0.b, arg_0.b, arg_0.b)), ~firstTrailingBit(vec3<i32>(arg_0.b, arg_0.b, arg_0.b))), min(arg_0.b | arg_0.b, 22480i) << (0u % 32u)));
    global0 = 2147483647i;
    global0 = var_2.a.x;
    return -636f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(vec3<u32>(u_input.a, 8096u, 1u) & (vec3<u32>(u_input.a, u_input.a, 4294967295u) | vec3<u32>(0u, u_input.a, 0u))) >> (((reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))) & (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(1u, 0u, u_input.a)) | (vec3<u32>(u_input.a, 60367u, u_input.a) & vec3<u32>(33043u, 7642u, 4294967295u)))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -283f)))), _wgslsmith_f_op_f32(func_4(func_1()))));
    let var_1 = ~(-1i >> (u_input.a % 32u));
    let var_2 = ~(~var_0.a);
    let var_3 = _wgslsmith_add_vec3_u32(~firstLeadingBit(var_0.a), ~(var_2 << (~var_0.a % vec3<u32>(32u))));
    var var_4 = select(!vec4<bool>(true, !all(vec4<bool>(true, true, false, true)), false, true), vec4<bool>(all(vec3<bool>(any(vec2<bool>(true, true)), true, true)), any(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)) || true, true), vec4<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), any(vec4<bool>(false, true, true, true)) | !all(vec3<bool>(true, true, false)), -377f == _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(-556f, var_0.b.x))), true));
    global0 = min(2147483647i, -2147483647i);
    var_0 = Struct_3(select(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(31729u, 11953u, var_3.x), vec3<u32>(var_3.x, u_input.a, var_2.x))), ~(vec3<u32>(1371u, var_0.a.x, 4294967295u) << (var_2 % vec3<u32>(32u))), !var_4.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -1912f)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 1i, var_1), -vec3<i32>(41112i, var_1, -1037i)), firstTrailingBit(var_1)), ~max(0u, 65444u), ~_wgslsmith_sub_vec3_u32(var_3, abs(var_0.a)));
}

