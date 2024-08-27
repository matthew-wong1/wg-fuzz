struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 50187i, -29029i, -1i);

var<private> global2: array<Struct_3, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    global1 = _wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(global1.x, 19893i, global1.x, global1.x), -vec4<i32>(global1.x, global1.x, 0i, global1.x)) >> (~firstTrailingBit(vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.c.x)) % vec4<u32>(32u))), vec4<i32>(global1.x >> (4294967295u % 32u), global1.x, global1.x, _wgslsmith_mod_i32(abs(global1.x), global1.x)));
    let var_0 = max(u_input.a, vec4<u32>(~(~u_input.b.x), 1u, select(~u_input.b.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), true), firstLeadingBit(~84819u)) << (vec4<u32>(29908u, _wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), ~u_input.c.x), u_input.b.x, ~u_input.c.x) % vec4<u32>(32u)));
    let var_1 = Struct_1(select(~((vec4<i32>(global1.x, 0i, 0i, 26329i) ^ vec4<i32>(1i, global1.x, 2147483647i, global1.x)) << (vec4<u32>(var_0.x, u_input.c.x, u_input.d, 95285u) % vec4<u32>(32u))), select(-(~vec4<i32>(21496i, 1i, -2147483647i, -37744i)), countOneBits(~vec4<i32>(global1.x, 2147483647i, global1.x, global1.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false)), vec4<bool>(false, true, any(vec2<bool>(true, true)), select(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(974f, 1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1273f, -1250f, 1162f, -393f)))) * vec4<f32>(-725f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-867f, 443f, false)))), 561f, _wgslsmith_f_op_f32(-1337f - _wgslsmith_div_f32(1718f, 230f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1107f)) - _wgslsmith_f_op_f32(-1881f - -2275f)), _wgslsmith_f_op_f32(f32(-1f) * -1070f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1047f + -1000f)))))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.wxw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.b)), var_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -2668f))), -862f)));
    let var_3 = var_1;
    return _wgslsmith_f_op_vec4_f32(var_1.c + var_1.c);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(countOneBits(-(vec4<i32>(3691i, global1.x, 4424i, global1.x) >> (_wgslsmith_mod_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)))), 479f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(409f, -1826f, 173f, -1435f)) - vec4<f32>(-2167f, 616f, -631f, 146f)))), true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(282f, -283f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1504f, 2632f))), -357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 3063f) + _wgslsmith_f_op_f32(sign(265f)))));
    var var_1 = Struct_2(~(~(~u_input.c.x)), vec4<u32>(u_input.a.x, ~u_input.c.x, abs(min(u_input.b.x ^ 1u, 0u)), 4294967295u & _wgslsmith_sub_u32(u_input.c.x >> (u_input.a.x % 32u), u_input.c.x << (69804u % 32u))), global1.www);
    var_1 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
    global2 = array<Struct_3, 7>();
    var var_2 = !any(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))));
    return Struct_1(~countOneBits(var_0.a), var_0.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), var_0.c.x, -108f, _wgslsmith_f_op_vec4_f32(func_3()).x), var_0.c, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec4_f32(func_3()).yyw);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    return abs(~max(~abs(vec3<u32>(u_input.c.x, 28697u, 1u)), ~u_input.c.yzx));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(31873u, 1u, _wgslsmith_div_u32(1u, 3141u)), u_input.c.xyy), max(firstLeadingBit(vec3<u32>(37752u, u_input.b.x, 42590u)) >> (u_input.c.wyx % vec3<u32>(32u)), vec3<u32>(reverseBits(u_input.b.x), ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(38594u, 94073u, 35863u, u_input.d), u_input.b))), func_4(global1.x, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, 0i, global1.x), global1.ywx), vec3<i32>(2147483647i, global1.x, 10535i)), func_2())) ^ ((vec3<u32>(u_input.a.x, 1u, u_input.d << (u_input.d % 32u)) ^ max(u_input.c.yxw, u_input.a.wyz)) << (_wgslsmith_mod_vec3_u32(u_input.b.zwx, ~vec3<u32>(u_input.b.x, 16818u, 4294967295u)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(800f, -692f))), vec2<f32>(149f, 1144f), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(458f, 1000f) - vec2<f32>(390f, 1199f))))) * func_2().d.yx);
    global0 = array<Struct_2, 26>();
    var var_2 = _wgslsmith_add_i32(-13212i & global1.x, global1.x);
    var var_3 = global1.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(862f - -1321f) - -1181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1231f))), _wgslsmith_f_op_f32(trunc(-997f)))));
    var var_1 = all(!vec3<bool>(true, func_1(-647f >= var_0.x), true));
    global0 = array<Struct_2, 26>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(272f, -1000f, _wgslsmith_f_op_f32(ceil(-187f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(var_0.x, 1000f, -1000f)), vec3<f32>(var_0.x, 947f, 1505f))))), global1.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz))))), any(vec2<bool>(select(true, true, true), false)), Struct_2(~_wgslsmith_div_u32(0u, u_input.b.x), u_input.b, _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, ~(-1i), min(global1.x, global1.x)), vec3<i32>(-1i) * -global1.yyy)));
    let var_3 = -2147483647i;
    global1 = abs(vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-28713i, var_2.b), var_2.e.c.xy), firstTrailingBit(-var_3)), min(1i, _wgslsmith_clamp_i32(var_3 >> (38363u % 32u), -2188i, _wgslsmith_mult_i32(2147483647i, 1i))), -33659i, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.x & _wgslsmith_mult_i32(abs(56202i), var_3), var_2.a.x, _wgslsmith_mult_u32(u_input.c.x, reverseBits(select(112654u, _wgslsmith_dot_vec3_u32(u_input.b.wyz, u_input.a.yxy), true))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.e.b.x, var_2.e.a, var_2.e.a), ~countOneBits(var_2.e.b.yxx)), global1.wz);
}

