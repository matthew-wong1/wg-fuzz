struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, reverseBits(u_input.c.x)), _wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(_wgslsmith_add_u32(0u, u_input.c.x), ~4294967295u))), ~min(41548u, u_input.c.x));
    var var_1 = Struct_1(_wgslsmith_mod_u32(1u, u_input.c.x), !any(vec4<bool>(true, true, true, true)), ~(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(arg_0, arg_0, 29623i))), u_input.c.zyy);
    let var_2 = Struct_1(_wgslsmith_div_u32(~(~60532u), 1u), (any(vec2<bool>(var_1.b, true)) | false) && !var_1.b, vec3<i32>(-1i, ~(-45264i), _wgslsmith_add_i32(-(~2745i), u_input.a.x)), vec3<u32>(~4294967295u, abs(reverseBits(u_input.c.x)), 17021u) >> (~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_1.d.x, 1u)), vec3<u32>(u_input.c.x, 54676u, 1u), max(vec3<u32>(var_0, 18311u, 4952u), vec3<u32>(3568u, u_input.c.x, u_input.c.x))) % vec3<u32>(32u)));
    var var_3 = ~(~var_1.d.xz);
    var_3 = abs(firstLeadingBit(vec2<u32>(countOneBits(_wgslsmith_clamp_u32(4294967295u, 69818u, 1u)), reverseBits(var_1.a >> (26740u % 32u)))));
    return select(vec2<bool>(false, var_2.b), vec2<bool>(true, false), select(vec2<bool>(var_2.b || all(vec4<bool>(true, var_2.b, var_2.b, true)), var_2.b), vec2<bool>(true, reverseBits(79266u) == var_3.x), var_1.b));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    let var_0 = select(vec2<bool>(all(func_3(arg_0.x >> (arg_3.x % 32u))), all(!vec3<bool>(false, arg_1.b, arg_1.b))), vec2<bool>(!(!all(vec4<bool>(arg_1.b, true, true, arg_1.b))), arg_1.b), func_3(firstLeadingBit(0i)).x);
    let var_1 = 0u <= abs(reverseBits(_wgslsmith_clamp_u32(~arg_1.a, 30521u, firstTrailingBit(44420u))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-562f - 989f), 736f)) * -1000f), -546f);
    var var_3 = !(!vec3<bool>(true | var_1, var_1, !(!var_1)));
    var var_4 = Struct_1(12982u, true, ~vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x >> (arg_1.a % 32u), _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(arg_0.x, -2147483647i, 2147483647i)), 31542i), select(-4254i, arg_0.x, true), reverseBits(arg_2)), select(arg_1.d, select(firstLeadingBit(abs(vec3<u32>(arg_3.x, arg_1.d.x, 1u))), arg_3.ywx, var_0.x), (_wgslsmith_add_i32(-8368i, 52030i) | u_input.b.x) != ((arg_2 & 1i) >> (~0u % 32u))));
    return var_2.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    let var_0 = Struct_1(abs(u_input.c.x), !(!all(vec2<bool>(true, false))), vec3<i32>(0i, 6646i, arg_2.x), vec3<u32>(reverseBits(_wgslsmith_clamp_u32(44739u, arg_3, 0u)), ~u_input.c.x >> (1u % 32u), u_input.c.x) ^ ~(vec3<u32>(16633u, u_input.c.x, 47074u) ^ u_input.c.xxw));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(-(arg_2.x ^ var_0.c.x), abs(~var_0.c.x), var_0.c.x), Struct_1(~u_input.c.x, false, firstTrailingBit(vec3<i32>(42656i, 5407i, 0i) ^ vec3<i32>(-27393i, 0i, arg_0.x)), _wgslsmith_add_vec3_u32(var_0.d, ~vec3<u32>(15173u, 1u, 31739u))), max(arg_2.x, -4292i), u_input.c)), _wgslsmith_f_op_f32(-arg_1), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -839f));
    let var_2 = Struct_1(~arg_3, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) - _wgslsmith_f_op_f32(-679f * 1139f)) != 1781f) || true, arg_0.zyw, vec3<u32>(1u, u_input.c.x, abs(~_wgslsmith_dot_vec3_u32(u_input.c.xyz, u_input.c.wxz))));
    var var_3 = ~(~vec3<u32>(var_2.a, 4294967295u, ~1u));
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c.x & reverseBits(0u), all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, u_input.b.x < -12886i, true), vec4<bool>(true, true, true, true))), vec3<i32>(abs(func_1(vec4<i32>(1i, u_input.a.x, -35333i, 14159i), 816f, vec4<i32>(-1728i, 1i, u_input.a.x, u_input.a.x), 431u)) << (0u % 32u), ~select(-2147483647i, u_input.a.x, true), 1i), vec3<u32>(min(~abs(u_input.c.x), 1u), 0u, 0u));
    var var_1 = _wgslsmith_div_vec3_i32(u_input.a.wyz, min(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_0.c, vec3<i32>(-3427i, 1i, 871i)), _wgslsmith_add_vec3_i32(min(u_input.b.xxz, var_0.c), ~u_input.a.xxw)), ~(~(-var_0.c))));
    var var_2 = var_0;
    var_2 = Struct_1(_wgslsmith_add_u32(~(~(~var_2.a)), 49088u), !var_2.b, vec3<i32>(var_1.x, -2484i, var_0.c.x), _wgslsmith_mod_vec3_u32(~countOneBits(~vec3<u32>(69382u, var_2.d.x, u_input.c.x)), ~abs(abs(vec3<u32>(0u, 1u, 36947u)))));
    var_2 = var_0;
    var var_3 = abs(vec3<u32>(u_input.c.x, max(~71324u, _wgslsmith_mult_u32(var_2.a, u_input.c.x)) ^ 42257u, 22845u));
    let var_4 = _wgslsmith_f_op_f32(2223f + _wgslsmith_f_op_f32(floor(2158f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xzy, firstLeadingBit(var_1.yz), ((max(var_3.x, 4294967295u) << (_wgslsmith_dot_vec2_u32(var_3.yz, var_3.zx) % 32u)) & firstTrailingBit(~59935u)) | ~abs(var_0.a), vec3<u32>(~(~35327u), var_0.d.x, var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), var_4));
}

