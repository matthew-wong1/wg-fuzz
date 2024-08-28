struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18>;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.c, u_input.b.x, _wgslsmith_div_i32(0i, u_input.c), u_input.c), reverseBits(vec4<i32>(-46136i, u_input.b.x, u_input.b.x, -2147483647i)) | countOneBits(vec4<i32>(u_input.c, u_input.c, 57715i, -26512i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-20710i, -12519i, u_input.b.x, u_input.c), ~vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x))), u_input.b.x, -62342i, _wgslsmith_dot_vec2_i32(abs(u_input.b), vec2<i32>(-44021i, max(_wgslsmith_mod_i32(u_input.c, -21071i), -25839i))));
    var var_1 = arg_3.a;
    var var_2 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(max(158f, 634f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0, arg_0)), arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + -900f))))), false));
    let var_3 = arg_2;
    var var_4 = arg_3;
    return vec2<bool>(true, all(!(!vec2<bool>(arg_3.a, var_4.a))));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = Struct_1(true, ~4294967295u);
    global0 = array<vec2<i32>, 18>();
    var var_1 = vec4<bool>(true, any(select(func_3(arg_0.x, ~vec2<u32>(var_0.b, 1u), 25276u, Struct_1(false, 40874u)), !vec2<bool>(var_0.a, true), false)), var_0.a, var_0.a);
    global1 = abs(select(0i, _wgslsmith_mult_i32(-2329i, firstTrailingBit(u_input.b.x & 1i)), var_0.a));
    var_1 = select(vec4<bool>(countOneBits(0u) == firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(15200u, 4294967295u, 0u, 0u), vec4<u32>(var_0.b, 55821u, 0u, 33231u))), true, !var_0.a, !var_1.x), !select(!(!vec4<bool>(true, var_0.a, false, false)), !select(vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(var_1.x, var_1.x, false, true), false), _wgslsmith_f_op_f32(ceil(arg_0.x)) < _wgslsmith_f_op_f32(trunc(273f))), select(func_3(-489f, ~(~vec2<u32>(u_input.a, 1u)), max(4294967295u, ~u_input.a), Struct_1(var_1.x, _wgslsmith_add_u32(var_0.b, 1u))).x, !(var_0.a == var_1.x), all(select(!var_1.zyw, vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, true, true)))));
    return var_1.x;
}

fn func_1() -> Struct_1 {
    let var_0 = !(!all(vec3<bool>(true, false, false)) && !func_2(vec3<f32>(-203f, -818f, -198f))) | all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false));
    let var_1 = -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, reverseBits(u_input.c), ~20772i), -vec3<i32>(u_input.c, u_input.c, u_input.b.x), ~vec3<i32>(-27693i, u_input.b.x, u_input.c) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, -1i))));
    global1 = 0i;
    let var_2 = firstTrailingBit(~u_input.b);
    var var_3 = _wgslsmith_sub_u32(reverseBits(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 37703u), vec3<u32>(4294967295u, u_input.a, 20960u)), max(u_input.a, u_input.a))), ~u_input.a);
    return Struct_1(var_0, 1u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = arg_1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    let var_2 = select(~(~(vec2<u32>(arg_2.b, u_input.a) << (vec2<u32>(arg_2.b, arg_2.b) % vec2<u32>(32u)))) | _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.b, u_input.a)), vec2<u32>(u_input.a, 28137u) << (vec2<u32>(u_input.a, arg_2.b) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(select((vec2<u32>(0u, arg_2.b) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a << (u_input.a % 32u), 1u), vec2<bool>(all(vec3<bool>(arg_2.a, false, true)), !arg_2.a)), ~select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(576u, 1u), vec2<bool>(arg_2.a, arg_2.a)) | vec2<u32>(~115249u, max(1u, u_input.a))), arg_2.a);
    var var_3 = vec4<bool>(true, arg_2.a, !((_wgslsmith_f_op_f32(-arg_1.x) != -1406f) && true), true);
    let var_4 = var_3.x;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -u_input.b.x;
    global0 = array<vec2<i32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2175f), -1270f));
    let var_1 = func_4(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c, 2147483647i, -21709i), ~(~vec3<i32>(u_input.b.x, -1i, u_input.b.x))) ^ ~vec3<i32>(u_input.c, u_input.c, u_input.c ^ 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0)))), -135f), func_1());
    global1 = ~1i;
    let var_2 = firstLeadingBit(~vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 8352u), 18u)], ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<u32>(~4294967295u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_1.b, var_1.b), vec4<u32>(59921u, 0u, 6606u, 4278u)), _wgslsmith_mult_u32(var_1.b, var_1.b)), firstLeadingBit(vec4<u32>(var_1.b, u_input.a, 0u, 4294967295u)) & abs(vec4<u32>(var_1.b, var_1.b, u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(859f, var_0, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(select(310f, var_0, var_1.a)), -725f, -840f))))), _wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(-27625i, var_2.x | var_2.x), -reverseBits(var_2.x)) | u_input.c);
}

