struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4914u;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: bool;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    let var_0 = vec3<u32>(u_input.b, ~global3.x, global3.x ^ ~1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1972f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2095f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1170f), -878f)), -1284f)));
    var var_2 = u_input.a;
    var_2 = u_input.a;
    global2 = all(vec4<bool>(true, true, false, true | (var_1.x != var_1.x))) & any(vec2<bool>(all(vec2<bool>(true, false)), true & (u_input.e.x <= u_input.a.x)));
    return var_2.x;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    global3 = ~(u_input.d & vec3<u32>(~global3.x ^ max(37494u, u_input.d.x), _wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 20157u, u_input.d.x), u_input.d)), u_input.b));
    global1 = array<vec3<u32>, 29>();
    global3 = ~(reverseBits(select(u_input.d, ~vec3<u32>(25176u, u_input.c, global3.x), !vec3<bool>(arg_0.d, true, arg_2.x))) << (~global1[_wgslsmith_index_u32(25304u, 29u)] % vec3<u32>(32u)));
    global0 = max(u_input.c, u_input.d.x);
    var var_0 = -1388f;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, min(37477u, global3.x), _wgslsmith_div_u32(1u, global3.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(global1[_wgslsmith_index_u32(1u, 29u)]), vec3<u32>(29416u, global3.x, u_input.d.x)), _wgslsmith_mult_vec3_u32(u_input.d, u_input.d), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(global3.x, u_input.d.x, 4294967295u))), max(firstTrailingBit(vec3<u32>(1u, 72698u, 48320u)), min(vec3<u32>(global3.x, u_input.c, 4294967295u), u_input.d))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(-func_2(), u_input.a.x, ~u_input.e.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(138f, -630f)), 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-617f, 269f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1671f)))), -1238f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(442f, 1332f, -1451f) - vec3<f32>(-1925f, 2182f, -208f))))), 847f, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)));
    global3 = _wgslsmith_mod_vec3_u32(~vec3<u32>(global3.x, u_input.c, reverseBits(~1u)), (~u_input.d | firstLeadingBit(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c, 29u)]))) ^ ~firstTrailingBit(u_input.d >> (vec3<u32>(66823u, 33610u, u_input.d.x) % vec3<u32>(32u))));
    var var_2 = vec4<u32>(90801u, ~u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(25536u, func_3(Struct_1(vec2<f32>(var_1.e, 1355f), vec3<f32>(-282f, 958f, 710f), var_1.e, false, 2414f), _wgslsmith_f_op_f32(round(var_1.a.x)), select(vec3<bool>(false, var_1.d, var_1.d), vec3<bool>(var_1.d, true, var_1.d), vec3<bool>(var_1.d, false, false))))), u_input.c);
    var var_3 = (var_1.c == 1202f) || var_1.d;
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1.e)), var_1.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1021f, _wgslsmith_f_op_f32(floor(283f)), var_1.c) + var_1.b), _wgslsmith_f_op_f32(round(var_1.a.x)), !(global3.x < global3.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c), -1181f, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(~(abs(global3.x ^ 22296u) & u_input.c), _wgslsmith_div_u32(global3.x, global3.x));
    var var_0 = false;
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(27988i, -u_input.e.x), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(1i, u_input.a.x >> (global3.x % 32u)) | ~2147483647i));
    var var_2 = func_1();
    let var_3 = func_1();
    let var_4 = func_1();
    global1 = array<vec3<u32>, 29>();
    global3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, u_input.a, func_1().a.x, ~0u);
}

