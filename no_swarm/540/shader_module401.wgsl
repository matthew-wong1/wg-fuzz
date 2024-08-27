struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<Struct_2, 24>;

var<private> global4: array<vec2<bool>, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global1 = any(vec3<bool>(true, arg_0.x, true));
    var var_0 = ~firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x ^ 1112u));
    var var_1 = -1000f;
    var var_2 = -16640i;
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 21u)];
    return _wgslsmith_clamp_u32(4294967295u, ~4294967295u << (1u % 32u), _wgslsmith_clamp_u32(~1u, 4294967295u, ~u_input.e.x)) & reverseBits(u_input.b.x);
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = !any(vec4<bool>(true, arg_0.a.x, false, any(arg_0.b.a)));
    global2 = array<Struct_2, 29>();
    global1 = any(!(!vec4<bool>(false, true, all(vec2<bool>(true, var_0)), true)));
    let var_1 = !var_0;
    global2 = array<Struct_2, 29>();
    return func_3(vec2<bool>(false, 703f > arg_0.b.c));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    global4 = array<vec2<bool>, 18>();
    let var_0 = _wgslsmith_div_u32(abs(_wgslsmith_add_u32(~(~30626u), 0u ^ u_input.e.x)), ~u_input.e.x);
    var var_1 = Struct_2(select(vec3<bool>(true, arg_2.b.a.x, !arg_2.a.x || arg_2.b.a.x), arg_2.a, any(select(arg_2.b.a, !vec2<bool>(arg_2.a.x, true), select(vec2<bool>(false, true), global4[_wgslsmith_index_u32(arg_1.x, 18u)], arg_2.a.zy)))), global0[_wgslsmith_index_u32(16470u, 21u)]);
    let var_2 = arg_2;
    global0 = array<Struct_1, 21>();
    return -abs(firstLeadingBit(vec4<i32>(select(-1i, arg_3, true), max(1i, 0i), _wgslsmith_clamp_i32(0i, var_1.b.b, 2147483647i), 1i >> (u_input.b.x % 32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_i32(func_4(func_2(global3[_wgslsmith_index_u32(16327u, 24u)]), ~(u_input.e.zy & u_input.b.yy), global2[_wgslsmith_index_u32(56468u, 29u)], max(1i, select(u_input.c, 1i, false))) << (vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_clamp_u32(12338u, u_input.e.x, u_input.b.x)), ~u_input.e.x ^ ~u_input.e.x, u_input.b.x << (~4294967295u % 32u)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.xx), 1940i, u_input.c));
    let var_1 = true;
    var var_2 = var_0;
    let var_3 = vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(62258u, u_input.b.x ^ 553u, ~firstTrailingBit(u_input.e.x)), u_input.e));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f), 566f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1756f)) - 487f), 905f, _wgslsmith_f_op_f32(1549f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(max(-1954f, 543f)))))));
    return global2[_wgslsmith_index_u32(var_3.x, 29u)];
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_2.yyz;
    global0 = array<Struct_1, 21>();
    var var_1 = global0[_wgslsmith_index_u32(arg_2.x, 21u)];
    var var_2 = 654f;
    global2 = array<Struct_2, 29>();
    return -1358f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_mult_i32(u_input.d, -u_input.d), func_1(), vec4<u32>(1u, u_input.b.x, ~4294967295u, min(u_input.e.x, 6164u)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-262f + -322f), 375f))), 321f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + -635f), _wgslsmith_f_op_f32(f32(-1f) * -1261f))), -1000f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(972f + _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(min(200f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-274f * 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.x)), -319f))))));
    global2 = array<Struct_2, 29>();
    global1 = true;
    global1 = all(vec2<bool>(true && any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(205f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.yz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-344f, -1097f) - vec2<f32>(1558f, 835f)) - var_0.zx)))));
    global3 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yx, vec4<i32>(u_input.d, _wgslsmith_mod_i32(u_input.a.x, u_input.c) | ~(-2147483647i), u_input.d, -(u_input.c ^ 0i)) & ~(~vec4<i32>(55865i, u_input.a.x, 0i, 71864i)));
}

