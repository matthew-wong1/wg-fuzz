struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global1 = array<i32, 32>();
    var var_0 = ~(~(~(~firstLeadingBit(vec3<u32>(46330u, u_input.a.x, 86250u)))));
    global1 = array<i32, 32>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(542f, -396f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, 172f) - vec2<f32>(-1040f, -1364f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(237f, 680f) * vec2<f32>(-1079f, -1634f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, -1000f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -117f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1671f, -1003f) - vec2<f32>(-1284f, 1000f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1800f, 287f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, 1000f))))));
    global0 = -u_input.b.x;
    return !all(vec2<bool>(false, all(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_1(u_input.b.xwz, ~69519u, ~(~u_input.a));
    var var_1 = !func_3();
    let var_2 = -6198i;
    let var_3 = u_input.b;
    let var_4 = Struct_2(vec2<i32>(var_3.x, firstTrailingBit(-2604i)), Struct_1(u_input.b.wxy, _wgslsmith_clamp_u32(0u, firstLeadingBit(9417u), var_0.b), u_input.a), vec3<u32>(~firstTrailingBit(1u), 48060u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
    return any(vec2<bool>(true, true)) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f)) == _wgslsmith_f_op_f32(-arg_0));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(35692u, arg_0.c.x) & arg_0.c.x, ~(~(arg_0.c.x | ~u_input.a.x)), u_input.a.x, select(~(~_wgslsmith_mod_u32(arg_0.b, 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, 115639u), arg_0.c.x), select(func_2(-1519f, vec4<f32>(-1970f, -234f, -1172f, -777f)), true, all(vec4<bool>(true, true, false, true))) | (all(vec4<bool>(false, false, false, true)) & func_2(-488f, vec4<f32>(-2725f, 579f, 852f, -1690f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-385f, _wgslsmith_f_op_f32(round(-374f)), _wgslsmith_f_op_f32(1264f * -728f), _wgslsmith_div_f32(1271f, 1000f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-186f, 370f, -891f, -339f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, 1126f, 1801f, 1124f) - vec4<f32>(291f, -565f, -464f, 1070f))))))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-574f - var_1.x) - _wgslsmith_f_op_f32(845f * var_1.x))))) + vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(select(var_1.x, -728f, true))), 1956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f - 489f) + _wgslsmith_f_op_f32(trunc(var_1.x)))));
    var var_4 = countOneBits(_wgslsmith_mod_u32(0u, ~var_0.x | 13664u));
    return _wgslsmith_f_op_f32(-811f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_3.x) - var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(940f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(u_input.b.x, 1i, -2147483647i), u_input.a.x, u_input.a))), 1f))));
    var var_1 = 1200f;
    let var_2 = _wgslsmith_add_u32(33795u, select(firstLeadingBit(u_input.a.x), u_input.a.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))));
    var var_3 = _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(~u_input.a, u_input.a)), u_input.a) << (u_input.a % vec2<u32>(32u));
    global1 = array<i32, 32>();
    var_3 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, 31612u, u_input.a.x), ~vec4<u32>(u_input.a.x, 23371u, var_2, u_input.a.x)) | 36229u), 1u);
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 437f) + 764f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1522f) * 720f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(1239f * var_0.x)))), vec2<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, 30233i), u_input.b.x), u_input.b.x)), u_input.a.x, 4294967295u);
}

