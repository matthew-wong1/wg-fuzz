struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(693f, -663f, -784f), vec3<f32>(1120f, -1026f, -2238f), vec3<f32>(876f, -216f, -754f), vec3<f32>(-1000f, 462f, 255f), vec3<f32>(456f, 1056f, 1029f), vec3<f32>(1000f, 1000f, 925f), vec3<f32>(-4562f, 231f, 415f), vec3<f32>(-1383f, 923f, -307f), vec3<f32>(131f, -1755f, 1916f));

var<private> global1: array<f32, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(abs(_wgslsmith_sub_u32(max(9906u, 1u), 8392u)), ~(~1u), 11807u, 1u), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = Struct_1(166f, vec2<u32>(54333u, 294u), _wgslsmith_div_vec2_f32(arg_2.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -1030f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_2.yw))))), _wgslsmith_mult_vec3_u32(vec3<u32>(14176u, ~(~var_0.x), var_0.x), abs(var_0.zzz)));
    global1 = array<f32, 28>();
    global0 = array<vec3<f32>, 9>();
    var var_2 = _wgslsmith_clamp_u32(max(~(~_wgslsmith_mod_u32(var_1.b.x, 0u)), 1u), 52064u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 2193u >> (1u % 32u), _wgslsmith_div_u32(firstTrailingBit(var_0.x), _wgslsmith_mod_u32(var_0.x, 38497u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6012u, 0u, 1u), var_1.d) & var_0.x, var_0.x, ~firstLeadingBit(var_1.b.x))));
    return ~var_0.x;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec2<u32> {
    global1 = array<f32, 28>();
    var var_0 = firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 4294967295u));
    var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_mod_u32(1u, 1u), ~func_3(591f, true, vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], 643f, arg_1, global1[_wgslsmith_index_u32(13312u, 28u)]), false), 1u)), vec3<u32>(~1u, _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(4294967295u, 0u, 1u)), _wgslsmith_div_u32(1u, abs(1488u))), ~38774u));
    var_0 = 42416u;
    var var_1 = ~_wgslsmith_add_u32(~(~1u), _wgslsmith_mod_u32(~4294967295u, ~(~1u)));
    return vec2<u32>(23301u & (1u << (max(~25011u, _wgslsmith_clamp_u32(4294967295u, 45353u, 0u)) % 32u)), ~abs(abs(0u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = abs(-20730i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1466f, -159f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(104612u, 28u)]))) * vec2<f32>(_wgslsmith_f_op_f32(-520f * 514f), global1[_wgslsmith_index_u32(1u, 28u)])))));
    let var_2 = i32(-1i) * -8906i;
    global0 = array<vec3<f32>, 9>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(296f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(36476u, 28u)], var_1.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 28u)] + global1[_wgslsmith_index_u32(0u, 28u)]))), var_1.x, -407f))));
    return Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 28u)], func_2(-2077f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~(~93946u), 28u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(33878u, 28u)])), vec2<f32>(var_1.x, var_3.x)))), firstTrailingBit(max(vec3<u32>(31517u, 104707u, 54698u), _wgslsmith_clamp_vec3_u32(vec3<u32>(46336u, 4294967295u, 81917u), vec3<u32>(1u, 40028u, 29558u), vec3<u32>(24248u, 0u, 4294967295u)))) & (vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(max(12803u, 64504u), ~33492u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 5233u, 6549u), vec3<u32>(52329u, 12436u, 0u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(func_1(var_0.b.x == var_0.d.x).c.x * -1181f))), reverseBits(_wgslsmith_add_vec2_u32(var_0.d.yy, ~var_0.d.zz & _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 6164u), vec2<u32>(var_0.d.x, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(-720f, global1[_wgslsmith_index_u32(var_0.d.x, 28u)]))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(min(529f, global1[_wgslsmith_index_u32(1u, 28u)]))), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(var_0.c)))))), var_0.d << (vec3<u32>(min(1u >> (0u % 32u), func_1(false).d.x), 1u, var_0.b.x) % vec3<u32>(32u)));
    let var_2 = firstTrailingBit(~firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23242u, 26824u), vec3<u32>(51910u, var_1.b.x, 63591u)), 4294967295u, firstTrailingBit(1u), func_1(true).d.x)));
    var var_3 = func_1(false);
    let var_4 = var_1.a;
    var var_5 = var_3.b.x >= ~(~func_2(_wgslsmith_f_op_f32(min(var_4, var_3.a)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_3.b.x, 28u)]))).x);
    let x = u_input.a;
    s_output = StorageBuffer(~min(reverseBits(vec4<u32>(var_1.b.x, var_1.d.x, var_0.d.x, var_3.d.x)), var_2) << (vec4<u32>(~(~0u), 4294967295u, 0u, 1u) % vec4<u32>(32u)), var_3.d.x, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_3.b.x, 5174u), ~112186u), reverseBits(~4294967295u), 0u) & _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.d >> (var_3.d % vec3<u32>(32u)), ~var_3.d), ~func_1(false).d), var_0.d);
}

