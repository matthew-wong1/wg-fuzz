struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<u32>, 6>;

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    return vec4<bool>(all(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), false, all(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)))), all(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<bool> {
    global0 = arg_1.a.x;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0))) * arg_0));
    return select(select(func_3(), !(!(!vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x))), !vec4<bool>(any(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), true, arg_1.a.x, any(arg_1.a))), !select(vec4<bool>(arg_1.b.x >= arg_0.x, true, true, true), select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), select(vec4<bool>(true, false, false, arg_1.a.x), vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), true)), arg_1.a.x), !(!select(select(vec4<bool>(arg_1.a.x, true, true, arg_1.a.x), vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), arg_1.a.x), vec4<bool>(false, arg_1.a.x, false, arg_1.a.x), any(vec4<bool>(false, false, true, arg_1.a.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(select(vec4<bool>(select(!arg_1.a.x, true, true), select(false, true, arg_1.b.x > -358f), true || (-981f > arg_0.b.x), any(func_2(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_1))), select(vec4<bool>(select(arg_1.a.x, false, arg_1.a.x), !arg_1.a.x, arg_1.a.x | arg_1.a.x, true), vec4<bool>(true, arg_0.a.x, !arg_1.a.x, false), true), true), select(!(!vec4<bool>(arg_1.a.x, true, false, true)), vec4<bool>(arg_1.a.x, any(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false)), true, all(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x))), !select(select(vec4<bool>(true, arg_1.a.x, false, arg_0.a.x), vec4<bool>(false, arg_1.a.x, true, false), vec4<bool>(false, true, arg_1.a.x, false)), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, true, true))), vec4<bool>(true, true, true, (~u_input.b << (1u % 32u)) > -9445i));
    let var_1 = var_0;
    global0 = all(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -1402f, arg_0.b.x) + vec3<f32>(arg_1.b.x, arg_0.b.x, global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(select(-318f, -387f, false)), 423f, _wgslsmith_f_op_f32(trunc(-222f))), false | arg_0.a.x)), Struct_1(vec2<bool>(u_input.a.x > u_input.a.x, !var_0.x), global1.zz)));
    return global3[_wgslsmith_index_u32(~1u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<bool>(true, true), global1.xz), Struct_1(vec2<bool>(true, false), vec2<f32>(_wgslsmith_f_op_f32(729f + _wgslsmith_f_op_f32(f32(-1f) * -182f)), global1.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(sign(global1.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-484f + var_0.b.x) + var_0.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))))), var_0.b.x, var_0.a);
    var var_3 = Struct_2(-769f, -232f, vec2<bool>(func_3().x, select(var_2.c.x, true, all(vec2<bool>(true, false)))));
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 1f, _wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), 1f, var_2.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-197f, var_1, var_0.b.x))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, -418f), vec3<f32>(-714f, var_0.b.x, 330f), func_2(vec3<f32>(694f, 1179f, var_2.a), Struct_1(var_3.c, var_0.b)).wxy))))), !select(select(!vec3<bool>(var_0.a.x, false, true), !vec3<bool>(var_0.a.x, var_0.a.x, var_2.c.x), func_3().ywz), !func_2(vec3<f32>(-673f, 884f, 2712f), global3[_wgslsmith_index_u32(1u, 4u)]).wyx, select(vec3<bool>(true, true, true), !vec3<bool>(var_3.c.x, false, var_2.c.x), any(vec2<bool>(false, false))))));
    var var_4 = ~vec2<u32>(_wgslsmith_clamp_u32(1u, ~_wgslsmith_mult_u32(21960u, 38376u), firstLeadingBit(4294967295u)), _wgslsmith_mod_u32(select(_wgslsmith_clamp_u32(4294967295u, 37646u, 1u), 0u, true), firstLeadingBit(reverseBits(0u))));
    let var_5 = var_4.x >= ~(~select(_wgslsmith_mult_u32(var_4.x, var_4.x), var_4.x, true));
    var var_6 = min(~(_wgslsmith_div_vec2_u32(~vec2<u32>(var_4.x, 0u), vec2<u32>(var_4.x, 1u)) << (vec2<u32>(_wgslsmith_mod_u32(68002u, 4294967295u), ~var_4.x) % vec2<u32>(32u))), abs(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, 4294967295u), vec2<u32>(37200u, var_4.x)), ~var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~vec3<i32>(-43288i, 45372i, -7261i) >> (firstLeadingBit(global2[_wgslsmith_index_u32(var_6.x, 6u)]) % vec3<u32>(32u))), -select(select(vec3<i32>(1i, u_input.b, u_input.a.x), vec3<i32>(60563i, -46558i, u_input.b), vec3<bool>(false, var_0.a.x, true)), vec3<i32>(u_input.a.x, 15018i, u_input.a.x), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1480f, global1.x))))), 57548u, select(countOneBits(~vec2<u32>(4294967295u, 105268u)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(var_6.x, 39617u), _wgslsmith_add_vec2_u32(vec2<u32>(var_6.x, 52095u), vec2<u32>(var_4.x, var_4.x))), vec2<bool>(true != !var_5, false)), _wgslsmith_mod_vec2_i32(-abs(max(u_input.a, vec2<i32>(56781i, 1i))), vec2<i32>(~u_input.a.x, _wgslsmith_sub_i32(0i, u_input.b) | max(u_input.b, u_input.a.x))));
}

