struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(0u, u_input.a.x, vec3<bool>(var_0, -2147483647i <= ~(u_input.e.x | u_input.e.x), select(true, any(select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, false, true), vec3<bool>(var_0, true, var_0))), false)));
    return Struct_1(~(~(~var_1.a)), u_input.a.x, var_1.c);
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(0u, _wgslsmith_clamp_i32(-2147483647i, abs(_wgslsmith_clamp_i32(reverseBits(-17851i), select(u_input.e.x, u_input.a.x, true), u_input.e.x)), func_2().b), vec3<bool>(true, true, all(vec3<bool>(u_input.a.x > u_input.e.x, true, true))));
    let var_1 = _wgslsmith_f_op_f32(floor(-2403f));
    let var_2 = vec2<u32>((var_0.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(82628u, u_input.d, u_input.d, 44282u) << (vec4<u32>(0u, 77569u, 0u, var_0.a) % vec4<u32>(32u)), u_input.b)) & _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(1u), 35591u, firstLeadingBit(var_0.a)), u_input.b.zyw), select(4294967295u, var_0.a, var_0.c.x));
    var var_3 = var_0.c.x;
    var var_4 = 1u;
    return _wgslsmith_mult_vec3_i32(u_input.a.xyx, vec3<i32>(max(u_input.e.x, ~(-2147483647i)), firstTrailingBit(_wgslsmith_div_i32(var_0.b, u_input.e.x)), 1i)) | (~_wgslsmith_mod_vec3_i32(u_input.a.zyw, vec3<i32>(u_input.a.x, u_input.e.x, u_input.a.x) << (vec3<u32>(var_2.x, u_input.b.x, var_0.a) % vec3<u32>(32u))) & (firstTrailingBit(countOneBits(u_input.a.zxy)) | vec3<i32>(-1i, -2147483647i, -1846i)));
}

fn func_1() -> bool {
    let var_0 = Struct_1(firstLeadingBit(u_input.d), 10046i, select(vec3<bool>(true, select(true, true, false) & true, true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), false & (u_input.d != 1u)));
    let var_1 = var_0;
    let var_2 = func_2();
    let var_3 = -_wgslsmith_mod_vec3_i32(vec3<i32>(abs(var_1.b) | _wgslsmith_dot_vec3_i32(u_input.a.zzw, vec3<i32>(var_1.b, 1i, -42741i)), abs(29163i), var_0.b ^ -var_2.b), reverseBits(func_3()));
    var var_4 = _wgslsmith_add_i32(-2147483647i, ~u_input.a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.wy), u_input.b.zy)), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, 4294967295u), u_input.b.x)), _wgslsmith_add_i32(firstTrailingBit(u_input.e.x & u_input.e.x), _wgslsmith_div_i32(u_input.a.x, ~1i)), !vec3<bool>(!any(vec3<bool>(false, false, true)), func_1(), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false))));
    var var_1 = func_2();
    var_1 = Struct_1(var_1.a, _wgslsmith_div_i32(-78304i, 45736i), vec3<bool>(all(var_0.c), func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f + -353f) * _wgslsmith_div_f32(-280f, -182f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(floor(325f)))));
    let var_2 = vec4<bool>(any(select(select(vec4<bool>(var_1.c.x, var_0.c.x, var_1.c.x, var_1.c.x), select(vec4<bool>(var_1.c.x, var_1.c.x, false, var_0.c.x), vec4<bool>(true, true, var_1.c.x, var_1.c.x), true), true), vec4<bool>(var_1.c.x, var_0.c.x, all(vec4<bool>(false, var_1.c.x, false, false)), var_1.c.x), var_1.c.x || false)), ~_wgslsmith_mult_u32(var_1.a, min(55564u, var_0.a)) > ~_wgslsmith_div_u32(1u, 43604u >> (0u % 32u)), true, firstTrailingBit(var_1.a) >= 79597u);
    var_1 = func_2();
    var_1 = Struct_1(~(~(~_wgslsmith_div_u32(u_input.c, 0u))), _wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(u_input.a, u_input.a)), vec4<i32>(var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(39851i, -21267i, var_0.b, var_1.b), u_input.a), ~1i, 1i))), !select(!select(var_1.c, var_0.c, false), !(!vec3<bool>(true, var_1.c.x, var_2.x)), !(!var_1.c)));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.a.zz, abs(vec2<i32>(u_input.a.x, u_input.e.x)) & vec2<i32>(reverseBits(var_0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 33741i, var_1.b, 17789i), u_input.a)), !(!select(var_1.c.zy, var_0.c.xz, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f + -1715f) - 1354f))));
}

