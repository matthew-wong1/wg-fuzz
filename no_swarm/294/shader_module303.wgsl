struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<i32, 4>;

var<private> global2: array<bool, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = vec3<bool>(arg_0.x, true, !global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(arg_2, 0u)), 25u)]);
    var var_1 = 0u & _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(1725u, u_input.e, 4294967295u)), ~(firstTrailingBit(vec3<u32>(arg_2, u_input.b, u_input.e)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, arg_2, u_input.b), vec3<u32>(7284u, 3290u, 4402u)) % vec3<u32>(32u))));
    global1 = array<i32, 4>();
    var var_2 = Struct_1(-1000f, ~_wgslsmith_div_u32(abs(~4294967295u), 1238u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(109f + -249f), -322f, arg_0.x)), 2579f)), _wgslsmith_f_op_f32(trunc(943f))), arg_0.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(108f, -113f)), _wgslsmith_f_op_f32(-681f * var_2.a), _wgslsmith_f_op_f32(select(538f, var_2.a, true)))))));
    return 30534u;
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 15>();
    let var_0 = u_input.e;
    global1 = array<i32, 4>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1687f + 157f)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstLeadingBit(~66528u & func_3(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 25u)], true), -17338i, u_input.e)), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0, countOneBits(0u)), _wgslsmith_clamp_u32(29399u ^ var_0, _wgslsmith_sub_u32(4294967295u, 1u), countOneBits(76812u))), ~1u), 4294967295u), 15u)];
    return var_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = ~(~vec3<u32>(4294967295u, func_2(_wgslsmith_f_op_f32(-1997f - 708f), _wgslsmith_f_op_f32(abs(1433f))), max(u_input.e, u_input.e)));
    var var_1 = ~(~(~min(-22991i, u_input.c.x)) >> (~(~(~var_0.x)) % 32u));
    let var_2 = -43197i;
    var var_3 = vec3<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.e, 4294967295u | _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(u_input.e, 4294967295u, u_input.e)), _wgslsmith_add_u32(4294967295u, u_input.e)) & ~0u, u_input.b);
    var_1 = _wgslsmith_dot_vec3_i32(max(abs(reverseBits(u_input.a)) ^ u_input.d.zzx, countOneBits(u_input.a)), u_input.a);
    return Struct_1(1935f, _wgslsmith_mult_u32(max(reverseBits(~var_0.x), abs(_wgslsmith_clamp_u32(1u, var_0.x, var_3.x))), var_3.x), _wgslsmith_f_op_f32(-1140f - 536f), true);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = array<i32, 4>();
    global1 = array<i32, 4>();
    let var_0 = arg_1;
    global1 = array<i32, 4>();
    return 58801u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(-31576i, func_1(!global2[_wgslsmith_index_u32(u_input.e, 25u)] && true), any(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 25u)], true, false)))), 3623u), 15u)];
    let var_1 = vec2<i32>(-1i) * -(u_input.a.zz << (vec2<u32>(countOneBits(0u), 0u) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(min(var_0.a, var_0.c)), !var_0.d)) + _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-1534f - 695f))))) - var_0.c);
    var var_3 = var_1.x;
    let var_4 = !all(!select(vec4<bool>(var_0.d, global2[_wgslsmith_index_u32(u_input.e, 25u)], var_0.d, var_0.d), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, var_0.d, global2[_wgslsmith_index_u32(var_0.b, 25u)]), true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 25u)], global2[_wgslsmith_index_u32(9881u, 25u)], global2[_wgslsmith_index_u32(u_input.e, 25u)], false)));
    let x = u_input.a;
    s_output = StorageBuffer(34134i);
}

