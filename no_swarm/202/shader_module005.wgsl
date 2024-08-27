struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = -18615i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-565f))))))) + _wgslsmith_div_f32(-248f, -524f));
    let var_2 = -(min(_wgslsmith_mod_i32(-709i, var_0) << (u_input.b % 32u), ~_wgslsmith_mult_i32(-28501i, 0i)) >> (arg_1.c.b % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, var_1, _wgslsmith_f_op_f32(-325f - -207f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(var_1 + var_1)), -212f, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(select(var_1, var_1, arg_1.c.a.x))))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-191f, 1147f, var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2245f, 553f, var_3.x)), vec3<bool>(arg_1.b.a.x, true, true)))))));
    return _wgslsmith_sub_vec4_i32(select(~_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0.x, var_2, 47515i, var_2), vec4<i32>(43388i, var_0, 45590i, arg_0.x) << (arg_1.e % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(arg_0.x, -arg_1.c.c), (arg_1.b.c & 1i) & -arg_1.c.c, _wgslsmith_div_i32(arg_1.c.c, ~(-1i)), ~_wgslsmith_mult_i32(6422i, 0i)), select(arg_1.c.a, vec4<bool>(!arg_1.b.a.x, false, !arg_1.c.a.x, all(arg_1.c.a.yx)), false)), ~(firstLeadingBit(~vec4<i32>(arg_1.b.c, arg_1.b.c, -24469i, arg_0.x)) ^ ~(vec4<i32>(arg_0.x, -1i, 1i, 0i) | vec4<i32>(var_0, -1i, -1572i, -63803i))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_u32(_wgslsmith_mult_u32(25544u, 49516u), ~u_input.b) << (u_input.a % 32u), firstLeadingBit(abs(firstLeadingBit(-2147483647i))));
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(~var_0.b, 64813u, var_0.b)), ~vec3<u32>(_wgslsmith_div_u32(52452u, var_0.b), 4294967295u, ~var_0.b)), _wgslsmith_add_i32(-(~(23349i | var_0.c)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.c, var_0.c, 0i, var_0.c)) << (vec4<u32>(0u, 5545u, 1u, u_input.b) % vec4<u32>(32u)), func_3(vec3<i32>(40761i, -35605i, 1i), Struct_2(vec4<u32>(6599u, 1u, var_0.b, 97136u), Struct_1(var_0.a, var_0.b, -1i), Struct_1(vec4<bool>(var_0.a.x, true, true, false), u_input.a, var_0.c), 0u, vec4<u32>(var_0.b, 4294967295u, 0u, u_input.a))) & abs(vec4<i32>(var_0.c, 2147483647i, var_0.c, var_0.c)))));
    var var_1 = -vec3<i32>((var_0.c | 1i) ^ (~var_0.c & _wgslsmith_mod_i32(-2147483647i, 38077i)), func_3(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -2147483647i), var_0.c, firstTrailingBit(var_0.c)), Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, 82769u, var_0.b, var_0.b), vec4<u32>(25537u, 26759u, u_input.a, 0u)), Struct_1(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), u_input.b, 30727i), Struct_1(var_0.a, 5009u, -1i), _wgslsmith_sub_u32(76190u, var_0.b), abs(vec4<u32>(var_0.b, u_input.b, var_0.b, 0u)))).x, 1i);
    var_1 = -(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, var_0.c, 80922i), reverseBits(vec3<i32>(-3707i, 44981i, -27390i))) << (vec3<u32>(4294967295u, 4294967295u >> (u_input.b % 32u), u_input.a & u_input.a) % vec3<u32>(32u))) | countOneBits(-vec3<i32>(_wgslsmith_mult_i32(-2147483647i, -1i), ~2147483647i, var_0.c));
    var var_2 = vec4<i32>(var_1.x, ~(~_wgslsmith_sub_i32(~var_1.x, _wgslsmith_mod_i32(var_1.x, var_1.x))), var_1.x, max(_wgslsmith_sub_i32(func_3(~vec3<i32>(0i, var_0.c, 2147483647i), Struct_2(vec4<u32>(1u, 11715u, var_0.b, 1u), Struct_1(vec4<bool>(var_0.a.x, false, false, false), 79820u, var_1.x), Struct_1(var_0.a, u_input.a, -1i), 4294967295u, vec4<u32>(8482u, var_0.b, 0u, 91976u))).x, var_0.c), var_0.c & reverseBits(reverseBits(1i))));
    return Struct_2(select(vec4<u32>(u_input.a, var_0.b, min(~var_0.b, u_input.a << (100279u % 32u)), _wgslsmith_mod_u32(65408u, ~var_0.b)), min(~(vec4<u32>(var_0.b, 1928u, var_0.b, var_0.b) ^ vec4<u32>(50954u, var_0.b, 4294967295u, 4294967295u)), vec4<u32>(var_0.b, firstLeadingBit(43947u), var_0.b, 21738u)), false), Struct_1(var_0.a, _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, u_input.a), 101982u), var_2.x << ((min(0u, u_input.a) | (u_input.b ^ 4294967295u)) % 32u)), Struct_1(!select(vec4<bool>(true, false, true, var_0.a.x), var_0.a, !vec4<bool>(false, true, var_0.a.x, var_0.a.x)), _wgslsmith_sub_u32(1u, ~u_input.b), ~11752i), ~_wgslsmith_sub_u32(~4294967295u, u_input.b), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_0.b, var_0.b, var_0.b, 1u)) | vec4<u32>(u_input.b, 4294967295u, u_input.b, var_0.b), select(min(vec4<u32>(2821u, u_input.a, 12685u, var_0.b), vec4<u32>(4294967295u, 40216u, var_0.b, 3497u)), ~vec4<u32>(var_0.b, 1044u, u_input.b, 28987u), true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = func_2();
    let var_2 = func_2().b;
    var_0 = Struct_1(arg_1.a, ~u_input.b, ~14434i);
    var_0 = func_2().b;
    return func_2().b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(~(~(~vec4<u32>(11897u, 1u, 108111u, u_input.b))), func_1(select(vec2<bool>(func_1(arg_1, arg_0.b, vec3<f32>(937f, arg_3, arg_3)).a.x, true), select(select(vec2<bool>(true, arg_1.x), arg_1, arg_1.x), vec2<bool>(arg_0.c.a.x, arg_0.c.a.x), select(vec2<bool>(false, arg_0.b.a.x), vec2<bool>(arg_1.x, true), false)), !(!arg_1)), arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-1000f * arg_3)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-462f))))), Struct_1(!vec4<bool>(all(arg_1), true, arg_0.c.a.x, any(vec2<bool>(arg_0.b.a.x, arg_1.x))), 51374u, _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, arg_0.c.c), -2233i))), arg_0.a.x, vec4<u32>(0u, 48154u, select(0u, arg_0.b.b, !arg_1.x), u_input.a));
    var var_1 = _wgslsmith_f_op_f32(arg_3 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(arg_3 + arg_3)), arg_3));
    var var_2 = func_2();
    var var_3 = func_2();
    let var_4 = Struct_2(vec4<u32>(var_2.d, arg_0.c.b, 66862u, ~1u), Struct_1(!vec4<bool>(all(vec3<bool>(false, false, true)), var_3.c.a.x, arg_0.c.c != var_2.b.c, false), var_0.b.b, arg_0.c.c), func_2().c, 25929u, vec4<u32>(var_2.e.x, var_3.b.b, ~arg_0.d, 16649u));
    return Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(var_3.a.xy, var_0.e.zz), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(var_4.a.xw, vec2<u32>(0u, var_0.c.b))), var_3.d, _wgslsmith_add_u32(335u, func_2().d) | 1u), func_2().b, var_2.b, ~var_4.b.b, ~var_0.e);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = var_0.c.c;
    let var_2 = func_2();
    let var_3 = ~firstTrailingBit(select(var_2.b.b, ~arg_0, true) >> (arg_1.e.x % 32u));
    var_0 = var_2;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2((firstLeadingBit(vec4<u32>(4294967295u, 152001u, 11745u, u_input.a)) << ((vec4<u32>(u_input.a, 4603u, u_input.a, u_input.b) >> (~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ ~(~(~vec4<u32>(u_input.a, u_input.a, 22930u, u_input.a))), func_5(u_input.a, func_4(Struct_2(max(vec4<u32>(u_input.b, u_input.b, u_input.a, 56799u), vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, false), u_input.a, 11563i), func_1(vec2<bool>(false, false), Struct_1(vec4<bool>(true, true, false, true), u_input.a, 2147483647i), vec3<f32>(-428f, 1460f, -657f)), ~8420u, countOneBits(vec4<u32>(12688u, u_input.b, u_input.b, u_input.a))), vec2<bool>(true, true), _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, 3215i), _wgslsmith_add_i32(18154i, 44685i)), -122f)), func_4(func_2(), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), 29732i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1647f)) - -1000f)).b, u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(77465u, u_input.b, func_5(~4294967295u, Struct_2(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), Struct_1(vec4<bool>(true, false, false, false), 23406u, 21020i), Struct_1(vec4<bool>(true, false, false, true), 229u, 2147483647i), 43600u, vec4<u32>(32030u, 1u, u_input.b, u_input.a))).b, _wgslsmith_dot_vec3_u32(~vec3<u32>(16766u, 0u, 1u), vec3<u32>(13020u, u_input.a, 3322u) >> (vec3<u32>(u_input.a, 0u, u_input.b) % vec3<u32>(32u)))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 64700u, 4294967295u, 0u), vec4<u32>(0u, 9388u, u_input.b, u_input.b)) | vec4<u32>(90281u, 4294967295u, u_input.a, u_input.b), select(vec4<u32>(59835u, 1u, u_input.b, u_input.a), ~vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), func_2().b.a))));
    var var_1 = func_4(Struct_2(var_0.e, func_5(~54277u, func_2()), Struct_1(!var_0.b.a, ~countOneBits(0u), var_0.c.c), var_0.b.b, var_0.a), var_0.b.a.xx, var_0.b.c, -216f);
    var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -416f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1673f, -152f))), _wgslsmith_f_op_f32(-1023f + 540f))));
    let var_3 = func_4(var_0, select(func_1(var_1.c.a.yw, var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(794f, -1823f, -539f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -931f, 1000f), vec3<f32>(-103f, -2021f, 914f)))).a.xz, !(!func_5(55331u, Struct_2(vec4<u32>(var_1.a.x, var_0.d, var_1.b.b, var_1.c.b), var_0.c, Struct_1(vec4<bool>(var_0.c.a.x, true, var_1.c.a.x, true), 95889u, 8228i), 24009u, var_0.a)).a.zy), var_1.c.a.zx), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(var_0.c.c), -func_2().b.c), -max(-vec2<i32>(1i, var_1.b.c), vec2<i32>(-7815i, 2147483647i) >> (vec2<u32>(1251u, var_1.c.b) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(sign(-1378f)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-294f, 1405f))))));
    let var_4 = var_0;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(542f, -1041f), _wgslsmith_f_op_f32(trunc(752f)))) - _wgslsmith_f_op_f32(f32(-1f) * -245f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-312f, -156f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, func_3(_wgslsmith_sub_vec3_i32(select(vec3<i32>(2147483647i, var_1.c.c, -1i), vec3<i32>(var_4.c.c, -39768i, -2147483647i), var_3.c.a.xwy), -vec3<i32>(0i, var_0.c.c, -13554i)), var_0).x << (max(~11229u, 0u) % 32u));
}

