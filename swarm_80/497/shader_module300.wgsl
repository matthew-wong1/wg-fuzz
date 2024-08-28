struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = vec4<i32>(~(-2147483647i), _wgslsmith_add_i32(arg_1.b, _wgslsmith_sub_i32(arg_1.b & -36737i, 1i) & _wgslsmith_mod_i32(abs(var_0.b), select(0i, var_0.b, true))), -_wgslsmith_add_i32(11516i, -26727i), ((u_input.b.x << (u_input.a % 32u)) | var_0.b) ^ -arg_1.b);
    var var_2 = u_input.b.xz;
    var var_3 = countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(1i, var_0.b, ~u_input.b.x), _wgslsmith_add_i32(1i, 22995i), -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, -2147483647i))), abs(~vec4<i32>(-7090i, u_input.e.x, -46036i, 2147483647i)), vec4<i32>(var_2.x, u_input.b.x, -(~var_0.b), 1i)));
    let var_4 = arg_1;
    return -1i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> bool {
    var var_0 = -(-1i & func_3(select(arg_0.a, arg_0.a, false), arg_0)) | _wgslsmith_mod_i32(max(select(arg_0.b, -1i, !arg_0.a.x), _wgslsmith_mult_i32(3345i, u_input.e.x) & -arg_0.b), countOneBits(arg_0.b));
    var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, arg_0.b, arg_0.b, -2147483647i) & _wgslsmith_sub_vec4_i32(vec4<i32>(11593i, 12494i, u_input.e.x, u_input.b.x) & u_input.e, vec4<i32>(arg_0.b, 1907i, arg_0.b, arg_0.b) | u_input.b), vec4<i32>(1i, -1i & arg_0.b, ~(-2147483647i), 2147483647i) << (min(~vec4<u32>(0u, u_input.c, u_input.a, 53049u), ~vec4<u32>(14983u, u_input.c, 10218u, 16794u)) % vec4<u32>(32u))), 1i);
    return any(select(select(arg_2.zyw, arg_0.a.xzy, arg_0.a.yyx), vec3<bool>(any(select(arg_0.a.wxy, vec3<bool>(true, false, true), vec3<bool>(false, arg_1, false))), any(!vec4<bool>(arg_2.x, false, false, false)), _wgslsmith_div_i32(u_input.e.x, u_input.b.x) != 1i), arg_2.x));
}

fn func_1() -> bool {
    var var_0 = true;
    var var_1 = select(vec3<bool>(true, false, (func_2(Struct_1(vec4<bool>(true, false, false, false), 30532i), true, vec4<bool>(true, true, false, true)) && false) | any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), vec3<bool>(!(func_2(Struct_1(vec4<bool>(true, true, true, false), u_input.e.x), true, vec4<bool>(true, true, true, false)) & any(vec2<bool>(false, true))), all(vec2<bool>(true, false)), !(~u_input.b.x <= u_input.e.x)), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), all(vec2<bool>(true, false)))));
    var var_2 = 0i;
    var var_3 = vec4<bool>(true, all(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true), true)) & select(false, !select(false, true, var_1.x), true), select(all(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), true, true), true);
    let var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a | 4294967295u, ~u_input.a >> (_wgslsmith_clamp_u32(u_input.c, 77332u, 4294967295u) % 32u), ~_wgslsmith_sub_u32(13693u, u_input.c), u_input.a), firstTrailingBit(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.a, u_input.c, u_input.d, u_input.c), vec4<u32>(u_input.d, u_input.a, u_input.c, 5947u))))), u_input.c & ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 60150u, u_input.a), vec3<u32>(1u, 0u, u_input.a))));
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = countOneBits(countOneBits(_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.a, 37217u, u_input.a) | vec3<u32>(u_input.c, 24258u, 0u)), ~min(vec3<u32>(57292u, 1u, 57741u), vec3<u32>(110754u, 1u, u_input.d)))));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(countOneBits(u_input.e), ~u_input.e), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(1i, arg_2.b, arg_0.b, 2147483647i << (var_0.x % 32u)))), ~(~(-(~9911i))), arg_1.x);
    let var_2 = arg_2;
    return all(!(!select(vec4<bool>(arg_0.a.x, true, arg_2.a.x, var_2.a.x), select(arg_2.a, vec4<bool>(arg_0.a.x, var_2.a.x, arg_2.a.x, var_2.a.x), var_2.a), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = func_4(Struct_1(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), !all(vec3<bool>(false, true, false))), 1i), u_input.b.zx, Struct_1(vec4<bool>(true, true == func_1(), true, 1f > _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_dot_vec3_i32(u_input.e.xxy, -(vec3<i32>(u_input.e.x, -1i, -1565i) >> (vec3<u32>(u_input.c, u_input.c, u_input.d) % vec3<u32>(32u))))));
    let var_1 = Struct_1(select(vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), any(vec4<bool>(false, true, false, false)))), vec4<bool>(true, false, false, func_4(Struct_1(vec4<bool>(false, true, false, false), u_input.e.x), select(vec2<i32>(29904i, u_input.b.x), u_input.b.yx, vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, true, true), -22649i)))), _wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, 2147483647i, u_input.e.x) >> (vec4<u32>(u_input.c, u_input.d, 4294967295u, 0u) % vec4<u32>(32u)), min(u_input.b, u_input.e)), _wgslsmith_div_vec4_i32(abs(u_input.e), -u_input.e), vec4<bool>(true, true, true, false)), u_input.b));
    var var_2 = -2476f;
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(u_input.a, 0u)), u_input.c, u_input.d, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.d, 20798u)), select(vec2<u32>(1u, 35238u), vec2<u32>(0u, u_input.d), var_1.a.x))), u_input.a));
    var var_4 = var_1;
    var var_5 = !(!var_1.a);
    let var_6 = Struct_1(vec4<bool>(false, 1u >= ~var_3.x, true, var_5.x), min(_wgslsmith_mult_i32(~select(u_input.b.x, -19198i, var_5.x), ~(var_1.b << (4294967295u % 32u))), -2433i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.yx, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~41533u, u_input.d ^ 56949u, _wgslsmith_mod_u32(var_3.x, u_input.c), ~4171u), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(var_3.x, 18146u, var_3.x, 40418u), vec4<u32>(0u, 72679u, var_3.x, 4294967295u)), vec4<u32>(u_input.a, var_3.x, 6342u, 0u), reverseBits(vec4<u32>(63374u, 4294967295u, u_input.a, u_input.c)))), firstTrailingBit(~(vec4<u32>(var_3.x, 1u, 4294967295u, var_3.x) << (vec4<u32>(var_3.x, u_input.a, var_3.x, var_3.x) % vec4<u32>(32u))))), vec2<f32>(863f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2323f + -899f))))));
}

