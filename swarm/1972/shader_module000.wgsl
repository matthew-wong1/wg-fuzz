struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(717f, -1079f), vec2<f32>(576f, -2292f), vec2<f32>(-702f, -109f), vec2<f32>(-1938f, 1000f), vec2<f32>(1000f, 259f), vec2<f32>(555f, -373f), vec2<f32>(-667f, -1178f), vec2<f32>(371f, -686f), vec2<f32>(-135f, -1000f), vec2<f32>(2359f, -420f), vec2<f32>(1679f, 898f), vec2<f32>(-1405f, -1372f), vec2<f32>(375f, -646f), vec2<f32>(-1652f, 1071f), vec2<f32>(2074f, -502f), vec2<f32>(1396f, -148f), vec2<f32>(202f, 1122f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = global0.d;
    var var_1 = _wgslsmith_add_i32(max(-40515i, _wgslsmith_div_i32(firstTrailingBit(-u_input.b), firstTrailingBit(1i << (0u % 32u)))), u_input.b);
    global2 = Struct_2(firstLeadingBit(~(var_0.a << (~0u % 32u))), countOneBits(~_wgslsmith_add_vec2_u32(global0.b, vec2<u32>(4294967295u, 74190u)) << (~global0.b % vec2<u32>(32u))), global0.d, Struct_1(23196u, arg_0.x), global0.e);
    let var_2 = arg_0;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0)), vec2<f32>(-205f, _wgslsmith_f_op_f32(step(1131f, -1000f))));
    return 35783u;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    let var_0 = true;
    global3 = array<vec2<f32>, 17>();
    let var_1 = vec3<i32>((i32(-1i) * -(~arg_3.x)) << (83228u % 32u), _wgslsmith_mod_i32(min(~u_input.b, min(arg_3.x, -46797i)), countOneBits(reverseBits(-13471i))) << (33174u % 32u), arg_3.x);
    var var_2 = _wgslsmith_div_u32(~func_3(_wgslsmith_f_op_vec2_f32(max(global3[_wgslsmith_index_u32(u_input.a, 17u)], _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-973f, 2306f)))))), 82245u);
    var var_3 = _wgslsmith_add_i32(-71i, -_wgslsmith_mult_i32((var_1.x ^ 1i) & max(16999i, -22339i), var_1.x));
    return 1529f;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.b)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global2.e.b)))), vec4<bool>(u_input.a >= 1u, global1.x <= 633f, any(vec2<bool>(false, true)), any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-1655f - _wgslsmith_f_op_f32(-global0.d.b)), min(vec2<i32>(u_input.b, -29042i), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, u_input.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b)) * global2.d.b));
    var var_1 = vec3<bool>(var_0, true, true);
    let var_2 = vec4<u32>(~_wgslsmith_clamp_u32(global0.b.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 5086u), ~64168u, _wgslsmith_mult_u32(global2.b.x, arg_0)), ~global0.c.a), global2.c.a, 1u >> (countOneBits(~global2.e.a) % 32u), _wgslsmith_div_u32(select(11636u, ~arg_0, false), 1u));
    var var_3 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(func_2(-1803f, vec4<bool>(all(vec3<bool>(true, var_0, true)), !all(vec2<bool>(var_1.x, var_0)), !var_0, any(!vec3<bool>(false, false, var_1.x))), _wgslsmith_f_op_f32(min(global1.x, global0.d.b)), ~vec2<i32>(_wgslsmith_mod_i32(-1098i, u_input.b), -1i & u_input.b))), select(!(!(!vec4<bool>(false, true, false, var_1.x))), vec4<bool>(_wgslsmith_f_op_f32(698f * -428f) <= global0.d.b, any(select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_0, var_1.x, var_1.x, var_0), vec4<bool>(var_1.x, var_0, var_1.x, true))), var_1.x, var_1.x), vec4<bool>(true, var_0 || !var_0, !(var_1.x && var_0), true)), global0.c.b, -(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(-31462i, 23787i))))));
    global2 = Struct_2(0u, vec2<u32>(~4294967295u, ~u_input.a), global0.c, global0.d, Struct_1(~33035u, _wgslsmith_div_f32(global0.c.b, _wgslsmith_f_op_f32(-global1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mult_vec2_u32(~abs(global0.b ^ vec2<u32>(1u, global2.e.a)), global0.b), ~vec2<u32>(u_input.a, ~58780u ^ _wgslsmith_add_u32(u_input.a, global2.d.a)), (_wgslsmith_f_op_f32(func_1(u_input.a)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-163f + global0.c.b)))) || (any(vec4<bool>(true, true, true, true)) && select(u_input.b != 66249i, true, true)));
    let var_1 = Struct_1(0u, 1690f);
    let var_2 = Struct_3(u_input.b << (31765u % 32u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(147f, var_1.b))));
    var var_3 = !vec3<bool>((abs(global0.c.a) << (~var_0.x % 32u)) == 89492u, any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec3<bool>(true, false, true)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, global1.x, -1000f, global0.c.b) + vec4<f32>(-701f, -614f, 1105f, 636f)) - vec4<f32>(global1.x, _wgslsmith_f_op_f32(1272f - global1.x), 1562f, 884f))));
    let var_5 = select(~(~vec3<u32>(var_0.x, select(0u, 90440u, var_3.x), var_1.a)), abs(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a, 28741u, 18599u), abs(vec3<u32>(global2.c.a, var_0.x, var_0.x))))), vec3<bool>(var_1.b < 237f, false, all(vec2<bool>(true, true | var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, vec2<i32>(1i, 1i));
}

