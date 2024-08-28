struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = Struct_2(arg_0, vec4<i32>(max(arg_1.b.b, ~(-13676i)), abs(0i), -14743i, reverseBits(u_input.b.x)) & (vec4<i32>(_wgslsmith_div_i32(0i, u_input.b.x), ~arg_1.b.b, 1i, -arg_2.b.b) | abs(vec4<i32>(-1i, arg_2.b.b, 59176i, u_input.b.x))), Struct_1(select(arg_1.c.x && false, !select(false, arg_0.a, false), !(arg_1.b.b < 2147483647i)), 2147483647i >> (arg_2.a % 32u)), Struct_1(!(!any(vec4<bool>(arg_1.c.x, arg_0.a, arg_0.a, arg_0.a))), -1i), -(vec4<i32>(-1i) * -(vec4<i32>(30887i, 0i, 18734i, arg_0.b) ^ vec4<i32>(-1i, arg_0.b, -1i, arg_1.b.b))));
    var var_1 = vec2<i32>(-var_0.b.x, -(~10393i)) << (countOneBits(vec2<u32>(u_input.a.x, firstTrailingBit(arg_2.a))) % vec2<u32>(32u));
    var var_2 = vec3<bool>(func_1(~var_0.e.xyx), arg_1.c.x, all(!arg_2.c) && true);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(-2334f)), _wgslsmith_f_op_f32(f32(-1f) * -468f), 1318f))))));
    var var_4 = var_0.a.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(abs(115f)), -640f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-611f, _wgslsmith_f_op_f32(var_3.x * -1043f))), 2600f, 622f))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_u32(~u_input.a.yz, vec2<u32>(_wgslsmith_sub_u32(~(~u_input.a.x), 1740u), ~(~1u)));
    var var_1 = u_input.a.zz;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(989f, -662f), vec2<f32>(-1474f, -527f), vec2<bool>(true, false))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -137f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(330f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(sign(-320f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, 1000f), vec3<f32>(1207f, 131f, var_2.x), vec3<bool>(true, false, true)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(false, 2147483647i), Struct_3(63311u, Struct_1(true, u_input.b.x), vec3<bool>(true, false, true)), Struct_3(var_1.x, Struct_1(false, u_input.b.x), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-166f, var_2.x, var_2.x) - vec3<f32>(-353f, var_2.x, -1068f)), vec3<f32>(var_2.x, var_2.x, var_2.x))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1922f, var_3.x)));
    return Struct_2(Struct_1(false, _wgslsmith_clamp_i32(31488i, -2147483647i, countOneBits(u_input.b.x)) & ~min(-1i, u_input.b.x)), firstLeadingBit(select(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(-51017i, -18276i, u_input.b.x, -27717i)), ~(-vec4<i32>(-18196i, u_input.b.x, -68909i, -30144i)), true)), Struct_1(false, u_input.b.x), Struct_1(true, -_wgslsmith_add_i32(u_input.b.x, 27110i)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -30430i, u_input.b.x), select(vec4<i32>(u_input.b.x, 1i, 16681i, u_input.b.x) >> (vec4<u32>(12410u, var_0, var_1.x, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(u_input.b.x, 24792i, -28192i, u_input.b.x), vec4<bool>(true, true, false, false))), firstTrailingBit(vec4<i32>(u_input.b.x >> (var_1.x % 32u), 0i, u_input.b.x, -1i)), select(vec4<bool>(true, true, true, -9232i < u_input.b.x), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), false))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    let var_0 = arg_0.b.zww;
    let var_1 = vec4<i32>(select(0i, ~_wgslsmith_mod_i32(42460i, var_0.x >> (arg_1.x % 32u)), all(vec4<bool>(true, true, true, false)) && false), _wgslsmith_mult_i32(~(-19732i), reverseBits(func_2().a.b)), 1i, -func_2().a.b);
    let var_2 = arg_1.wy;
    let var_3 = Struct_3(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(0u, arg_1.x), firstTrailingBit(u_input.a.x)), arg_0.c, vec3<bool>(arg_0.a.a, !any(!vec2<bool>(arg_0.d.a, arg_0.c.a)), arg_0.d.a));
    var var_4 = var_3;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(all(vec3<bool>(true, true, true)), !func_1(vec3<i32>(53323i, -24193i, -32891i)), all(vec2<bool>(true, true))), select(vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), vec3<bool>(true, true, false), vec3<bool>(func_4(func_2(), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 21513u, 65337u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), true, false)), abs(9432u) > u_input.a.x);
    let var_1 = all(vec4<bool>(true, true, true, !var_0.x)) & (_wgslsmith_f_op_f32(round(-2012f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1084f)) + 316f) + -594f));
    var var_2 = Struct_2(Struct_1(false, u_input.b.x), min(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, 1445i) & u_input.b.x, -922i, ~2147483647i, -2147483647i), vec4<i32>(abs(u_input.b.x | -32201i), u_input.b.x, u_input.b.x, -abs(0i))), Struct_1(any(select(vec3<bool>(var_1, var_1, var_0.x), vec3<bool>(true, var_1, false), var_0)) != true, 2147483647i), Struct_1(!(!(var_0.x == false)), min(countOneBits(select(25034i, u_input.b.x, true)), u_input.b.x)), func_2().b);
    let var_3 = _wgslsmith_clamp_vec3_u32(~(~firstLeadingBit(u_input.a)), select(select(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (~u_input.a % vec3<u32>(32u)), true), vec3<u32>(4294967295u, 1u, max(u_input.a.x, u_input.a.x)) & abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), !(!(!var_0))), ~u_input.a);
    var_2 = Struct_2(Struct_1(true, reverseBits(var_2.d.b)), var_2.e, Struct_1(any(var_0.yz), -(i32(-1i) * -33228i)), var_2.a, vec4<i32>(-(~var_2.c.b) << ((~var_3.x << (u_input.a.x % 32u)) % 32u), _wgslsmith_mod_i32(abs(-var_2.a.b), ~firstLeadingBit(var_2.c.b)), 54651i, _wgslsmith_div_i32(1i, u_input.b.x) & (~u_input.b.x ^ var_2.d.b)));
    var_2 = Struct_2(var_2.a, vec4<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, -2992i), vec3<i32>(u_input.b.x, -28214i, u_input.b.x)), firstTrailingBit(var_2.c.b)), countOneBits(u_input.b.x), -u_input.b.x, i32(-1i) * -2147483647i) | _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, var_2.a.b), var_2.e), func_2().d, func_2().d, vec4<i32>(-_wgslsmith_add_i32(~var_2.d.b, _wgslsmith_div_i32(13125i, 20450i)), -1i, u_input.b.x, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~1u, _wgslsmith_add_vec4_u32(vec4<u32>(~(~u_input.a.x), reverseBits(6339u), var_3.x, _wgslsmith_add_u32(~34207u, ~u_input.a.x)), max(vec4<u32>(var_3.x | 0u, ~var_3.x, u_input.a.x, 30366u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(24920u, 1u, 42022u, var_3.x), vec4<u32>(0u, 99419u, var_3.x, var_3.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u)))), min(firstTrailingBit(~(~u_input.b.x)), -1i));
}

