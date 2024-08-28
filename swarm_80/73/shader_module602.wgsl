struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_2(!select(vec4<bool>(true, true, u_input.a >= u_input.a, false), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(all(vec4<bool>(true, false, false, false)), true, true, true)), Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec4<bool>(true, true, true, true), -796f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(258f, 219f, -1918f) + vec3<f32>(3200f, 1000f, -874f)))))), Struct_1(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false)), vec2<bool>(true, 0i > u_input.a), vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), !vec4<bool>(any(vec3<bool>(true, true, true)), true, false, u_input.a == u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2092f) - -107f)), true);
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(-17265i, u_input.a, -2147483647i, u_input.a)), countOneBits(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, 53547i, u_input.a, -5085i)), vec4<i32>(u_input.a, u_input.a, 1i, -1i) << (vec4<u32>(arg_0.x, 1u, 4294967295u, arg_0.x) % vec4<u32>(32u)))), vec4<i32>(-23234i << (arg_0.x % 32u), u_input.a, u_input.a, reverseBits(90162i) << (arg_0.x % 32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, abs(-2147483647i)), select(abs(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)) << (~vec4<u32>(85340u, 16565u, 0u, arg_0.x) % vec4<u32>(32u)), ~vec4<i32>(14802i, -1i, u_input.a, u_input.a), !select(false, false, false)), vec4<i32>(~(-20524i), countOneBits(abs(u_input.a)), ~(-7204i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a, u_input.a, -55525i, 46314i), vec4<i32>(u_input.a, 0i, 27293i, 52467i)), select(vec4<i32>(-2147483647i, -14510i, 1i, -1i), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), var_0.d.b)))));
    var var_2 = var_0;
    var var_3 = u_input.a;
    let var_4 = var_0.d;
    return !(!(!(!var_0.d.b)));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(vec4<bool>(true, select(true, true, true), any(vec2<bool>(true, true)), !any(vec2<bool>(true, false))), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<bool>(true, true, all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(round(1980f)) != _wgslsmith_f_op_f32(abs(286f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1256f, -2685f) + _wgslsmith_div_f32(-1118f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1023f, 937f, -1000f) - vec3<f32>(1305f, -1821f, -1191f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1173f, 1217f, 353f)))))))), Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)), true), vec4<bool>(true, true, true, true), 1f), true & select(select(select(false, true, false), true, all(vec2<bool>(false, false))), true, true));
    var_0 = Struct_2(func_3(~(~(~vec3<u32>(1u, 0u, 1u)))), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.c)))), var_0.b, any(select(vec4<bool>(true, var_0.b.a.x, !var_0.d.b.x, false), !func_3(vec3<u32>(1u, 4294967295u, 42398u)), func_3(firstTrailingBit(vec3<u32>(0u, 1u, 24617u))))));
    let var_1 = ~(~0u << (select(_wgslsmith_sub_u32(_wgslsmith_mod_u32(5670u, 60060u), 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 11420u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), all(func_3(vec3<u32>(4294967295u, 1u, 119985u)))) % 32u));
    var var_2 = Struct_2(var_0.d.b, var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-760f, var_0.c.x)), var_0.d.c, 306f)), Struct_1(vec2<bool>(false, !select(true, var_0.a.x, var_0.e)), !var_0.b.b, _wgslsmith_f_op_f32(max(var_0.d.c, var_0.c.x))), (any(!vec3<bool>(var_0.a.x, var_0.b.b.x, var_0.e)) && var_0.b.b.x) || any(!var_0.b.a));
    var_0 = Struct_2(func_3(~vec3<u32>(var_1, ~6446u, _wgslsmith_sub_u32(var_1, var_1))), var_2.d, var_0.c, Struct_1(!var_0.a.wy, !(!(!var_2.b.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(466f))))), !var_2.b.a.x);
    return var_0.b.c;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 1340f);
    let var_1 = select(!func_3(~vec3<u32>(18352u, 0u, 59488u)).x && (true && !(-2006f != var_0)), true, !(-1135f < _wgslsmith_f_op_f32(trunc(var_0))) && true);
    let var_2 = Struct_2(func_3(max(max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 27038u, 0u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(23032u, 70742u, 0u)))), Struct_1(func_3(~(~vec3<u32>(40553u, 56075u, 67193u))).zx, vec4<bool>(!var_1, true, !var_1, select(true, false, false)), _wgslsmith_f_op_f32(var_0 - -1108f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - 677f), -600f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))))), Struct_1(!(!vec2<bool>(false, var_1)), select(vec4<bool>(true, true, var_1, any(vec2<bool>(var_1, var_1))), !vec4<bool>(true, var_1, false, true), all(!vec3<bool>(var_1, var_1, var_1))), 554f), true);
    var var_3 = _wgslsmith_mult_i32(countOneBits(~reverseBits(u_input.a)), i32(-1i) * -arg_0) & -55968i;
    let var_4 = var_2;
    return !var_4.a.x && ((_wgslsmith_mod_i32(1i, 2147483647i | arg_0) | countOneBits(~u_input.a)) >= ~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(select(true, !func_1(-52180i), func_1(_wgslsmith_sub_i32(-2952i, u_input.a))) | all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), func_3(vec3<u32>(52798u, 4294967295u, 38123u)).xxy, true)));
    var var_1 = 4801u;
    let var_2 = countOneBits(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 12950u), vec3<u32>(1u, 1u, 1u))), 1u));
    var_1 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 4294967295u, 25446u) ^ countOneBits(vec3<u32>(27659u, var_2, 9537u)), ~vec3<u32>(var_2, var_2, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1781f, 2957f, 3208f) - vec3<f32>(1567f, -412f, -1624f))))), u_input.a, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 87995u), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_2, 1u), vec2<u32>(var_2, 1u)))), vec2<u32>(var_2, 1u)), max(countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_2, 4294967295u, 0u), vec4<u32>(140244u, var_2, var_2, 1u)), vec4<u32>(14566u, var_2, var_2, 4294967295u), firstLeadingBit(vec4<u32>(1u, 4294967295u, var_2, 0u)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2, var_2, var_2, var_2), vec4<u32>(var_2, 1u, 25015u, 56569u)))), ~vec2<i32>(-18025i, -1i & u_input.a) | _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 19049i), vec2<i32>(-67130i, 42543i)) >> (select(vec2<u32>(var_2, var_2), vec2<u32>(35423u, 1u), true) % vec2<u32>(32u)), vec2<i32>(u_input.a, -2147483647i) & -vec2<i32>(9826i, u_input.a)));
}

