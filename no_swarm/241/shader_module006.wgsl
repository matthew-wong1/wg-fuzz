struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    var var_0 = arg_2;
    let var_1 = arg_2.b.x;
    let var_2 = _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(0u), 0u, u_input.c.x), ~vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, u_input.a.x), u_input.c.x << (u_input.c.x % 32u), u_input.a.x)));
    var var_3 = arg_2.c;
    var_3 = var_0.c;
    return ~max(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_2.a, arg_1), vec3<i32>(30140i, 2147483647i, arg_1)), ~min(vec3<i32>(1i, u_input.b, var_0.a) & vec3<i32>(var_0.a, -2147483647i, arg_2.a), vec3<i32>(17521i, -2147483647i, 1i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(max(abs(vec2<i32>(u_input.b, 2794i)), min(~arg_1.a.a, vec2<i32>(13663i, arg_1.a.a.x) >> (u_input.c % vec2<u32>(32u)))), arg_0.b.xwx, arg_0.a, select(arg_1.a.a >> (firstLeadingBit(u_input.a.xx) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(2147483647i, -1i)), vec2<i32>(arg_1.a.d.x, 0i)), _wgslsmith_clamp_i32(arg_0.a, arg_0.a, u_input.b) == _wgslsmith_div_i32(-2147483647i, arg_1.a.d.x))));
    let var_2 = vec4<bool>(select(all(select(select(arg_0.c, arg_0.c, arg_2), arg_0.c, true)), !(arg_2 && arg_0.c.x), any(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_0.c.x, true), arg_2), arg_0.c.xx, vec2<bool>(arg_0.c.x, true)))), false, arg_0.c.x, arg_2);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x));
    var var_4 = var_1;
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -((i32(-1i) * -2147483647i) & u_input.b)), vec2<i32>(0i, -func_2(vec3<f32>(var_1.a.b.x, var_1.a.b.x, -157f), ~(-2147483647i), Struct_3(arg_0.a, arg_0.b, var_2.zzw), _wgslsmith_f_op_f32(f32(-1f) * -725f)).x), arg_1.a.a);
}

fn func_1() -> bool {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(14072i, u_input.b), vec2<i32>(2147483647i, u_input.b) >> (~u_input.a.wz % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(29396i, -68263i) & vec2<i32>(u_input.b, 558i), -vec2<i32>(22696i, -3922i)), 1i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1547f, -1000f, 1381f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-335f, -127f, 2554f))))))), u_input.b, vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(func_2(vec3<f32>(965f, 1431f, 1696f), u_input.b, Struct_3(u_input.b, vec4<f32>(-1000f, 115f, -228f, 1157f), vec3<bool>(false, true, true)), 1451f)), -vec3<i32>(-31536i, u_input.b, u_input.b) | ~vec3<i32>(u_input.b, u_input.b, u_input.b)), countOneBits(-23501i)));
    let var_1 = ~min(_wgslsmith_div_vec2_i32(max(~vec2<i32>(0i, var_0.c), -var_0.d), ~var_0.a | -var_0.d), _wgslsmith_sub_vec2_i32(var_0.d, func_3(Struct_3(1i, vec4<f32>(1856f, -1313f, var_0.b.x, var_0.b.x), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec2<i32>(var_0.a.x, u_input.b), var_0.b, u_input.b, var_0.d)), false)));
    let var_2 = select(vec3<u32>(u_input.a.x, 53329u, _wgslsmith_mod_u32(countOneBits(42266u << (1u % 32u)), max(~0u, 1u))), u_input.a.xww, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))))) + -799f), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)));
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, min(_wgslsmith_div_i32(var_0.a.x, var_0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-44318i, 1697i, 2147483647i, 2147483647i), vec4<i32>(var_0.d.x, -3829i, u_input.b, u_input.b)))), -reverseBits(vec2<i32>(1i, 1i) & vec2<i32>(u_input.b, 2058i))), var_0.b, i32(-1i) * -40717i, select(var_0.a, vec2<i32>(u_input.b, _wgslsmith_div_i32(var_0.a.x, -1i)) & var_1, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(false, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    return !(-func_2(vec3<f32>(-1000f, var_0.b.x, var_3), reverseBits(var_1.x), Struct_3(-8246i, vec4<f32>(419f, var_3, 534f, var_3), vec3<bool>(false, true, false)), _wgslsmith_div_f32(635f, var_0.b.x)).x <= var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 1u) >> (u_input.a % vec4<u32>(32u))))));
    var_0 = vec4<u32>(_wgslsmith_div_u32(1u, 18781u), ~u_input.a.x, firstLeadingBit(var_0.x) >> (132076u % 32u), _wgslsmith_dot_vec4_u32(countOneBits(select(vec4<u32>(var_0.x, 26718u, var_0.x, var_0.x), vec4<u32>(4294967295u, u_input.c.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, true))) >> (vec4<u32>(u_input.c.x & 1u, var_0.x, ~13514u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(~(~u_input.a))));
    let var_1 = vec4<bool>(!func_1(), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true != all(vec4<bool>(true, true, false, false)))), u_input.b > -1i, !any(vec3<bool>(false, true, true)));
    var_0 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(1u, 1u, 3908u, 4294967295u))), ~(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(7147u, 24206u, 4294967295u, 4294967295u)) >> (u_input.a % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u)));
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, select(~u_input.c.x, var_0.x, true), var_0.x, countOneBits(max(~36025u, ~4294967295u))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, 66227u), var_0.x) >> (var_0.x % 32u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, var_0.x, u_input.a.x)), ~(~vec3<u32>(u_input.a.x, var_0.x, u_input.c.x))), ~(~var_0.x), _wgslsmith_div_u32(1u, ~_wgslsmith_div_u32(var_0.x, 4294967295u))), u_input.a);
    let var_2 = !(!var_1.zy);
    var var_3 = Struct_2(Struct_1(vec2<i32>(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(239f, 374f, 266f))), -1i | u_input.b, Struct_3(u_input.b, vec4<f32>(1311f, 1633f, -272f, 128f), var_1.yzy), _wgslsmith_div_f32(970f, 1000f)).x, 1i << (u_input.c.x % 32u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1031f, -405f, 1000f))))))), u_input.b, -(~(-vec2<i32>(u_input.b, -53112i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.x)))), ~(~(firstTrailingBit(var_0.x) & 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - var_3.a.b.x), -349f)));
}

