struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_1), arg_1) - _wgslsmith_f_op_f32(max(arg_1, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1844f)))) * 205f), 698f));
    var var_1 = ~vec3<u32>(countOneBits(1u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), 1u);
    let var_2 = select(select(!(!(!vec4<bool>(arg_0.a.x, false, true, arg_0.a.x))), vec4<bool>(true, 1i > _wgslsmith_mod_i32(u_input.a, u_input.a), !(arg_0.a.x | arg_0.a.x), arg_0.a.x), select(vec4<bool>(all(vec3<bool>(true, true, arg_0.a.x)), var_0.a.x <= 1055f, arg_0.a.x, arg_0.a.x), select(!vec4<bool>(false, arg_0.a.x, true, false), select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, true, arg_0.a.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true))), false)), select(vec4<bool>(arg_0.a.x, true, all(vec4<bool>(false, false, false, false)), arg_0.a.x), select(vec4<bool>(select(arg_0.a.x, true, false), false, true, true), vec4<bool>(false, true, any(arg_0.a), true), all(vec2<bool>(false, arg_0.a.x))), vec4<bool>(firstLeadingBit(u_input.a) < -u_input.a, all(select(vec3<bool>(true, arg_0.a.x, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), true)), false, _wgslsmith_f_op_f32(exp2(var_0.a.x)) == -182f)), vec4<bool>(arg_0.a.x, u_input.a >= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 14469i), abs(vec2<i32>(-28380i, 2147483647i))), arg_0.a.x && false, ~min(23986u, 53933u) >= _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 18267u), ~var_1.yx)));
    var var_3 = max(vec4<i32>(-24036i, countOneBits(abs(1i << (var_1.x % 32u))), -54078i, _wgslsmith_mult_i32(u_input.a, abs(-60233i) & abs(u_input.a))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i) | vec4<i32>(u_input.a, -63152i, u_input.a, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, 0i), vec4<i32>(-1i, u_input.a, -1i, 47680i)) ^ vec4<i32>(-16623i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(reverseBits(u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a, -u_input.a)));
    var_1 = ~abs(min(~(vec3<u32>(var_1.x, var_1.x, 7831u) | vec3<u32>(var_1.x, var_1.x, var_1.x)), select(~vec3<u32>(var_1.x, 15582u, 109027u), vec3<u32>(0u, var_1.x, var_1.x), !var_2.ywy)));
    return var_0.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -107f), vec2<f32>(arg_2, 1143f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-252f, _wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(true, true)), arg_2))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2)), arg_2)))));
    let var_1 = -1i;
    var var_2 = min(~(~(-1i)), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(18328i, arg_1.x), vec2<i32>(-11700i, -61368i)) << (~(~4294967295u) % 32u)));
    let var_3 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.a) ^ firstLeadingBit(arg_1), vec2<i32>(var_1, 2147483647i) << (arg_0.xy % vec2<u32>(32u))), _wgslsmith_clamp_i32(arg_1.x, u_input.a, -51104i), arg_1.x, max(abs(u_input.a), -(-12059i | var_1)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-284f)) - _wgslsmith_f_op_f32(trunc(-519f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - var_0.x) - arg_2))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: bool) -> vec3<i32> {
    let var_0 = reverseBits(vec4<i32>(~countOneBits(u_input.a), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, 1i, -12115i), vec3<i32>(-40079i, 29472i, u_input.a), vec3<bool>(true, true, arg_1)), vec3<i32>(u_input.a, 0i, -17444i) << (vec3<u32>(arg_2, arg_2, 9951u) % vec3<u32>(32u))) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(63650u, arg_2), ~arg_2) % 32u), -u_input.a << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-7406i, 2147483647i, 2147483647i), firstTrailingBit(firstLeadingBit(vec3<i32>(1i, u_input.a, u_input.a))))));
    return vec3<i32>(9629i, firstLeadingBit(_wgslsmith_sub_i32(u_input.a, countOneBits(u_input.a))), ~((abs(u_input.a) & -var_0.x) ^ _wgslsmith_sub_i32(1i, -var_0.x)));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = ~(~33106u);
    var var_1 = -(select(-u_input.a, _wgslsmith_sub_i32(u_input.a, arg_1) ^ ~arg_1, true) & ~(~_wgslsmith_div_i32(2147483647i, 2147483647i)));
    var var_2 = Struct_2(arg_0.a.x, func_4(func_2(~(~vec4<u32>(0u, 41801u, 22160u, 62031u)), select(vec2<i32>(67514i, 9532i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, 0i), vec2<i32>(arg_1, arg_1)), !vec2<bool>(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-arg_2.a.x)), true, _wgslsmith_mod_u32(reverseBits(4294967295u) >> (1u % 32u), 1u), select(true, !any(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), true)));
    var var_3 = var_2.b.x >= u_input.a;
    var_0 = ~_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(~(~4294967295u), 1u));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, var_2.b.x, -2147483647i, _wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(firstTrailingBit(1i), 1i, ~15348i))), reverseBits(firstTrailingBit(select(-vec4<i32>(arg_1, u_input.a, 2147483647i, var_2.b.x), ~vec4<i32>(var_2.b.x, 2147483647i, 5432i, -2147483647i), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-26023i, -(i32(-1i) * -u_input.a));
    var var_1 = vec3<bool>(all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), any(vec2<bool>(_wgslsmith_f_op_f32(floor(-413f)) < _wgslsmith_f_op_f32(320f + -1950f), true)), all(vec4<bool>(true, -19254i > _wgslsmith_mult_i32(var_0.x, var_0.x), true, all(vec2<bool>(false, true)))));
    var var_2 = vec3<i32>(u_input.a >> (_wgslsmith_sub_u32(abs(0u), select(~4294967295u, ~4486u, var_1.x)) % 32u), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstLeadingBit(-43130i), var_0.x & 0i), i32(-1i) * -2147483647i, -func_1(Struct_3(var_1.xy), -10505i, Struct_1(vec3<f32>(-1000f, -1909f, 873f)))) | ((i32(-1i) * -var_0.x) ^ min(7702i, 0i)), ~abs(abs(var_0.x) << (~1u % 32u)));
    var_2 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~var_2.x, abs(_wgslsmith_div_i32(-12982i, -1i))), select(select(vec3<i32>(var_0.x, 0i, u_input.a), -vec3<i32>(1i, 43590i, var_2.x), select(vec3<bool>(true, false, false), vec3<bool>(false, true, var_1.x), false)), reverseBits(vec3<i32>(u_input.a, u_input.a, 2147483647i)), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, true))));
    var_2 = countOneBits(((vec3<i32>(var_0.x, u_input.a, 1i) ^ vec3<i32>(2147483647i, 24262i, var_0.x)) >> (min(vec3<u32>(20086u, 24777u, 4294967295u), vec3<u32>(1u, 1u, 11184u)) % vec3<u32>(32u))) | ~(~vec3<i32>(u_input.a, -1i, u_input.a))) | -abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(27506i, 28876i, -32669i), vec3<i32>(var_2.x, 1i, var_0.x), ~vec3<i32>(var_2.x, 0i, u_input.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(927f + -1000f), _wgslsmith_f_op_f32(1000f + -351f), 186f) * vec3<f32>(_wgslsmith_f_op_f32(min(-300f, 1000f)), _wgslsmith_div_f32(954f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -393f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x - -313f), func_2(vec4<u32>(43825u, 4294967295u, 43879u, 4294967295u), vec2<i32>(var_2.x, u_input.a), 827f).a.x), var_3.a.x)) * -203f), min(vec3<i32>(var_2.x, 0i, var_0.x), vec3<i32>(0i, u_input.a, 2147483647i) << (vec3<u32>(4294967295u, 89303u, 48457u) % vec3<u32>(32u))) >> (~select(~vec3<u32>(1u, 37194u, 46136u), ~vec3<u32>(4294967295u, 64890u, 4294967295u), select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, var_1.x, false), var_1.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_f_op_f32(abs(var_3.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, 4112u, 1u), vec3<u32>(4294967295u, 23008u, 56233u), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(50906u, 58546u, 1u), vec3<u32>(9774u, 67850u, 0u), vec3<u32>(25436u, 1u, 1u)), ~vec3<u32>(0u, 3741u, 4294967295u)) >> (reverseBits(vec3<u32>(11588u, 4294967295u, 1u)) % vec3<u32>(32u))));
}

