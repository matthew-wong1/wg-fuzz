struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = -843f;
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -558f);
    var var_2 = (~var_0 | ~(~(~var_0))) >> (vec3<u32>(abs(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, ~_wgslsmith_div_u32(var_0.x, u_input.b)), ~u_input.b) % vec3<u32>(32u));
    var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.x, 1u, u_input.c.x), vec3<u32>(8005u, 13681u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.x, 4294967295u), vec3<u32>(var_0.x, 77416u, 42931u)))), u_input.c) << (~abs(firstTrailingBit(vec3<u32>(u_input.b, 33432u, 0u))) % vec3<u32>(32u));
    return arg_0;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(200f * 1000f))), !(arg_0.x > 671f)))));
    return Struct_1(~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1041f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.x, _wgslsmith_f_op_f32(arg_2.x * 123f), _wgslsmith_f_op_f32(f32(-1f) * -1131f)) - vec4<f32>(-696f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(floor(-1179f)), _wgslsmith_f_op_f32(min(arg_2.x, 1629f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_0.x, 804f) + vec4<f32>(arg_2.x, 275f, -1021f, arg_0.x))))), reverseBits(_wgslsmith_add_u32(1u, u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.c.x), u_input.c) % 32u))), 1u);
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1121f), ~(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b, 36705u, arg_0.x, u_input.b)), ~vec4<u32>(arg_0.x, 1u, u_input.b, u_input.c.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 42361u, arg_0.x), arg_0) % vec4<u32>(32u))), vec2<i32>(~min(~u_input.a.x, -u_input.a.x), -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(-116f)), -1588f, -1000f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, 372f, -1107f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1535f, 1260f, 138f)))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-1270f, 715f)), _wgslsmith_f_op_f32(771f - -261f), 460f), vec3<f32>(1f, 1f, 1f)))));
    global0 = var_0.a;
    global0 = var_0.d.x;
    var var_1 = Struct_2(func_2(var_0.d.yy, u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.d)) + var_0.d), _wgslsmith_mult_i32(-1i, -var_0.c.x & -290i)), func_2(var_0.d.yz, _wgslsmith_dot_vec3_u32(~vec3<u32>(11870u, 58082u, 0u) & _wgslsmith_sub_vec3_u32(var_0.b.yzz, u_input.c), vec3<u32>(firstLeadingBit(u_input.b), 28158u, 1u)), var_0.d, _wgslsmith_mod_i32(var_0.c.x, var_0.c.x)));
    return _wgslsmith_f_op_vec3_f32(-var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a.x, max(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(22116i, u_input.a.x, -34433i), vec3<i32>(38151i, u_input.a.x, 0i) << (u_input.c % vec3<u32>(32u))) >> (1u % 32u)), -2147483647i);
    global0 = 2197f;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1000f, 1244f)), _wgslsmith_f_op_f32(-1f)))));
    let var_1 = func_2(vec2<f32>(960f, 308f), 1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1441f)) * -417f), -423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-113f))))), 2147483647i);
    var var_2 = ~(~vec4<u32>(var_1.d, ~var_1.a, 45964u, 0u));
    var var_3 = var_1;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(981f + _wgslsmith_f_op_f32(f32(-1f) * -477f))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.e, ~4294967295u, 12880u, u_input.b) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 25513u, var_3.d, 32448u), vec4<u32>(8924u, var_1.a, var_2.x, 4294967295u)) % vec4<u32>(32u)), min(max(vec4<u32>(17688u, 11574u, var_1.e, 1u), vec4<u32>(0u, u_input.c.x, var_1.d, var_2.x)) << (select(vec4<u32>(var_1.d, 1u, 10703u, 4294967295u), vec4<u32>(var_1.d, var_1.a, 4294967295u, 36473u), vec4<bool>(false, false, false, true)) % vec4<u32>(32u)), abs(vec4<u32>(var_2.x, 36754u, 33508u, var_3.d)) | (vec4<u32>(1u, 4294967295u, var_3.a, 0u) & vec4<u32>(u_input.b, 4294967295u, var_3.d, u_input.b)))), abs(reverseBits(vec2<i32>(_wgslsmith_clamp_i32(17106i, 1i, -1i), -21310i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(51094u, var_1.e >> (var_1.d % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d, 4294967295u), var_2.wz), firstLeadingBit(var_3.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(1925f, vec4<i32>(-(~(i32(-1i) * -16286i)), 0i, firstLeadingBit(~33074i), u_input.a.x), abs(~countOneBits(-u_input.a)), 4294967295u);
}

