struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(974f), Struct_1(-717f), Struct_1(-309f), Struct_1(562f), Struct_1(1283f), Struct_1(141f), Struct_1(-1521f), Struct_1(-216f));

var<private> global2: f32;

var<private> global3: array<Struct_1, 8>;

var<private> global4: vec4<f32> = vec4<f32>(813f, 600f, 1141f, -649f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x ^ countOneBits(~u_input.b.x), countOneBits(1u)), max((vec3<u32>(u_input.c, u_input.b.x, u_input.b.x) & vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)) | abs(vec3<u32>(u_input.b.x, 27151u, u_input.c)), ~(~vec3<u32>(u_input.c, u_input.b.x, 4294967295u)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 31056u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), 41718u, u_input.c) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + -163f));
    global3 = array<Struct_1, 8>();
    var var_2 = ~_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(u_input.a, 0i, -64280i, -37556i) << (vec4<u32>(23737u, u_input.c, 4294967295u, 53422u) % vec4<u32>(32u))), -min(select(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(-32584i, -1i, 74925i, u_input.a), vec4<bool>(true, true, false, true)), -vec4<i32>(2147483647i, 0i, u_input.a, u_input.a)));
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(var_0.x, 31437u), ~22435u, u_input.b.x);
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a));
    global0 = array<vec4<bool>, 21>();
    let var_1 = u_input.a;
    let var_2 = ~(~_wgslsmith_sub_u32(4294967295u, ~u_input.c));
    return vec4<bool>(any(vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true)), _wgslsmith_f_op_f32(select(897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -250f)), any(vec2<bool>(false, false)) && any(vec3<bool>(true, false, false)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-350f)) + global4.x)), all(!vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true)), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    let var_0 = select(!arg_0.x, true, true);
    let var_1 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1269f, arg_2.a, true)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, -341f), arg_2.a))));
    global0 = array<vec4<bool>, 21>();
    let var_2 = -18363i;
    global4 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(155f, var_1.a))))), -605f, _wgslsmith_f_op_f32(abs(arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(323f * global4.x))))));
    return global4.x != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-511f, 935f))))));
}

fn func_1() -> u32 {
    var var_0 = !vec4<bool>(!func_2(), true, true, all(vec2<bool>(true, false)) && true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-483f * -299f));
    let var_2 = -3474i;
    let var_3 = 85223u == u_input.c;
    var var_4 = true | func_4(func_3(global3[_wgslsmith_index_u32((u_input.c << (1u % 32u)) & _wgslsmith_mod_u32(98589u, 4294967295u), 8u)], 4294967295u), ((vec4<i32>(-14910i, u_input.a, u_input.a, 1i) & vec4<i32>(20941i, u_input.a, 1i, -16866i)) << (reverseBits(vec4<u32>(22813u, u_input.b.x, u_input.b.x, 34606u)) % vec4<u32>(32u))) << (countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.b.x, 55149u, 0u, 42001u))) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(u_input.c, 8u)]);
    return u_input.b.x;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(~65244u, 8u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(635f, -629f, global4.x), vec3<f32>(-349f, 586f, -1303f))) * vec3<f32>(220f, 132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(2367f + 1047f)))));
    global1 = array<Struct_1, 8>();
    var var_2 = Struct_1(1000f);
    var var_3 = Struct_1(var_0.a);
    return !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a * var_2.a))), -601f, false)) > _wgslsmith_f_op_f32(var_3.a * var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    let var_0 = func_5(global3[_wgslsmith_index_u32(func_1(), 8u)], global4.x);
    var var_1 = Struct_1(global4.x);
    var var_2 = -771f;
    global0 = array<vec4<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~max(vec3<u32>(0u, 45725u, 0u), vec3<u32>(u_input.c, 1u, 50028u)), vec3<u32>(u_input.b.x, u_input.c, 4294967295u) >> (abs(vec3<u32>(u_input.c, u_input.b.x, 1u)) % vec3<u32>(32u))), u_input.a, ~u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.yxz * global4.zxz) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, global4.x, global4.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.a, -934f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.zzy)))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -41943i, 80987i, -2147483647i) | vec4<i32>(-14359i, u_input.a, u_input.a, u_input.a)), ~max(vec4<i32>(u_input.a, u_input.a, u_input.a, -23353i), vec4<i32>(u_input.a, 30040i, 0i, u_input.a))), u_input.a));
}

