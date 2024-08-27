struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> bool {
    global0 = array<Struct_2, 27>();
    let var_0 = vec4<bool>(true, arg_1.c.x, true, !(any(arg_1.c) || any(select(arg_1.c.yx, vec2<bool>(arg_1.c.x, true), true))));
    var var_1 = ~4294967295u;
    var var_2 = select(vec2<bool>(arg_1.c.x, true), vec2<bool>(!any(!arg_1.c.zy), !var_0.x), true);
    let var_3 = arg_1;
    return !var_3.c.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> vec4<i32> {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -449f), 756f)))), -169f, arg_2 && (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1131f * 1234f), -159f, all(vec3<bool>(arg_2, true, true)))) == 1163f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-164f))))), 2242f);
    let var_2 = Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u)), -u_input.b.x, arg_0);
    global0 = array<Struct_2, 27>();
    return -(~_wgslsmith_mod_vec4_i32(countOneBits(~vec4<i32>(12407i, var_2.b, 1i, -64227i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1985i, var_2.b, -4636i), vec4<i32>(2147483647i, var_2.b, 0i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_2.b, var_2.b, -10295i), vec4<i32>(35638i, -49742i, 0i, var_2.b)), !arg_0.x)));
}

fn func_2(arg_0: bool) -> i32 {
    return _wgslsmith_dot_vec4_i32(func_4(select(!select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), !(!vec4<bool>(arg_0, false, arg_0, arg_0)), !(!vec4<bool>(arg_0, false, false, true))), true || (all(vec2<bool>(false, arg_0)) | func_3(Struct_2(1u, u_input.a.x), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 1584u), u_input.a.x, vec4<bool>(arg_0, false, arg_0, true)), global0[_wgslsmith_index_u32(4294967295u, 27u)], vec3<u32>(4294967295u, 33291u, 19706u))), arg_0), vec4<i32>(u_input.a.x, -6392i, ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(3668i, u_input.b.x), u_input.a)), i32(-1i) * -38403i));
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(2147483647i | u_input.a.x, firstTrailingBit(-18073i), ~(-54227i)) | -12890i, -8783i, countOneBits(func_2(false))) & _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(1i, u_input.a.x, -1i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), min(vec3<i32>(u_input.b.x, u_input.b.x, 33252i), vec3<i32>(u_input.b.x, -36601i, u_input.b.x)), abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 27u)];
    var var_2 = global0[_wgslsmith_index_u32(var_1.a, 27u)];
    let var_3 = !select(vec2<bool>(!all(vec2<bool>(true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), vec2<bool>(true, select(true, any(vec3<bool>(true, false, true)), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false))), vec2<bool>(all(vec3<bool>(false, false, true)), false), vec2<bool>(all(vec3<bool>(false, true, true)), true)));
    var var_4 = Struct_2(~_wgslsmith_sub_u32(_wgslsmith_add_u32(firstTrailingBit(1993u), _wgslsmith_mod_u32(var_2.a, var_1.a)), abs(4294967295u) >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u)), var_2.b);
    return ~var_4.a;
}

fn func_5(arg_0: u32) -> vec3<u32> {
    global0 = array<Struct_2, 27>();
    var var_0 = -(~u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(45985u, arg_0, 0u, 1u)), ~((vec4<u32>(36932u, arg_0, 12452u, arg_0) & vec4<u32>(arg_0, arg_0, arg_0, arg_0)) >> (vec4<u32>(1u, arg_0, arg_0, arg_0) % vec4<u32>(32u)))), 0i, !vec4<bool>(func_3(Struct_2(23566u, 45616i), Struct_1(vec4<u32>(0u, arg_0, 4294967295u, arg_0), u_input.a.x, vec4<bool>(false, true, false, true)), Struct_2(19983u, u_input.a.x), vec3<u32>(arg_0, arg_0, 4294967295u)) || true, !any(vec4<bool>(true, false, true, true)), true, 1u < arg_0));
    let var_2 = !(var_1.c.x | (all(vec3<bool>(var_1.c.x, var_1.c.x, true)) || !(9912i == u_input.a.x)));
    var var_3 = arg_0;
    return var_1.a.wyw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_u32(func_1(), ~2124u)) >> (vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(~0u), ~4294967295u), ~(~_wgslsmith_div_u32(1u, 80765u)), 4294967295u) % vec3<u32>(32u));
    let var_1 = Struct_3(~26324i, global0[_wgslsmith_index_u32(func_1(), 27u)], ~vec4<u32>(var_0.x, max(var_0.x, 1u) | var_0.x, var_0.x, _wgslsmith_mult_u32(var_0.x, 25698u)));
    var var_2 = global0[_wgslsmith_index_u32(var_0.x, 27u)];
    var var_3 = Struct_1(abs(reverseBits(vec4<u32>(var_2.a, var_1.c.x, 1u, var_1.c.x))) | countOneBits(var_1.c), -_wgslsmith_mult_i32(var_1.a, ~var_2.b), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    var_0 = ~var_1.c.wwy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(198f, -1000f))))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_3.a.yyy, vec3<u32>(4294967295u, var_2.a, var_2.a)), var_2.a), 84434u & var_0.x, _wgslsmith_mod_u32(~_wgslsmith_div_u32(var_2.a, var_1.b.a), var_3.a.x), _wgslsmith_dot_vec4_u32(~(~var_1.c), var_3.a & _wgslsmith_mult_vec4_u32(vec4<u32>(42138u, 1u, 4294967295u, var_1.b.a), var_1.c))), var_3.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-946f - -755f)), _wgslsmith_f_op_f32(445f * _wgslsmith_f_op_f32(-1634f + -134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f + -631f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1146f, 2270f, -527f, 802f), vec4<f32>(-1758f, 1000f, -812f, 562f)))))));
}

