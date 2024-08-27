struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(24884i, 20677i, -1i, 2147483647i, 35884i, -1i, -1i, -11281i, 1i, i32(-2147483648), 2147483647i, -1i, -40240i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> bool {
    return !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= -1000f) != (firstTrailingBit(abs(arg_0)) >= -958i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x <= arg_0.x, global0[_wgslsmith_index_u32(22664u, 13u)] > u_input.c.x, 1u < arg_1.x), !any(vec4<bool>(false, false, false, true))), !select(vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), -26812i != (u_input.c.x ^ 45388i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(263f, 1000f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-962f - 250f), _wgslsmith_f_op_f32(-arg_0.x), true)))))), arg_0);
    var var_1 = u_input.a;
    let var_2 = var_0.a.x;
    global0 = array<i32, 13>();
    let var_3 = Struct_1(vec3<bool>(select(var_0.d.x <= _wgslsmith_div_f32(var_0.c, var_0.c), true, var_0.a.x), all(vec4<bool>(!var_0.b.x, any(var_0.a.yz), !var_0.b.x, true)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 2110u)) == ~(89865u >> (arg_1.x % 32u))), select(!select(var_0.b, select(var_0.b, var_0.b, true), vec4<bool>(false, false, var_0.a.x, false)), vec4<bool>(true, true, true, var_0.a.x), vec4<bool>(!var_0.b.x, !var_0.b.x && (true && var_0.b.x), false, !(u_input.c.x >= -9438i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.x - -843f))), _wgslsmith_f_op_f32(-arg_0.x))), arg_0);
    return var_3.b.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<f32> {
    global0 = array<i32, 13>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2120f, -265f, _wgslsmith_f_op_f32(1363f - 152f), arg_1.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, -512f)) * vec4<f32>(arg_1.d.x, arg_1.c, 591f, 266f))))), u_input.a, abs(-arg_0.xy), ~_wgslsmith_clamp_u32(min(u_input.a, 14139u) << (~4294967295u % 32u), u_input.a, 4294967295u));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a), _wgslsmith_f_op_vec4_f32(-var_0.a), vec4<bool>(true, func_2(var_0.c.x, Struct_3(var_0.a, 32315u, u_input.c.yx, u_input.a), u_input.a), arg_1.a.x, arg_1.a.x))))), all(!vec4<bool>(true, func_3(vec3<f32>(var_0.a.x, arg_1.d.x, -785f), vec3<u32>(1u, var_0.b, u_input.a)), arg_1.b.x, arg_1.a.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.zx, _wgslsmith_f_op_vec2_f32(floor(arg_1.d.yx)))));
    let var_3 = countOneBits(min(~0u, u_input.a)) == _wgslsmith_mult_u32(u_input.a, var_0.b);
    return var_1.xzy;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = all(vec4<bool>(arg_0.b.a.x, func_3(arg_1.a.yyy, vec3<u32>(1u, 1u, 101342u) | _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.d, arg_1.b, 4294967295u), vec3<u32>(4294967295u, 64488u, 4294967295u))), !(!arg_0.b.b.x) | !(arg_0.b.b.x | false), arg_0.b.b.x));
    var var_1 = arg_1.b >= _wgslsmith_mod_u32(0u, u_input.a);
    let var_2 = select(select(!(!(!arg_0.b.b)), !arg_0.b.b, arg_0.b.b.x), arg_0.b.b, select(all(select(!arg_0.b.b, arg_0.b.b, arg_1.a.x == -278f)), (arg_0.b.d.x < -322f) || any(vec2<bool>(var_0, false)), true));
    var_1 = var_2.x;
    let var_3 = select(vec4<bool>(var_2.x & var_0, abs(arg_1.d) > 1u, false && (!var_0 & func_2(arg_1.c.x, arg_1, u_input.a)), true), !vec4<bool>(false, any(select(vec2<bool>(true, arg_0.b.b.x), var_2.yy, vec2<bool>(var_0, var_2.x))), (arg_1.c.x == -8785i) || true, var_0 || true), var_0);
    return StorageBuffer(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f + arg_0.b.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(587f, 200f) + _wgslsmith_div_f32(arg_0.b.d.x, arg_1.a.x)))), 1u, u_input.a, ~_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(43042u, u_input.a, arg_1.d)), ~(~vec3<u32>(arg_1.d, 60839u, 1015u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(-33036i, Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), 483f, _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, true, true), 514f, vec3<f32>(-432f, -1284f, 394f)))))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-201f, -122f, -843f, -1577f), _wgslsmith_f_op_vec4_f32(vec4<f32>(183f, 1004f, 134f, -1052f) * vec4<f32>(-625f, 387f, -568f, -445f))))), u_input.a, u_input.c.xz << (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), u_input.a));
}

