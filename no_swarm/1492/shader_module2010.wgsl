struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    let var_0 = -537f;
    let var_1 = abs(select((~vec3<i32>(u_input.a, 0i, 1i) | countOneBits(vec3<i32>(-1i, -46406i, arg_1.x))) | _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, -2147483647i, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, u_input.c, arg_1.x), vec3<i32>(arg_1.x, -2147483647i, -1i), vec3<i32>(u_input.c, u_input.a, 2147483647i)), vec3<i32>(8154i, u_input.a, arg_1.x)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.a, 43600i, arg_1.x) >> (vec3<u32>(0u, 4294967295u, 40710u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, u_input.a, u_input.a), firstLeadingBit(vec3<i32>(-23339i, 0i, 0i))), vec3<i32>(~2147483647i, _wgslsmith_add_i32(u_input.a, arg_1.x), ~(-20992i))), !(-1i == (u_input.c >> (u_input.d % 32u)))));
    var var_2 = Struct_3(Struct_2(Struct_1(-(vec2<i32>(var_1.x, u_input.c) & vec2<i32>(arg_1.x, var_1.x)), u_input.e.x, true)), ~_wgslsmith_mod_i32(var_1.x, ~_wgslsmith_mod_i32(arg_1.x, 2836i)));
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = ~(abs(_wgslsmith_mult_i32(func_3(arg_2.b, vec2<i32>(arg_2.a.x, u_input.a)), _wgslsmith_mult_i32(arg_2.a.x, arg_2.a.x))) | u_input.a);
    global1 = array<vec2<bool>, 9>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1599f, 312f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 401f) * vec2<f32>(1000f, 830f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -965f)))), vec2<f32>(-164f, -1876f)));
    global1 = array<vec2<bool>, 9>();
    let var_2 = Struct_2(Struct_1(select(reverseBits(vec2<i32>(-39367i, -34436i) >> (vec2<u32>(14772u, arg_2.b) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_2.a.x), -vec2<i32>(arg_2.a.x, var_0)), arg_0), _wgslsmith_add_u32(arg_3.x, _wgslsmith_sub_u32(38534u, 0u)), !arg_0));
    return Struct_1(~(-vec2<i32>(~var_2.a.a.x, var_0 | 20539i)), arg_2.b, true);
}

fn func_1() -> f32 {
    var var_0 = Struct_3(Struct_2(func_2(true, _wgslsmith_add_vec2_u32(vec2<u32>(16375u, u_input.e.x), reverseBits(vec2<u32>(4294967295u, 14271u))), Struct_1(-vec2<i32>(17104i, u_input.c), ~76906u, true), ~vec3<u32>(43944u, u_input.d, u_input.b.x))), u_input.a);
    let var_1 = -(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), ~firstLeadingBit(vec4<i32>(-14818i, u_input.c, -14570i, 1i))) << ((vec4<u32>(_wgslsmith_sub_u32(1u, u_input.e.x), 73009u >> (var_0.a.a.b % 32u), _wgslsmith_clamp_u32(u_input.d, var_0.a.a.b, 0u), ~77259u) << ((select(vec4<u32>(u_input.e.x, var_0.a.a.b, u_input.b.x, 60848u), vec4<u32>(4294967295u, 49992u, var_0.a.a.b, var_0.a.a.b), vec4<bool>(var_0.a.a.c, var_0.a.a.c, false, var_0.a.a.c)) | vec4<u32>(4294967295u, u_input.e.x, u_input.b.x, u_input.d)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = select(!vec3<bool>(var_0.a.a.c | all(vec3<bool>(var_0.a.a.c, false, false)), var_0.a.a.b >= ~u_input.d, false), !(!(!select(vec3<bool>(true, var_0.a.a.c, var_0.a.a.c), vec3<bool>(false, var_0.a.a.c, var_0.a.a.c), vec3<bool>(false, var_0.a.a.c, var_0.a.a.c)))), !(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.a.a.c, true, false), !vec3<bool>(var_0.a.a.c, false, false))));
    var var_3 = vec3<bool>(func_2(!var_2.x, vec2<u32>(~u_input.d, max(var_0.a.a.b | 1u, 0u)), Struct_1(var_0.a.a.a, _wgslsmith_mod_u32(20273u, 27755u), var_2.x), ~(~min(global0[_wgslsmith_index_u32(1u, 11u)], vec3<u32>(52445u, var_0.a.a.b, u_input.d)))).c, true != any(!select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.a.a.c, false, false, var_0.a.a.c), false)), var_2.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2062f, 1111f, -1272f, -148f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 614f, -1564f, 256f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-1394f + 1704f), _wgslsmith_f_op_f32(round(-1452f)), -758f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-481f, -616f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1283f, -205f)))))));
    return _wgslsmith_div_f32(var_4.x, -1024f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())))));
    let var_1 = Struct_2(Struct_1((-vec2<i32>(u_input.c, -33825i) ^ (vec2<i32>(48552i, u_input.c) & vec2<i32>(u_input.a, u_input.a))) | vec2<i32>(~u_input.c, abs(17793i)), ~(~_wgslsmith_mod_u32(u_input.e.x, u_input.d)), _wgslsmith_sub_i32(-26277i, _wgslsmith_sub_i32(u_input.c, u_input.a)) > ((u_input.c | u_input.c) << (32794u % 32u))));
    global1 = array<vec2<bool>, 9>();
    let var_2 = Struct_3(Struct_2(Struct_1(var_1.a.a, ~(var_1.a.b | var_1.a.b), true)), -_wgslsmith_sub_i32(i32(-1i) * -2147483647i, min(2147483647i, 73491i)));
    let var_3 = 393f;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -countOneBits(max(vec3<i32>(var_4.a.a.a.x, 15626i, 66161i), vec3<i32>(var_2.a.a.a.x, 1i, 1i))));
}

