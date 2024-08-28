struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<f32> = vec3<f32>(-377f, -526f, 348f);

var<private> global2: array<i32, 10>;

var<private> global3: vec3<i32>;

var<private> global4: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(abs(-660f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(913f)))), global1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-771f, _wgslsmith_f_op_f32(trunc(1612f)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1599f, 1000f, -1000f), vec3<f32>(-462f, -342f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-769f, 1429f, global1.x)), arg_0.yxz)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(1014f)), _wgslsmith_div_f32(-1521f, 1000f), _wgslsmith_f_op_f32(-1257f * _wgslsmith_f_op_f32(f32(-1f) * -1656f)))));
    global3 = vec3<i32>(max(-29978i, -2147483647i), _wgslsmith_mod_i32(~arg_2, u_input.a), -2147483647i);
    global4 = array<vec4<bool>, 25>();
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1342f * 1000f) + 945f), global1.x), _wgslsmith_f_op_f32(min(global1.x, global1.x)), 132f), Struct_2(11349i, global1.x <= 178f, arg_1.c), select(!(!select(arg_0.yy, arg_0.xy, true)), arg_0.xw, arg_0.yy), arg_0.zx);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.a))) + _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(-var_0.a)))), Struct_2(reverseBits(u_input.b), !select(true, true, arg_0.x), Struct_1(-(i32(-1i) * -1i))), select(vec2<bool>(var_0.d.x, (1i != global3.x) & any(arg_0)), !var_0.c, true), vec2<bool>(!(select(var_0.b.b, arg_1.b, true) && (global1.x < -1000f)), all(!(!vec3<bool>(arg_0.x, false, false)))));
    return _wgslsmith_sub_u32(23113u, 1u);
}

fn func_2() -> bool {
    let var_0 = firstLeadingBit(1u) == func_3(vec4<bool>(true, any(vec2<bool>(false, false)) || (global1.x <= global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-11256i, 2147483647i, global3.x), vec3<i32>(u_input.b, global3.x, global3.x)) == 13016i, !all(vec2<bool>(false, true))), Struct_2(_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(global3.x, u_input.b)), all(vec4<bool>(false, false, false, true)), Struct_1(-6637i)), i32(-1i) * -countOneBits(global2[_wgslsmith_index_u32(1u, 10u)]));
    var var_1 = Struct_5(var_0, u_input.d, abs(vec3<i32>(_wgslsmith_clamp_i32(global3.x, 0i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(456u, u_input.c.x), 10u)]), ~(~u_input.a), 2147483647i)));
    return -422f != _wgslsmith_div_f32(-1590f, _wgslsmith_f_op_f32(ceil(global1.x)));
}

fn func_1() -> vec2<bool> {
    let var_0 = !(!(!vec2<bool>(false, func_2())));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f + global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1175f + _wgslsmith_div_f32(global1.x, 691f))))), Struct_2(_wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(global3.x, u_input.a)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 33019i, 11066i), ~u_input.e)), false, Struct_1(u_input.a)), vec2<bool>(_wgslsmith_div_i32(global3.x, global2[_wgslsmith_index_u32(76190u, 10u)] >> (26452u % 32u)) == (global2[_wgslsmith_index_u32(~u_input.c.x, 10u)] ^ ~16825i), true), select(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x), !var_0, false), var_0, false));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(var_1.a))));
    var var_3 = var_2.x;
    var var_4 = ~13898u;
    return select(vec2<bool>(true, true), var_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(~1i));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(23152u, u_input.d << (firstLeadingBit(15765u) % 32u)), firstLeadingBit(u_input.c.yy | u_input.c.yx) ^ (abs(u_input.c.yy) >> (u_input.c.zx % vec2<u32>(32u)))), u_input.c.x, _wgslsmith_dot_vec4_u32((_wgslsmith_div_vec4_u32(vec4<u32>(14901u, u_input.d, u_input.c.x, 39356u), vec4<u32>(74472u, u_input.c.x, u_input.d, 32418u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 93616u), vec4<u32>(u_input.d, u_input.c.x, u_input.d, u_input.c.x)) % vec4<u32>(32u))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u), vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.d, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 0u, 0u, 1922u), vec4<u32>(u_input.d, 4294967295u, u_input.c.x, 5932u))))));
    let var_2 = !vec3<bool>(any(!func_1()), -1120f <= global1.x, (false || any(global4[_wgslsmith_index_u32(u_input.d, 25u)])) && true);
    let var_3 = ~_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.a, var_0.a.a, var_0.a.a, global3.x), vec4<i32>(global3.x, 0i, 0i, u_input.e)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(u_input.d, u_input.d)), var_1.x, u_input.c.x, var_1.x) % vec4<u32>(32u)), ~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, var_0.a.a, 0i, global3.x), vec4<i32>(-1i, u_input.e, var_0.a.a, 2147483647i))));
    global2 = array<i32, 10>();
    global0 = var_2.x || true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(~_wgslsmith_dot_vec4_i32(var_3, vec4<i32>(var_0.a.a, var_0.a.a, 25692i, -12000i)), global3.x)));
}

