struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 52857u, 64072u), arg_3), ~arg_3), vec4<u32>(u_input.b.x, 4294967295u & arg_0.a.x, _wgslsmith_sub_u32(47580u, 0u), ~arg_0.a.x), ~vec4<u32>(arg_3.x, 0u, u_input.a.x, arg_1.a.x)) & vec4<u32>(~_wgslsmith_mult_u32(arg_3.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(57680u, 63099u, arg_0.a.x), select(arg_0.a.xzx, vec3<u32>(u_input.b.x, arg_0.a.x, arg_3.x), true)), 19222u, 1u));
    return reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.x, arg_0.a.x, u_input.b.x, _wgslsmith_add_u32(69687u, arg_0.a.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, 3097u, 0u), vec4<u32>(u_input.a.x, 4294967295u, var_1.a.x, 8317u), vec4<u32>(arg_0.a.x, arg_0.a.x, 6149u, var_1.a.x))) ^ vec4<u32>(var_1.a.x, countOneBits(0u), 1u, reverseBits(~arg_3.x)));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = Struct_1(select(~(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x) & vec4<u32>(36832u, 82019u, 1u, 0u))), func_3(Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 11489u)), Struct_1(vec4<u32>(3462u, 4294967295u, 1u, 24975u) >> (vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))), arg_0, _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 17760u))), select(vec4<bool>(-713f > arg_0, false, -27397i >= u_input.c.x, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    var_0 = Struct_1(~vec4<u32>(_wgslsmith_add_u32(var_0.a.x, var_0.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a.x, 1u), 9834u), 89755u, ~(~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-919f * 710f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, 782f), _wgslsmith_f_op_f32(-arg_0), false)), _wgslsmith_f_op_f32(round(-1514f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(701f, -2505f, arg_0) + vec3<f32>(arg_0, -1000f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 2641f, -1449f)))) * vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(max(-1000f, -1915f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(338f)), _wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(197f, arg_0)) - -1000f))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(~abs((vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.a.x) >> (vec4<u32>(29438u, u_input.a.x, 1u, 1u) % vec4<u32>(32u))) & ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 1u)));
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b.x << (_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x) % 32u);
    var var_1 = Struct_1(reverseBits(firstTrailingBit(vec4<u32>(u_input.b.x, 3079u, 58292u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 38712u, u_input.b.x, 39426u) % vec4<u32>(32u)))) & ~(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a.x)));
    let var_2 = true;
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1263f, 1262f, 201f, 232f), _wgslsmith_f_op_vec4_f32(func_2(2191f)), true && var_2)))));
    var var_4 = vec2<i32>(-1i, u_input.c.x);
    return Struct_1(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, 1u, var_3.a.x, 83153u)) ^ var_1.a, var_1.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    var var_1 = Struct_1(firstLeadingBit(select(vec4<u32>(var_0.a.x, var_0.a.x, arg_0.a.x, arg_1.a.x) >> (~vec4<u32>(u_input.a.x, arg_0.a.x, arg_0.a.x, u_input.b.x) % vec4<u32>(32u)), var_0.a, true)));
    let var_2 = arg_0;
    var_1 = Struct_1(arg_1.a);
    let var_3 = 41584u;
    return vec2<i32>(0i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~11178u;
    let var_1 = u_input.c.zww;
    var_0 = ~_wgslsmith_mod_u32(~select(22902u, u_input.b.x, u_input.b.x >= 0u), select(u_input.a.x, ~u_input.b.x, true));
    let var_2 = func_5(Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 25787u), vec4<u32>(25983u, 0u, 49548u, u_input.b.x) | vec4<u32>(u_input.b.x, 37112u, 74783u, 1u)), vec4<u32>(4294967295u, 0u, 1u, 1u) >> ((vec4<u32>(u_input.a.x, 41264u, 1u, 40916u) & vec4<u32>(u_input.b.x, 0u, u_input.b.x, 111170u)) % vec4<u32>(32u)), ~min(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 104917u), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 0u)))), func_1());
    var var_3 = Struct_1(vec4<u32>(82726u, 7189u, 1u, _wgslsmith_div_u32(func_3(func_4(vec4<f32>(862f, 669f, 280f, 1000f)), func_1(), _wgslsmith_div_f32(370f, -314f), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 0u, 62936u), vec4<u32>(66199u, u_input.a.x, u_input.b.x, u_input.a.x))).x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 18812u, u_input.a.x), vec3<u32>(u_input.a.x, 6490u, 53482u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 24344u | u_input.a.x, -vec3<i32>(-2147483647i, min(-var_2.x, 0i), -2147483647i));
}

