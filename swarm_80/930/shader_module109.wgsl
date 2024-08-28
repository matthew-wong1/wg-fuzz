struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 7>;

var<private> global2: vec2<f32> = vec2<f32>(-1772f, -1000f);

var<private> global3: vec3<bool>;

var<private> global4: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_1(~(~arg_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, global0.x), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 83741u), vec2<u32>(0u, 4294967295u)))), !(!select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, global3.x, true, global3.x), true)), select(!vec3<bool>(false, global3.x, global3.x), select(select(vec3<bool>(global3.x, false, false), vec3<bool>(global3.x, false, global3.x), true), vec3<bool>(true, true, true), !global3.x), vec3<bool>(any(vec4<bool>(global3.x, global3.x, true, global3.x)), global3.x, all(vec3<bool>(false, false, global3.x))))), vec4<u32>(~4294967295u, ~global0.x, _wgslsmith_add_u32(~firstLeadingBit(40038u), 0u), ~(~global0.x)), arg_0, arg_0, 49569u);
    let var_1 = Struct_2(~1i, Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(var_0.d.a, var_0.a.a.a, -1196i, arg_0.a))), vec4<i32>(-1i, -48913i, -27914i, -arg_0.a)), global0.x), _wgslsmith_f_op_f32(abs(-784f)));
    var var_2 = var_0.c.a;
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1680f, 869f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -327f) - vec2<f32>(131f, -105f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), var_1.c)));
    let var_3 = vec3<f32>(var_1.c, _wgslsmith_f_op_f32(step(1000f, 904f)), _wgslsmith_f_op_f32(-954f + var_1.c));
    return arg_0.b << (_wgslsmith_div_u32(30317u, 4294967295u) % 32u);
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -137f) + vec2<f32>(1653f, -348f)), vec2<f32>(-1372f, -1183f))))));
    var var_0 = func_3(Struct_1((global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global0.x), 7u)] ^ 0i) << (~reverseBits(global0.x) % 32u), 4251u));
    global0 = max(~vec2<u32>(_wgslsmith_clamp_u32(global0.x, abs(global0.x), _wgslsmith_div_u32(1u, global0.x)), ~(71532u & global0.x)), firstLeadingBit(firstTrailingBit(~vec2<u32>(global0.x, 4294967295u) ^ vec2<u32>(4294967295u, global0.x))));
    let var_1 = true;
    global4 = array<vec2<bool>, 31>();
    return Struct_2(global1[_wgslsmith_index_u32(global0.x, 7u)], Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 7u)], u_input.a, -42593i), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(global0.x, 7u)], u_input.a), vec3<i32>(-1i, 0i, 67682i)), vec3<i32>(global1[_wgslsmith_index_u32(~global0.x, 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)] >> (829u % 32u), 2147483647i)), 85744u), global2.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = -(~u_input.a);
    let var_1 = func_2();
    let var_2 = _wgslsmith_mod_vec3_i32((vec3<i32>(0i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 7u)], u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, global1[_wgslsmith_index_u32(1u, 7u)]), vec2<i32>(1153i, 0i))) ^ -vec3<i32>(31017i, u_input.a, global1[_wgslsmith_index_u32(1u, 7u)])) & ((countOneBits(vec3<i32>(2147483647i, -1i, global1[_wgslsmith_index_u32(15965u, 7u)])) << (vec3<u32>(global0.x, global0.x, 31183u) % vec3<u32>(32u))) << (firstTrailingBit(vec3<u32>(26775u, var_1.b.b, var_1.b.b)) % vec3<u32>(32u))), abs(~vec3<i32>(-4163i, u_input.a >> (var_1.b.b % 32u), countOneBits(1i))));
    let var_3 = var_1.b.b;
    var var_4 = _wgslsmith_sub_i32(-(~min(1678i, i32(-1i) * -2147483647i)), ~global1[_wgslsmith_index_u32(~reverseBits(4294967295u), 7u)] ^ u_input.a);
    return ~_wgslsmith_mult_vec2_u32(~min(vec2<u32>(global0.x, 4294967295u), vec2<u32>(global0.x, var_1.b.b)) & abs(countOneBits(vec2<u32>(18578u, 46164u))), _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(1u, var_3), vec2<u32>(global0.x, 4294967295u), vec2<bool>(true, true)), vec2<u32>(~65850u, var_1.b.b), vec2<u32>(_wgslsmith_mult_u32(var_1.b.b, var_1.b.b), ~var_1.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (select(abs(vec2<u32>(global0.x, global0.x) ^ vec2<u32>(0u, global0.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u)), select(vec2<bool>(false, global3.x), global4[_wgslsmith_index_u32(~1u, 31u)], vec2<bool>(global3.x, false))) | ~firstLeadingBit(min(vec2<u32>(global0.x, global0.x), vec2<u32>(21184u, 4294967295u)))) | (func_1(!select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, true, false, global3.x), vec4<bool>(true, global3.x, global3.x, false)), !vec4<bool>(global3.x, true, true, global3.x)) | firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, 85519u), vec2<u32>(global0.x, 4294967295u))));
    let var_0 = 6387i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(48541u, global0.x), _wgslsmith_f_op_f32(sign(-1629f)), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global0.x, 14005u)) >> (~vec2<u32>(global0.x, 0u) % vec2<u32>(32u)), vec2<u32>(1u, 36787u)) | ~vec2<u32>(abs(4294967295u), 34612u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), -849f, 1544f, global2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(444f, global2.x, -1419f, -835f) - vec4<f32>(2692f, global2.x, global2.x, 713f)))) + vec4<f32>(1695f, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x), global2.x)), _wgslsmith_div_u32(~1u, ~1u));
}

