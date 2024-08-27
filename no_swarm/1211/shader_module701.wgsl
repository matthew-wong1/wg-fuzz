struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2832f;

var<private> global1: array<Struct_1, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global1 = array<Struct_1, 17>();
    let var_0 = arg_0.x;
    let var_1 = vec2<i32>(~select(firstTrailingBit(-u_input.a), ~(-13143i), any(!vec2<bool>(var_0, var_0))), firstTrailingBit(u_input.b));
    let var_2 = true;
    global1 = array<Struct_1, 17>();
    return ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 5845u, 22541u, u_input.c), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.c))) & vec4<u32>(_wgslsmith_sub_u32(~3737u, u_input.e), ~0u, ~u_input.e, _wgslsmith_mult_u32(55702u, reverseBits(u_input.e))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    global0 = 385f;
    global1 = array<Struct_1, 17>();
    let var_0 = u_input.c == u_input.e;
    var var_1 = firstLeadingBit(0u);
    var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~func_3(vec3<bool>(arg_1.x, false, arg_2), Struct_1(-504f), global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(u_input.e, 17u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(45253u, 13851u, 4294967295u, 46354u), vec4<u32>(4294967295u, 67610u, u_input.c, u_input.e)) | countOneBits(vec4<u32>(0u, u_input.e, u_input.c, u_input.c))), ~min(reverseBits(vec4<u32>(u_input.c, 43310u, 18140u, u_input.e) << (vec4<u32>(u_input.c, u_input.c, u_input.e, 4294967295u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e, u_input.c, 0u), vec4<u32>(u_input.e, u_input.c, u_input.e, u_input.c)), countOneBits(36339u), 7057u, u_input.c)));
    return _wgslsmith_f_op_f32(select(1261f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -377f) + _wgslsmith_f_op_f32(-570f + -436f)))))), arg_2));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f * _wgslsmith_f_op_f32(func_2(false, vec2<bool>(true, true), false)))), _wgslsmith_f_op_f32(f32(-1f) * -508f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(537f))) - _wgslsmith_f_op_f32(func_2(false, vec2<bool>(true, true), false)))));
    var var_0 = u_input.d;
    var_0 = u_input.d;
    var var_1 = false;
    let var_2 = -(select(_wgslsmith_mod_i32(u_input.d.x, var_0.x) << (u_input.c % 32u), i32(-1i) * -var_0.x, !all(vec3<bool>(true, true, false))) >> (max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, u_input.c, u_input.e), ~u_input.c), reverseBits(u_input.c)) % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f))) + -571f) - -357f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(156f, 1000f)), _wgslsmith_f_op_f32(-690f * -443f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1650f, 1792f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(875f - _wgslsmith_div_f32(198f, 259f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1317f)))));
    var var_1 = vec2<f32>(var_0, 1189f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1472f)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
    var var_2 = 19776u;
    var var_3 = -39835i;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(false, vec2<bool>(false, false), true)))) - 1895f)), var_0);
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-304f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-482f, var_1.x)), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-277f, 405f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, var_1.x)))))));
    global0 = var_0;
    let var_4 = -vec4<i32>(-804i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 27980i, u_input.b) & vec4<i32>(8877i, -3682i, u_input.a, u_input.b), select(vec4<i32>(u_input.a, u_input.a, 53704i, u_input.a), vec4<i32>(u_input.d.x, u_input.a, -21168i, u_input.a), vec4<bool>(false, false, true, false))), -(~u_input.d.x)), i32(-1i) * -76939i, -firstTrailingBit(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_add_u32(~(~u_input.e), ~_wgslsmith_div_u32(u_input.c, 34297u) & (~u_input.c >> (u_input.e % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_0)))), 1u, _wgslsmith_div_vec2_i32(~vec2<i32>(countOneBits(var_4.x), var_4.x), firstLeadingBit(u_input.d.yy)));
}

