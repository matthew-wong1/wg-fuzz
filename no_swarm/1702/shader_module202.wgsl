struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(4294967295u, vec4<bool>(true, true, false, true), 1322f, 682f), Struct_1(40906u, vec4<bool>(false, false, true, false), -1000f, -569f), Struct_1(8074u, vec4<bool>(false, false, true, false), -1452f, 126f), Struct_1(1u, vec4<bool>(false, false, false, true), -385f, -569f), Struct_1(1u, vec4<bool>(false, true, false, false), 1663f, -886f), Struct_1(39796u, vec4<bool>(true, false, false, false), -496f, -942f), Struct_1(4998u, vec4<bool>(false, false, false, false), 111f, -1000f), Struct_1(1u, vec4<bool>(true, true, true, false), -647f, 319f), Struct_1(2127u, vec4<bool>(false, false, true, false), -1077f, -690f), Struct_1(12435u, vec4<bool>(true, false, true, false), 222f, 340f), Struct_1(0u, vec4<bool>(true, false, true, true), 1338f, 1229f), Struct_1(6862u, vec4<bool>(false, true, false, true), 622f, 1931f), Struct_1(1u, vec4<bool>(false, false, true, false), -1390f, 254f), Struct_1(94024u, vec4<bool>(true, false, false, false), 724f, 1261f));

var<private> global2: array<vec4<i32>, 8>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.c);
    global0 = array<i32, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 607f, -510f, 800f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 891f, var_0.b, var_0.b) * vec4<f32>(var_0.b, 1892f, arg_0.d, 916f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c, arg_0.d, var_0.b, 245f), vec4<f32>(100f, var_0.b, var_0.b, 1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, 350f, var_0.b, arg_0.d) - vec4<f32>(1313f, 514f, var_0.b, -1397f)))))));
    var var_2 = arg_0.b;
    global0 = array<i32, 20>();
    return !arg_0.b;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> vec2<i32> {
    let var_0 = ~arg_3;
    var var_1 = abs(93939u << (var_0 % 32u));
    var var_2 = ~(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 124103u), vec2<u32>(20719u, arg_3)), _wgslsmith_mod_u32(0u, firstTrailingBit(var_0)), u_input.b.x, 4294967295u) | ~vec4<u32>(min(4294967295u, 92357u), _wgslsmith_sub_u32(var_0, arg_3), ~arg_0, arg_3 ^ 75253u));
    global2 = array<vec4<i32>, 8>();
    var var_3 = ~vec3<u32>(var_2.x, var_0, _wgslsmith_div_u32(~57011u, u_input.b.x));
    return abs(~(~u_input.d.zz));
}

fn func_3() -> f32 {
    global2 = array<vec4<i32>, 8>();
    global0 = array<i32, 20>();
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    global0 = array<i32, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-902f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f + 927f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 347f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1116f)) - _wgslsmith_f_op_f32(step(1224f, -228f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x)), select(select(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 51150u), ~vec4<u32>(31861u, u_input.b.x, 46902u, u_input.b.x), func_1(Struct_1(u_input.b.x, vec4<bool>(false, false, false, false), -318f, -1685f))), firstLeadingBit(~vec4<u32>(u_input.b.x, 0u, 1u, 7542u)), select(vec4<bool>(true, false, true, false), func_1(Struct_1(4012u, vec4<bool>(false, true, true, true), -1000f, -746f)), true))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(48277u, u_input.b.x, 1u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 102804u, u_input.b.x), vec4<u32>(43280u, u_input.b.x, u_input.b.x, 1735u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 62117u, 16343u), ~vec3<u32>(46122u, u_input.b.x, 41694u)), u_input.b.x, u_input.b.x, ~reverseBits(u_input.b.x)))), 14u)];
    let var_1 = -_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(23796i, -30320i), func_2(var_0.a, var_0.c, Struct_2(var_0.b.yw, var_0.c), 0u)) ^ u_input.c, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-39724i, u_input.a), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(61459u, 20u)])), ~u_input.c));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))) < _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -617f));
    global2 = array<vec4<i32>, 8>();
    global1 = array<Struct_1, 14>();
    var var_3 = func_1(global1[_wgslsmith_index_u32(select(1u, countOneBits(~0u), var_0.b.x), 14u)]).xzy;
    let x = u_input.a;
    s_output = StorageBuffer(-1332f, _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-var_0.c)), 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c))));
}

