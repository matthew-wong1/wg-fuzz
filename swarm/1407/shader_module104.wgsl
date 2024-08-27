struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 32> = array<i32, 32>(7900i, i32(-2147483648), 39114i, 36439i, 36769i, -1i, -9126i, -43646i, 27350i, 1236i, -1i, -33286i, -8281i, 1i, -1i, -76168i, -1i, 4282i, 8549i, 12195i, -57210i, -1i, 40227i, i32(-2147483648), -7901i, 2147483647i, -10624i, i32(-2147483648), 1i, -50020i, i32(-2147483648), 0i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> i32 {
    global1 = array<i32, 32>();
    let var_0 = -1i;
    global0 = Struct_2(-61203i);
    global1 = array<i32, 32>();
    let var_1 = arg_1;
    return ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(~625i, reverseBits(global0.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -10810i), vec2<i32>(var_0, -arg_3), -(~vec2<i32>(20042i, var_0))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1815f);
    var_0 = -825f;
    let var_1 = 1i;
    var var_2 = vec4<i32>(i32(-1i) * -global1[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-13391i, var_1, -18999i, -5901i) & (vec4<i32>(-5424i, var_1, 2147483647i, 2147483647i) & vec4<i32>(0i, 0i, global0.a, 28723i)), vec4<i32>(_wgslsmith_add_i32(u_input.a, var_1), _wgslsmith_dot_vec3_i32(vec3<i32>(-23351i, -2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<i32>(u_input.a, -27410i, 2147483647i)), func_3(u_input.b.x, Struct_1(40578u, false, vec2<f32>(-285f, -890f)), vec4<u32>(u_input.b.x, 4294967295u, 36821u, u_input.b.x), u_input.a), global0.a & global1[_wgslsmith_index_u32(4294967295u, 32u)])), vec4<i32>(_wgslsmith_div_i32(-42572i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, 16071i, 6299i, var_1), vec4<i32>(43941i, global1[_wgslsmith_index_u32(22803u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], -32503i))), min(11837i << (u_input.b.x % 32u), countOneBits(global1[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, 0i), vec2<i32>(1i, 1i), false), vec2<i32>(var_1, global1[_wgslsmith_index_u32(23911u, 32u)]) & vec2<i32>(10275i, 23848i)), var_1)), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, u_input.a), 61571i), reverseBits(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 32u)], global0.a)), global0.a)), _wgslsmith_sub_i32(5710i, 1i) ^ _wgslsmith_add_i32(-4811i, select(24755i, _wgslsmith_sub_i32(var_1, global0.a), false)));
    var var_3 = u_input.b.x;
    return Struct_2(i32(-1i) * -(33867i << (_wgslsmith_clamp_u32(9567u, u_input.b.x, u_input.b.x) % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(~min(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 63539u, u_input.b.x), vec3<u32>(1u, 1u, arg_2.a)), ~(~vec3<u32>(1304u, 111409u, arg_2.a))), vec3<u32>(abs(~arg_2.a ^ 40754u), arg_2.a, u_input.b.x));
    global1 = array<i32, 32>();
    global0 = Struct_2(i32(-1i) * -u_input.a);
    let var_1 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_2.a, u_input.b.x), ~u_input.b.x), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(63992u, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u))) ^ ~abs(var_0.xz), ~var_0.yx), u_input.b, arg_2.b);
    global0 = arg_0;
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    return arg_2;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_u32(u_input.b, abs(vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(20438u, 37079u, 4911u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 17991u, 4294967295u))), ~u_input.b.x)));
    let var_1 = arg_0;
    global1 = array<i32, 32>();
    global1 = array<i32, 32>();
    let var_2 = Struct_1(var_0.x, true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-652f, 145f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, -2610f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(817f, 2474f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1803f, 573f))), false)));
    return Struct_2(-1i);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> vec4<bool> {
    global0 = func_6(func_5(16799i, Struct_2(1i), Struct_2(u_input.a), func_4(func_2(), firstTrailingBit(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], arg_0, arg_0, arg_0)), Struct_1(64329u, arg_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1171f, -1230f))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(-179f)), _wgslsmith_f_op_f32(-492f * 481f), _wgslsmith_f_op_f32(step(-294f, -1688f)), -1191f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, 474f, 786f, -1123f))))))));
    let var_1 = Struct_1(~_wgslsmith_add_u32(~(~u_input.b.x), ~u_input.b.x << (~0u % 32u)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-392f, _wgslsmith_f_op_f32(var_0.x * -360f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.yw), _wgslsmith_f_op_vec2_f32(var_0.yz * vec2<f32>(375f, -544f)), arg_1.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-195f, var_1.c.x, var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + -500f)))));
    let var_2 = select(select(!(!(!vec3<bool>(true, false, var_1.b))), select(vec3<bool>(!arg_1.x, false, true), select(vec3<bool>(var_1.b, arg_1.x, arg_1.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_1.b), var_1.b), true), true), vec3<bool>(arg_1.x, arg_1.x, any(select(vec4<bool>(var_1.b, true, true, false), vec4<bool>(false, var_1.b, var_1.b, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false))))), select(vec3<bool>(!var_1.b, any(select(vec3<bool>(true, true, false), vec3<bool>(true, var_1.b, var_1.b), false)), false), !select(!vec3<bool>(arg_1.x, var_1.b, true), select(vec3<bool>(false, var_1.b, arg_1.x), vec3<bool>(arg_1.x, false, true), var_1.b), vec3<bool>(false, arg_1.x, true)), vec3<bool>(var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, arg_0, u_input.a), vec4<i32>(4515i, -1i, arg_0, -717i)) >= u_input.a, all(select(vec4<bool>(arg_1.x, arg_1.x, var_1.b, arg_1.x), vec4<bool>(true, true, true, false), var_1.b)))), select(!select(!vec3<bool>(false, true, var_1.b), select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_1.x), vec3<bool>(false, false, var_1.b)), !vec3<bool>(true, var_1.b, false)), select(!vec3<bool>(var_1.b, true, arg_1.x), select(select(vec3<bool>(true, false, arg_1.x), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, arg_1.x)), !vec3<bool>(true, var_1.b, var_1.b), !vec3<bool>(true, true, var_1.b)), !var_1.b), select(!(!vec3<bool>(var_1.b, true, arg_1.x)), !vec3<bool>(false, arg_1.x, arg_1.x), all(vec2<bool>(true, true)))));
    return !vec4<bool>(~global1[_wgslsmith_index_u32(0u, 32u)] >= arg_0, var_2.x, 623f > var_0.x, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 32u)], -1i, -1i), countOneBits(vec3<i32>(41607i, global0.a, global0.a))) & firstTrailingBit(global1[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(22771i, global1[_wgslsmith_index_u32(0u, 32u)], global0.a, 1i), -vec4<i32>(u_input.a, -26874i, -51918i, u_input.a)), select(vec4<i32>(22762i, 2929i, u_input.a, u_input.a), vec4<i32>(30798i, u_input.a, -1i, -2147483647i), func_1(-3533i, vec2<bool>(false, false))))));
    global0 = func_6(func_6(Struct_2(~(-2147483647i))));
    let var_0 = Struct_1(u_input.b.x, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(830f, -1889f), vec2<f32>(1698f, -1780f)))))));
    global1 = array<i32, 32>();
    let var_1 = -9793i;
    var var_2 = Struct_2(-firstTrailingBit(max(-var_1, _wgslsmith_add_i32(global0.a, 26423i))));
    let var_3 = -_wgslsmith_mult_vec3_i32(-(vec3<i32>(var_1, var_2.a, var_2.a) << (vec3<u32>(var_0.a, u_input.b.x, 79336u) % vec3<u32>(32u))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a, -1i, -25881i), vec3<i32>(var_2.a, var_1, global0.a)))) >> ((~abs(vec3<u32>(35796u, 0u, u_input.b.x)) << (select(abs(~vec3<u32>(var_0.a, u_input.b.x, 27129u)), select(~vec3<u32>(u_input.b.x, var_0.a, u_input.b.x), reverseBits(vec3<u32>(1u, 45545u, u_input.b.x)), !vec3<bool>(var_0.b, var_0.b, true)), var_0.b) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(-703f, var_0.c.x, 734f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-286f, var_0.c.x, 2037f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c.x, var_0.c.x, 910f))))))));
}

