struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-37802i, i32(-2147483648), 26632i, 25551i);

var<private> global1: u32;

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f - -2192f)), -459f))));
    global1 = u_input.c;
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(~62771u, 27u)]);
    let var_2 = var_1;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    return 101819u;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<f32>) -> f32 {
    global1 = u_input.a;
    var var_0 = vec4<u32>(~func_3(), 4294967295u, (0u | _wgslsmith_dot_vec2_u32(vec2<u32>(54181u, u_input.c), vec2<u32>(0u, u_input.c) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))) ^ _wgslsmith_mult_u32(reverseBits(_wgslsmith_clamp_u32(u_input.c, u_input.a, 14209u)), firstTrailingBit(u_input.a)), ~4294967295u);
    var_0 = vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(var_0.x, var_0.x, 0u, 40782u), vec4<bool>(true, arg_1.x, true, arg_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(25954u, u_input.a, 24134u, 96204u), vec4<u32>(var_0.x, 23506u, var_0.x, 1u))), vec4<u32>(u_input.c, var_0.x | 27598u, min(u_input.c, u_input.c), u_input.c ^ 1562u)), vec4<u32>(abs(~var_0.x), u_input.a, u_input.a, ~_wgslsmith_sub_u32(var_0.x, 1900u))), u_input.a, _wgslsmith_div_u32(1u, u_input.c));
    global0 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(-2147483647i, 1i, arg_0, u_input.b)), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0, -2147483647i, arg_0), vec4<i32>(u_input.b, -53002i, u_input.b, arg_0))) & _wgslsmith_sub_vec4_i32(-(vec4<i32>(28355i, -19301i, global0.x, arg_0) ^ vec4<i32>(u_input.b, 9909i, 3489i, -64246i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, -5970i), vec4<i32>(2147483647i, arg_0, u_input.b, 2147483647i)), 108941i | u_input.b, -arg_0, 2147483647i)));
    var var_1 = Struct_1(346f, _wgslsmith_f_op_f32(f32(-1f) * -250f));
    return -523f;
}

fn func_1() -> u32 {
    var var_0 = -1182f;
    let var_1 = Struct_4(true, Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(1809f, 930f), _wgslsmith_f_op_f32(561f - -470f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(step(-1000f, -575f))), _wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(-1147f + _wgslsmith_f_op_f32(func_2(u_input.b, vec4<bool>(true, false, true, false), vec4<f32>(-954f, 1000f, 1000f, 218f)))))), global2[_wgslsmith_index_u32(~(~4294967295u) ^ u_input.c, 27u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1121f, 1014f), vec2<f32>(-665f, -461f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1774f, -409f))))))), 4294967295u);
    var var_2 = _wgslsmith_div_vec4_u32(firstLeadingBit(countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_1.e, u_input.a, u_input.a), reverseBits(vec4<u32>(0u, 37652u, 0u, 0u))))), vec4<u32>(u_input.c, ~112966u, ~_wgslsmith_clamp_u32(37059u, 65025u, var_1.e) << (~_wgslsmith_mult_u32(var_1.e, 80670u) % 32u), ~u_input.c));
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2245f + var_1.d.x)), var_1.d.x)), var_1.b.b);
    global2 = array<Struct_1, 27>();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 27>();
    let var_0 = ~vec3<u32>(func_1(), ~1u, ~4294967295u ^ select(49577u, u_input.c, false)) | select(_wgslsmith_clamp_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(9840u, u_input.c, 43251u), vec3<u32>(11190u, u_input.a, 4294967295u)), firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c))), vec3<u32>(u_input.a, abs(u_input.a), _wgslsmith_div_u32(0u, u_input.c)), vec3<u32>(u_input.a & u_input.c, ~35214u, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(21454u, 1u), ~u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.c, 29585u), select(vec3<u32>(92349u, u_input.a, u_input.a), vec3<u32>(u_input.c, 14391u, u_input.a), vec3<bool>(true, true, false))), min(u_input.c, max(u_input.c, u_input.a))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, ~firstLeadingBit(countOneBits(u_input.a))), 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(global0.zyz, ~countOneBits(var_0));
}

