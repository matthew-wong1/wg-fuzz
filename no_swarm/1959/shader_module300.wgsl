struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = 1u;
    var_0 = u_input.b.x;
    let var_1 = vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(1u, u_input.b.x, 55112u), 4294967295u);
    var var_2 = Struct_2(Struct_1(arg_0.a, arg_0.b, _wgslsmith_mult_u32(var_1.x, 4294967295u), _wgslsmith_add_vec2_i32(vec2<i32>(-47159i, 2147483647i) ^ arg_2.zy, vec2<i32>(-1i) * -vec2<i32>(arg_2.x, arg_2.x)), all(!vec4<bool>(arg_0.e, arg_0.b.x, true, arg_0.e)) & false), 42566i, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(612f, arg_0.a.x, -1237f) * vec3<f32>(-765f, arg_0.a.x, arg_0.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), vec2<bool>(true, _wgslsmith_f_op_f32(965f + arg_0.a.x) < _wgslsmith_f_op_f32(exp2(arg_0.a.x))), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, ~1u), ~var_1.x | u_input.b.x), _wgslsmith_div_vec2_i32(arg_1 << (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c, var_1.x), var_1.zy) % vec2<u32>(32u)), vec2<i32>(arg_1.x, arg_0.d.x)), true || select(true, arg_0.e, any(vec2<bool>(false, true)))));
    let var_3 = vec4<i32>(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~arg_2, _wgslsmith_sub_vec3_i32(arg_2, vec3<i32>(0i, -30974i, u_input.c.x))), arg_2.x), max(_wgslsmith_dot_vec3_i32(arg_2, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_2.b, 37391i), arg_2)), arg_1.x)), _wgslsmith_div_i32(~(~u_input.c.x), -1i) & _wgslsmith_div_i32(arg_1.x, countOneBits(var_2.b | var_2.a.d.x)), -53583i);
    return -2147483647i;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), arg_0.x, 1050f), _wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -436f, _wgslsmith_f_op_f32(max(-245f, -529f)))))), vec2<bool>(true, !(!(138f >= arg_0.x))), ~u_input.b.x, u_input.c | firstTrailingBit(vec2<i32>(6191i, func_3(Struct_1(arg_0, vec2<bool>(false, false), 4294967295u, vec2<i32>(1355i, arg_1), false), u_input.c, vec3<i32>(1880i, 1i, -18622i)))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))));
    let var_1 = !(!var_0.e);
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(44177u >> (0u % 32u), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 35664u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 0u))), abs(vec3<u32>(27624u, u_input.b.x, 1u)) ^ ~vec3<u32>(1u, u_input.b.x, 1u)), vec3<u32>(0u, _wgslsmith_div_u32(57332u, 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(9288u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(var_0.c, u_input.b.x, 1u, 88952u)), reverseBits(vec4<u32>(var_0.c, 82586u, u_input.b.x, u_input.b.x))))), (abs(vec3<u32>(13049u, u_input.b.x, 91349u) << (vec3<u32>(0u, 49398u, u_input.b.x) % vec3<u32>(32u))) ^ abs(vec3<u32>(u_input.b.x, 55961u, var_0.c))) >> (~(vec3<u32>(var_0.c, 0u, 11600u) << (max(vec3<u32>(u_input.b.x, var_0.c, u_input.b.x), vec3<u32>(var_0.c, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(-469f, -116f, -441f))), arg_0), !vec2<bool>(var_0.b.x, all(vec4<bool>(true, false, var_0.e, var_0.b.x))), _wgslsmith_dot_vec3_u32(var_2, firstLeadingBit(var_2)), var_0.d, !var_1), _wgslsmith_mod_i32(-25121i, ~_wgslsmith_mult_i32(u_input.c.x, reverseBits(41125i))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(1000f, arg_0.x, -364f)) - _wgslsmith_div_vec3_f32(var_0.a, arg_0)))), vec2<bool>(var_0.e, !(!var_0.e)), ~_wgslsmith_mod_u32(abs(u_input.b.x), _wgslsmith_div_u32(var_0.c, 85755u)), vec2<i32>(~arg_1, reverseBits(var_0.d.x) << (select(4294967295u, 17516u, false) % 32u)), false));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.c.c, 1u, u_input.b.x, u_input.b.x)), abs(vec4<u32>(u_input.b.x, arg_1.c.c, 112u, 12527u))), ~_wgslsmith_add_u32(arg_1.a.c, arg_1.a.c), u_input.b.x), 1u << (firstLeadingBit(1u) % 32u), u_input.b.x) >> ((max(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c.c, 0u, 36456u), vec3<u32>(arg_1.a.c, arg_1.a.c, 16037u))), ~(~vec3<u32>(4294967295u, 49004u, 4294967295u))) >> (~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c.c, arg_1.c.c, arg_1.a.c), vec3<u32>(0u, u_input.b.x, arg_1.c.c), vec3<u32>(4294967295u, 44019u, u_input.b.x))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = vec3<f32>(-761f, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-155f, arg_1.c.a.x) * _wgslsmith_f_op_f32(max(-1556f, 638f))))))), -661f);
    let var_2 = arg_1.a.a;
    let var_3 = arg_1;
    var_1 = vec3<f32>(-566f, var_2.x, arg_0.x);
    return 1u;
}

fn func_1() -> vec2<bool> {
    var var_0 = vec3<u32>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(step(-1623f, 1279f)))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-985f, -2466f, -1336f)))), ~(-u_input.c.x)), -1i, vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(-u_input.a, 0i, _wgslsmith_add_i32(2147483647i, u_input.c.x)), firstTrailingBit(~(-25325i)))), ~(select(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 1u, all(vec4<bool>(false, true, false, true))) | ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), 1u);
    var var_1 = max(-vec4<i32>(-reverseBits(u_input.c.x), 20110i, -19154i, countOneBits(_wgslsmith_clamp_i32(u_input.c.x, 1i, 5502i))), min(vec4<i32>(-u_input.c.x, u_input.a ^ 2147483647i, u_input.a, firstLeadingBit(34841i)) << (select(countOneBits(vec4<u32>(20778u, u_input.b.x, u_input.b.x, var_0.x)), vec4<u32>(u_input.b.x, 1u, var_0.x, 4294967295u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), vec4<i32>(~(-u_input.c.x), countOneBits(func_2(vec3<f32>(-214f, 1660f, -1919f), 0i).c.d.x), u_input.c.x & select(-2147483647i, -7184i, false), -1i)));
    let var_2 = 0u;
    var var_3 = !(!select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), _wgslsmith_add_i32(u_input.a, -1i) > firstTrailingBit(u_input.a)));
    var_3 = select(vec4<bool>(any(var_3.ww), var_3.x, var_3.x, true), select(select(select(vec4<bool>(true, false, var_3.x, true), vec4<bool>(false, true, var_3.x, var_3.x), true), vec4<bool>(var_3.x, any(var_3.ywx), any(vec4<bool>(false, var_3.x, var_3.x, false)), var_3.x), !vec4<bool>(var_3.x, var_3.x, var_3.x, true)), select(vec4<bool>(var_3.x, any(vec4<bool>(var_3.x, false, true, false)), true, false), select(!vec4<bool>(var_3.x, true, var_3.x, var_3.x), select(vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(false, false, false, false), vec4<bool>(true, var_3.x, var_3.x, false)), !var_3.x), any(var_3.wyz)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(75872u, 0u, 44228u), vec3<u32>(4294967295u, 1u, 14097u)), max(vec3<u32>(u_input.b.x, u_input.b.x, var_2), vec3<u32>(u_input.b.x, u_input.b.x, var_2))) >= _wgslsmith_clamp_u32(firstLeadingBit(var_2), reverseBits(1u), 27494u & var_0.x)), !vec4<bool>(false, !func_2(vec3<f32>(1000f, 1979f, -1348f), 1844i).c.b.x, true, func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-306f, -960f, 1577f), vec3<f32>(-1349f, 205f, -272f), var_3.x)), var_1.x | u_input.c.x).a.b.x));
    return !select(!vec2<bool>(false, var_3.x), var_3.wz, var_3.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<u32>(~(~u_input.b.x) >> (0u % 32u), ~19287u));
    var var_1 = !any(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2144f, 503f)))), abs(countOneBits(~u_input.c) ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(-22873i, 57423i), vec2<i32>(-13318i, u_input.a)) | -vec2<i32>(0i, -1i))), _wgslsmith_div_u32(min(u_input.b.x, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 4294967295u, select(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-214i, 1255i)), ~(-1i)), countOneBits(-u_input.a)), 1i, func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1561f, 184f, 1000f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(423f, -466f, 1544f))))), _wgslsmith_mult_i32(u_input.a, firstTrailingBit(-5128i))).a.e));
}

