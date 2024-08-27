struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<vec4<u32>, 15>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> vec3<u32> {
    global1 = array<vec4<u32>, 15>();
    let var_0 = Struct_2(1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1175f - -652f) + -1442f), 489f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-397f, -141f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-604f)))))), ~abs(global1[_wgslsmith_index_u32(1u, 15u)]));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1379f, 599f, -792f, var_0.b.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(920f, -139f, var_0.b.x, var_0.b.x))), arg_2)))) + vec4<f32>(-606f, var_0.b.x, _wgslsmith_f_op_f32(max(-964f, _wgslsmith_div_f32(var_0.b.x, -602f))), 1000f)));
    let var_3 = vec4<i32>(abs(firstLeadingBit(-var_1 & u_input.e.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(27735i << (u_input.c % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(32009i, arg_1, var_1), vec3<i32>(arg_1, 23352i, 30979i))), u_input.e.x, firstTrailingBit(abs(arg_1))), _wgslsmith_div_vec3_i32(abs(abs(vec3<i32>(var_1, arg_1, 83214i))), vec3<i32>(~83751i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -2147483647i, -58064i), vec3<i32>(arg_1, u_input.e.x, 71101i)), arg_1))), var_1, var_1);
    return _wgslsmith_clamp_vec3_u32(var_0.c.zxz, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, arg_0, arg_0), countOneBits(var_0.c.wzw)), vec3<u32>(arg_0 & var_0.c.x, 4294967295u, var_0.c.x));
}

fn func_2() -> i32 {
    global1 = array<vec4<u32>, 15>();
    global0 = array<vec2<bool>, 12>();
    var var_0 = vec3<u32>(u_input.c, abs(~1u), _wgslsmith_mult_u32(abs(1u), ~(u_input.a | 49380u)) << (75667u % 32u));
    var_0 = func_3(32949u, -2147483647i, !all(vec3<bool>(true, false, true)));
    var var_1 = 2663u << (var_0.x % 32u);
    return 0i ^ (abs(u_input.e.x) ^ u_input.e.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    global0 = array<vec2<bool>, 12>();
    let var_0 = arg_1;
    global0 = array<vec2<bool>, 12>();
    var var_1 = arg_1;
    let var_2 = _wgslsmith_mult_i32(-_wgslsmith_mult_i32(func_2() & arg_2.x, countOneBits(u_input.e.x)), arg_2.x);
    return select(~0u, _wgslsmith_add_u32(arg_0.a, select(arg_0.c.x, _wgslsmith_clamp_u32(var_1.a, 12809u, var_1.c.x) ^ var_1.c.x, false)), any(!vec3<bool>(true, any(vec3<bool>(true, true, false)), all(vec4<bool>(false, true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<vec4<u32>, 15>();
    global1 = array<vec4<u32>, 15>();
    var var_1 = _wgslsmith_mult_u32(abs(abs(select(0u, _wgslsmith_mod_u32(u_input.c, u_input.c), var_0))), reverseBits(u_input.c));
    var_1 = 35396u << (~(~func_1(Struct_2(0u, vec2<f32>(-1037f, 110f), global1[_wgslsmith_index_u32(76605u, 15u)]), Struct_2(u_input.c, vec2<f32>(887f, -450f), global1[_wgslsmith_index_u32(u_input.c, 15u)]), u_input.e)) % 32u);
    var var_2 = Struct_1(vec4<bool>(true, var_0, var_0, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f * -289f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) * -1252f))), reverseBits(abs(vec4<i32>(-2147483647i, ~u_input.e.x, 23462i, _wgslsmith_sub_i32(-42008i, u_input.e.x)))), _wgslsmith_sub_vec2_i32(max(min(u_input.e, _wgslsmith_mult_vec2_i32(u_input.e, u_input.e)), -u_input.e << (vec2<u32>(u_input.c, u_input.a) % vec2<u32>(32u))), firstLeadingBit(u_input.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -565f), -1000f, -1370f, -2622f)))), max(vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.e, u_input.e), min(-13963i, -7538i), _wgslsmith_mod_i32(~(-41673i), _wgslsmith_dot_vec2_i32(u_input.e, u_input.e))), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1i, 1i, -2147483647i)), abs(vec3<i32>(-1i, u_input.d, u_input.e.x) << (vec3<u32>(u_input.c, 1u, u_input.a) % vec3<u32>(32u))))));
}

