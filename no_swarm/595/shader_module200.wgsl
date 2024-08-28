struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec3<f32>(-1056f, -1150f, 294f)), Struct_3(vec3<f32>(-125f, -957f, 844f)), Struct_3(vec3<f32>(-1115f, 202f, -893f)), Struct_3(vec3<f32>(-1000f, -1195f, -1105f)), Struct_3(vec3<f32>(169f, -1249f, -1000f)), Struct_3(vec3<f32>(2232f, -553f, -2321f)), Struct_3(vec3<f32>(-479f, 619f, 248f)), Struct_3(vec3<f32>(-872f, -2592f, 1000f)), Struct_3(vec3<f32>(1542f, 1000f, 1075f)), Struct_3(vec3<f32>(1102f, -118f, -2460f)), Struct_3(vec3<f32>(359f, 2179f, -2957f)), Struct_3(vec3<f32>(2144f, -1000f, -536f)), Struct_3(vec3<f32>(-977f, -616f, 528f)), Struct_3(vec3<f32>(-438f, -154f, 703f)), Struct_3(vec3<f32>(1000f, -543f, -221f)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<u32>(5077u, 5335u, 4294967295u), 4294967295u), Struct_1(vec3<u32>(0u, 4294967295u, 5728u), 4294967295u), Struct_1(vec3<u32>(0u, 28156u, 21629u), 0u), Struct_1(vec3<u32>(4294967295u, 0u, 98780u), 0u), Struct_1(vec3<u32>(1u, 14130u, 71482u), 14797u), Struct_1(vec3<u32>(26298u, 15723u, 49715u), 4372u), Struct_1(vec3<u32>(59667u, 4294967295u, 10904u), 4294967295u), Struct_1(vec3<u32>(13010u, 10036u, 64942u), 0u), Struct_1(vec3<u32>(4294967295u, 0u, 65915u), 7332u), Struct_1(vec3<u32>(25007u, 24448u, 0u), 24538u), Struct_1(vec3<u32>(2203u, 19334u, 4294967295u), 46099u), Struct_1(vec3<u32>(0u, 4294967295u, 28157u), 4294967295u), Struct_1(vec3<u32>(0u, 19609u, 4294967295u), 4294967295u), Struct_1(vec3<u32>(4294967295u, 98564u, 1u), 0u), Struct_1(vec3<u32>(1u, 19142u, 0u), 1u), Struct_1(vec3<u32>(10827u, 6154u, 0u), 0u), Struct_1(vec3<u32>(16911u, 0u, 10072u), 1u), Struct_1(vec3<u32>(22446u, 33719u, 0u), 68831u), Struct_1(vec3<u32>(48276u, 10388u, 0u), 0u), Struct_1(vec3<u32>(4294967295u, 1u, 39720u), 56301u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = select(22676u, global1.a.x, !(!all(vec4<bool>(true, true, true, true))));
    let var_1 = global0[_wgslsmith_index_u32(~44756u, 15u)];
    global0 = array<Struct_3, 15>();
    let var_2 = any(vec2<bool>(any(vec2<bool>(all(vec2<bool>(arg_1, true)), false)), !arg_1));
    var var_3 = 22685u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1095f + var_1.a.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> i32 {
    global1 = Struct_1(u_input.a.ywx << (vec3<u32>(u_input.b.x >> (56683u % 32u), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 3153u, 4294967295u), vec4<u32>(1u, arg_2.x, global1.b, 4294967295u))), ~(~1u)) % vec3<u32>(32u)), global1.b);
    let var_0 = global1.a;
    global3 = array<Struct_1, 20>();
    global2 = array<Struct_2, 29>();
    global0 = array<Struct_3, 15>();
    return abs(_wgslsmith_clamp_i32(-select(~(-1i), _wgslsmith_mult_i32(0i, -6694i), all(vec2<bool>(false, true))), select(-2147483647i, ~(-8666i), true), min(_wgslsmith_add_i32(countOneBits(0i), -12364i), 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global0 = array<Struct_3, 15>();
    let var_0 = -func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true))), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -676f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(588f, _wgslsmith_f_op_f32(func_3(0i, true)), arg_1.x, arg_1.x)), u_input.a, _wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(36364u, 4294967295u, 4294967295u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, u_input.a), ~select(u_input.a, u_input.a, vec4<bool>(true, true, true, false))));
    global2 = array<Struct_2, 29>();
    global2 = array<Struct_2, 29>();
    global2 = array<Struct_2, 29>();
    return 1i | var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> vec2<i32> {
    var var_0 = -471f;
    var var_1 = func_2(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1640f, -1000f) * vec2<f32>(-1455f, 1316f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-263f, -985f) + vec2<f32>(798f, -898f))), _wgslsmith_div_vec2_f32(vec2<f32>(202f, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(-1518f, -1599f), vec2<f32>(-866f, -1290f)))))));
    global3 = array<Struct_1, 20>();
    var var_2 = 30724i;
    var_2 = arg_1;
    return arg_0.yz;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, 690f, -774f)) * vec3<f32>(-962f, _wgslsmith_f_op_f32(2383f - -695f), _wgslsmith_f_op_f32(1000f - 572f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f * -2027f)), _wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(f32(-1f) * -1163f)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.a)))) * var_0.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))), false));
    let var_2 = _wgslsmith_div_vec3_i32(select(arg_3, vec3<i32>(-2147483647i, 0i, -1i), !(-2147483647i >= func_1(vec3<i32>(60396i, arg_3.x, 2147483647i), arg_0, 49021u).x)), vec3<i32>(arg_1.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -56386i, 4664i, arg_0), reverseBits(vec4<i32>(arg_1.x, 1i, arg_3.x, 2147483647i))), arg_1.x, func_1(-arg_3, ~arg_1.x, 0u).x), min(_wgslsmith_dot_vec4_i32(~vec4<i32>(-19418i, arg_3.x, -1i, arg_0), ~vec4<i32>(-29749i, arg_1.x, -28283i, arg_1.x)), firstTrailingBit(~arg_3.x))));
    let var_3 = max(0u, firstLeadingBit(1u));
    return global0[_wgslsmith_index_u32(~1u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(0i, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-9769i, 6953i), 3868i), ~vec2<i32>(-28593i, 32307i) ^ func_1(vec3<i32>(-7902i, -2433i, 1445i), -14956i, 14528u))), 1u << (min(~45498u, _wgslsmith_div_u32(0u, u_input.b.x)) % 32u), _wgslsmith_mod_vec3_i32(abs(-vec3<i32>(-1i, 63902i, -21082i) << (vec3<u32>(u_input.b.x, 40439u, u_input.b.x) % vec3<u32>(32u))), vec3<i32>(-53839i, -1i, reverseBits(func_2(Struct_1(global1.a, u_input.a.x), vec2<f32>(-1205f, 1957f))))));
    let var_1 = any(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)))) || all(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), !any(vec4<bool>(false, true, false, true))));
    global2 = array<Struct_2, 29>();
    var_0 = func_5(func_2(Struct_1(global1.a, 1u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(364f, 1420f)), _wgslsmith_div_f32(1580f, 1212f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.xy)) + var_0.a.yz))), vec2<i32>(~0i, ~1i), u_input.b.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 6685i, 0i), vec4<i32>(-1i, 2147483647i, -595i, -1i)), 2147483647i >> ((u_input.a.x >> (u_input.b.x % 32u)) % 32u), 0i), vec3<i32>(0i, ~(-1i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, 47968i), vec2<i32>(-15551i, -2147483647i), vec2<bool>(true, true)), vec2<i32>(41336i, -46741i)))));
    var var_2 = true;
    let var_3 = global2[_wgslsmith_index_u32(0u, 29u)];
    var_2 = false;
    global0 = array<Struct_3, 15>();
    let var_4 = global3[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(var_3.b.b, _wgslsmith_mod_u32(~(~u_input.b.x), _wgslsmith_add_u32(global1.a.x, 4294967295u))), !(!all(select(vec2<bool>(true, true), var_3.c, var_3.d.x)))), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_mod_i32(-1i, -1i), firstTrailingBit(0i), 2147483647i >> (var_4.b % 32u))), select(_wgslsmith_div_vec3_i32(~vec3<i32>(-23137i, 1214i, 8883i), select(vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(2147483647i, 32627i, 1i), var_1)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -25415i, -1i), vec3<i32>(2147483647i, 1i, 15714i)), select(vec3<i32>(1i, -1i, 60001i), vec3<i32>(-2147483647i, 0i, -1i), true)), !select(var_3.d, vec3<bool>(false, true, false), false))), global1.a.xy);
}

