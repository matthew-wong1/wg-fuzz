struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global2: array<vec3<f32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    let var_0 = arg_0.a;
    var var_1 = ~(-(vec3<i32>(global1.x, 0i, global1.x) >> (~vec3<u32>(arg_1, u_input.b.x, arg_1) % vec3<u32>(32u)))) | (vec3<i32>(global1.x, -(global1.x | 1202i), -9550i) << ((u_input.a & global0[_wgslsmith_index_u32(17309u, 17u)]) % vec3<u32>(32u)));
    global2 = array<vec3<f32>, 5>();
    let var_2 = !select(vec3<bool>(true, any(vec3<bool>(false, false, false)), true), vec3<bool>(!all(vec4<bool>(true, true, true, false)), true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))));
    global2 = array<vec3<f32>, 5>();
    return !vec3<bool>(true, !(!any(var_2.xx)), !all(select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, true, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-844f, 353f, 978f, -1533f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1102f, -542f, 1882f, 523f), vec4<f32>(546f, -1036f, -586f, 268f), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(634f, -826f, 2135f, 1000f), vec4<f32>(-553f, -184f, 495f, -400f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1635f, -1059f, -1000f, 1802f)), true)))), u_input.a.x);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f - 981f)) * -405f), _wgslsmith_div_f32(_wgslsmith_div_f32(-265f, -874f), _wgslsmith_f_op_f32(floor(720f))), _wgslsmith_f_op_f32(abs(799f)), _wgslsmith_f_op_f32(ceil(2568f))));
    global1 = vec2<i32>(-9571i, i32(-1i) * -(i32(-1i) * -20567i));
    let var_2 = _wgslsmith_add_vec4_u32(abs(countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(40331u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 8579u)))), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x << (u_input.b.x % 32u), u_input.b.x) & vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.b.x), u_input.a.x, ~u_input.a.x, ~u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(5081u, u_input.a.x, u_input.a.x, u_input.a.x) & ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 0u), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 63257u, 16141u, 0u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x))), all(var_0.zz)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, 387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = !vec2<bool>(true, (~105528u <= u_input.a.x) || (global1.x < _wgslsmith_sub_i32(global1.x, 0i)));
    let var_1 = Struct_2(0u);
    var var_2 = func_2();
    let var_3 = var_1.a;
    var var_4 = u_input.a.xx;
    return Struct_2(~u_input.a.x | 39768u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 5>();
    var var_0 = _wgslsmith_f_op_f32(sign(-1000f));
    var var_1 = func_1(-869f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(331f)), 1000f, -593f, 909f)))));
    var var_3 = var_2;
    var var_4 = vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(min(var_3.a.x, 143f)));
    var var_5 = _wgslsmith_mult_u32(var_1.a, u_input.b.x) << (func_1(_wgslsmith_div_f32(func_2().a.x, _wgslsmith_f_op_f32(-var_2.a.x))).a % 32u);
    var_5 = 1u;
    let var_6 = select(!any(vec3<bool>(all(vec4<bool>(false, false, false, true)), var_4.x > -560f, any(vec4<bool>(true, true, true, false)))), (global1.x & -_wgslsmith_mult_i32(global1.x, 19375i)) == -_wgslsmith_add_i32(~(-25329i), -4256i), false);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_u32(countOneBits(firstTrailingBit(4294967295u)), var_1.a)));
}

