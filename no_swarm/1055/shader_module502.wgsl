struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(true, Struct_2(-14081i, 65683u, Struct_1(true, 2147483647i, vec2<i32>(0i, 27945i), vec4<u32>(42509u, 3362u, 129256u, 1u)), 1u), Struct_2(-44213i, 34568u, Struct_1(true, i32(-2147483648), vec2<i32>(4815i, 29045i), vec4<u32>(0u, 20344u, 69743u, 4294967295u)), 53503u)), -561f, vec2<bool>(true, false), false);

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    global1 = arg_0.b;
    var var_0 = true;
    var var_1 = global0.a;
    var_0 = all(!select(select(select(vec4<bool>(true, true, var_1.a, false), vec4<bool>(global0.d, false, true, false), var_1.a), !vec4<bool>(global0.a.b.c.a, true, var_1.a, arg_0.c.a), !global0.c.x), vec4<bool>(var_1.b.c.a, !arg_0.c.a, all(global0.c), false), true | arg_0.c.a));
    let var_2 = Struct_4(arg_0.c.a, arg_0, Struct_2(-2147483647i, reverseBits(u_input.b.x), var_1.b.c, 62706u));
    return select(!select(!(!vec2<bool>(false, global0.d)), select(!global0.c, select(vec2<bool>(false, true), global0.c, vec2<bool>(true, arg_0.c.a)), true), !global0.c), global0.c, select(global0.c, vec2<bool>(false, false), arg_0.c.a));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<bool>) -> vec2<bool> {
    global1 = _wgslsmith_mult_u32(~(~firstLeadingBit(~5323u)), ~_wgslsmith_mod_u32(u_input.a, firstTrailingBit(u_input.a)) | ~(~_wgslsmith_mult_u32(u_input.a, arg_0)));
    let var_0 = _wgslsmith_add_vec2_i32(~max(firstLeadingBit(~vec2<i32>(global0.a.b.a, 32259i)), firstTrailingBit(vec2<i32>(-2147483647i, global0.a.b.c.b) | global0.a.c.c.c)), _wgslsmith_add_vec2_i32(~firstTrailingBit(~vec2<i32>(-13124i, global0.a.b.c.c.x)), global0.a.c.c.c));
    let var_1 = -993f;
    var var_2 = Struct_2(-18688i, _wgslsmith_dot_vec3_u32(global0.a.c.c.d.wyy, select(vec3<u32>(60381u & global0.a.c.c.d.x, arg_0, 1u), max(vec3<u32>(global0.a.b.b, 4294967295u, 14513u), ~global0.a.c.c.d.wwy), vec3<bool>(true, arg_1.x, false))), global0.a.c.c, 1u);
    var_2 = global0.a.b;
    return vec2<bool>(var_2.c.a, !(527f < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2105f, var_1)))));
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    let var_0 = Struct_5(global0.a, 995f, select(!(!func_2(Struct_2(-1i, 13753u, global0.a.c.c, 0u))), !global0.c, func_3(74378u, !(!vec3<bool>(global0.d, global0.a.b.c.a, false)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-758f - global0.b)), !(!vec4<bool>(true, global0.a.a, global0.d, global0.c.x)))), global0.a.b.c.a);
    var var_1 = var_0.a.b;
    var var_2 = !vec3<bool>(var_0.c.x, var_1.c.a && var_1.c.a, true);
    var_2 = vec3<bool>(true, var_0.c.x, !var_2.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~35019u), 1u), 21u)]));
    return ~(-reverseBits(70760i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(select(vec4<i32>(abs(-19584i), _wgslsmith_mod_i32(global0.a.c.c.b, -6260i), -12600i, 1i) | vec4<i32>(_wgslsmith_mult_i32(global0.a.b.c.c.x, global0.a.c.c.b), global0.a.b.a, 4357i, 1i ^ global0.a.c.a), _wgslsmith_sub_vec4_i32(vec4<i32>(func_1(102992u, global0.a.b.c.b), i32(-1i) * -22804i, ~global0.a.c.c.b, 10222i), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(1i, -39673i, -24271i, global0.a.b.a)), max(vec4<i32>(global0.a.b.c.c.x, global0.a.c.c.c.x, 52963i, -27513i), vec4<i32>(global0.a.b.c.b, global0.a.c.c.b, -10701i, global0.a.c.a)))), select(select(vec4<bool>(global0.d, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(global0.a.a, global0.d, global0.d, global0.c.x), vec4<bool>(global0.a.c.c.a, global0.c.x, false, global0.a.c.c.a)), select(vec4<bool>(true, global0.a.a, false, global0.c.x), vec4<bool>(global0.a.a, true, global0.c.x, global0.c.x), !vec4<bool>(true, global0.a.b.c.a, true, true)), true)), reverseBits(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(1i, global0.a.b.c.c.x, global0.a.c.a, 1i)), select(vec4<i32>(-2147483647i, global0.a.b.a, global0.a.c.c.b, -33020i) ^ vec4<i32>(4475i, global0.a.c.a, -21901i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.a.b.a, 1i, global0.a.b.a), vec4<i32>(-1i, global0.a.b.c.b, global0.a.b.a, -1i), vec4<i32>(-17990i, global0.a.b.a, global0.a.b.a, -2147483647i)), vec4<bool>(false, global0.d, false, false)))));
    var var_1 = global0.a.c;
    let var_2 = vec2<i32>(~_wgslsmith_mult_i32(func_1(u_input.b.x, -12951i), 0i), -_wgslsmith_mult_i32(1i, -17525i)) | _wgslsmith_sub_vec2_i32(max(vec2<i32>(global0.a.b.a, min(-1i, var_1.a)), _wgslsmith_mod_vec2_i32(var_0.yy, _wgslsmith_sub_vec2_i32(var_0.yw, var_1.c.c))), reverseBits(var_1.c.c));
    var var_3 = Struct_4(!(!global0.d), global0.a.b, Struct_2(var_2.x, firstTrailingBit(0u), Struct_1(false, -1i, -vec2<i32>(var_2.x, var_1.a), var_1.c.d), _wgslsmith_div_u32(108414u, var_1.b)));
    var var_4 = false & !select(_wgslsmith_f_op_f32(sign(177f)) > _wgslsmith_f_op_f32(-829f * global0.b), any(!vec3<bool>(global0.a.b.c.a, true, var_3.b.c.a)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(480f)), -15992i, -36707i, u_input.b);
}

