struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = select(vec4<bool>(!(_wgslsmith_f_op_f32(select(-318f, 262f, false)) != -2061f), u_input.b < 36282u, any(vec2<bool>(true, true)) || (true & all(vec2<bool>(true, false))), false), select(select(vec4<bool>(-2147483647i >= u_input.d, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), true), vec4<bool>(true, ~u_input.a < u_input.b, !all(vec2<bool>(false, false)), false), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true))), -1253f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1060f + -1673f))))));
    let var_1 = false;
    var var_2 = ~1i;
    let var_3 = Struct_3(select(var_0.xy, !vec2<bool>(true, any(vec4<bool>(var_1, var_0.x, var_1, false))), min(-43462i, -u_input.d) < reverseBits(i32(-1i) * -8697i)), Struct_2(_wgslsmith_add_vec4_i32((vec4<i32>(u_input.c.x, u_input.c.x, -1i, 31593i) | vec4<i32>(27817i, u_input.c.x, u_input.c.x, u_input.c.x)) & -vec4<i32>(1i, -1i, 2147483647i, u_input.d), -select(vec4<i32>(u_input.d, u_input.c.x, 2147483647i, 2147483647i), vec4<i32>(-29761i, -20307i, u_input.c.x, -704i), vec4<bool>(true, var_0.x, false, var_0.x)))), 0i, Struct_1(_wgslsmith_mod_vec3_u32((vec3<u32>(u_input.b, u_input.a, u_input.a) >> (vec3<u32>(21870u, 4294967295u, 0u) % vec3<u32>(32u))) << (~vec3<u32>(u_input.b, u_input.a, u_input.a) % vec3<u32>(32u)), ~(vec3<u32>(4294967295u, u_input.a, 0u) & vec3<u32>(u_input.a, u_input.a, u_input.b)))));
    var_2 = _wgslsmith_mod_i32(var_3.c, abs(-(u_input.c.x | (u_input.d << (u_input.a % 32u)))));
    return _wgslsmith_f_op_f32(-523f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(602f - 316f))) * -295f)));
}

fn func_2() -> vec2<i32> {
    var var_0 = ~(~(~max(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.b))));
    let var_1 = u_input.a != _wgslsmith_add_u32(0u, ~u_input.a);
    let var_2 = Struct_4(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d, -u_input.c.x, -15182i), -u_input.c));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-703f)) * _wgslsmith_f_op_f32(879f - -1850f))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)) + 512f), var_1)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(252f - _wgslsmith_f_op_f32(floor(-723f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1101f))))));
    return u_input.c.xy;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.a;
    var var_1 = vec2<i32>(-1i) * -max(func_2() | u_input.c.zz, min(_wgslsmith_add_vec2_i32(u_input.c.yx, vec2<i32>(u_input.c.x, 58749i)), u_input.c.xy));
    let var_2 = vec2<bool>(true, true);
    var var_3 = 2587f;
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -505f);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false);
    var var_1 = Struct_2(select(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, u_input.d), _wgslsmith_mult_i32(-28435i, 33530i)), max(func_1(Struct_1(vec3<u32>(1u, u_input.a, 12693u))), -50388i), ~(~u_input.c.x), (u_input.d >> (u_input.b % 32u)) | u_input.c.x), vec4<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_add_i32(1i, u_input.c.x << (u_input.b % 32u)), select(_wgslsmith_sub_i32(-1i, 1i), select(u_input.c.x, 2147483647i, false), !var_0.x), u_input.d), !vec4<bool>(false, var_0.x, !var_0.x, true)));
    var var_2 = select(select(vec4<bool>(false, u_input.c.x >= func_2().x, all(vec4<bool>(false, var_0.x, false, var_0.x)) | var_0.x, all(!vec3<bool>(true, var_0.x, var_0.x))), vec4<bool>(var_0.x, var_0.x, _wgslsmith_div_u32(0u, 6221u) <= abs(u_input.a), var_0.x), vec4<bool>(any(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true))), any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x, var_0.x)), vec4<bool>(select(false, all(vec2<bool>(false, var_0.x)), var_0.x), var_0.x, false, all(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), var_0.x);
    let var_3 = !(-193f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(470f * -225f) - _wgslsmith_f_op_f32(802f * -723f)))));
    let var_4 = max(-_wgslsmith_div_vec4_i32(-vec4<i32>(0i, 2147483647i, var_1.a.x, var_1.a.x), _wgslsmith_sub_vec4_i32(var_1.a, var_1.a << (vec4<u32>(54514u, u_input.a, u_input.b, 47886u) % vec4<u32>(32u)))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1600f, _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.b << (u_input.b % 32u), select(u_input.a, 9137u, false), ~1u), firstTrailingBit(vec4<u32>(60785u, u_input.a, u_input.b, u_input.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 4262u, u_input.a), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, u_input.b, 60747u), vec4<u32>(u_input.a, u_input.b, 0u, u_input.b))) | ~vec4<u32>(28025u, 8519u, 4294967295u, 1u)));
}

