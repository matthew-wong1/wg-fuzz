struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: Struct_5 = Struct_5(-714i, false, 1i, vec4<bool>(false, true, false, false));

var<private> global2: array<vec4<u32>, 7>;

var<private> global3: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 4294967295u), vec2<u32>(7948u, 0u), vec2<u32>(23837u, 7015u), vec2<u32>(26457u, 0u), vec2<u32>(91419u, 39463u), vec2<u32>(57262u, 90196u), vec2<u32>(1u, 33417u), vec2<u32>(4294967295u, 0u), vec2<u32>(53346u, 4294967295u), vec2<u32>(26937u, 4294967295u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: Struct_3) -> bool {
    global3 = array<vec2<u32>, 11>();
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    return any(global1.d.yzx);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = !select(!select(global1.d, vec4<bool>(global1.b, global1.b, false, true), global1.d), vec4<bool>(global1.d.x, true, min(global1.c, u_input.b) < (27917i >> (arg_0 % 32u)), true && !global1.b), select(!(!vec4<bool>(global1.d.x, global1.d.x, false, false)), global1.d, !func_3(2147483647i, Struct_5(1i, false, -16354i, global1.d), Struct_3(global1.d.x, global1.d.x, 18618i, global1.d.yx, Struct_1(true, 2147483647i, -3200i, arg_1.x)))));
    var var_1 = all(vec2<bool>(any(select(var_0.zz, !vec2<bool>(global1.d.x, var_0.x), vec2<bool>(global1.d.x, global1.d.x))), all(select(vec3<bool>(global1.b, false, false), vec3<bool>(false, true, var_0.x), true)) & true));
    var var_2 = Struct_1(any(select(global1.d, vec4<bool>(false, all(vec3<bool>(true, true, false)), true, true), global1.d.x)), 36437i | abs(u_input.a), global1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-537f)))))))));
    let var_3 = ~(~vec4<u32>(u_input.d | arg_0, abs(1u), arg_0, 1u) & firstTrailingBit(countOneBits(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d))));
    let var_4 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c, var_2.b, -1i, 0i), global0[_wgslsmith_index_u32(u_input.d, 32u)]), vec4<i32>(var_2.b, u_input.a, u_input.a, global1.a)) >> (21232u % 32u)), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(-var_2.b, -16443i), 46637i), _wgslsmith_add_i32(global1.a, -30309i), global1.c);
    return ~33023u << (0u % 32u);
}

fn func_1() -> Struct_2 {
    var var_0 = global1.a | ~4937i;
    var var_1 = ~(-(vec3<i32>(-1i) * -vec3<i32>(2147483647i, global1.a, 30846i)));
    let var_2 = _wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.d, u_input.d), min(~vec2<u32>(u_input.d, u_input.d), global3[_wgslsmith_index_u32(6939u, 11u)])), select(global3[_wgslsmith_index_u32(countOneBits(14469u), 11u)], _wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(20838u, 11u)], global3[_wgslsmith_index_u32(func_2(u_input.d, vec3<f32>(166f, -1003f, 646f)), 11u)]), global1.d.wy) | _wgslsmith_mod_vec2_u32(max(vec2<u32>(u_input.d, 28634u) << (global3[_wgslsmith_index_u32(1u, 11u)] % vec2<u32>(32u)), vec2<u32>(u_input.d, 36092u)), global3[_wgslsmith_index_u32(15179u, 11u)]), global3[_wgslsmith_index_u32(8456u << (~u_input.d % 32u), 11u)]);
    global3 = array<vec2<u32>, 11>();
    var var_3 = !select(!select(global1.d.xx, vec2<bool>(true, true), u_input.d < var_2.x), global1.d.xx, vec2<bool>(true == (global1.d.x && global1.b), !(!global1.d.x)));
    return Struct_2(~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-806f + -1986f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(758f, -699f)) * -342f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1084f)) * _wgslsmith_f_op_f32(floor(-768f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1091f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(641f))) * _wgslsmith_f_op_f32(f32(-1f) * -568f))), func_2(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(0u, var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1037f, -2228f, 628f)), vec3<f32>(731f, -1036f, -346f), vec3<bool>(global1.b, var_3.x, var_3.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2202f, -1000f, -272f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d;
    var var_1 = func_1();
    global0 = array<vec4<i32>, 32>();
    var var_2 = Struct_5(u_input.c, var_0.x, ~2147483647i, !(!select(global1.d, !vec4<bool>(var_0.x, true, var_0.x, global1.b), var_1.a < 1u)));
    var_1 = func_1();
    global1 = Struct_5(~(-21486i), -1245f >= _wgslsmith_f_op_f32(select(var_1.b.x, -1000f, global1.d.x)), u_input.b, !global1.d);
    let var_3 = ~(~vec3<i32>(~1i, 20606i, var_2.a)) & -(vec3<i32>(var_2.c ^ var_2.a, u_input.c, _wgslsmith_mult_i32(4597i, -1i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(global1.a, 2147483647i, 35368i) << (vec3<u32>(0u, var_1.a, var_1.c) % vec3<u32>(32u)), -vec3<i32>(-58016i, global1.c, 12140i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x);
}

