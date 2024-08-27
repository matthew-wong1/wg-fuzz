struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(594f));

var<private> global1: Struct_1 = Struct_1(377f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec4<f32> {
    global0 = Struct_2(global0.a);
    let var_0 = Struct_3(arg_1, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, ~u_input.b, reverseBits(21137u)) & ~vec4<u32>(u_input.c, 0u, u_input.b, u_input.c), abs(vec4<u32>(u_input.c, u_input.c, 29524u, u_input.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 15302u, u_input.c, u_input.b), ~vec4<u32>(u_input.c, 1u, 20939u, u_input.c)) % vec4<u32>(32u))), Struct_2(global0.a), arg_0, ~vec4<u32>(u_input.b, ~(~4294967295u), _wgslsmith_clamp_u32(u_input.b, reverseBits(0u), u_input.b), u_input.c | u_input.b));
    var var_1 = ~u_input.a;
    var var_2 = !(true || var_0.d);
    let var_3 = u_input.d;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2020f), -736f, _wgslsmith_f_op_f32(sign(-847f)), _wgslsmith_f_op_f32(global0.a.a - global1.a)))))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = 272f;
    var var_1 = !select(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))));
    global0 = Struct_2(Struct_1(-1011f));
    let var_2 = var_1.zz;
    global0 = Struct_2(global0.a);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_1.x, vec4<f32>(-1000f, 1706f, global0.a.a, -414f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.a, -323f, 2561f, 1025f), vec4<f32>(-1000f, global1.a, -1000f, 1057f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, global0.a.a), vec4<f32>(global0.a.a, -1387f, global0.a.a, global0.a.a))))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 40525u, u_input.c)), ~vec3<u32>(0u, u_input.c, u_input.b)), 22970u ^ _wgslsmith_sub_u32(u_input.b, u_input.b), ~min(12229u, 4294967295u), ~(~u_input.c)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * var_0)))), false, vec4<u32>(countOneBits(0u), ~(~4294967295u << (~u_input.b % 32u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(21543u, ~u_input.c), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 4294967295u, u_input.c, 1u)), vec4<u32>(4294967295u, 6635u, 70050u, u_input.b)), ~_wgslsmith_mult_u32(4432u, 53563u)), ~(~u_input.b)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = func_2(reverseBits(vec3<i32>(~0i, 1i, u_input.a ^ _wgslsmith_mod_i32(u_input.e.x, 4533i))));
    let var_1 = _wgslsmith_clamp_vec3_u32(func_2(vec3<i32>(abs(u_input.a), ~u_input.e.x, ~11899i)).e.zzw, func_2(reverseBits(~u_input.e)).b.yzy, vec3<u32>(max(abs(4294967295u), 1u), 1u << (_wgslsmith_add_u32(1u, 0u) % 32u), 25186u)) & firstLeadingBit(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(96985u, arg_2.x, var_0.b.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.x, u_input.b, 1u), vec3<u32>(arg_1, 4294967295u, arg_2.x)), var_0.e.zxz));
    var var_2 = Struct_4(!(!(!vec3<bool>(true, var_0.d, true))), u_input.a, var_0, var_0.a);
    let var_3 = _wgslsmith_f_op_f32(ceil(global0.a.a));
    var var_4 = -u_input.e.x <= _wgslsmith_add_i32(max(firstLeadingBit(var_2.b | u_input.e.x), 2147483647i), _wgslsmith_mult_i32(var_2.b, _wgslsmith_mod_i32(~var_2.b, -1i)));
    return func_2(_wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(49571i, var_2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 461i, 2209i, u_input.d), vec4<i32>(u_input.d, var_2.b, 0i, 1i))), var_2.b, -1i))).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(-359f, _wgslsmith_mult_u32(0u, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, 4280u), vec3<u32>(56638u, 4294967295u, 9629u)), _wgslsmith_mult_u32(u_input.b, u_input.c), ~36790u), ~select(vec3<u32>(38850u, 0u, u_input.c), vec3<u32>(0u, 1u, u_input.b), vec3<bool>(true, true, false))) & max(~vec3<u32>(86442u, 0u, u_input.b), ~vec3<u32>(u_input.c, u_input.b, 1u) ^ countOneBits(vec3<u32>(27452u, 35740u, u_input.c))));
    let var_0 = func_2(max(max(firstTrailingBit(vec3<i32>(2147483647i, u_input.e.x, u_input.a)), u_input.e), abs(select(vec3<i32>(u_input.e.x, u_input.d, u_input.a), vec3<i32>(-44362i, u_input.e.x, u_input.e.x), vec3<bool>(true, false, true)))) << (~(vec3<u32>(u_input.c, 4294967295u, 4294967295u) >> ((vec3<u32>(u_input.c, u_input.c, u_input.c) | vec3<u32>(0u, 4198u, 32451u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global1 = Struct_1(-971f);
    let var_1 = u_input.a;
    let var_2 = firstLeadingBit(countOneBits(~(var_0.b.yxw ^ var_0.e.yxx)));
    global1 = Struct_1(-569f);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<u32>(var_0.b.x, _wgslsmith_add_u32(8949u, 12263u), firstTrailingBit(var_2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(77101u, 4294967295u, var_2.x), var_2, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 85613u, 0u), vec3<u32>(0u, 54663u, var_2.x), vec3<u32>(1u, 0u, var_2.x))), !select(vec3<bool>(var_0.d, false, true), vec3<bool>(false, false, var_0.d), vec3<bool>(var_0.d, var_0.d, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.a.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.a * -699f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(ceil(219f))), 1925f)), var_0.b);
}

