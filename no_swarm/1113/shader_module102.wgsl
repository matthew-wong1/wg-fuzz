struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: f32 = 2409f;

var<private> global3: bool = false;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)));
    var var_0 = Struct_3(~(~vec2<u32>(111856u, 1u)), Struct_1(true, firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))), ~u_input.a.xy, 1u);
    global2 = 1895f;
    var_0 = Struct_3(~firstTrailingBit(select(vec2<u32>(80477u, var_0.a.x), ~vec2<u32>(var_0.a.x, var_0.b.b.x), true)), Struct_1(var_0.b.a, var_0.b.b), ~vec2<i32>(-57770i, ~(-2147483647i)), max(~(~0u), ~(~var_0.b.b.x)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, var_0.d, var_0.d), var_0.b.b), reverseBits(var_0.b.b)), select(vec4<u32>(var_0.d, var_0.b.b.x, var_0.a.x, 21616u) & vec4<u32>(80935u, var_0.d, var_0.b.b.x, var_0.b.b.x), min(var_0.b.b, vec4<u32>(var_0.a.x, var_0.d, 11232u, 47535u)), false)));
    var var_1 = var_0.b;
    return all(vec3<bool>(any(vec2<bool>(var_0.b.a, false)), all(!select(vec3<bool>(false, global1.x, true), vec3<bool>(true, true, var_0.b.a), vec3<bool>(true, false, true))), true));
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    global3 = global1.x;
    global2 = 1f;
    return select(!(!select(!vec3<bool>(false, global1.x, true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(false, true, global1.x)), global1.x || global1.x)), select(!select(vec3<bool>(true, global1.x, true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, true), vec3<bool>(false, global1.x, global1.x)), global1.x), vec3<bool>(global1.x, false, global1.x), !(!(!vec3<bool>(true, global1.x, global1.x)))), vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(530f, 229f, -730f), vec3<f32>(330f, 1887f, 1126f)))), global1.x, select(func_3(vec3<f32>(1133f, -452f, 106f)), global1.x, select(false || global1.x, false, true))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<bool>(all(select(vec3<bool>(global1.x, global1.x, global1.x), func_2(~vec3<u32>(arg_0.c, 4294967295u, 1u)), !global1.x)), false);
    let var_1 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f)), arg_0.c, Struct_1(true, arg_0.d.b), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.c, arg_0.d.b.x, 0u, 11146u), firstLeadingBit(~arg_0.d.b), firstLeadingBit(abs(arg_0.e))), arg_0.d.b));
    return _wgslsmith_f_op_f32(-169f + _wgslsmith_f_op_f32(max(-1830f, 1721f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true && !all(!vec4<bool>(global1.x, global1.x, true, false)), global1.x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(1u, 42884u, max(1u, 11743u))), 3u)])));
    let var_1 = Struct_3(abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, reverseBits(0u)), vec2<u32>(firstLeadingBit(46177u), 1u))), Struct_1(var_0.x, abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 27035u, 0u, 8573u), firstTrailingBit(vec4<u32>(57770u, 91696u, 47838u, 4294967295u)), ~vec4<u32>(0u, 1u, 3762u, 99560u)))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, ~u_input.b.x), u_input.b) ^ _wgslsmith_clamp_vec2_i32(u_input.a.zy, u_input.b, ~u_input.a.yy), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(2147483647i, var_1.c.x) & -7978i);
}

