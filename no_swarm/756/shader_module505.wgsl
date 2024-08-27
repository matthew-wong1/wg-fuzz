struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: array<vec4<f32>, 11>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -369f))))), firstLeadingBit(abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, u_input.c, u_input.b.x)))));
    global1 = array<vec4<f32>, 11>();
    let var_1 = var_0.a;
    var var_2 = firstTrailingBit(i32(-1i) * -8718i);
    var var_3 = 4294967295u;
    return -max(i32(-1i) * -1i, -2147483647i);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f), -953f)), -func_3());
    var var_1 = ~(-(~countOneBits(0i))) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, var_0.b, -34856i, countOneBits(8213i)), firstLeadingBit(~vec4<i32>(17553i, 64040i, var_0.b, 1i))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(u_input.c, -12772i, u_input.b.x, -6353i))), select(vec4<i32>(var_0.b, u_input.c, var_0.b, u_input.c), vec4<i32>(1i, var_0.b, u_input.c, var_0.b), vec4<bool>(true, true, true, true)), -vec4<i32>(var_0.b, 1i, 0i, 21077i) >> (vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_mult_u32(4294967295u, 0u);
    var var_3 = ~(var_2 | ~firstTrailingBit(8104u)) & _wgslsmith_dot_vec2_u32(~reverseBits(u_input.a.yx | u_input.a.xz), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0 | u_input.a.x, 14630u), u_input.a.zx));
    var var_4 = vec3<u32>(8291u, _wgslsmith_div_u32(arg_0, _wgslsmith_clamp_u32(29961u, ~var_2, _wgslsmith_sub_u32(var_2, 4294967295u))) | 1319u, _wgslsmith_dot_vec2_u32(vec2<u32>(max(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 122113u)), ~var_2), 36471u & arg_0), vec2<u32>(~_wgslsmith_clamp_u32(25784u, 4294967295u, arg_0), 62591u)));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec2<f32> {
    global0 = array<vec3<bool>, 13>();
    var var_0 = _wgslsmith_mult_u32(arg_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, 0u), vec2<u32>(4294967295u, u_input.a.x))), ~min(abs(vec2<u32>(arg_1.x, arg_1.x)), select(arg_1.wy, arg_1.ww, vec2<bool>(true, false)))));
    let var_1 = !(!select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false), false), true));
    global0 = array<vec3<bool>, 13>();
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_0.a)), ~vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.c), ~(-1i), u_input.b.x, 1i));
    return arg_2.yz;
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_3(0u);
    var var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(391f), 25769i);
    global1 = array<vec4<f32>, 11>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(17888u), ~(~vec4<u32>(12016u, var_1.x, 14260u, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1495f, -1630f, -224f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a.a, var_2.a.a), vec2<f32>(var_2.a.a, var_2.a.a))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.a.a, var_2.a.a), vec2<f32>(var_2.a.a, var_2.a.a))))))));
    return vec3<f32>(741f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_2.a.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(var_2.a, vec4<u32>(u_input.a.x, var_1.x, var_1.x, 32154u), vec3<f32>(116f, var_3.x, 1267f))).x * _wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_f32(-var_2.a.a));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = 51976u;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.a);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_4(func_2(u_input.a.x), select(vec4<u32>(0u, 0u, u_input.a.x, 1u), vec4<u32>(13061u, 4294967295u, 14729u, 28437u), false) & vec4<u32>(u_input.a.x, u_input.a.x, 30916u, 4294967295u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(901f, arg_0.x, -1068f) - arg_0), arg_0, any(vec4<bool>(true, false, false, false)))))).x), abs(arg_1.b.x));
    var var_3 = !(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true))));
    var_1 = _wgslsmith_f_op_f32(sign(-1000f));
    return func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, 60829u)), abs(~vec3<u32>(1u, u_input.a.x, u_input.a.x))), u_input.a.x & _wgslsmith_clamp_u32(u_input.a.x, 12490u, abs(4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(~min(1u << (u_input.a.x % 32u), min(2932u, 50484u))));
    var var_1 = Struct_1(_wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1374f, 1712f, true)))), _wgslsmith_f_op_f32(round(650f))))));
    var var_2 = Struct_4(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(u_input.a.x, 7617u, u_input.a.x, 4294967295u)))), Struct_4(func_2(~u_input.a.x), abs(vec4<i32>(-1i, u_input.b.x, -1i, u_input.c)))), vec4<i32>(-u_input.c, -(u_input.b.x >> (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(max(-1i, 1i), -1i, 9242i), ~(vec3<i32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.a.x, 17925u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.b.x, 73331i), i32(-1i) * -1i, u_input.c)));
    let var_3 = select(vec3<bool>(false, !((u_input.b.x > u_input.c) & (var_2.b.x < var_2.b.x)), true), !vec3<bool>(_wgslsmith_f_op_f32(-var_1.a) != var_1.a, any(vec4<bool>(true, true, true, true)), true), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a.x) & ~abs(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 13u)]);
    let var_4 = vec2<u32>(_wgslsmith_clamp_u32(4294967295u, ~30288u, abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(81831u, u_input.a.x), u_input.a.x))), u_input.a.x);
    var var_5 = vec4<bool>(all(vec3<bool>(var_3.x, var_3.x, true)), var_3.x, any(!vec2<bool>(false, var_3.x)) || all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), var_3)), var_3.x);
    var_1 = Struct_1(147f);
    var_2 = Struct_4(Struct_1(_wgslsmith_div_f32(var_2.a.a, var_2.a.a)), -(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.x, var_2.b.x, -2147483647i, -45446i), vec4<i32>(var_2.b.x, 1i, 28693i, 25850i)), vec4<i32>(18430i, -1167i, u_input.c, 0i) >> (vec4<u32>(u_input.a.x, 13497u, var_4.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(50251i, 7164i, 39136i, -14065i), vec4<i32>(-36007i, u_input.c, -1i, 2147483647i))) & vec4<i32>(~var_2.b.x, -u_input.b.x, 1i, min(u_input.c, 2147483647i))));
    var var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(reverseBits(-1i), 5498i) ^ _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.b.x, var_2.b.x), var_2.b.wz, vec2<bool>(var_5.x, false)), ~vec2<i32>(-1i, var_2.b.x)), -1i), ~var_4.x, _wgslsmith_div_vec4_f32(vec4<f32>(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, -742f, var_2.a.a)), Struct_4(var_2.a, vec4<i32>(1i, u_input.b.x, var_2.b.x, var_2.b.x))).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a.a + var_2.a.a))), var_1.a, func_5(vec3<f32>(-809f, var_1.a, var_1.a), Struct_4(var_2.a, vec4<i32>(-12828i, -29784i, 28316i, var_2.b.x))).a), global1[_wgslsmith_index_u32(~(u_input.a.x & _wgslsmith_sub_u32(var_4.x, u_input.a.x)), 11u)]));
}

