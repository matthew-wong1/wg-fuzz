struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(0i, -1i, -34684i, 2147483647i), vec4<i32>(-12359i, i32(-2147483648), -54351i, i32(-2147483648)), vec4<i32>(39338i, 1i, 20243i, 37849i), vec4<i32>(-1i, 11559i, 2147483647i, 2147483647i), vec4<i32>(-21515i, 2147483647i, 0i, -44909i), vec4<i32>(-65531i, -24633i, i32(-2147483648), 28220i), vec4<i32>(0i, -1i, 1i, 1i), vec4<i32>(-24025i, 2147483647i, 54071i, -1i), vec4<i32>(21498i, -19430i, 3346i, i32(-2147483648)), vec4<i32>(2147483647i, -3862i, 1i, 71604i), vec4<i32>(4989i, -3480i, i32(-2147483648), -1i), vec4<i32>(-12948i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 17178i, -1i, 2147483647i));

var<private> global1: Struct_1 = Struct_1(-912f, vec2<u32>(0u, 18075u), 1i);

var<private> global2: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<i32> {
    global1 = arg_1;
    var var_0 = arg_1.a;
    var_0 = _wgslsmith_f_op_f32(531f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))));
    let var_1 = vec2<f32>(-1581f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * arg_2.x)))))));
    let var_2 = arg_1;
    return select(-vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_2.c, 0i), i32(-1i) * -48221i), 0i, u_input.b.x), -_wgslsmith_add_vec3_i32(~(~vec3<i32>(-2147483647i, arg_1.c, u_input.b.x)), vec3<i32>(0i, ~33372i, select(u_input.b.x, -23925i, arg_0))), arg_0);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global2 = true;
    global1 = Struct_1(-2140f, max(~vec2<u32>(u_input.a.x >> (global1.b.x % 32u), ~u_input.a.x), select(select(~vec2<u32>(arg_0.x, global1.b.x), max(arg_0.xw, arg_0.xz), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), abs(vec2<u32>(arg_0.x, global1.b.x)), !all(vec3<bool>(true, false, false)))), ~(-37660i));
    let var_0 = all(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f)))), ~(~vec2<u32>(~arg_0.x, abs(arg_0.x))), _wgslsmith_mod_i32(-19514i, -2147483647i));
    return global1.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = array<vec4<i32>, 13>();
    let var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, -_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(-5411i, -1i))), u_input.b);
    let var_1 = all(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))) && any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), select(true, false, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-645f + -548f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-418f + arg_1.a))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, var_1))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1.a + 1603f))))));
    global1 = arg_1;
    return all(select(vec3<bool>(false, var_1, true & (4294967295u < arg_1.b.x)), select(select(!vec3<bool>(var_1, var_1, false), select(vec3<bool>(false, var_1, false), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, false, var_1)), vec3<bool>(var_1, var_1, true)), select(!vec3<bool>(false, false, var_1), vec3<bool>(false, var_1, false), vec3<bool>(var_1, true, false)), !vec3<bool>(var_1, true, true)), select(vec3<bool>(var_1, var_1, select(var_1, false, var_1)), !vec3<bool>(true, var_1, var_1), var_1)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> vec3<i32> {
    global2 = !func_4(firstLeadingBit(global1.b.x), Struct_1(_wgslsmith_f_op_f32(func_3(~vec4<u32>(u_input.a.x, u_input.a.x, 49739u, u_input.a.x))), ~(global1.b >> (vec2<u32>(1u, arg_1) % vec2<u32>(32u))), i32(-1i) * -1i));
    let var_0 = global1.c;
    global1 = Struct_1(_wgslsmith_f_op_f32(817f - -631f), global1.b, -8219i);
    let var_1 = Struct_1(-1806f, u_input.a.zz, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, -1i, global1.c, global1.c) | vec4<i32>(0i, u_input.b.x, -2147483647i, 1i), vec4<i32>(arg_0.x, global1.c, 41622i, u_input.b.x) ^ global0[_wgslsmith_index_u32(arg_1, 13u)])));
    var var_2 = true && (any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))) & !any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    return _wgslsmith_mult_vec3_i32(arg_0, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(9507i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, 821f)))))), firstLeadingBit(func_2(-func_1(false, Struct_1(-125f, global1.b, u_input.b.x), vec4<f32>(1064f, 653f, global1.a, 821f)), u_input.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 299f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, global1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a))), true)), -1519f);
}

