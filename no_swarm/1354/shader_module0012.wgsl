struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global1: array<i32, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32) -> i32 {
    global1 = array<i32, 31>();
    var var_0 = true;
    let var_1 = false;
    var var_2 = Struct_1(true || var_1, _wgslsmith_f_op_f32(237f - _wgslsmith_f_op_f32(1264f * 1000f)), vec2<u32>(56746u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 40413u, 0u) & u_input.b, firstTrailingBit(~vec3<u32>(1u, u_input.b.x, 1u)))), u_input.e);
    global0 = array<vec3<bool>, 30>();
    return -72201i;
}

fn func_3() -> vec4<bool> {
    global1 = array<i32, 31>();
    var var_0 = Struct_2(select(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x)) >> (~u_input.b.x % 32u), ~64623u), 31u)], ~2147483647i, !(true || (u_input.e > u_input.d))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.b.xx), u_input.c.x), u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1920f, _wgslsmith_div_f32(324f, _wgslsmith_f_op_f32(round(604f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1872f), _wgslsmith_div_f32(836f, 685f))), _wgslsmith_f_op_f32(f32(-1f) * -1560f))));
    global0 = array<vec3<bool>, 30>();
    global1 = array<i32, 31>();
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.x, -839f))))), vec2<u32>((39481u ^ u_input.c.x) & var_0.b, u_input.c.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(~22313i, select(2147483647i, u_input.e, true), u_input.e, u_input.a), ~(-vec4<i32>(var_0.a, var_0.a, global1[_wgslsmith_index_u32(86294u, 31u)], var_0.a)), true), reverseBits((vec4<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 31u)], -17271i, var_0.a) ^ vec4<i32>(0i, u_input.d, 2147483647i, -1i)) << (_wgslsmith_sub_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)))));
    return select(vec4<bool>(true, 317f < _wgslsmith_f_op_f32(-835f - _wgslsmith_f_op_f32(-var_1.b)), var_1.a & any(!vec4<bool>(var_1.a, true, var_1.a, var_1.a)), var_1.a), !(!vec4<bool>(true, !var_1.a, false, !var_1.a)), vec4<bool>(all(select(vec2<bool>(var_1.a, false), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a)), vec2<bool>(true, true))), var_1.b == -1980f, any(!select(vec2<bool>(var_1.a, true), vec2<bool>(true, var_1.a), var_1.a)), var_1.a && true));
}

fn func_4(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_0.x;
    global0 = array<vec3<bool>, 30>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-593f, 1073f)) - -2125f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1632f)) - -1000f))) == -687f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(746f)))))), vec2<u32>(u_input.c.x, ~(u_input.b.x ^ max(u_input.b.x, 41615u))), 28967i & (-7884i | -_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(47253u, 31u)], global1[_wgslsmith_index_u32(36588u, 31u)], 30981i, u_input.a), vec4<i32>(u_input.e, 25894i, -2147483647i, 34141i))));
    var var_2 = global1[_wgslsmith_index_u32(26670u, 31u)];
    var var_3 = true;
    return reverseBits(vec2<i32>(1i, global1[_wgslsmith_index_u32(1u, 31u)])) & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, -1i), vec2<i32>(func_2(33731u), firstTrailingBit(0i)));
}

fn func_1() -> vec4<u32> {
    global0 = array<vec3<bool>, 30>();
    let var_0 = vec3<f32>(-210f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(314f * -157f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-725f + 955f) * -1592f));
    var var_1 = vec2<i32>(u_input.e, -func_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c.yyx, vec3<u32>(4294967295u, 4294967295u, 1u)), 1u)));
    var var_2 = func_4(select(vec4<bool>(all(vec2<bool>(true, false)), select(false, true, false) & all(vec2<bool>(true, false)), true == select(true, false, false), true), !(!func_3()), true));
    var_1 = _wgslsmith_mod_vec2_i32(-select(vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 1i), min(vec2<i32>(0i, -1i) << (u_input.c.yy % vec2<u32>(32u)), vec2<i32>(global1[_wgslsmith_index_u32(0u, 31u)], u_input.a)), all(vec4<bool>(true, true, true, true))), max(~(~vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 31u)])) | ((vec2<i32>(-21912i, 49553i) >> (u_input.c.wx % vec2<u32>(32u))) & vec2<i32>(u_input.d, 1i)), ~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(2147483647i, var_1.x)), vec2<i32>(var_2.x, 66486i))));
    return vec4<u32>(u_input.b.x, min(~(u_input.b.x & 0u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(max(u_input.c.x, u_input.c.x), abs(u_input.c.x)), _wgslsmith_mod_u32(max(72631u, 1u), u_input.b.x))), u_input.c.x, ~_wgslsmith_mod_u32(u_input.c.x, min(_wgslsmith_add_u32(36383u, u_input.c.x), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 31>();
    var var_0 = reverseBits(~(~vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x))) >> (func_1() % vec4<u32>(32u));
    global0 = array<vec3<bool>, 30>();
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(649f)))))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-974f)), _wgslsmith_f_op_f32(170f - -403f), u_input.a <= u_input.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, 679f, -785f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2311f, 347f, 952f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2037f, 184f, 949f) - vec3<f32>(1000f, -1000f, -602f)) - vec3<f32>(-602f, -942f, 830f)) - vec3<f32>(-1649f, _wgslsmith_f_op_f32(step(-1229f, 1736f)), _wgslsmith_f_op_f32(f32(-1f) * -484f)))));
    let var_2 = ~var_0.xy;
    let var_3 = Struct_2(-_wgslsmith_add_i32(6659i, global1[_wgslsmith_index_u32(reverseBits(23165u), 31u)]), _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(4294967295u ^ var_0.x), max(1u, var_2.x ^ 1u)), _wgslsmith_sub_u32(6915u, _wgslsmith_sub_u32(0u, abs(u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-662f * var_1.x), var_1.x, _wgslsmith_f_op_f32(step(1241f, 835f)), _wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_3.b, var_2.x), ~(~0u << (countOneBits(u_input.b.x >> (var_2.x % 32u)) % 32u)), firstLeadingBit(u_input.c.yyw));
}

