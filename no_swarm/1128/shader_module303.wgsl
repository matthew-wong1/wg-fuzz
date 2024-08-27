struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = global0.b;
    var_0 = Struct_1(!(global0.e < 448f), 0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.b.c)) + var_0.c));
    var_0 = Struct_1(arg_0.b.a | any(vec2<bool>(var_0.c.x >= var_0.c.x, true & arg_0.b.a)), select(2147483647i, select(2147483647i, min(arg_0.b.b & var_0.b, ~52940i), countOneBits(var_0.b) <= (arg_0.b.b | -1i)), any(vec3<bool>(true, arg_0.a.x || false, global0.d.x != 39516u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3114f * -414f) - global0.e), -309f, _wgslsmith_f_op_f32(1845f + _wgslsmith_f_op_f32(-251f - global0.b.c.x)), _wgslsmith_div_f32(-107f, arg_0.b.c.x))));
    var var_1 = countOneBits(var_0.b);
    let var_2 = Struct_1(!((_wgslsmith_div_i32(arg_0.b.b, -17467i) & ~arg_0.b.b) < global0.b.b), ~(-2147483647i), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2066f)), arg_0.e))), global0.b.c.x, var_0.c.x, var_0.c.x));
    return select(vec3<bool>(true, true, all(select(!vec4<bool>(var_0.a, true, false, var_2.a), vec4<bool>(true, true, var_2.a, false), vec4<bool>(global0.b.a, arg_0.b.a, false, true)))), select(arg_0.c, vec3<bool>(global0.b.a, global0.c.x, !any(vec4<bool>(true, false, false, true))), 18675i >= global0.b.b), true);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = Struct_2(!global0.c.zy, Struct_1(!(all(global0.a) && !global0.a.x), 0i, _wgslsmith_f_op_vec4_f32(-global0.b.c)), select(vec3<bool>(false, any(vec3<bool>(true, true, global0.a.x)) | (global0.b.b < -2147483647i), global0.b.a), vec3<bool>(true && global0.a.x, !global0.c.x, !all(vec4<bool>(global0.b.a, true, true, false))), global0.b.a), ~(~(~u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.b.c.x)))));
    let var_0 = select(!select(global0.c, global0.c, select(vec3<bool>(true, true, false), func_3(Struct_2(global0.a, global0.b, global0.c, vec2<u32>(4294967295u, 829u), 413f)), true)), !vec3<bool>(global0.b.a, !(581f < global0.b.c.x), select(func_3(Struct_2(global0.c.zz, global0.b, global0.c, u_input.a, 404f)).x, true, true)), func_3(Struct_2(func_3(Struct_2(vec2<bool>(global0.c.x, false), Struct_1(true, global0.b.b, vec4<f32>(global0.e, global0.e, -254f, global0.b.c.x)), global0.c, u_input.a, -664f)).xz, Struct_1(all(vec4<bool>(global0.c.x, false, false, global0.c.x)), global0.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c.x, global0.b.c.x, global0.e, global0.b.c.x))), select(!global0.c, vec3<bool>(true, global0.c.x, global0.c.x), all(vec3<bool>(global0.c.x, false, false))), vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 45895u), vec3<u32>(4294967295u, global0.d.x, 1u))), _wgslsmith_f_op_f32(-global0.b.c.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(global0.e - global0.b.c.x), _wgslsmith_f_op_f32(floor(global0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.e)) + _wgslsmith_f_op_f32(-global0.e)), 191f);
    global0 = Struct_2(vec2<bool>(_wgslsmith_f_op_f32(var_1.x + 1172f) > var_1.x, abs(u_input.a.x & 1u) > ~global0.d.x), Struct_1(all(global0.a), _wgslsmith_dot_vec3_i32(-(vec3<i32>(2147483647i, global0.b.b, global0.b.b) & vec3<i32>(1i, global0.b.b, global0.b.b)), abs(vec3<i32>(25735i, 0i, global0.b.b) | vec3<i32>(65791i, 0i, global0.b.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-213f, -1021f, -731f, global0.e))))), select(select(vec3<bool>(true, true, false), select(!global0.c, var_0, !vec3<bool>(false, false, global0.a.x)), select(vec3<bool>(true, global0.b.a, var_0.x), vec3<bool>(true, false, var_0.x), var_0.x & var_0.x)), !func_3(Struct_2(vec2<bool>(global0.c.x, var_0.x), Struct_1(global0.b.a, 0i, vec4<f32>(var_1.x, -1148f, var_1.x, 149f)), var_0, vec2<u32>(27627u, 4294967295u), -103f)), var_0), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, ~global0.d), ~vec2<u32>(1u, 4294967295u) ^ vec2<u32>(arg_0, u_input.a.x)), global0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(ceil(1188f))) * -924f), global0.e));
    global0 = Struct_2(!vec2<bool>(true, var_0.x), Struct_1(global0.a.x, -max(~(-1i), 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b.c) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -576f, _wgslsmith_f_op_f32(-var_1.x), 148f))), vec3<bool>(false, all(select(!vec4<bool>(false, true, global0.c.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, global0.c.x), var_0.x)), u_input.a.x == firstTrailingBit(1u)), vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(~global0.d.x, global0.d.x >> (49879u % 32u))), ~arg_0 | ~(~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1294f)))));
    return Struct_2(!vec2<bool>(global0.a.x & (0u >= global0.d.x), true), Struct_1(global0.b.a, global0.b.b, var_1), global0.c, ~u_input.a, var_1.x);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = func_2(_wgslsmith_dot_vec2_u32(u_input.a & vec2<u32>(global0.d.x, reverseBits(global0.d.x)), vec2<u32>(4294967295u, 3665u)));
    global0 = func_2(u_input.a.x);
    global0 = func_2(~u_input.a.x);
    var var_0 = Struct_1(global0.a.x, -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b.c, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.c.x, global0.e, global0.b.c.x, -881f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, global0.b.c.x, global0.e, global0.b.c.x)))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(-489f, -305f, global0.a.x)), 1139f, -338f, _wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(exp2(global0.b.c.x))));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec2<bool>(false, any(select(!vec4<bool>(true, false, false, global0.b.a), vec4<bool>(false, true, global0.c.x, true), !vec4<bool>(global0.b.a, false, true, true)))), func_1(-_wgslsmith_sub_vec2_i32(vec2<i32>(global0.b.b, -30626i), vec2<i32>(-71123i, global0.b.b)) ^ vec2<i32>(select(38953i, global0.b.b, false), -global0.b.b)), select(global0.c, !global0.c, !(!(!global0.c))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(max(global0.d, vec2<u32>(88036u, 46583u)), _wgslsmith_add_vec2_u32(u_input.a >> (vec2<u32>(21161u, 43482u) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 1u))), global0.d, abs(~max(global0.d, vec2<u32>(54888u, 27065u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_f32(-global0.b.c.x))) - -1223f));
    var var_0 = reverseBits(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(global0.b.b, 1i), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.b.b, global0.b.b), vec2<i32>(40778i, 2147483647i)), vec2<i32>(global0.b.b, -7255i) << (u_input.a % vec2<u32>(32u))), global0.a), _wgslsmith_sub_vec2_i32(abs(select(vec2<i32>(1i, -51506i), vec2<i32>(global0.b.b, 2147483647i), global0.a)), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(global0.b.b, 0i)), vec2<i32>(-1i, 2147483647i)))));
    var_0 = -(~(-30972i));
    let var_1 = !(!global0.c.x);
    var var_2 = vec4<i32>(global0.b.b, abs(-6904i), -28677i, i32(-1i) * -global0.b.b);
    var_2 = firstTrailingBit(-vec4<i32>(global0.b.b, _wgslsmith_dot_vec3_i32(var_2.xwy, vec3<i32>(var_2.x, -8265i, -19560i)), var_2.x, var_2.x)) << ((~vec4<u32>(u_input.a.x, 0u, abs(global0.d.x), 0u) & ~vec4<u32>(global0.d.x, ~7018u, 88349u, 18624u)) % vec4<u32>(32u));
    var var_3 = !global0.a;
    var_0 = _wgslsmith_mult_i32(-1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~((u_input.a.x ^ 1u) & _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), global0.d.x));
}

