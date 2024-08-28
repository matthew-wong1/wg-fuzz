struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -12077i;

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = firstLeadingBit(abs(arg_1.x << (~min(66790u, arg_1.x) % 32u)));
    var var_1 = global1[_wgslsmith_index_u32(1u, 12u)];
    global0 = var_1.b.x;
    global1 = array<Struct_2, 12>();
    let var_2 = abs(abs(firstTrailingBit(_wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x))) ^ (-2147483647i | _wgslsmith_sub_i32(abs(0i), u_input.d.x >> (0u % 32u))));
    return -arg_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_4(~((~vec2<u32>(35784u, u_input.c) & select(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(4294967295u, arg_1), vec2<bool>(false, false))) | ~(vec2<u32>(12204u, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    var var_1 = firstTrailingBit(_wgslsmith_add_vec3_i32(func_3(Struct_2(arg_0, vec3<i32>(33355i, u_input.d.x, 15852i)), vec3<u32>(~7782u, firstTrailingBit(29354u), _wgslsmith_add_u32(76967u, var_0.a.x)), Struct_1(!vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(false, arg_0.b.x)), Struct_1(vec2<bool>(arg_0.a.x, false), !vec2<bool>(arg_0.b.x, false))), select(vec3<i32>(~u_input.d.x, 440i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.d.x, 30707i))), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(24885i, -64829i, u_input.d.x), vec3<i32>(-33592i, 30751i, u_input.d.x))), select(!vec3<bool>(true, true, arg_0.b.x), !vec3<bool>(arg_0.b.x, true, true), true))));
    let var_2 = _wgslsmith_clamp_vec2_u32(var_0.a, ~var_0.a, max(abs(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(54892u, var_0.a.x)), var_0.a & var_0.a)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(28503u, 0u) & (vec2<u32>(4294967295u, 49681u) >> (vec2<u32>(var_0.a.x, 35888u) % vec2<u32>(32u))), var_0.a & ~vec2<u32>(4294967295u, 54865u), vec2<u32>(~51015u, ~arg_1))));
    var var_3 = abs(var_1.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1243f - _wgslsmith_f_op_f32(-281f - -1399f))), 389f));
    return select(vec4<bool>(true, arg_0.a.x & false, true, !all(vec3<bool>(false, arg_0.a.x, arg_0.b.x))), select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, true), select(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.b.x)), select(!vec4<bool>(true, arg_0.b.x, false, true), vec4<bool>(true, false, false, false), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.b.x, arg_0.a.x)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), vec4<bool>(true, arg_0.b.x, arg_0.b.x, true)), vec4<bool>(true, arg_0.b.x, true, arg_0.b.x), arg_0.a.x)), !(_wgslsmith_div_u32(var_0.a.x, 22606u) < _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, u_input.c, var_2.x), vec3<u32>(var_0.a.x, u_input.a, var_0.a.x)))), arg_0.a.x);
}

fn func_4(arg_0: bool) -> Struct_4 {
    let var_0 = -_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(func_3(Struct_2(Struct_1(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x)), vec3<u32>(0u, u_input.a, 19894u), Struct_1(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), Struct_1(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0))), -vec3<i32>(-5160i, 17578i, u_input.d.x))), firstLeadingBit(~(vec3<i32>(u_input.d.x, 0i, u_input.d.x) ^ vec3<i32>(0i, u_input.d.x, u_input.d.x))));
    global0 = u_input.d.x;
    var var_1 = Struct_3(abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, var_0, u_input.d.x), vec3<i32>(1i, -var_0, -u_input.d.x))), arg_0);
    var var_2 = u_input.a << (~u_input.c % 32u);
    var var_3 = _wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(var_0, -38930i));
    return Struct_4(~firstTrailingBit(~(vec2<u32>(u_input.c, 12025u) >> (vec2<u32>(1u, 86001u) % vec2<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = func_4(any(!select(vec4<bool>(false, false, arg_1, false), func_2(Struct_1(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)), arg_0), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)))));
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(561f + _wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(880f, 248f)), _wgslsmith_f_op_f32(max(1322f, 2658f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1642f));
    var var_2 = vec2<bool>(false, arg_1 && ((max(u_input.b, arg_0) & ~var_0.a.x) > 4294967295u));
    let var_3 = global1[_wgslsmith_index_u32(1u, 12u)];
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1488f, 113f, -1614f, var_1.x) - vec4<f32>(535f, var_1.x, var_1.x, var_1.x)) + vec4<f32>(1180f, var_1.x, -1184f, var_1.x))))));
    return Struct_1(func_2(var_3.a, ~u_input.b << (arg_0 % 32u)).yy, var_3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = func_1(4294967295u, any(vec3<bool>(true, true, true)));
    global1 = array<Struct_2, 12>();
    global0 = u_input.d.x;
    global0 = countOneBits(-1i);
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~26385u, ~0u, 20349u, _wgslsmith_div_u32(abs(~u_input.c), min(u_input.a & 1u, u_input.c))), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.c, 4294967295u), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 8983u, 13879u), vec3<u32>(5911u, u_input.c, u_input.c))), 43332u, _wgslsmith_div_u32(~0u, ~(~17747u)), 35796u ^ u_input.a), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(61970u >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), vec3<u32>(u_input.b, u_input.a, 41693u)), ~6464u), ~vec3<u32>(u_input.b, 45999u, u_input.a) | ~vec3<u32>(u_input.b, u_input.a, u_input.c)), ~_wgslsmith_clamp_u32(~22268u, ~u_input.a, ~26207u), ~_wgslsmith_add_u32(firstLeadingBit(u_input.b), 0u), 36858u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(812f, _wgslsmith_f_op_f32(trunc(-846f))))), _wgslsmith_f_op_f32(f32(-1f) * -100f)), 1i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(978f, 844f, -1639f, 680f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, -1459f, -1385f, 741f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1919f, 605f, -636f, -388f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(986f, 308f, -791f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-284f, -285f, 2672f, 466f))))), !vec4<bool>(var_1.b.x, u_input.d.x < -1i, false, true))), var_0);
}

