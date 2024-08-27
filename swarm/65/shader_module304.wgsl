struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = -(~vec4<i32>(1i, 1i, -1i, min(4116i, 1i)));
    global0 = array<Struct_2, 10>();
    let var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_clamp_i32(-4496i, var_0.x ^ 2147483647i, ~abs(countOneBits(1i)));
    return var_0.x ^ _wgslsmith_mult_i32(var_0.x, 2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-455f - 149f) * _wgslsmith_f_op_f32(-517f + -259f))), _wgslsmith_f_op_f32(floor(548f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-768f + -348f), _wgslsmith_f_op_f32(trunc(275f))))), -718f)));
    var var_1 = Struct_2(_wgslsmith_add_vec2_u32(abs(~select(vec2<u32>(u_input.d, 1u), vec2<u32>(13537u, 36011u), false)), vec2<u32>(u_input.d, select(~u_input.c, u_input.c, select(false, true, false)))), countOneBits(~(~(vec4<u32>(7680u, 1u, u_input.b, u_input.a) ^ vec4<u32>(4294967295u, 22247u, u_input.d, 0u)))));
    let var_2 = Struct_4(var_1.a.x);
    let var_3 = vec2<i32>(max(-_wgslsmith_add_i32(36012i, -2147483647i), 1i), ~((44471i << (u_input.d % 32u)) & ~(-69684i))) >> (abs(_wgslsmith_add_vec2_u32(firstTrailingBit(var_1.b.wx), ~(~var_1.a))) % vec2<u32>(32u));
    var_1 = Struct_2(var_1.a, reverseBits(vec4<u32>(var_2.a >> (u_input.a % 32u), var_1.a.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_1.b.x, var_1.b.x, u_input.c)), ~var_1.b.zwy), ~(~var_1.a.x))));
    return Struct_1(-795f, func_3(Struct_4(98200u)), 2147483647i, select(vec2<bool>(true, true), vec2<bool>(select(true, true, false), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(221f + -513f));
}

fn func_1() -> vec2<bool> {
    var var_0 = vec3<u32>(u_input.d, _wgslsmith_mult_u32(36747u, ~4294967295u), ~(~max(~48421u, u_input.c)));
    var var_1 = abs(max(var_0.x, _wgslsmith_div_u32(u_input.a, _wgslsmith_mult_u32(26942u >> (var_0.x % 32u), ~u_input.c))));
    global0 = array<Struct_2, 10>();
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-(~firstLeadingBit(2147483647i)), -1i), _wgslsmith_mod_i32(-2147483647i, -1i), _wgslsmith_clamp_i32(55926i, max(-67021i, ~abs(2147483647i)), ~_wgslsmith_add_i32(1i, abs(81908i))));
    var var_3 = func_2();
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1382f, -1044f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1434f, 764f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, _wgslsmith_f_op_f32(692f * 630f))), func_1())) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(444f * 205f)), 1079f)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1478f, var_0.x)) * _wgslsmith_f_op_f32(abs(-103f))))))), -145f);
    var var_2 = func_2();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_3 = firstLeadingBit(vec2<i32>(-(var_2.b ^ 58208i) ^ -2147483647i, var_2.c));
    var var_4 = Struct_4(_wgslsmith_dot_vec3_u32(~(min(vec3<u32>(u_input.b, u_input.d, u_input.b), vec3<u32>(u_input.a, 59491u, u_input.b)) << (vec3<u32>(u_input.d, 41462u, u_input.c) % vec3<u32>(32u))), ~(max(vec3<u32>(57077u, u_input.a, u_input.a), vec3<u32>(14201u, u_input.c, u_input.c)) >> (~vec3<u32>(0u, u_input.b, u_input.a) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-func_2().c, ~var_2.c, 43458i, var_2.c), vec2<f32>(-721f, -738f), i32(-1i) * -2147483647i);
}

