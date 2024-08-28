struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_3(0u != _wgslsmith_add_u32(68967u, _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.c, 57825u, 82774u)))));
    let var_1 = u_input.a.zy;
    var_0 = Struct_3(!var_0.a);
    var_0 = Struct_3(all(vec3<bool>(u_input.c <= var_1.x, true, true)));
    return ~(-u_input.b.x);
}

fn func_1() -> Struct_2 {
    let var_0 = ~(~(~max(u_input.c, u_input.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f + -1000f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-508f + _wgslsmith_f_op_f32(1354f + 590f)), _wgslsmith_f_op_f32(f32(-1f) * -770f)))), false, func_2(609f), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(true, true)), u_input.a);
    let var_2 = true;
    let var_3 = vec4<i32>(-2147483647i, var_1.c, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, var_1.c, u_input.b.x) & vec4<i32>(1i, var_1.c, var_1.c, u_input.d), abs(vec4<i32>(-19681i, 3885i, u_input.d, var_1.c))), ~u_input.b.x), var_1.c), 1i);
    let var_4 = Struct_1(1001f, any(!vec4<bool>(var_2, all(vec3<bool>(var_1.d.x, true, false)), true, true)), var_3.x, var_1.d, u_input.a);
    return Struct_2(vec3<u32>(var_4.e.x, var_4.e.x, u_input.c), var_3.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1000f))))), false, u_input.d, var_1.d, ~(~(~u_input.a))));
}

fn func_3() -> vec2<f32> {
    let var_0 = u_input.a.zzz | ~reverseBits(select(u_input.a.yyw, vec3<u32>(54392u, u_input.a.x, 86463u), true));
    let var_1 = func_1();
    var var_2 = u_input.b;
    var var_3 = Struct_3(!var_1.c.b);
    var var_4 = Struct_3(true);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a, var_1.c.a) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(521f, var_1.c.a))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.a, 728f), vec2<f32>(714f, var_1.c.a))), vec2<f32>(-753f, -421f))) + vec2<f32>(var_1.c.a, 568f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(firstTrailingBit(vec3<u32>(~1u, _wgslsmith_mult_u32(u_input.a.x, u_input.c), 1u))), u_input.b.x, Struct_1(_wgslsmith_f_op_f32(trunc(1122f)), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, true))), 1i, vec2<bool>(true, true), u_input.a));
    let var_1 = vec4<u32>(u_input.c, ~firstLeadingBit(4294967295u), abs(0u), u_input.a.x);
    var var_2 = var_0.c;
    let var_3 = func_1();
    var_2 = Struct_1(289f, any(vec4<bool>(firstLeadingBit(var_3.a.x) >= var_2.e.x, true, var_0.c.d.x, _wgslsmith_f_op_f32(min(var_0.c.a, var_2.a)) >= _wgslsmith_f_op_f32(f32(-1f) * -598f))), ~var_2.c, func_1().c.d, vec4<u32>(var_0.a.x, ~_wgslsmith_add_u32(max(9073u, u_input.c), min(var_2.e.x, var_3.a.x)), var_1.x, reverseBits(~var_1.x)));
    var_2 = func_1().c;
    var_2 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-680f, 283f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(824f, 177f))), var_3.c.d)) * vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.a), var_2.a))));
}

