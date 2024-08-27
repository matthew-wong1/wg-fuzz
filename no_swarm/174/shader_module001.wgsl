struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0;
    global0 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(28238i, 1i, global0.x, 0i), -((vec4<i32>(u_input.d, 32041i, global0.x, -1i) ^ vec4<i32>(u_input.d, 1i, u_input.d, 1i)) >> (firstTrailingBit(vec4<u32>(0u, 0u, u_input.c.x, 4294967295u)) % vec4<u32>(32u)))));
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(501f, arg_0.b)), vec2<f32>(-761f, arg_0.b), vec2<bool>(arg_0.a, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1798f, -259f) + vec2<f32>(arg_0.b, var_0.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1520f, var_0.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1193f) + vec2<f32>(-466f, arg_0.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, var_0.b))))), u_input.b.zwx, ~(~u_input.e.x));
    var var_2 = !(!select(vec3<bool>(!var_0.a, true, 4294967295u <= var_1.d.x), vec3<bool>(all(vec3<bool>(true, arg_0.a, false)), true, true), true));
    let var_3 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.b + var_1.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(830f, var_1.b.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(select(var_1.b.x, -604f, var_1.a))), vec2<f32>(_wgslsmith_f_op_f32(var_0.b + arg_0.b), -1605f))), abs(vec3<u32>(4294967295u, _wgslsmith_add_u32(0u, var_1.e), ~var_1.d.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(u_input.b.xy), var_1.d.yy), var_1.e)), Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(arg_0.b * arg_0.b)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b, var_1.c) - var_1.c))), max(_wgslsmith_sub_vec3_u32(u_input.e, ~vec3<u32>(var_1.e, var_1.d.x, u_input.a)), ~countOneBits(vec3<u32>(u_input.a, var_1.e, var_1.e))), var_1.e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(969f, var_1.c.x, var_1.c.x, 459f), vec4<f32>(727f, arg_0.b, -1136f, var_0.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, 243f, arg_0.b, 127f), vec4<f32>(293f, 1286f, var_0.b, var_1.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(max(313f, arg_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b - var_1.c.x), _wgslsmith_f_op_f32(195f + -913f)), arg_0.b, -984f)), Struct_1(select(firstTrailingBit(-33679i), _wgslsmith_div_i32(-14918i, u_input.d), all(vec3<bool>(var_2.x, var_2.x, true))) == -24338i, _wgslsmith_f_op_vec2_f32(sign(var_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(633f, -1007f) - _wgslsmith_f_op_vec2_f32(-var_1.b)), min(vec3<u32>(~26386u, 17525u, ~u_input.a), ~vec3<u32>(37839u, u_input.a, var_1.e)), _wgslsmith_sub_u32(5313u, min(_wgslsmith_sub_u32(85195u, u_input.c.x), u_input.c.x))));
    return firstLeadingBit(~firstLeadingBit(var_3.b.d.x));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<u32>) -> vec4<f32> {
    global1 = ~global0.x;
    var var_0 = min(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i ^ global0.x, -1i, global0.x, 0i), vec4<i32>(global0.x & -34048i, max(-1i, 43825i), firstLeadingBit(-26512i), select(u_input.d, -110935i, arg_1))), select(~(-(vec4<i32>(-1i, global0.x, u_input.d, global0.x) & vec4<i32>(7568i, 2147483647i, 0i, 77221i))), ~vec4<i32>(global0.x, global0.x, i32(-1i) * -2147483647i, global0.x), false));
    global0 = ((min(~vec4<i32>(var_0.x, -2147483647i, -2342i, 37393i), vec4<i32>(global0.x, u_input.d, global0.x, u_input.d)) << (~u_input.c % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(~vec4<i32>(global0.x, var_0.x, var_0.x, 1i) | select(vec4<i32>(global0.x, -1i, -19371i, u_input.d), vec4<i32>(var_0.x, -14438i, var_0.x, 0i), arg_0.a), (vec4<i32>(8467i, -1i, var_0.x, u_input.d) ^ vec4<i32>(global0.x, global0.x, u_input.d, 651i)) & vec4<i32>(1i, var_0.x, 41329i, -1i))) ^ select(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(7229i, 0i, 0i, var_0.x), vec4<i32>(-39297i, var_0.x, global0.x, u_input.d)), vec4<i32>(var_0.x, u_input.d, u_input.d, global0.x) ^ vec4<i32>(u_input.d, global0.x, -2147483647i, u_input.d)), select(min(abs(vec4<i32>(-13468i, var_0.x, 1i, -14771i)), vec4<i32>(-68228i, 1i, 24276i, global0.x)), ~(-vec4<i32>(u_input.d, u_input.d, global0.x, var_0.x)), vec4<bool>(true, !arg_1, arg_1, true)), true);
    var var_1 = Struct_1(!arg_0.a == true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, 212f), vec2<f32>(-1277f, 1334f), false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(898f, arg_0.b))))), _wgslsmith_div_vec2_f32(arg_2.xz, arg_2.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(3121f, arg_0.b), _wgslsmith_f_op_vec2_f32(sign(arg_2.yy))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_2.zz, vec2<f32>(arg_0.b, -1825f)), arg_2.zy, false))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zx * vec2<f32>(-297f, arg_0.b)))))), firstTrailingBit(u_input.b.zxz), 54889u);
    global1 = firstLeadingBit(~u_input.d) >> (~1u % 32u);
    return arg_2;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = u_input.c.xw;
    var var_1 = select(countOneBits(~(4294967295u | select(1u, u_input.c.x, arg_0.x))), 29611u, arg_0.x);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(arg_0.x, _wgslsmith_f_op_f32(max(-510f, 1f))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, -1000f, -2286f, 912f)))), ~vec2<u32>(func_3(Struct_3(arg_0.x, -1588f)), ~13173u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(865f, 962f, -1456f, 420f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(492f, -616f, 408f, -522f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-817f, 1000f, -230f, -1402f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 665f, 690f, -1827f) + vec4<f32>(507f, -1000f, -354f, 1107f)))), vec4<f32>(2336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f - 253f)), _wgslsmith_f_op_f32(f32(-1f) * -235f), 419f))));
    var_2 = vec4<f32>(var_2.x, -169f, var_2.x, _wgslsmith_f_op_f32(var_2.x + 822f));
    let var_3 = vec3<bool>(arg_0.x, arg_0.x, 2147483647i != _wgslsmith_mod_i32(~986i, global0.x));
    return ~(~select(0u, min(~27235u, u_input.e.x | var_0.x), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(70038u ^ u_input.c.x, 16774u) | ~(~37984u), 69577u | min(~4294967295u, u_input.e.x)), func_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), all(vec2<bool>(true, false)))), _wgslsmith_dot_vec4_u32(min(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.b.x, 0u, u_input.e.x), u_input.b)) ^ (vec4<u32>(u_input.b.x, 22932u, 1u, u_input.b.x) >> (abs(u_input.c) % vec4<u32>(32u))), ~(vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.e.x) ^ ~vec4<u32>(4294967295u, 34989u, 4294967295u, 0u))), countOneBits(31805u << (~(~u_input.a) % 32u)));
    global1 = arg_1;
    var var_1 = ~_wgslsmith_mult_vec2_u32(select(u_input.c.zw << (vec2<u32>(40875u, 4294967295u) % vec2<u32>(32u)), reverseBits(vec2<u32>(0u, var_0.x)), false) >> (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.x), u_input.b.wy), ~var_0.wy) % vec2<u32>(32u)), vec2<u32>(var_0.x, var_0.x >> (0u % 32u)));
    var_0 = u_input.c;
    var var_2 = Struct_1(false, vec2<f32>(-1515f, -713f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(-2099f - -1000f), true)), -855f))), _wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(39716u, 63781u, var_0.x), u_input.c.wzx) ^ var_0.ywx), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.x, var_0.x), var_0.wyx | vec3<u32>(6657u, var_0.x, var_0.x))), 4294967295u >> ((1u >> (~4294967295u % 32u)) % 32u));
    return !(-arg_1 < 2147483647i);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>) -> Struct_2 {
    global0 = abs(countOneBits(~abs(vec4<i32>(u_input.d, 1i, u_input.d, u_input.d)) << (~(~u_input.b) % vec4<u32>(32u))));
    let var_0 = vec2<u32>(~1u, min(0u, u_input.e.x) & u_input.c.x);
    var var_1 = Struct_2(Struct_1(all(vec2<bool>(arg_1.x, arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(floor(926f)), _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1150f, _wgslsmith_f_op_f32(1412f + 1644f)), vec2<f32>(_wgslsmith_f_op_f32(363f + -1114f), _wgslsmith_f_op_f32(f32(-1f) * -788f))), _wgslsmith_sub_vec3_u32(~(~u_input.b.ywx), vec3<u32>(var_0.x, arg_0, arg_0)), u_input.a), Struct_1(any(arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-831f, 1100f), vec2<f32>(-396f, -1139f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1294f, 593f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(549f, 1000f), vec2<f32>(1610f, -553f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(810f, 1369f, arg_1.x)), _wgslsmith_f_op_f32(min(562f, -475f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1052f, 578f))))), firstTrailingBit(_wgslsmith_div_vec3_u32(select(u_input.b.xxw, u_input.e, vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), abs(vec3<u32>(u_input.c.x, var_0.x, 1u)))), _wgslsmith_mod_u32(var_0.x >> (var_0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0) >> (vec2<u32>(61164u, arg_0) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(var_0, vec2<u32>(var_0.x, 1u))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(105f * 107f))), 2526f, _wgslsmith_f_op_f32(sign(-466f)), _wgslsmith_f_op_f32(477f - _wgslsmith_f_op_f32(f32(-1f) * -1353f))))), Struct_1((arg_1.x & select(arg_1.x, arg_1.x, true)) == true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1185f, _wgslsmith_f_op_f32(f32(-1f) * -359f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(-1448f))))), u_input.e, 1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.c.xw);
    var var_3 = var_1.d.c.x;
    return Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, -393f))), var_1.a.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2))), u_input.b.xwy, 4294967295u), var_1.b, vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-923f)) * 131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.x)))), var_2.x), Struct_1(var_1.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2093f, var_2.x), vec2<f32>(var_1.b.b.x, var_2.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_1.d.c.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1015f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a.b + var_2), _wgslsmith_f_op_vec2_f32(max(var_2, var_2)), vec2<bool>(arg_1.x, var_1.d.a)))), var_1.d.d, ~(~88137u) << (~(~0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_u32(u_input.e.x, 0u), vec3<bool>(!func_1(vec3<i32>(34562i, global0.x, -14078i), 21333i >> (u_input.b.x % 32u)), true, false | all(vec2<bool>(true, true))));
    let var_1 = var_0.d.b;
    let var_2 = !all(select(vec2<bool>(!var_0.d.a, u_input.c.x == u_input.a), select(select(vec2<bool>(var_0.a.a, var_0.a.a), vec2<bool>(var_0.b.a, var_0.a.a), var_0.a.a), vec2<bool>(var_0.a.a, var_0.d.a), vec2<bool>(false, var_0.d.a)), vec2<bool>(true, var_0.d.a)));
    var var_3 = u_input.b;
    global0 = -firstTrailingBit(vec4<i32>(global0.x, _wgslsmith_dot_vec2_i32(global0.xz, global0.wy) & countOneBits(global0.x), global0.x, _wgslsmith_dot_vec3_i32(global0.yzy, global0.yxx) ^ u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(2152i & u_input.d, -vec2<i32>(-1i, u_input.d), vec3<u32>(_wgslsmith_mult_u32(max(u_input.c.x, _wgslsmith_mult_u32(var_0.b.e, 74279u)), u_input.c.x), _wgslsmith_dot_vec2_u32(~u_input.e.yz, vec2<u32>(u_input.e.x >> (1u % 32u), u_input.a)), 40531u), vec3<u32>(0u, ~0u, var_0.b.e), global0.yww);
}

