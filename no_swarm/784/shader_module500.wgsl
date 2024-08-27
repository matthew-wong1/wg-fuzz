struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<i32>(-19756i, i32(-2147483648), -25311i), -6896i, 22643u, vec2<f32>(-1426f, 283f)), Struct_1(vec3<i32>(-1i, -1i, -9032i), i32(-2147483648), 4294967295u, vec2<f32>(-1017f, 339f)), Struct_1(vec3<i32>(36621i, i32(-2147483648), -10231i), 20392i, 13361u, vec2<f32>(-1446f, 2735f)), Struct_1(vec3<i32>(32340i, i32(-2147483648), 0i), 2147483647i, 4294967295u, vec2<f32>(-477f, 1043f)), Struct_1(vec3<i32>(50342i, 1i, 55363i), -10195i, 27448u, vec2<f32>(1481f, 1000f)), Struct_1(vec3<i32>(-17072i, 0i, 411i), 3660i, 0u, vec2<f32>(596f, -678f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = ~88510u;
    var var_1 = vec4<bool>(any(select(!select(vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, false), vec3<bool>(false, false, true)), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(arg_0, any(vec4<bool>(arg_0, true, false, arg_0)), false))), arg_0, any(!select(!vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0, false, false), all(vec3<bool>(arg_0, arg_0, false)))), !arg_0);
    global0 = array<Struct_1, 6>();
    let var_2 = ~(~2996u);
    var_1 = vec4<bool>(!(!all(vec2<bool>(false, var_1.x))), !(false || all(!vec2<bool>(var_1.x, true))), _wgslsmith_div_u32(arg_3.c, 31337u) < ~select(var_2 & 4294967295u, 118157u ^ arg_1.c, true), true);
    return false;
}

fn func_2() -> StorageBuffer {
    let var_0 = 2147483647i == u_input.b;
    let var_1 = vec3<bool>(func_3(any(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), var_0)), global0[_wgslsmith_index_u32(firstTrailingBit(31458u), 6u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(30220u, 55998u, 53365u, 1u), vec4<u32>(0u, 0u, 23000u, 27660u)), max(countOneBits(vec4<u32>(61017u, 0u, 1u, 0u)), firstTrailingBit(vec4<u32>(7514u, 0u, 0u, 11895u)))), 6u)], Struct_1(abs(abs(vec3<i32>(u_input.b, u_input.a, u_input.b))), _wgslsmith_mult_i32(~(-2147483647i), 1i), min(1u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-264f, -1000f), vec2<f32>(1195f, 289f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, -303f))))), select(false, var_0, !var_0), !all(select(!vec3<bool>(var_0, false, false), !vec3<bool>(true, true, var_0), true)));
    global0 = array<Struct_1, 6>();
    var var_2 = all(select(var_1.yy, vec2<bool>(true, true), var_1.x)) & !(!all(vec4<bool>(false, true, var_0, false)) & var_0);
    global0 = array<Struct_1, 6>();
    return StorageBuffer(-1000f, ~(~select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 0u, 8550u), !var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1615f))));
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = ~arg_0;
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_1(vec3<i32>(var_0.x, _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(~arg_0.x, -u_input.a)), 15966i), arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_2 = select(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.a, ~vec3<i32>(-2147483647i, -4497i, -1932i)) | abs(-var_1.a), var_1.a), var_1.a, any(vec3<bool>((var_1.b >= u_input.b) || false, all(vec2<bool>(true, true)), true)));
    let var_3 = 1u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec2<i32>(~(~13864i), max(u_input.a << (1u % 32u), 26127i)) | firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.a))));
}

