struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global1: vec3<f32>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec3<i32>, 30>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = global1.yy;
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    let var_2 = var_0.x;
    let var_3 = vec2<f32>(-719f, -1061f);
    return u_input.b.x | 19818u;
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    global2 = countOneBits(min(~(vec2<i32>(global2.x, u_input.c.x) | -u_input.a.yz), u_input.a.zz));
    var var_0 = global2.x;
    let var_1 = countOneBits(global2.x);
    var_0 = max(_wgslsmith_clamp_i32(~u_input.c.x, abs(var_1), var_1), u_input.a.x);
    global1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -883f))), _wgslsmith_f_op_f32(max(1893f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-215f, arg_1), _wgslsmith_div_f32(arg_1, arg_1)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-126f, global1.x, global1.x))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, arg_1, arg_1)))))))));
    return 64171u;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = select(global0[_wgslsmith_index_u32(select(func_3(firstTrailingBit(func_2(global2.x, global1.x, Struct_2(u_input.b), Struct_2(vec3<u32>(u_input.b.x, 32683u, 122838u)))), _wgslsmith_f_op_f32(-1164f - _wgslsmith_f_op_f32(-global1.x))), u_input.b.x, all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), u_input.c.x >= -2147483647i))), 25u)], vec3<bool>(true, 3794u == abs(_wgslsmith_dot_vec4_u32(vec4<u32>(7912u, 17231u, 49880u, u_input.b.x), vec4<u32>(u_input.b.x, 29900u, u_input.b.x, 0u))), true), !select(vec3<bool>(any(vec2<bool>(true, true)), u_input.a.x == arg_0.x, true), global0[_wgslsmith_index_u32(func_3(~4294967295u, global1.x), 25u)], true));
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 6234u)), _wgslsmith_add_vec3_u32(vec3<u32>(72u, 69439u, u_input.b.x), u_input.b))), 30465u);
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-5910i, u_input.a.x), arg_0.xy, var_0.x), vec2<i32>(6386i, arg_0.x)), arg_0.x), arg_0.x, -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.c.x)), ~vec4<i32>(10447i, -1i, -2147483647i, -1i))), firstTrailingBit(~global2.x), u_input.a.x);
    let var_3 = -740f;
    let var_4 = Struct_2(vec3<u32>(countOneBits(1u), ~var_1, ~(~var_1 & 120111u)));
    return 577f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1758f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-225f - _wgslsmith_f_op_f32(func_1(u_input.a))), -874f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)))))));
    global1 = _wgslsmith_f_op_vec3_f32(-var_0);
    var var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -2070f)), _wgslsmith_f_op_f32(1992f + _wgslsmith_f_op_f32(func_1(-(vec3<i32>(18597i, 2147483647i, -23768i) ^ u_input.c)))), vec3<i32>(-2147483647i >> (1u % 32u), max(max(firstLeadingBit(global2.x), _wgslsmith_mult_i32(2147483647i, u_input.c.x)), -2147483647i), 16644i), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global1.x)), 1u);
}

