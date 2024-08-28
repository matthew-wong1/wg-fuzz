struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4) -> f32 {
    global0 = array<vec2<bool>, 5>();
    var var_0 = vec4<bool>(arg_1.c && any(global0[_wgslsmith_index_u32(36373u, 5u)]), all(select(!select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(0u, 5u)], arg_1.c), select(select(vec2<bool>(false, arg_1.c), global0[_wgslsmith_index_u32(1925u, 5u)], arg_1.c), global0[_wgslsmith_index_u32(~1u, 5u)], vec2<bool>(arg_1.c, true)), !any(vec3<bool>(true, true, arg_1.c)))), all(select(!(!vec4<bool>(true, false, arg_1.c, arg_1.c)), !vec4<bool>(arg_1.c, true, arg_1.c, false), true)), true);
    global0 = array<vec2<bool>, 5>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1230f - -593f), _wgslsmith_f_op_f32(abs(-899f))))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, 1784f, arg_1.b.x) * vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, -828f))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(reverseBits(arg_0), ~vec3<i32>(arg_1.a, arg_1.a, arg_0.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, 52705i), -3945i)), u_input.a | vec2<i32>(~3627i, u_input.a.x), any(select(vec3<bool>(arg_1.c, var_0.x, false), !vec3<bool>(var_0.x, var_0.x, true), arg_1.c)), vec4<u32>(4294967295u, countOneBits(~1u), countOneBits(70763u), ~_wgslsmith_mult_u32(0u, 0u))));
    var var_2 = Struct_5(false, arg_1.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.x, -690f, 1106f, arg_1.b.x)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2596f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x * var_2.b.x)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1436f)), _wgslsmith_f_op_f32(-arg_1)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b)), _wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), ~(i32(-1i) * -2147483647i)), vec2<i32>(u_input.a.x, 5840i), arg_2.c, _wgslsmith_add_vec4_u32(~vec4<u32>(4410u, 1u, arg_0, 24645u) ^ vec4<u32>(4355u, arg_0, arg_0, arg_0), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0, 8465u, 0u), vec4<u32>(1u, arg_0, arg_0, 4294967295u)), vec4<u32>(arg_0, arg_0, arg_0, 12213u)))));
    var var_1 = vec3<i32>(-1i, _wgslsmith_div_i32(max(-69637i | var_0.b.c.x, firstTrailingBit(-1i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-11357i, var_0.b.c.x, arg_2.a), vec3<i32>(20027i, var_0.b.c.x, arg_2.a)))) >> (arg_0 % 32u), 2147483647i);
    let var_2 = reverseBits(countOneBits(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, -28725i, u_input.a.x), vec4<i32>(1i, -61434i, u_input.a.x, var_0.b.c.x)), firstLeadingBit(var_0.b.c.x), arg_2.a) ^ abs(vec4<i32>(9114i, 0i, arg_2.a, -43667i) ^ vec4<i32>(0i, 1i, arg_2.a, 1i))));
    var_1 = var_2.wxz;
    var var_3 = Struct_4(var_1.x, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * arg_1)))), arg_2.b.x, 771f, _wgslsmith_f_op_f32(-arg_1)), var_0.b.d);
    return _wgslsmith_f_op_f32(var_3.b.x * arg_2.b.x);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_4(2147483647i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1529f - _wgslsmith_f_op_f32(f32(-1f) * -314f)))), _wgslsmith_f_op_f32(func_4(reverseBits(firstLeadingBit(0u)), _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a.x, 16800i, 54597i), Struct_4(u_input.a.x, vec4<f32>(-1185f, 483f, -1041f, -1000f), false))), Struct_4(select(u_input.a.x, u_input.a.x, false), vec4<f32>(1026f, -1666f, 1495f, -318f), any(vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(946f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(834f * -296f), 1025f, true)))), !(!(!all(vec2<bool>(false, false)))));
    let var_1 = ~(~(~(~6932u)));
    global0 = array<vec2<bool>, 5>();
    var var_2 = -556f;
    let var_3 = ~(vec2<u32>(19644u, var_1) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, var_1)), var_1) % vec2<u32>(32u)));
    return vec3<bool>(any(!select(vec4<bool>(true, true, false, true), !vec4<bool>(true, var_0.c, false, true), var_0.c)), true, var_0.c);
}

fn func_1() -> f32 {
    global0 = array<vec2<bool>, 5>();
    global0 = array<vec2<bool>, 5>();
    var var_0 = func_2();
    let var_1 = Struct_4(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x & u_input.a.x, reverseBits(2147483647i), -1i), abs(vec4<i32>(u_input.a.x, u_input.a.x, -21781i, u_input.a.x))), u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1462f, -433f, -1000f, 530f) - vec4<f32>(-4089f, -104f, -849f, -461f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, -301f, 1000f, 1898f))), var_0.x))), !(0i <= _wgslsmith_add_i32(~u_input.a.x, i32(-1i) * -39007i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(var_1.b));
    return _wgslsmith_f_op_f32(-var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f - -773f)), _wgslsmith_f_op_f32(min(1402f, _wgslsmith_f_op_f32(func_1()))), !any(vec3<bool>(false, false, false)))), -1179f, 781f), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -(~countOneBits(u_input.a)), false, countOneBits(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    global0 = array<vec2<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<u32>(var_0.e.x, var_0.e.x, ~(~32604u)));
}

