struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = Struct_3(Struct_1(true, 1f, ~firstTrailingBit(2147483647i >> (u_input.a % 32u)), ~34524i, true), Struct_1(true, 467f, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_div_i32(0i, -2147483647i), -38076i)), true), _wgslsmith_div_u32(u_input.a, ~select(u_input.a, u_input.a, true)) <= min(u_input.a, ~u_input.a >> (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)));
    let var_1 = Struct_1(all(!select(vec3<bool>(var_0.a.e, var_0.c, var_0.b.a), vec3<bool>(false, true, false), false)), var_0.b.b, -(~(~(var_0.b.c << (u_input.a % 32u)))), ~(-1i), arg_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, -1000f, -983f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(556f, var_1.b, var_0.a.b) * vec3<f32>(-1000f, -902f, var_1.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_0.a.b, 1057f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(634f, -1000f, -133f))) * vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b * 200f), -856f, _wgslsmith_f_op_f32(472f + -704f)))) + vec3<f32>(-413f, 487f, var_1.b));
    let var_3 = Struct_3(var_0.b, var_0.a, true);
    var_0 = Struct_3(var_0.a, Struct_1(false, -826f, _wgslsmith_dot_vec3_i32(vec3<i32>(-49124i, var_1.c, abs(-17204i)), vec3<i32>(max(50107i, -1i), var_1.c & -50720i, select(var_0.a.c, var_1.d, true))), -9987i, var_1.a), arg_0);
    return _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, ~min(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, -1i, var_3.a.d), vec3<i32>(-22181i, 17884i, var_3.a.c))), var_3.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(54309i, 0i), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(7664i, var_1.c), vec2<i32>(var_0.b.d, 13640i)), ~vec2<i32>(-306i, var_0.a.c), -vec2<i32>(var_1.d, var_1.c)))), _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-64349i, var_1.d, var_1.d, var_0.a.c), vec4<i32>(2147483647i, var_1.c, var_3.a.d, var_0.a.c))) ^ -(vec4<i32>(var_3.a.d, 15798i, var_0.a.d, var_1.c) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, 26734u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_1.d, var_0.b.c), abs(var_0.b.c), var_1.d, 27972i), firstLeadingBit(abs(vec4<i32>(-71269i, var_1.c, -13958i, -37856i))))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    return Struct_2(~(~u_input.a), select(func_3(!all(vec4<bool>(false, true, false, true))), reverseBits(~(vec4<i32>(0i, -2147483647i, 30149i, 40120i) << (vec4<u32>(53050u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(405f)))), 1722f, _wgslsmith_div_i32(firstTrailingBit(1i), abs(-2147483647i)) & 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 1i, arg_0) >> (vec4<u32>(0u, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(93018u, 1u, arg_1.a, arg_1.a), vec4<u32>(4294967295u, u_input.a, arg_1.a, 0u)), _wgslsmith_mult_u32(53866u, 0u)) % vec4<u32>(32u)), ~(~abs(vec4<i32>(-1i, 2147483647i, 0i, arg_1.b.x)))), true);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(964f))));
    var var_3 = var_0;
    var_3 = Struct_1(select(var_3.a, var_0.a, var_3.e), -966f, arg_0, ~(~_wgslsmith_clamp_i32(arg_1.b.x, var_3.d ^ 17795i, -47637i)), any(!select(!vec3<bool>(var_0.a, var_3.a, false), select(vec3<bool>(true, false, var_0.a), vec3<bool>(var_1.a, true, true), var_0.e), !vec3<bool>(true, false, var_0.e))));
    return -23287i;
}

fn func_1() -> i32 {
    let var_0 = firstLeadingBit(abs(~1u));
    return ~(-1i) | _wgslsmith_add_i32(~1i, -func_4(_wgslsmith_sub_i32(30656i, 1i), func_2(-1000f), vec4<f32>(-1305f, -1000f, 1640f, -741f)));
}

fn func_5(arg_0: vec3<i32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(15350u, 31283u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u))) >> (max(~vec2<u32>(0u, 4294967295u), min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u)) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(~56229u, ~u_input.a) >> (~26615u % 32u), _wgslsmith_mod_u32(func_2(_wgslsmith_div_f32(747f, 920f)).a, _wgslsmith_clamp_u32(abs(u_input.a), func_2(1119f).a, ~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, firstTrailingBit(-2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), ~vec2<i32>(1i, 1i))) ^ ~vec2<i32>(-13859i, ~1i);
    let var_1 = func_5(-vec3<i32>(-21289i, reverseBits(var_0.x >> (u_input.a % 32u)), func_1()));
    var var_2 = Struct_2(func_5(~vec3<i32>(-41408i, ~(-4674i), abs(var_0.x))), vec4<i32>(-1i) * -vec4<i32>(-var_0.x, 81190i, _wgslsmith_dot_vec3_i32(vec3<i32>(29760i, var_0.x, 43741i), vec3<i32>(var_0.x, 0i, var_0.x)), var_0.x | 24254i));
    var var_3 = Struct_3(Struct_1(!(-var_0.x > abs(var_2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-904f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(503f, -1000f)))))), func_4(~(-22851i), Struct_2(~u_input.a, vec4<i32>(var_0.x, var_0.x, -2970i, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(-110f - 124f), -285f, -746f)), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-643f + 1049f))) > _wgslsmith_f_op_f32(ceil(-1819f))), Struct_1(all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false))), _wgslsmith_f_op_f32(floor(-199f)), _wgslsmith_add_i32(var_2.b.x, 48307i), abs(2677i), false), select(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), !(-38591i > _wgslsmith_add_i32(var_2.b.x, var_0.x))));
    var var_4 = var_3.a.e;
    let var_5 = func_3(all(select(vec4<bool>(var_3.c, true, any(vec4<bool>(var_3.b.a, true, true, false)), var_3.a.a), !vec4<bool>(var_3.b.a, false, var_3.b.a, true), any(vec4<bool>(var_3.a.e, var_3.c, var_3.c, var_3.c)) & all(vec2<bool>(true, var_3.a.a)))));
    let var_6 = Struct_3(var_3.a, var_3.a, false);
    var_4 = ~((i32(-1i) * -1382i) & countOneBits(0i | var_5.x)) <= var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1271f + _wgslsmith_f_op_f32(abs(-831f))), var_1, ~var_5.zzy, firstTrailingBit(~(~(~vec4<u32>(0u, u_input.a, var_2.a, 30953u)))));
}

