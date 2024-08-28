struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), u_input.c.x < 28225i), vec2<bool>(true, true))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(112f)), -676f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_f32(ceil(-921f))))) * -747f), -1013f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -819f)))), 326f);
    let var_2 = var_1;
    var var_3 = (var_0.a && true) && all(vec3<bool>(false, all(select(vec3<bool>(true, var_0.a, false), vec3<bool>(true, true, var_0.a), false)), var_0.a));
    let var_4 = select(select(!(!(!vec2<bool>(var_0.a, var_0.a))), vec2<bool>(true, any(vec3<bool>(false, true, true))), select(vec2<bool>(!var_0.a, all(vec2<bool>(false, var_0.a))), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, false)), true)), vec2<bool>(any(!vec4<bool>(false, var_0.a, var_0.a, var_0.a)), true), true);
    return select(var_4, !select(!var_4, var_4, true), !vec2<bool>(true, false && (26887u <= u_input.b.x)));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(select(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.c.x, 24547i, u_input.e.x)), vec4<i32>(u_input.c.x, u_input.c.x, -45484i, -21940i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, u_input.e.x, u_input.c.x, u_input.c.x), vec4<i32>(-1i, u_input.c.x, -4763i, u_input.c.x)), false), vec3<u32>(~195u & (u_input.d << (34898u % 32u)), ~1u, 4294967295u), Struct_1(true)), !func_3(u_input.c), -55677i, vec3<i32>(u_input.c.x, 2147483647i, ~(-1i)));
    let var_1 = -437f;
    var var_2 = true;
    let var_3 = Struct_4(~var_0.d);
    let var_4 = vec2<bool>(var_0.a.c.a, true);
    return vec3<bool>((min(u_input.d | var_0.a.b.x, abs(1u)) != ~u_input.a.x) & true, var_4.x, all(select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.b.x, var_0.a.c.a, var_0.b.x, true)), select(vec4<bool>(var_4.x, false, arg_0, false), vec4<bool>(true, true, true, true), var_0.a.c.a))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(!func_2(false))));
    let var_1 = !var_0;
    var var_2 = Struct_2(abs(_wgslsmith_div_vec4_i32(-(~vec4<i32>(u_input.c.x, 38797i, -2147483647i, u_input.c.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.c.x, 61810i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 1557i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, -2147483647i, u_input.c.x, -72i), vec4<i32>(u_input.c.x, u_input.c.x, 42607i, u_input.c.x))))), u_input.b.xyz, Struct_1(var_1));
    var_2 = Struct_2(-select(vec4<i32>(_wgslsmith_mod_i32(var_2.a.x, -29281i), reverseBits(u_input.c.x), var_2.a.x, var_2.a.x << (u_input.b.x % 32u)), ~var_2.a, !(!vec4<bool>(false, var_0, var_2.c.a, var_0))), vec3<u32>(~(~20731u), var_2.b.x, _wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(4294967295u, var_2.b.x))), Struct_1(var_2.c.a));
    let var_3 = var_2.b.x;
    return Struct_1(!var_2.c.a && (var_2.a.x != _wgslsmith_dot_vec2_i32(countOneBits(u_input.c.yx), var_2.a.yw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~0u);
    let var_1 = 133434u;
    var var_2 = var_0.a;
    let var_3 = u_input.c.x;
    var_2 = func_3(u_input.c).x;
    let var_4 = vec3<u32>(~1u, u_input.d, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.b.x, ~var_1, 36980u), u_input.a.x));
    var_2 = var_3 < select(var_3, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.e.x, -23893i), 1i) ^ (~2147483647i | countOneBits(u_input.c.x)), any(select(vec3<bool>(true, var_0.a, true), vec3<bool>(true, var_0.a, var_0.a), var_0.a)) || (~63421u >= (var_1 | 8882u)));
    var_0 = Struct_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1378f + -1058f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(trunc(-239f))))))));
}

