struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = ~vec3<u32>(arg_2.d.x, arg_1.d.x, 97704u);
    var var_1 = -firstLeadingBit(min(12110i, arg_1.b.x));
    var var_2 = !vec4<bool>(false, arg_1.a.x, !arg_2.a.x, all(arg_2.a.xw));
    var_1 = max(2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -63891i, 34597i), arg_1.b.www)) | select(vec3<i32>(arg_1.b.x, -1i, -23471i), arg_2.b.zww, arg_1.a.x), ~arg_2.b.wxz >> (select(vec3<u32>(6937u, arg_2.c.x, 4294967295u), ~arg_2.c, false) % vec3<u32>(32u))));
    var_1 = -arg_2.b.x;
    return 1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_add_vec3_i32(arg_2.b.zyw, vec3<i32>(abs(arg_2.b.x >> (~0u % 32u)), 1i, func_3(arg_2.c.x, Struct_1(vec4<bool>(arg_2.a.x, false, arg_2.a.x, false), arg_2.b, vec3<u32>(arg_2.c.x, 1u, 21945u), arg_2.d), Struct_1(arg_2.a, arg_2.b, vec3<u32>(1u, arg_2.d.x, arg_2.d.x), arg_2.d)) << ((reverseBits(arg_2.c.x) >> (~1560u % 32u)) % 32u)));
    let var_1 = select(arg_0, !vec3<bool>(arg_0.x & arg_2.a.x, !(!arg_0.x), false), arg_0);
    let var_2 = arg_2;
    var var_3 = 7313i;
    var var_4 = arg_1.x;
    return vec3<u32>(abs(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.d, arg_2.c.x), _wgslsmith_sub_u32(~arg_2.c.x, ~arg_2.c.x))), firstTrailingBit(59211u), 1u);
}

fn func_1() -> vec4<i32> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = abs(select(vec3<u32>(~u_input.c.x, ~u_input.b, 4294967295u >> (firstTrailingBit(u_input.c.x) % 32u)), vec3<u32>(_wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(12406u, 50655u, 6303u), vec3<u32>(u_input.c.x, u_input.d, 40396u))), u_input.b, 1u), false));
    var_1 = ~(max(_wgslsmith_mod_vec3_u32(vec3<u32>(18598u, 0u, u_input.c.x), vec3<u32>(var_1.x, var_1.x, u_input.b)), vec3<u32>(var_1.x, 4294967295u, 0u) ^ vec3<u32>(0u, 69493u, 4294967295u)) ^ firstLeadingBit(func_2(vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<f32>(459f, -339f), Struct_1(vec4<bool>(var_0.x, false, var_0.x, false), vec4<i32>(18178i, u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.c.x, var_1.x), vec4<u32>(u_input.d, 1u, var_1.x, var_1.x))))) & _wgslsmith_mult_vec3_u32(firstLeadingBit(abs(vec3<u32>(4294967295u, 20644u, u_input.d) | vec3<u32>(u_input.c.x, var_1.x, 37314u))), max(vec3<u32>(u_input.b, u_input.b, 27000u), vec3<u32>(u_input.c.x, 1402u, var_1.x)) & ~reverseBits(vec3<u32>(var_1.x, 31237u, u_input.b)));
    var var_2 = Struct_1(select(!select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(false, var_0.x, false, var_0.x), true), !vec4<bool>(var_0.x, true, true || var_0.x, var_0.x), true), vec4<i32>(26173i, -21965i, func_3(~1u ^ select(8112u, 0u, var_0.x), Struct_1(vec4<bool>(false, true, var_0.x, var_0.x), -vec4<i32>(2147483647i, 8574i, u_input.a, -2147483647i), vec3<u32>(u_input.c.x, u_input.c.x, var_1.x) ^ vec3<u32>(var_1.x, var_1.x, var_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 62824u, u_input.b, 7603u), vec4<u32>(15685u, var_1.x, var_1.x, var_1.x))), Struct_1(!vec4<bool>(var_0.x, false, false, var_0.x), select(vec4<i32>(22209i, u_input.a, u_input.a, u_input.a), vec4<i32>(4684i, u_input.a, 0i, 24267i), var_0.x), min(vec3<u32>(1u, var_1.x, 81823u), vec3<u32>(var_1.x, 1u, 29596u)), max(vec4<u32>(13056u, u_input.d, u_input.c.x, var_1.x), vec4<u32>(var_1.x, 1u, 4294967295u, var_1.x)))), ~(-1i)), ~(~(~vec3<u32>(4294967295u, u_input.d, var_1.x))), ~abs(vec4<u32>(abs(1u), ~6649u, u_input.b & 26269u, ~var_1.x)));
    let var_3 = ~u_input.a;
    return vec4<i32>(u_input.a, var_2.b.x, ~(~2147483647i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-21255i, var_2.b.x), var_2.b.x) | var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true & all(vec2<bool>(true, true))), func_1(), ~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.b, u_input.d) & vec3<u32>(50698u, u_input.b, 20710u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, u_input.b), vec3<u32>(u_input.b, 4294967295u, 62807u)))), abs(vec4<u32>(reverseBits(u_input.c.x), max(u_input.c.x, 3969u), 53864u, ~50366u) & abs(firstTrailingBit(vec4<u32>(1u, u_input.b, u_input.b, 44812u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1092f, _wgslsmith_f_op_f32(f32(-1f) * -693f)))), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-312f, -235f))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-624f, 1000f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, 158f, 597f, var_1.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -2131f, var_1.x, 2394f) + vec4<f32>(var_1.x, 1060f, var_1.x, -1000f)) * vec4<f32>(var_1.x, -1000f, var_1.x, 851f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(697f, -477f, var_1.x, -1384f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -638f, var_1.x)))))));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.d, ~(~var_0.d)), firstTrailingBit(1u), 1u, _wgslsmith_sub_u32(1u, u_input.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.d), 59587u, u_input.b, _wgslsmith_sub_u32(~91335u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(4294967295u, 4294967295u)))), var_0.d));
    var var_3 = !(7356u > _wgslsmith_dot_vec4_u32(var_0.d, select(var_0.d, var_0.d, true) ^ ~var_0.d));
    let var_4 = false;
    var var_5 = ~var_0.c.x << (var_0.d.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-18447i));
}

