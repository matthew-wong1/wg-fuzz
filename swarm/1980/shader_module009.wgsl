struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = -reverseBits(countOneBits(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(2147483647i, u_input.d.x)), min(vec2<i32>(65453i, 0i), u_input.d.xz))));
    var var_1 = !any(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), false | all(vec2<bool>(true, false))));
    let var_2 = Struct_3(~(min(vec4<u32>(48720u, arg_0, arg_0, 3576u), vec4<u32>(36893u, arg_0, 16858u, 4294967295u)) << (vec4<u32>(u_input.a, ~u_input.c.x, 60555u, reverseBits(19536u)) % vec4<u32>(32u))));
    var_0 = u_input.d.zy;
    var var_3 = Struct_3(min(vec4<u32>(var_2.a.x, firstLeadingBit(~u_input.b), ~u_input.a, 1u), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(93794u, u_input.b, arg_0, 0u), vec4<u32>(arg_0, u_input.c.x, arg_0, var_2.a.x), vec4<bool>(false, false, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 34752u, var_2.a.x, 4294967295u), var_2.a)), ~var_2.a)));
    return vec3<bool>(var_0.x == -(~(-u_input.d.x)), false, true);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: f32) -> bool {
    let var_0 = Struct_1(any(select(vec3<bool>(20334i <= u_input.d.x, arg_3 != arg_3, all(vec4<bool>(true, arg_0, arg_0, arg_0))), select(func_3(0u, vec3<f32>(-1304f, arg_3, -729f)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), any(vec4<bool>(arg_0, false, true, true))), func_3(_wgslsmith_mult_u32(u_input.b, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, 1194f, 1398f))))), vec4<bool>(1u == (_wgslsmith_div_u32(4294967295u, 1u) << (max(u_input.b, 1u) % 32u)), arg_0, -49361i <= u_input.d.x, arg_0), 1u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -2563f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1899f * -2310f)) - arg_3));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-165f, arg_3), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3, arg_3))), all(vec3<bool>(var_0.a, var_0.b.x, arg_0)))))));
    var var_3 = 0u;
    let var_4 = _wgslsmith_add_i32(arg_1.x, ~0i);
    return select(all(var_0.b.zx) != arg_0, false, all(!var_0.b.wyw));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    let var_0 = Struct_1(false, vec4<bool>((~u_input.a & 1u) != 64745u, arg_1.a, true, func_2(arg_1.b.x, vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, 1i), countOneBits(2147483647i), 0i), u_input.c, arg_2)), reverseBits(arg_1.c));
    var var_1 = ~_wgslsmith_div_u32(var_0.c, 4294967295u);
    let var_2 = Struct_1(false, select(arg_1.b, select(!var_0.b, vec4<bool>(39580i >= arg_0, var_0.b.x, !var_0.b.x, true), _wgslsmith_sub_i32(12146i, arg_0) == ~arg_0), all(vec4<bool>(select(true, var_0.a, var_0.a), true, all(vec4<bool>(arg_1.a, true, true, var_0.a)), var_0.a))), u_input.a);
    var_1 = (_wgslsmith_dot_vec4_u32(vec4<u32>(37103u, 46256u, 0u, u_input.b) & ~vec4<u32>(var_0.c, u_input.b, var_0.c, 1u), firstLeadingBit(abs(vec4<u32>(var_2.c, u_input.c.x, 42923u, 50173u)))) & 42324u) | ~_wgslsmith_div_u32(18295u | _wgslsmith_mod_u32(27748u, u_input.b), 43151u);
    let var_3 = u_input.d;
    return ~vec3<u32>(~51083u, ~max(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(84498u, arg_1.c, 29378u), vec3<u32>(u_input.c.x, 22633u, u_input.b))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<u32>(u_input.c.x, firstTrailingBit(19970u) | ~(~0u), ~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.c.x), vec3<u32>(u_input.b, u_input.a, u_input.b)) ^ vec3<u32>(44773u, u_input.b, u_input.c.x), ~vec3<u32>(47118u, u_input.a, u_input.b) & func_1(1i, Struct_1(false, vec4<bool>(true, false, true, false), 1u), 1761f))));
    var var_1 = var_0;
    var var_2 = var_0;
    let var_3 = Struct_3(var_0.a >> (vec4<u32>(var_2.a.x, 0u, var_2.a.x, select(~0u, _wgslsmith_div_u32(var_1.a.x, 20100u), u_input.d.x >= u_input.d.x)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(574f, 415f, 499f), vec3<f32>(1089f, -251f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(abs(-2292f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1236f + 583f), _wgslsmith_f_op_f32(select(302f, -1639f, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1526f * 107f))), _wgslsmith_f_op_f32(abs(-850f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1593f, _wgslsmith_f_op_f32(388f + 1466f), _wgslsmith_f_op_f32(f32(-1f) * -441f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-434f, 328f, -1000f), vec3<f32>(801f, 891f, 1439f))), func_3(7219u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(835f, -1214f, -1627f)))))));
    let var_5 = Struct_3(~vec4<u32>(u_input.b, countOneBits(abs(var_0.a.x)), _wgslsmith_sub_u32(~5316u, ~var_1.a.x), var_0.a.x | 15214u));
    var_1 = Struct_3(countOneBits(~(vec4<u32>(4294967295u, 0u, 69766u, 64042u) >> (max(var_3.a, vec4<u32>(var_5.a.x, 1u, 29466u, var_3.a.x)) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, ~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, var_2.a.x, 4294967295u), ~var_3.a.x)), vec4<f32>(var_4.x, -104f, var_4.x, 1f), -643f, select(~_wgslsmith_mod_vec3_u32(vec3<u32>(4973u, u_input.a, 4294967295u) ^ vec3<u32>(var_2.a.x, var_0.a.x, var_1.a.x), ~vec3<u32>(u_input.a, var_0.a.x, var_5.a.x)), _wgslsmith_add_vec3_u32(var_2.a.zzy & vec3<u32>(4294967295u, u_input.a, var_0.a.x), vec3<u32>(71386u, var_0.a.x, var_1.a.x)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(var_5.a.yz, var_2.a.xx), 1u, var_0.a.x) % vec3<u32>(32u)), select(func_3(303u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.x, -734f, -509f), vec3<f32>(764f, 573f, var_4.x), vec3<bool>(true, false, true)))), vec3<bool>(true, select(true, false, true), true), any(vec2<bool>(true, true)))));
}

