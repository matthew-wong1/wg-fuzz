struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = -(i32(-1i) * -abs(reverseBits(-2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, _wgslsmith_f_op_f32(f32(-1f) * -1149f)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 1u), abs(1u)), max(_wgslsmith_sub_vec2_u32(vec2<u32>(3611u, 29592u), vec2<u32>(0u, 927u)), _wgslsmith_div_vec2_u32(vec2<u32>(33971u, 4294967295u), vec2<u32>(4294967295u, 4294967295u))))), ~(~(~(-vec4<i32>(u_input.a, u_input.a, -1i, 0i)))), !vec3<bool>(select(false, true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), false), Struct_2(4294967295u));
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, ~1i), var_2.b.x, var_2.b.x);
    var_3 = -1i >> (select(672u, var_2.a.a & var_2.a.a, ~var_2.d.a <= _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.a, 50170u, 54658u), vec3<u32>(var_2.d.a, var_2.d.a, var_2.d.a)), countOneBits(3911u))) % 32u);
    return var_2.c;
}

fn func_2() -> Struct_1 {
    return Struct_1(all(select(func_3(), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) && ((_wgslsmith_div_i32(-24126i, u_input.a) <= u_input.a) || false));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = func_2();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -361f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), Struct_1(true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-639f, -180f)))) >= _wgslsmith_f_op_f32(floor(-1023f)));
    let var_1 = _wgslsmith_add_u32(abs(firstLeadingBit(1u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(10810u, 1u, 15249u, 127459u), vec4<u32>(0u, 12480u, 0u, 0u)), ~vec4<u32>(1u, 3239u, 4294967295u, 23598u)), firstLeadingBit(vec4<u32>(1u, 23518u, 0u, 1u))), 1u));
    var var_2 = select(!vec3<bool>(select(func_3().x, true, !var_0.a), !all(vec4<bool>(true, var_0.a, var_0.a, var_0.a)), !var_0.a), !(!(!func_3())), true);
    let var_3 = 0u;
    let var_4 = Struct_2(0u);
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32((vec2<u32>(1u, 16165u) & vec2<u32>(42802u, var_1)) << (~vec2<u32>(var_1, var_1) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(var_3, 1007u), vec2<u32>(0u, var_3), var_2.xy), ~vec2<u32>(1u, var_3))) | ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(82999u, var_3), vec2<u32>(1u, 4294967295u)), vec2<u32>(var_3, var_4.a)), var_1, ~vec4<u32>(_wgslsmith_div_u32(var_3, var_3) << (select(0u, var_3, false) % 32u), ~var_3 >> (var_4.a % 32u), 11349u, ~var_1), ~(~_wgslsmith_sub_u32(45251u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 13115u, 37639u), vec4<u32>(var_3, var_3, 4294967295u, var_4.a)))), vec2<u32>(~1u, ~(~_wgslsmith_mult_u32(0u, 44240u))));
}

