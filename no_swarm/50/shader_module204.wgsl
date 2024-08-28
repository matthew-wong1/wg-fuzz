struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(21203u, 1u, 43529u, 4294967295u), vec4<u32>(13480u, 18221u, 78403u, 4294967295u), vec4<u32>(1u, 1u, 67666u, 0u), vec4<u32>(91005u, 4294967295u, 10594u, 32968u), vec4<u32>(1u, 66616u, 32424u, 4097u), vec4<u32>(73170u, 4294967295u, 44034u, 1u), vec4<u32>(65676u, 9182u, 24579u, 46931u), vec4<u32>(4294967295u, 13124u, 5221u, 0u));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = array<vec4<bool>, 4>();
    global2 = array<vec4<bool>, 4>();
    return 1085f;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1593f + arg_0)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)));
    global0 = array<vec4<u32>, 8>();
    var var_2 = vec2<bool>(all(select(vec3<bool>(arg_1.c == global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, !global1.x), !(u_input.a > 2147483647i))), var_0.c);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2441f + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1120f)))))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -262f);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1217f - 1186f), Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], u_input.a, true, u_input.c, 26137i))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 852f));
    let var_1 = u_input.d.x;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(abs(vec2<u32>(4294967295u, u_input.d.x))), _wgslsmith_mod_vec2_u32(~u_input.d, ~vec2<u32>(var_1, u_input.d.x))), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32((19771u ^ u_input.e) ^ (var_1 ^ u_input.d.x), 8u)], max(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)]))) > ~37889u;
    let var_3 = Struct_1(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_1, 8u)], vec4<u32>(32610u, var_1, 57352u, u_input.d.x)), ~33051u, reverseBits(var_1))), _wgslsmith_sub_vec4_u32(~global0[_wgslsmith_index_u32(~11273u, 8u)], _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, var_1, 4294967295u), vec4<u32>(u_input.e, 0u, 70973u, 27784u)) ^ max(vec4<u32>(u_input.e, 95558u, 0u, var_1), vec4<u32>(1u, 4294967295u, 33686u, var_1)))), -21990i, var_2, ~vec3<i32>(u_input.a, u_input.c.x, ~23176i), _wgslsmith_mod_i32(u_input.b.x, -_wgslsmith_mult_i32(u_input.c.x ^ 10486i, countOneBits(-38247i))));
    let var_4 = Struct_1(~select(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, var_1, u_input.e, 4294967295u)), var_3.a), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 69986u), vec2<u32>(29110u, var_1)), u_input.e >> (var_3.a.x % 32u), var_1, var_1), global2[_wgslsmith_index_u32(12470u, 4u)]), var_3.e, var_3.c, firstTrailingBit(~abs(var_3.d) & (vec3<i32>(41746i, 0i, var_3.b) & u_input.c)), 0i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(~vec4<u32>(86878u, 13790u, 0u, var_3.a.x), -2147483647i << (0u % 32u), all(!vec3<bool>(true, global1.x, global1.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.d.x, -2147483647i, var_4.d.x, -2147483647i), vec4<i32>(var_3.e, 2147483647i, -1i, u_input.c.x)), -6164i, 1i), -2147483647i))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, abs(u_input.b.x), arg_1.b), arg_1.d), firstTrailingBit(_wgslsmith_mult_i32(-arg_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.d.x, 8230i, arg_1.d.x), vec4<i32>(u_input.a, 5514i, arg_1.b, arg_1.d.x)))), abs(select(27573i, arg_1.d.x, true) << (46960u % 32u)), 1i) & ~(-reverseBits(min(vec4<i32>(arg_1.e, arg_1.e, u_input.c.x, 25581i), vec4<i32>(arg_1.e, 26934i, arg_1.e, u_input.a))));
    var var_1 = vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(var_0.xz, u_input.b));
    var var_2 = _wgslsmith_f_op_f32(func_3(-337f, arg_1));
    let var_3 = Struct_1(vec4<u32>(41337u, min(~(~1u), ~4294967295u), 1u, ~(~arg_1.a.x)), -2147483647i, true, _wgslsmith_add_vec3_i32((-vec3<i32>(9403i, var_1.x, 0i) & vec3<i32>(-1i, 2147483647i, 1i)) | -reverseBits(vec3<i32>(0i, var_1.x, var_0.x)), arg_1.d), -_wgslsmith_mod_i32(-var_0.x, 48824i));
    var var_4 = _wgslsmith_f_op_vec2_f32(-arg_0.zy);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], u_input.a, true, u_input.c, u_input.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1819f), _wgslsmith_f_op_f32(func_2()))), Struct_1(~global0[_wgslsmith_index_u32(min(0u, 23395u), 8u)], u_input.a, true, u_input.c | ((vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(86321u, 45121u, u_input.d.x) % vec3<u32>(32u))) ^ vec3<i32>(u_input.a, u_input.b.x, u_input.b.x)), abs(abs(6309i))));
    global2 = array<vec4<bool>, 4>();
    global2 = array<vec4<bool>, 4>();
    var var_1 = ~(~_wgslsmith_mult_i32(u_input.c.x, 1i & u_input.a) ^ -2147483647i);
    var var_2 = var_0.c | any(select(select(vec3<bool>(var_0.c, global1.x, false), vec3<bool>(global1.x, false, global1.x), global1.x), vec3<bool>(true, false, false), select(!vec3<bool>(global1.x, var_0.c, false), select(vec3<bool>(true, var_0.c, global1.x), vec3<bool>(global1.x, var_0.c, true), var_0.c), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2044f + _wgslsmith_f_op_f32(1525f * 1169f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-799f, -166f, true)) - 1104f)))), ~u_input.e, -1000f, _wgslsmith_f_op_f32(154f * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-444f, 723f)))));
}

