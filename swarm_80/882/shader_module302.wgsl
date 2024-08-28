struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: u32;

var<private> global2: array<bool, 17>;

var<private> global3: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<u32>, 22>();
    var var_0 = Struct_3(true, Struct_2(arg_1, firstTrailingBit(-30090i), vec3<u32>(4294967295u, arg_1.b.x, _wgslsmith_add_u32(9653u, _wgslsmith_mult_u32(u_input.b, arg_1.a.x))), 22525i), 4294967295u);
    var var_1 = Struct_1(arg_1.a, ~(~vec4<u32>(abs(0u), select(arg_1.b.x, 21585u, arg_1.c), arg_1.b.x, ~u_input.b)), ~(select(arg_1.b.x, 98344u, var_0.b.a.c) ^ reverseBits(var_0.b.a.a.x)) < ~(~(~33727u)));
    global1 = max(~0u, ~_wgslsmith_clamp_u32(~abs(var_0.c), 1u, ~1u >> (_wgslsmith_add_u32(var_1.b.x, arg_1.a.x) % 32u)));
    let var_2 = arg_1.c;
    return var_1.a.x;
}

fn func_2() -> vec3<u32> {
    var var_0 = ~38432i;
    global1 = u_input.c.x;
    global2 = array<bool, 17>();
    let var_1 = -u_input.e.zy;
    var var_2 = Struct_2(Struct_1(~firstTrailingBit(~vec2<u32>(30228u, 1u)), min(u_input.c & ~vec4<u32>(u_input.c.x, 23080u, 0u, u_input.b), u_input.c), global2[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_clamp_i32(max(var_1.x, ~var_1.x), var_1.x, -23835i), u_input.c.xzy & vec3<u32>(u_input.a, u_input.a, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.a))), -firstLeadingBit(-firstLeadingBit(1i)));
    return vec3<u32>(~_wgslsmith_add_u32(15599u ^ var_2.a.b.x, 1u), ~func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(901f, 1000f))), Struct_1(var_2.a.a, vec4<u32>(var_2.a.b.x, 4294967295u, var_2.a.a.x, 0u), false)), ~reverseBits(1u | u_input.c.x)) ^ u_input.c.wzz;
}

fn func_1(arg_0: u32) -> vec4<f32> {
    let var_0 = func_2() >> (vec3<u32>(~(~firstLeadingBit(arg_0)), u_input.b, 33946u) % vec3<u32>(32u));
    var var_1 = 1f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1045f * -1964f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(753f - 630f) - _wgslsmith_f_op_f32(-1098f - 604f))), global2[_wgslsmith_index_u32(~(~4294967295u), 17u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1779f))) - _wgslsmith_f_op_f32(604f - _wgslsmith_f_op_f32(-1549f * -1396f))))), _wgslsmith_f_op_f32(f32(-1f) * -353f));
    let var_3 = ~(u_input.b ^ _wgslsmith_clamp_u32(30975u ^ _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 1u, _wgslsmith_mult_u32(~16575u, arg_0)));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, _wgslsmith_div_f32(-778f, var_2.x), _wgslsmith_f_op_f32(round(1302f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = min(1u, u_input.c.x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(32202u, var_1)), vec2<u32>(u_input.c.x, countOneBits(51997u))), abs(_wgslsmith_mult_vec4_u32(u_input.c, reverseBits(vec4<u32>(u_input.a, 96945u, var_1, 8730u)))), global2[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_sub_i32(-49322i, select(u_input.d, i32(-1i) * -2147483647i, true)), vec3<u32>(u_input.a >> (_wgslsmith_dot_vec4_u32(select(u_input.c, vec4<u32>(1u, 54143u, 0u, 4294967295u), global3[_wgslsmith_index_u32(u_input.a, 26u)]), ~u_input.c) % 32u), ~(~u_input.a), 121418u), 1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(func_1(0u));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_3.wyx, var_3.xwx, global2[_wgslsmith_index_u32(0u, 17u)])))), var_3.zwx) + var_3.yyx), _wgslsmith_f_op_vec3_f32(sign(var_3.zyw)));
    var var_5 = 1f;
    global0 = array<vec2<u32>, 22>();
    let var_6 = Struct_2(Struct_1(~u_input.c.zy, vec4<u32>(~select(u_input.c.x, u_input.c.x, true), firstTrailingBit(var_2.c.x) >> (u_input.c.x % 32u), u_input.b, ~1u), any(select(vec4<bool>(true, true, true, false), select(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(var_2.a.b.x, 26u)], false), vec4<bool>(global2[_wgslsmith_index_u32(var_2.c.x, 17u)], true, false, false)))), firstTrailingBit(max(countOneBits(u_input.e.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.d, var_2.d, u_input.e.x), vec3<i32>(u_input.e.x, 1i, 1i), vec3<i32>(var_2.d, 0i, 2059i)), min(u_input.e, u_input.e)))), u_input.c.zwz, _wgslsmith_mult_i32(-951i, 19495i));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-24778i, -2147483647i, ~var_2.b) << (vec3<u32>(var_2.c.x, reverseBits(19017u), _wgslsmith_mult_u32(166u, var_1)) % vec3<u32>(32u)), u_input.e, !select(select(vec3<bool>(var_6.a.c, global2[_wgslsmith_index_u32(1u, 17u)], false), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 17u)]), false), !vec3<bool>(var_6.a.c, var_6.a.c, false), -1000f >= var_3.x)), max(var_1, 0u), max(u_input.e.yy, u_input.e.yx));
}

