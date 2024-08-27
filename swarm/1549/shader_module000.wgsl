struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: vec2<u32> = vec2<u32>(28259u, 52229u);

var<private> global2: array<vec2<i32>, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = Struct_4(vec3<u32>(1u, arg_1.a.x, arg_1.a.x), arg_1.b, ~vec4<i32>(1i, select(~1i, arg_0.x, arg_1.b.a.c.x && arg_1.b.a.c.x), _wgslsmith_div_i32(var_0.x, arg_0.x) >> (4294967295u % 32u), u_input.a.x), arg_2.c.x, arg_1.e);
    let var_2 = var_1.b.e.e;
    let var_3 = global0[_wgslsmith_index_u32(71457u, 18u)];
    let var_4 = _wgslsmith_sub_i32(arg_2.a, u_input.a.x);
    return u_input.b & vec4<u32>(firstLeadingBit(arg_2.b), u_input.b.x, arg_1.b.d.b, _wgslsmith_div_u32(~arg_2.b, ~_wgslsmith_add_u32(var_3.d.b, var_3.e.b)));
}

fn func_2() -> vec2<u32> {
    global1 = u_input.b.xw;
    var var_0 = ~(~(~_wgslsmith_add_vec4_u32(u_input.b, reverseBits(vec4<u32>(1u, global1.x, 56040u, u_input.b.x)))));
    var_0 = ~min(vec4<u32>(1u, 4294967295u, 29282u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, 0u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 91113u, 35236u, u_input.b.x), u_input.b), func_3(-u_input.a.xzy, Struct_4(u_input.b.wzy, global0[_wgslsmith_index_u32(global1.x, 18u)], vec4<i32>(0i, u_input.a.x, -7547i, 17672i), true, 183f), Struct_1(0i, 0u, vec3<bool>(true, true, true), vec4<f32>(1000f, 975f, 709f, 1162f), -3197f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(416f))), _wgslsmith_f_op_f32(1000f - 663f), u_input.a.x > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), global2[_wgslsmith_index_u32(12033u, 25u)]))), _wgslsmith_f_op_f32(402f + _wgslsmith_f_op_f32(abs(-1629f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1143f - -896f)), 256f))) + vec4<f32>(_wgslsmith_f_op_f32(-290f - -1402f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(454f, -521f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(223f * _wgslsmith_f_op_f32(ceil(201f))) + _wgslsmith_f_op_f32(f32(-1f) * -609f)), 1000f));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-639f, var_1.x, -755f, -194f), vec4<f32>(-1000f, 751f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, -1000f, var_1.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) - vec4<f32>(-1725f, var_1.x, 1216f, -870f)))))) * vec4<f32>(107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - -1014f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(round(var_1.x))));
    return vec2<u32>(4294967295u, abs(~_wgslsmith_clamp_u32(~5918u, ~global1.x, _wgslsmith_clamp_u32(global1.x, 0u, global1.x))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    global2 = array<vec2<i32>, 25>();
    global0 = array<Struct_2, 18>();
    var var_0 = 21714i;
    let var_1 = false;
    global1 = _wgslsmith_mod_vec2_u32(u_input.b.yz << (u_input.b.yy % vec2<u32>(32u)), firstTrailingBit(func_2()));
    return Struct_3(u_input.b.yx, select(!select(vec3<bool>(var_1, false, false), select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, true, false), vec3<bool>(var_1, true, false)), !vec3<bool>(var_1, true, false)), select(select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, true), select(vec3<bool>(true, true, false), vec3<bool>(true, var_1, false), vec3<bool>(var_1, var_1, var_1))), !select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, false), vec3<bool>(var_1, var_1, var_1)), !(var_1 || false)), all(vec2<bool>(any(vec3<bool>(var_1, false, false)), true))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_3.d);
    global2 = array<vec2<i32>, 25>();
    var var_1 = u_input.b;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(810f - 1726f))), var_0.x, _wgslsmith_f_op_f32(arg_3.d.x + var_0.x), -819f);
    let var_3 = _wgslsmith_f_op_f32(max(-1551f, _wgslsmith_f_op_f32(round(arg_3.e))));
    return Struct_1(~_wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x), _wgslsmith_add_u32(arg_0.a.x, _wgslsmith_mod_u32(9684u, _wgslsmith_sub_u32(14326u, _wgslsmith_sub_u32(17833u, u_input.b.x)))), arg_3.c, var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-906f - 428f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(countOneBits(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-6975i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, u_input.a.x) << (u_input.b % vec4<u32>(32u))))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, true), true)), -1i, Struct_1(countOneBits(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) >> (func_1(u_input.a).a.x % 32u)), global1.x, !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(724f, -1632f, _wgslsmith_f_op_f32(abs(-499f)), _wgslsmith_f_op_f32(step(-1000f, -202f))))), -770f));
    var var_1 = Struct_4(~(~vec3<u32>(u_input.b.x, u_input.b.x, max(0u, 1u))), global0[_wgslsmith_index_u32(~firstTrailingBit(~1u), 18u)], -(~(vec4<i32>(u_input.a.x, u_input.a.x, -45258i, 41162i) ^ ~u_input.a)), !(countOneBits(u_input.a.x) != u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 642f)) + var_0.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1450f, var_0.d.x)) * _wgslsmith_f_op_f32(var_0.d.x + -242f)))));
    let var_2 = max(max(-1i, var_0.a), _wgslsmith_sub_i32(-373i << (1u % 32u), firstLeadingBit(var_0.a)) & _wgslsmith_dot_vec4_i32(var_1.c, min(~var_1.c, max(var_1.c, vec4<i32>(-10461i, var_0.a, var_1.b.d.a, u_input.a.x)))));
    let var_3 = select(~countOneBits(~(91813u | u_input.b.x)), 1u, true);
    let var_4 = (~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, -65568i), ~vec2<i32>(var_0.a, var_2), vec2<i32>(44722i, 13399i)) | _wgslsmith_clamp_vec2_i32(var_1.c.zy, vec2<i32>(var_0.a, -74211i), -u_input.a.zz)) << (var_1.a.yx % vec2<u32>(32u));
    let var_5 = var_2;
    global2 = array<vec2<i32>, 25>();
    var_0 = Struct_1(countOneBits(u_input.a.x), 0u, vec3<bool>(!func_1(vec4<i32>(12482i, -37081i, var_5, var_0.a)).b.x, var_1.d & (1u <= (4294967295u ^ var_0.b)), var_0.d.x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.e), _wgslsmith_f_op_f32(sign(-464f)))), _wgslsmith_f_op_vec4_f32(-var_1.b.d.d), _wgslsmith_f_op_f32(trunc(var_0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, abs(vec3<u32>(abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), 0u, abs(22564u))));
}

