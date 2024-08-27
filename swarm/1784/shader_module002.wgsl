struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-2147483647i), abs(arg_1.a), 16949i), firstLeadingBit(-vec3<i32>(arg_0.a.a, arg_1.a, arg_0.a.a)), ~(-vec3<i32>(arg_0.a.a, arg_1.a, -27025i))), abs(vec3<i32>(_wgslsmith_sub_i32(1i, arg_1.a), firstTrailingBit(arg_1.a), 1i >> (u_input.b.x % 32u))) ^ ~min(~vec3<i32>(-4922i, arg_2.b.a.a, arg_0.a.a), vec3<i32>(arg_2.b.a.a, arg_1.a, arg_1.a)));
    var var_2 = arg_2;
    var_2 = Struct_4(Struct_2(-22634i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1880f))), arg_1), var_2.b, -firstTrailingBit(36730i), all(vec4<bool>(true, var_0 < ~var_0, any(vec4<bool>(arg_2.a.c.b, false, arg_0.a.b, arg_0.a.b)), false)));
    var_2 = arg_2;
    return -3397i;
}

fn func_2() -> f32 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(42774i, true);
    var var_2 = Struct_1(select(~75752i, _wgslsmith_mult_i32(var_1.a >> (_wgslsmith_div_u32(70102u, u_input.a.x) % 32u), 29464i), true), all(vec2<bool>(true & (var_1.b && true), !all(vec4<bool>(true, var_1.b, true, var_1.b)))));
    var var_3 = Struct_1(abs(_wgslsmith_mod_i32(firstLeadingBit(var_1.a), func_3(Struct_3(Struct_1(1i, var_2.b)), Struct_1(-1i, var_2.b), Struct_4(Struct_2(var_2.a, -644f, Struct_1(-7780i, var_1.b)), Struct_3(Struct_1(-1i, true)), var_2.a, var_1.b)))) >> (~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(78933u, u_input.b.x), ~98525u, _wgslsmith_clamp_u32(var_0, 1u, 4294967295u)) % 32u), any(select(!vec4<bool>(var_1.b, false, var_1.b, false), select(vec4<bool>(var_2.b, var_1.b, var_2.b, false), vec4<bool>(true, var_1.b, false, true), vec4<bool>(false, var_1.b, true, true)), vec4<bool>(var_2.b, false, false, var_2.b))) && var_2.b);
    let var_4 = Struct_3(Struct_1(_wgslsmith_mult_i32(var_2.a | _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, -1i, 2147483647i, 1i), vec4<i32>(-2147483647i, var_2.a, 4112i, var_1.a)), var_1.a), var_1.b));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(975f - 1000f), -700f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-570f * 444f) - _wgslsmith_f_op_f32(f32(-1f) * -344f)), 785f)), _wgslsmith_f_op_f32(max(-457f, _wgslsmith_f_op_f32(step(362f, 1205f)))), all(!select(!vec2<bool>(var_4.a.b, false), !vec2<bool>(false, var_1.b), select(vec2<bool>(true, false), vec2<bool>(var_2.b, true), false)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = max(-(~vec3<i32>(1i, arg_2.a, arg_2.a) << ((u_input.b | max(u_input.b, vec3<u32>(u_input.a.x, 0u, 1373u))) % vec3<u32>(32u))), ~vec3<i32>(1i, _wgslsmith_mod_i32(arg_2.a, 2147483647i), 1i) << (select(select(~u_input.a.wxx, ~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), true), u_input.b, !select(vec3<bool>(arg_2.b, arg_2.b, false), vec3<bool>(arg_2.b, true, arg_2.b), false)) % vec3<u32>(32u)));
    var_0 = reverseBits(~vec3<i32>(var_0.x, ~0i, _wgslsmith_add_i32(arg_2.a, var_0.x))) ^ max(min(select(-vec3<i32>(25309i, var_0.x, 55715i), -vec3<i32>(var_0.x, arg_2.a, 1i), vec3<bool>(false, true, arg_2.b)), vec3<i32>(24883i, arg_2.a, -2147483647i) ^ -vec3<i32>(var_0.x, -24435i, var_0.x)), vec3<i32>(1i, max(~var_0.x, abs(var_0.x)), _wgslsmith_clamp_i32(48071i, arg_2.a, arg_2.a) << ((104726u >> (u_input.b.x % 32u)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_0.x, -1533f, arg_1.x), vec4<f32>(arg_1.x, -1000f, 2040f, -1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(func_2()), -822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(sign(arg_0.x))))));
    var var_2 = Struct_3(arg_2);
    var_2 = Struct_3(arg_2);
    return -min(abs(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.a, 1i, arg_2.a, var_2.a.a), vec4<i32>(-21346i, 35197i, arg_2.a, 0i)))), ~countOneBits(-vec4<i32>(-28721i, arg_2.a, var_0.x, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(22015i, -3427i, -64584i), vec3<i32>(-50134i, -1165i, -2536i))), -6346i) ^ ~(-firstTrailingBit(vec2<i32>(-46338i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(select(-2407f, 1996f, false)), _wgslsmith_f_op_f32(max(354f, 1842f))), vec3<f32>(_wgslsmith_f_op_f32(362f - -305f), _wgslsmith_f_op_f32(ceil(1015f)), _wgslsmith_f_op_f32(max(-1147f, 1243f)))), vec2<f32>(_wgslsmith_f_op_f32(-511f * _wgslsmith_f_op_f32(f32(-1f) * -1036f)), -247f), Struct_1(var_0.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-317f, 679f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1911f))))), reverseBits(vec4<u32>(u_input.a.x, u_input.b.x, 0u, ~u_input.a.x)), _wgslsmith_mod_vec3_i32(~((vec3<i32>(14719i, var_0.x, var_0.x) >> (u_input.a.xxw % vec3<u32>(32u))) >> (vec3<u32>(87034u, u_input.a.x, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(-5923i, var_0.x, _wgslsmith_clamp_i32(0i, var_0.x, var_0.x)), vec3<i32>(reverseBits(var_0.x), var_0.x, -2147483647i))));
}

