struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> i32 {
    let var_0 = min(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(reverseBits(u_input.c.x), u_input.b), 0u), u_input.c << (select(u_input.c << ((u_input.c | u_input.c) % vec3<u32>(32u)), (u_input.c ^ u_input.c) >> (u_input.c % vec3<u32>(32u)), vec3<bool>(true, all(vec3<bool>(true, true, true)), false)) % vec3<u32>(32u)));
    return -(13772i << (_wgslsmith_mult_u32(var_0.x, u_input.d) % 32u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    return arg_0.x;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_2(countOneBits(u_input.e.x << ((func_3(arg_1.zw, Struct_1(arg_0, u_input.e.x), u_input.e.x) >> (func_3(vec2<u32>(52119u, 0u), Struct_1(true, u_input.e.x), 2147483647i) % 32u)) % 32u)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(25514u, 60419u, u_input.d, 23280u), firstTrailingBit(arg_1)), _wgslsmith_mult_u32(~(123557u >> (1u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1, arg_1), arg_1 | vec4<u32>(arg_1.x, 53464u, arg_1.x, 1u)))), -4992i);
    var var_1 = select(select(vec3<bool>(select(arg_0, false, any(vec3<bool>(arg_0, arg_0, true))), any(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, true, arg_0, true))), true), !vec3<bool>(any(vec4<bool>(true, arg_0, true, true)), arg_0, u_input.b >= 0u), select(!vec3<bool>(true, true, arg_0), vec3<bool>(all(vec4<bool>(false, false, false, arg_0)), all(vec2<bool>(arg_0, arg_0)), arg_0), select(vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, false), false), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false), true)))), select(!vec3<bool>(arg_0, false, arg_0), !select(!vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, arg_0), any(vec3<bool>(false, false, false))), vec3<bool>(arg_0, arg_0, u_input.e.x > select(-2147483647i, var_0.a, arg_0))), !arg_0);
    let var_2 = min(firstLeadingBit(_wgslsmith_div_i32(i32(-1i) * -36178i, select(0i, reverseBits(u_input.e.x), arg_0))), select(func_1(), u_input.e.x, true));
    let var_3 = Struct_3(all(!select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, true, var_1.x, arg_0), false)), _wgslsmith_f_op_f32(-1f));
    var_1 = !(!select(vec3<bool>(false, !arg_0, false | var_1.x), vec3<bool>(all(vec3<bool>(arg_0, var_1.x, arg_0)), var_3.a, !var_3.a), any(!vec3<bool>(var_3.a, var_3.a, false))));
    return _wgslsmith_f_op_f32(1238f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.b)) * var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f * var_3.b)))) * _wgslsmith_f_op_f32(f32(-1f) * -1033f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(4294967295u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(47531u, 4294967295u, ~15755u), ~u_input.c)));
    let var_1 = func_1();
    let var_2 = ~u_input.c.zx;
    var var_3 = -666f;
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, vec4<u32>(42589u, 1u, u_input.b, var_2.x))) - _wgslsmith_f_op_f32(-1245f * 818f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f - 1026f) * 1242f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, 1499u), min(~select(u_input.d, _wgslsmith_mult_u32(u_input.a.x, 1u), true), 0u), var_2.x, ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_1, var_1, -1i), vec4<i32>(var_1, -2147483647i, 21986i, -2147483647i) << (vec4<u32>(1u, u_input.b, 0u, var_2.x) % vec4<u32>(32u))), vec4<i32>(1i, var_1, u_input.e.x, 2147483647i));
}

