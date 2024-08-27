struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<Struct_1, 3>();
    var var_0 = abs(4294967295u);
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, 0i, u_input.a)), countOneBits(vec3<i32>(u_input.a, -17052i, ~u_input.a))), _wgslsmith_div_vec3_i32(~(~vec3<i32>(46038i, -1i, u_input.c.x) & vec3<i32>(u_input.c.x, u_input.a, u_input.c.x)), vec3<i32>(51373i, countOneBits(24701i), u_input.a)));
    var_0 = 0u;
    var var_2 = !(!(!vec4<bool>(true, arg_0 >= 478f, any(vec4<bool>(false, false, false, false)), true)));
    return 4271i;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = ~(~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(31646u, arg_0, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 1u)))) | vec3<u32>(~88631u, countOneBits(0u), arg_0);
    let var_1 = _wgslsmith_sub_i32(-1770i, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(458f, 131f, true)))))));
    let var_2 = select(!select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, true), vec3<bool>(any(vec2<bool>(true, true)), false, true)), !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true)), all(vec3<bool>(!any(vec2<bool>(false, false)), true, true)));
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~(vec2<u32>(arg_0, 12226u) << (vec2<u32>(0u, 11343u) % vec2<u32>(32u))), var_0.yz), min(~(~var_0.zy), ~vec2<u32>(4294967295u, arg_0)) ^ vec2<u32>(var_0.x, var_0.x & firstTrailingBit(1u)));
    let var_4 = var_2.xy;
    return Struct_4(Struct_3(1200f, abs(max(~vec4<u32>(arg_0, 77904u, arg_0, var_3.x), vec4<u32>(66685u, var_0.x, 4294967295u, var_3.x) >> (vec4<u32>(4294967295u, 1u, 4294967295u, var_0.x) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f + 1187f))))));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    var var_0 = func_2(arg_0.a.b.x);
    global0 = array<Struct_1, 3>();
    var var_1 = Struct_2(~u_input.c, arg_3.b, global0[_wgslsmith_index_u32(arg_3.c.b, 3u)]);
    var var_2 = arg_3.a.x;
    var_2 = -(-(_wgslsmith_dot_vec2_i32(arg_3.a, vec2<i32>(var_1.a.x, arg_3.a.x)) & (var_1.a.x | 2147483647i)) | var_1.a.x);
    return Struct_4(Struct_3(arg_2.b, vec4<u32>(reverseBits(0u), 1u, 63085u, abs(4294967295u))), arg_2.a.a);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4) -> bool {
    global0 = array<Struct_1, 3>();
    let var_0 = (arg_2.a.b ^ arg_2.a.b) & arg_2.a.b;
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    return !(!(true != (u_input.c.x >= u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -296f;
    var var_1 = u_input.d;
    var_1 = 25582u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))) * vec2<f32>(-799f, _wgslsmith_f_op_f32(f32(-1f) * -2783f)))));
    let var_3 = !(!vec4<bool>(true, true, true && any(vec2<bool>(true, true)), func_4(Struct_2(u_input.c, vec3<f32>(var_0, var_2.x, 381f), Struct_1(vec4<bool>(false, false, true, true), 22668u, vec2<bool>(false, true), vec4<bool>(true, false, true, true))), 1564f, func_1(Struct_4(Struct_3(var_0, vec4<u32>(u_input.b.x, 0u, 25787u, u_input.b.x)), var_2.x), false, Struct_4(Struct_3(1473f, vec4<u32>(1u, u_input.d, u_input.b.x, 27993u)), var_0), Struct_2(vec2<i32>(1i, u_input.c.x), vec3<f32>(var_0, var_0, var_2.x), global0[_wgslsmith_index_u32(0u, 3u)])))));
    var var_4 = Struct_2(vec2<i32>((u_input.c.x << (71701u % 32u)) >> (_wgslsmith_sub_u32(abs(1u), u_input.d) % 32u), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(u_input.c.x, -2147483647i, 1i, u_input.c.x), abs(vec4<i32>(u_input.c.x, -17237i, u_input.c.x, 1i)), !vec4<bool>(var_3.x, false, var_3.x, var_3.x)), -vec4<i32>(u_input.c.x, 58136i, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), var_2.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-331f, -1000f, var_0), vec3<f32>(1000f, var_0, var_2.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_2.x, -720f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, -1569f, var_2.x)))))), global0[_wgslsmith_index_u32(0u, 3u)]);
    let var_5 = var_4.c;
    let var_6 = func_2(27070u).a;
    global0 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(select(max(~firstTrailingBit(var_4.a.x), var_4.a.x), 21554i, any(var_3.zx)), vec4<i32>(-1i, 0i, countOneBits(abs(var_4.a.x) & _wgslsmith_clamp_i32(-34576i, var_4.a.x, -48829i)), -25934i));
}

