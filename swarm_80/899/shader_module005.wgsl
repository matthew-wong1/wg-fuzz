struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, vec2<u32>(5655u, 0u), vec2<bool>(true, false));

var<private> global1: array<Struct_2, 31>;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i, vec2<bool>(false, true), 1744f), Struct_1(1i, vec2<bool>(true, false), -178f), Struct_1(-1i, vec2<bool>(false, false), -1018f), Struct_1(-30714i, vec2<bool>(true, true), 1268f), Struct_1(-25792i, vec2<bool>(true, true), 2197f), Struct_1(-21149i, vec2<bool>(true, false), -537f), Struct_1(-17904i, vec2<bool>(false, false), 264f), Struct_1(-22639i, vec2<bool>(true, false), 1119f), Struct_1(2147483647i, vec2<bool>(false, false), -2234f), Struct_1(0i, vec2<bool>(true, true), -1702f), Struct_1(2147483647i, vec2<bool>(true, true), 504f), Struct_1(i32(-2147483648), vec2<bool>(false, false), 463f), Struct_1(1i, vec2<bool>(false, false), -833f), Struct_1(-23173i, vec2<bool>(true, true), 648f), Struct_1(0i, vec2<bool>(false, true), 2722f), Struct_1(0i, vec2<bool>(false, true), -445f), Struct_1(60480i, vec2<bool>(false, true), -170f), Struct_1(14512i, vec2<bool>(true, false), 869f), Struct_1(21620i, vec2<bool>(true, false), -2058f), Struct_1(1i, vec2<bool>(false, true), -562f), Struct_1(-40466i, vec2<bool>(true, true), 1709f), Struct_1(1i, vec2<bool>(true, false), -2146f), Struct_1(-105076i, vec2<bool>(false, false), 875f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(u_input.c, 2147483647i)), arg_0), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-arg_0, arg_0), ~vec2<i32>(arg_3.a, -5587i)) & _wgslsmith_add_vec2_i32(select(abs(arg_0), arg_0, any(arg_3.b)), vec2<i32>(-u_input.c, select(arg_3.a, arg_3.a, arg_3.b.x))), -_wgslsmith_mult_vec2_i32(arg_0, arg_0));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(614f + -449f), 283f, -746f, -1000f)));
    var var_2 = arg_3;
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, global0.b.x, global0.b.x, 4294967295u), vec4<u32>(6732u, 1u, arg_2.x, global0.b.x)), 36846u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(global0.b, arg_2), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, arg_1.b.x, 26509u), vec3<u32>(4294967295u, 0u, arg_2.x)), 4294967295u & arg_2.x))), arg_2);
    var_0 = firstTrailingBit(arg_0);
    return u_input.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(10269u, 31u)];
    var var_1 = global1[_wgslsmith_index_u32(var_0.b.x, 31u)];
    var var_2 = vec4<u32>(min(func_3(-vec2<i32>(global2.x, 0i) ^ select(vec2<i32>(0i, -2147483647i), vec2<i32>(0i, u_input.c), global0.c), global1[_wgslsmith_index_u32(1u >> (~4294967295u % 32u), 31u)], global0.b, Struct_1(u_input.c ^ u_input.c, !vec2<bool>(var_0.c.x, global0.c.x), _wgslsmith_f_op_f32(trunc(1000f)))), ~select(~var_1.a, u_input.b, u_input.c <= -3294i)), _wgslsmith_add_u32(var_0.a << ((~global0.b.x | global0.b.x) % 32u), firstLeadingBit(global0.a >> (~0u % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b.x, _wgslsmith_dot_vec2_u32(u_input.a.zz, var_0.b) | 27733u), vec3<u32>(1u, 69302u, 0u)), max(var_0.a, var_1.b.x));
    var_1 = Struct_2(~(~firstLeadingBit(reverseBits(var_0.a))), abs(max(var_0.b, vec2<u32>(4294967295u, ~var_0.b.x))), !var_1.c);
    var var_3 = vec4<bool>(true, true, global0.c.x, false);
    return global1[_wgslsmith_index_u32(1u, 31u)];
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec2<u32> {
    global1 = array<Struct_2, 31>();
    let var_0 = global3[_wgslsmith_index_u32(31990u, 23u)];
    global0 = func_2();
    global3 = array<Struct_1, 23>();
    let var_1 = -1000f;
    return reverseBits(~max(abs(~vec2<u32>(20280u, 1u)), vec2<u32>(~arg_1.a, abs(global0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global0.b.x, u_input.b | ~17427u), global0.b.x), abs(30880u));
    global0 = Struct_2(4519u, select(countOneBits(func_1(global2.x, Struct_2(global0.b.x, vec2<u32>(global0.b.x, global0.b.x), vec2<bool>(global0.c.x, true)))), u_input.a.yx, !global0.c.x) | vec2<u32>(max(global0.a, global0.b.x) & 10009u, global0.b.x), vec2<bool>(true, true | (global0.c.x | true)));
    var var_1 = 1029f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1093f, -386f) + _wgslsmith_f_op_f32(select(-344f, 1000f, global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(418f)) - -980f)))));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    var var_3 = vec2<u32>(~countOneBits(4294967295u), u_input.b) << (vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_2.b, vec2<u32>(19192u, 19313u)), _wgslsmith_div_u32(u_input.a.x, u_input.b)), 38664u) % vec2<u32>(32u));
    var var_4 = _wgslsmith_add_u32(_wgslsmith_div_u32(func_1(max(3478i, ~2147483647i), func_2()).x, 11516u), ~(~(~global0.b.x)));
    let var_5 = u_input.b;
    var_3 = vec2<u32>(~(func_3(vec2<i32>(1i, global2.x), Struct_2(6579u, vec2<u32>(u_input.a.x, var_5), vec2<bool>(true, false)), u_input.a.xy, global3[_wgslsmith_index_u32(var_5, 23u)]) | ~global0.b.x) >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(~var_3.x, ~var_3.x), ~u_input.a.x) % 32u), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1345f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(1356f)))), vec2<i32>(~(-1i), u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-628f, -271f, all(global0.c))), _wgslsmith_f_op_f32(558f * -139f))), 554f), max(var_3.x, 0u));
}

