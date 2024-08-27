struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 18u)];
    global2 = array<Struct_1, 18>();
    let var_1 = firstLeadingBit(arg_0.e);
    global2 = array<Struct_1, 18>();
    var var_2 = !select(vec2<bool>(true, !any(vec4<bool>(false, global3.x, global3.x, true))), vec2<bool>(global3.x, true), select(true, any(vec2<bool>(false, global3.x)), true));
    return !(!vec2<bool>(-1i >= (var_1.x << (arg_0.d % 32u)), all(!vec4<bool>(global3.x, false, var_2.x, true))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = countOneBits(~(vec3<i32>(-1i) * -vec3<i32>(-1i, -2147483647i, 11360i))) << (~(~vec3<u32>(u_input.a.x, u_input.a.x, ~4294967295u)) % vec3<u32>(32u));
    global2 = array<Struct_1, 18>();
    global3 = !(!select(select(func_3(Struct_3(1000f, vec2<f32>(1358f, -603f), 4294967295u, u_input.a.x, vec3<i32>(-47905i, var_0.x, var_0.x))), vec2<bool>(arg_0, global3.x), all(vec2<bool>(global3.x, global3.x))), !(!vec2<bool>(arg_0, global3.x)), !all(vec2<bool>(arg_0, true))));
    let var_1 = Struct_2(25840u, false, -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)), var_0));
    global3 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1621f) < _wgslsmith_f_op_f32(floor(-406f)), all(!(!vec4<bool>(arg_0, true, false, var_1.b))));
    return Struct_2(var_1.a, false, -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_0, _wgslsmith_mult_vec3_i32(var_1.c, vec3<i32>(var_1.c.x, 24378i, -32091i))), vec3<i32>(-39829i, -5970i, var_0.x) & -var_0));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    global2 = array<Struct_1, 18>();
    let var_0 = ~4294967295u;
    return Struct_3(-427f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1360f, -228f) - vec2<f32>(1049f, 490f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(335f, 778f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2482f, 764f))) + vec2<f32>(-184f, -991f)))), var_0, abs(reverseBits(1u)), arg_1.c);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = func_4(-vec4<i32>(firstLeadingBit(0i), _wgslsmith_sub_i32(2147483647i, 12048i) << (u_input.a.x % 32u), -1i, -2147483647i << (0u % 32u)), func_2(!global3.x), select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), func_2(all(vec3<bool>(false, global3.x, false))).c.zz), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~18337i, min(-1i, -2147483647i)), 1i, -5559i), global3.x));
    let var_1 = !(!(!vec3<bool>(global3.x, global3.x, global3.x)));
    global3 = vec2<bool>(!global3.x, global3.x);
    let var_2 = _wgslsmith_div_vec2_i32(max(-(~var_0.e.yy), firstTrailingBit(_wgslsmith_sub_vec2_i32(-vec2<i32>(25048i, var_0.e.x), vec2<i32>(-1i, -16215i)))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.e.x, 1i), ~(-11553i)), func_4(-vec4<i32>(-6017i, var_0.e.x, 0i, var_0.e.x), func_2(false), var_0.e.x).e.yy) ^ -(~(~var_0.e.zx)));
    return ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), abs(141853u), u_input.a.x), 27437u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-646f * 513f))), 637f)));
    global2 = array<Struct_1, 18>();
    global3 = vec2<bool>(!(~u_input.a.x == 0u), global3.x);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -604f))) * var_0.x)), ~(-abs(2147483647i)) & (~0i >> (func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1000f))) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1116f, var_0.x, _wgslsmith_f_op_f32(1101f * -1067f), var_0.x)))));
    global2 = array<Struct_1, 18>();
    let var_2 = !((true && (u_input.a.x < u_input.a.x)) && true);
    let x = u_input.a;
    s_output = StorageBuffer(16094i);
}

