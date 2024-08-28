struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = firstLeadingBit(~((2147483647i >> (u_input.c.x % 32u)) << ((u_input.b.x | 39835u) % 32u))) ^ (u_input.a.x << (~(~4294967295u) % 32u));
    let var_1 = Struct_1(countOneBits(arg_0.b.x) != select(0u, u_input.c.x, !(u_input.a.x >= u_input.a.x)), ~(vec3<u32>(countOneBits(7729u), arg_0.b.x ^ u_input.c.x, u_input.d.x) << (~_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.c.x, u_input.c.x, arg_0.b.x)) % vec3<u32>(32u))));
    let var_2 = (1u & (_wgslsmith_div_u32(36722u, 18288u) | ~(~var_1.b.x))) & (~1u & _wgslsmith_div_u32(abs(52499u), _wgslsmith_mod_u32(1u, 1u & u_input.b.x)));
    var var_3 = max(~arg_0.b.xy, ~vec2<u32>(min(4294967295u, 1u), ~_wgslsmith_div_u32(u_input.c.x, 1u)));
    var_3 = u_input.b;
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(39429u, _wgslsmith_mod_u32(6833u, u_input.d.x) << (select(42928u, 52013u, false) % 32u), 41544u, (arg_0.b.x & var_3.x) ^ abs(55622u)), (max(vec4<u32>(var_3.x, 0u, 60335u, 44066u), vec4<u32>(0u, u_input.c.x, arg_0.b.x, 9308u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 13564u, var_2, u_input.b.x), vec4<u32>(var_1.b.x, var_1.b.x, 0u, 4294967295u))) << (firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, var_3.x, arg_0.b.x), vec4<u32>(4294967295u, u_input.d.x, 1u, 4294967295u), vec4<u32>(var_1.b.x, 4294967295u, arg_0.b.x, var_2))) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, min(64988u, u_input.b.x << (u_input.c.x % 32u)), 1u, u_input.c.x), vec4<u32>(~1u, u_input.c.x, func_3(Struct_1(true, u_input.d)), ~8507u)));
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x ^ u_input.a.x, ~(-1617i))), _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), ~0i), select(vec3<i32>(-1i, u_input.a.x, -10442i) << (vec3<u32>(var_0.x, 4294967295u, var_0.x) % vec3<u32>(32u)), vec3<i32>(-40758i, u_input.a.x, 1i), any(vec3<bool>(true, false, false))))));
    var var_2 = arg_0;
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1838f, -724f)))), arg_0, false)), _wgslsmith_f_op_vec2_f32(floor(arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - -1000f), var_2.x) == -835f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1588f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -666f) - _wgslsmith_f_op_f32(min(1000f, var_2.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -318f), _wgslsmith_f_op_f32(abs(402f)))))));
    var_2 = vec2<f32>(-1821f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1430f))))));
    return _wgslsmith_f_op_f32(ceil(arg_0.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = ~1u;
    var var_2 = ~(~(reverseBits(abs(vec4<i32>(39970i, u_input.a.x, -2147483647i, u_input.a.x))) >> (vec4<u32>(_wgslsmith_mod_u32(27418u, 33106u), var_0.b.x, _wgslsmith_add_u32(u_input.b.x, 84627u), func_3(Struct_1(var_0.a, var_0.b))) % vec4<u32>(32u))));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(arg_1.a, ~u_input.d);
}

fn func_1() -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_u32(~(~(~u_input.c.x)), ~(u_input.d.x & _wgslsmith_mult_u32(4294967295u, u_input.d.x)));
    let var_1 = func_5(Struct_1(true, ~(~(~u_input.d))), func_4(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1096f, 1041f)))), -506f), Struct_1(all(vec3<bool>(true, false, false)), select(u_input.d | u_input.d, u_input.d, all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-380f, -253f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1016f, -2081f), vec2<f32>(2421f, 573f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-783f, -630f) + vec2<f32>(-786f, 815f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-570f, -1188f))))))));
    var var_2 = !var_1.a;
    var var_3 = u_input.a.x;
    var_3 = countOneBits(u_input.a.x & -1i);
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = max(vec3<i32>(_wgslsmith_mult_i32(-54161i, _wgslsmith_sub_i32(-18522i, u_input.a.x)), -16832i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, arg_1, -37764i), vec4<i32>(u_input.a.x, arg_1, u_input.a.x, u_input.a.x)))), -vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~(-1i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -1i))) >> ((vec3<u32>(~10439u, arg_0.b.x, 1u) | ~arg_0.b) % vec3<u32>(32u)));
    var var_1 = func_1();
    var_1 = func_4(arg_2, func_1(), arg_2, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) * 2464f)), 687f));
    let var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(trunc(813f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-562f, -1000f) + arg_2.x), arg_2.x))), Struct_1(all(select(vec2<bool>(arg_0.a, true), vec2<bool>(true, true), vec2<bool>(true, true))), arg_0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(arg_2.x - 320f))), arg_2, select(vec2<bool>(arg_3, all(vec2<bool>(arg_3, true))), vec2<bool>(var_1.a, !arg_3), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.x, 112f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(676f, arg_2.x) + arg_2))))));
    var_1 = func_4(vec2<f32>(-832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(trunc(arg_2.x))) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-696f, arg_2.x)))))), func_1(), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), arg_2.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1267f, -336f, true)) + -1005f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x - 614f)))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(), _wgslsmith_dot_vec4_i32(((vec4<i32>(u_input.a.x, -1i, 38659i, u_input.a.x) & vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)) & ~vec4<i32>(-5822i, -2147483647i, u_input.a.x, u_input.a.x)) << ((~vec4<u32>(u_input.c.x, 60590u, 0u, u_input.b.x) ^ ~vec4<u32>(8672u, 1u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 30981i, -18259i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, 49088i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(-1i, u_input.a.x, -5933i, u_input.a.x), vec4<i32>(-27130i, 28303i, u_input.a.x, 2147483647i)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1600f, -348f))))))), true);
    let var_1 = 32022u;
    let var_2 = _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.c, func_5(var_0, Struct_1(var_0.a, var_0.b)).b.yz), ~(~(~(~u_input.b))));
    var var_3 = -35383i;
    var_3 = u_input.a.x;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-381f)), _wgslsmith_f_op_f32(step(-1000f, -839f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724f + 109f) - _wgslsmith_f_op_f32(abs(905f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec2<f32>(-295f, -237f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1187f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(max(-875f, _wgslsmith_f_op_f32(-2229f - -328f))), _wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(floor(-569f))))), u_input.a, 14929i, select(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 54264i, 31254i), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), firstLeadingBit(vec4<i32>(u_input.a.x, 2168i, 8103i, u_input.a.x)) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 12233i, -2147483647i, 16025i), vec4<i32>(-1i, 1i, -12163i, u_input.a.x))), max(vec4<i32>(~46804i, abs(u_input.a.x), 0i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x ^ u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x))), select(vec4<bool>(true, all(vec2<bool>(false, true)), var_0.a, !var_0.a), !select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(false, false, var_0.a, var_0.a)), select(vec4<bool>(false, false, true, false), !vec4<bool>(var_0.a, var_0.a, false, var_0.a), select(vec4<bool>(true, var_0.a, true, false), vec4<bool>(var_0.a, true, var_0.a, var_0.a), true)))));
}

